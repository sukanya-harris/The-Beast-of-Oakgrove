#include "mylib.h"
#include "game.h"
#include "forestView.h"
#include "forestCollision.h"
#include "roomView.h"

ANISPRITE player;
ANISPRITE wand;
int wandFound = 0;
unsigned char* forestCollision;

void initForest() {
    vOff = 0;
    hOff = 0;
    initForestPlayer();
    itemCheck = NONE;
    forestCollision = forestCollisionBitmap;
}

void drawForest() {
    shadowIndex = 0;
    drawForestPlayer();
    drawPotion();
    drawLives();
    drawAmulet();
    drawWand();
    DMANow(3, shadowOAM, OAM, 512);
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}
void updateForest() {
    updateForestPlayer();
}

void initForestPlayer() {
    player.worldCol = 17;
    player.worldRow = 144;
    player.width = 16;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 1;
    player.aniCounter = 0;
    player.aniState = PLAYERFRONT;
    player.curFrame = 0;
}

void drawForestPlayer() {
    if (player.hide) {
        shadowOAM[shadowIndex].attr0 |= ATTR0_HIDE;
        shadowIndex++;
    }
    else {
        shadowOAM[shadowIndex].attr0 = (ROWMASK & (player.worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[shadowIndex].attr1 = (COLMASK & (player.worldCol - hOff)) | ATTR1_SMALL;
        shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.aniState * 2, player.curFrame * 2);
        shadowIndex++;
    }
}

void drawWand() {
    if (wandFound) {
        if (wand.hide) {
            shadowOAM[shadowIndex].attr0 |= ATTR0_HIDE;
            shadowIndex++;
        }
        else {
            shadowOAM[shadowIndex].attr0 = (ROWMASK & 145) | ATTR0_SQUARE;
            shadowOAM[shadowIndex].attr1 = (COLMASK & 223) | ATTR1_SMALL;
            shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(6, 11);
            shadowIndex++;
        }
    }
}

// #region Player Movement
void updateForestPlayer() {
    if (BUTTON_HELD(BUTTON_UP))
    {
        if (player.worldRow - player.rdel >= 0 && updateForestFloor(player.worldCol, player.worldRow, UP))
        {
            player.worldRow -= player.rdel;

            if (vOff >= 0 && (player.worldRow - vOff) <= SCREENHEIGHT / 2)
            {
                vOff--;
            }
        }
    }
    if (BUTTON_HELD(BUTTON_DOWN))
    {
        if (player.worldRow + player.height + player.rdel <= FOREST_MAPHEIGHT && updateForestFloor(player.worldCol, player.worldRow, DOWN))
        {
            player.worldRow += player.rdel;

            if (vOff < (FOREST_MAPHEIGHT - SCREENHEIGHT) && (player.worldRow - vOff) >= SCREENHEIGHT / 2)
            {
                vOff++;
            }
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT))
    {
        if (player.worldCol + player.cdel >= 0 && updateForestFloor(player.worldCol, player.worldRow, LEFT))
        {

            player.worldCol -= player.cdel;

            if (hOff >= 0 && (player.worldCol - hOff) <= SCREENWIDTH / 2)
            {
                hOff--;
            }
        }
    }
    if (BUTTON_HELD(BUTTON_RIGHT))
    {
        if (player.worldCol + player.width + player.cdel <= FOREST_MAPWIDTH && updateForestFloor(player.worldCol, player.worldRow, RIGHT))
        {
            player.worldCol += player.cdel;

            if (hOff < (FOREST_MAPWIDTH - SCREENWIDTH) && (player.worldCol - hOff) >= SCREENWIDTH / 2)
            {
                hOff++;
            }
        }
    }
    animatePlayer();
    forestItems();
}
// #endregion

//checks where the player is on the screen and if the movement is valid
int updateForestFloor(int col, int row, int direction) {
    switch (direction) {
    case UP:
        return walkableForest(col, row - 1) && walkableForest((col + 16 - 1), row - 1);
        break;
    case DOWN:
        return walkableForest(col, (row + 16 - 1) + 1) && walkableForest((col + 16 - 1), (row + 16 - 1) + 1);
        break;
    case LEFT:
        return walkableForest(col - 1, row) && walkableForest(col - 1, (row + 16 - 1));
        break;
    case RIGHT:
        return walkableForest((col + 16 - 1) + 1, row) && walkableForest((col + 16 - 1) + 1, (row + 16 - 1));
        break;
    }
    return 0;
}

int walkableForest(int col, int row) {
    return forestCollision[OFFSET(col, row, FOREST_MAPWIDTH)];
}

void forestItems()
{
    if (forestCollision[OFFSET(player.worldCol, player.worldRow, FOREST_MAPWIDTH)] == 2)
    {
        player.worldCol = player.prevRoomCol;
        player.worldRow = player.prevRoomRow + 15;
        vOff = prevVOFFRoom;
        hOff = prevHOFFRoom;
        textFlag = 1;
        itemCheck = NONE;
    }
    if (forestCollision[OFFSET(player.worldCol, player.worldRow, FOREST_MAPWIDTH)] == 3)
    {
        textFlag = 1;
        itemCheck = BARNDOOR;
    }
    if (forestCollision[OFFSET(player.worldCol, player.worldRow, FOREST_MAPWIDTH)] == 10)
    {
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow - 15;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = POND;
    }
    if (forestCollision[OFFSET(player.worldCol, player.worldRow, FOREST_MAPWIDTH)] == 5)
    {
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = PUMPKINCLUE;
    }
    if (forestCollision[OFFSET(player.worldCol, player.worldRow, FOREST_MAPWIDTH)] == 8)
    {
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow + 15;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = WAND;
        wandFound = 1;
    }
}