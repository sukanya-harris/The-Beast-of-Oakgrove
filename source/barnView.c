#include "mylib.h"
#include "game.h"
#include "barnView.h"
#include "barnCollision.h"
#include "roomView.h"
#include "forestView.h"

ANISPRITE player;
unsigned char* barn_CollisionMap = barnCollisionBitmap;

void initBarn() {
    initBPlayer();
    vOff = 0;
    hOff = 0;
    itemCheck = NONE;
}

void drawBarn() {
    shadowIndex = 0;
    drawLives();
    drawPotion();
    drawKey();
    drawAmulet();
    drawWand();
    drawBPlayer();
    DMANow(3, shadowOAM, OAM, 512);
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}
void updateBarn() {
    updateBPlayer();
}

void initBPlayer() {
    player.worldCol = 24;
    player.worldRow = 80;
    player.width = 16;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 1;
    player.aniCounter = 0;
    player.aniState = PLAYERFRONT;
    player.curFrame = 0;
}

void drawBPlayer() {
    if (player.hide) {
        shadowOAM[shadowIndex].attr0 |= ATTR0_HIDE;
        shadowIndex++;
    } else {
        shadowOAM[shadowIndex].attr0 = (ROWMASK & (player.worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[shadowIndex].attr1 = (COLMASK & (player.worldCol - hOff)) | ATTR1_SMALL;
        shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.aniState * 2, player.curFrame * 2);
        shadowIndex++;
    }
}

// #region Player Movement
void updateBPlayer() {
    if (BUTTON_HELD(BUTTON_UP))
    {
        if (player.worldRow - player.rdel >= 0 && updateBarnsMove(player.worldCol, player.worldRow, UP))
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
        if (player.worldRow + player.height + player.rdel <= BARN_MAPHEIGHT && updateBarnsMove(player.worldCol, player.worldRow, DOWN))
        {
            player.worldRow += player.rdel;

            if (vOff < (BARN_MAPHEIGHT - SCREENHEIGHT) && (player.worldRow - vOff) >= SCREENHEIGHT / 2)
            {
                vOff++;
            }
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT))
    {
        if (player.worldCol + player.cdel >= 0 && updateBarnsMove(player.worldCol, player.worldRow, LEFT))
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
        if (player.worldCol + player.width + player.cdel <= BARN_MAPWIDTH && updateBarnsMove(player.worldCol, player.worldRow, RIGHT))
        {
            player.worldCol += player.cdel;

            if (hOff < (BARN_MAPWIDTH - SCREENWIDTH) && (player.worldCol - hOff) >= SCREENWIDTH / 2)
            {
                hOff++;
            }
        }
    }
    animatePlayer();
    barnItems();
}
// #endregion

//checks where the player is on the screen and if the movement is valid
int updateBarnsMove(int col, int row, int direction) {
    switch (direction) {
    case UP:
        return walkableBarn(col, row - 1) && walkableBarn((col + 16 - 1), row - 1);
        break;
    case DOWN:
        return walkableBarn(col, (row + 16 - 1) + 1) && walkableBarn((col + 16 - 1), (row + 16 - 1) + 1);
        break;
    case LEFT:
        return walkableBarn(col - 1, row) && walkableBarn(col - 1, (row + 16 - 1));
        break;
    case RIGHT:
        return walkableBarn((col + 16 - 1) + 1, row) && walkableBarn((col + 16 - 1) + 1, (row + 16 - 1));
        break;
    }
    return 0;
}

int walkableBarn(int col, int row) {
    return barn_CollisionMap[OFFSET(col, row, BARN_MAPWIDTH)];
}

void barnItems()
{
    if (barn_CollisionMap[OFFSET(player.worldCol, player.worldRow, BARN_MAPWIDTH)] == 2)
    {
        player.prevRoomCol = player.worldCol;
        player.prevRoomRow = player.worldRow + 15;
        prevVOFFRoom = vOff;
        prevHOFFRoom = hOff;
        textFlag = 1;
        itemCheck = DOOR;
    }
    if (barn_CollisionMap[OFFSET(player.worldCol, player.worldRow, BARN_MAPWIDTH)] == 4)
    {
        player.prevItemCol = player.worldCol - 15;
        player.prevItemRow = player.worldRow;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = BED;
    }
    if (barn_CollisionMap[OFFSET(player.worldCol, player.worldRow, BARN_MAPWIDTH)] == 5)
    {
        player.prevItemCol = player.worldCol - 15;
        player.prevItemRow = player.worldRow + 15;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = VOODOO;
        keyFound = 1;
        clueNumber = CLUE5;
        bCounter++;
    }
    if (barn_CollisionMap[OFFSET(player.worldCol, player.worldRow, BARN_MAPWIDTH)] == 6)
    {
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow + 15;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = PUMPKIN2;
    }
    if (barn_CollisionMap[OFFSET(player.worldCol, player.worldRow, BARN_MAPWIDTH)] == 7)
    {
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow + 15;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        itemCheck = STAIRS;
        clueNumber = CLUE6;
        textFlag = 1;
        bCounter++;
    }
}
