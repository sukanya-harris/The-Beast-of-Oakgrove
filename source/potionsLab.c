#include "mylib.h"
#include "game.h"
#include "potionsLab.h"
#include "potionsCollision.h"
#include "roomView.h"

ANISPRITE player;
unsigned char* potionsMap;

void initPotions() {
    vOff = 0;
    hOff = 0;
    itemCheck = NONE;
    initPPlayer();
    potionsMap = potionsCollisionBitmap;
}

void drawPotions() {
    shadowIndex = 0;
    drawLives();
    drawPotion();
    drawAmulet();
    drawPPlayer();
    DMANow(3, shadowOAM, OAM, 512);
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}
void updatePotions() {
    updatePPlayer();
}

void initPPlayer() {
    player.worldCol = 24;
    player.worldRow = 48;
    player.width = 16;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 1;
    player.aniCounter = 0;
    player.aniState = PLAYERFRONT;
    player.curFrame = 0;
}

void drawPPlayer() {
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
void updatePPlayer() {
    if (BUTTON_HELD(BUTTON_UP))
    {
        if (player.worldRow - player.rdel >= 0 && updatePotionsMove(player.worldCol, player.worldRow, UP))
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
        if (player.worldRow + player.height + player.rdel <= MAPHEIGHT && updatePotionsMove(player.worldCol, player.worldRow, DOWN))
        {
            player.worldRow += player.rdel;

            if (vOff < (MAPHEIGHT - SCREENHEIGHT) && (player.worldRow - vOff) >= SCREENHEIGHT / 2)
            {
                vOff++;
            }
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT))
    {
        if (player.worldCol + player.cdel >= 0 && updatePotionsMove(player.worldCol, player.worldRow, LEFT))
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
        if (player.worldCol + player.width + player.cdel <= POTIONS_MAPWIDTH && updatePotionsMove(player.worldCol, player.worldRow, RIGHT))
        {
            player.worldCol += player.cdel;

            if (hOff < (POTIONS_MAPWIDTH - SCREENWIDTH) && (player.worldCol - hOff) >= SCREENWIDTH / 2)
            {
                hOff++;
            }
        }
    }
    animatePlayer();
    potionsLabItems();
}
// #endregion

//checks where the player is on the screen and if the movement is valid
int updatePotionsMove(int col, int row, int direction) {
    switch (direction) {
    case UP:
        return walkablePotions(col, row - 1) && walkablePotions((col + 16 - 1), row - 1);
        break;
    case DOWN:
        return walkablePotions(col, (row + 16 - 1) + 1) && walkablePotions((col + 16 - 1), (row + 16 - 1) + 1);
        break;
    case LEFT:
        return walkablePotions(col - 1, row) && walkablePotions(col - 1, (row + 16 - 1));
        break;
    case RIGHT:
        return walkablePotions((col + 16 - 1) + 1, row) && walkablePotions((col + 16 - 1) + 1, (row + 16 - 1));
        break;
    }
    return 0;
}

int walkablePotions(int col, int row) {
    return potionsMap[OFFSET(col, row, POTIONS_MAPWIDTH)];
}

void potionsLabItems()
{
    if (potionsMap[OFFSET(player.worldCol, player.worldRow, POTIONS_MAPWIDTH)] == 2)
    {
        textFlag = 1;
        itemCheck = DOOR;
        player.worldCol = player.prevRoomCol;
        player.worldRow = player.prevRoomRow + 15;
        vOff = prevVOFFRoom;
        hOff = prevHOFFRoom;
    }
    if (potionsMap[OFFSET(player.worldCol, player.worldRow, POTIONS_MAPWIDTH)] == 3)
    {
        player.prevItemCol = 200;
        player.prevItemRow = 48;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = CAULDRON;
    }
    if (potionsMap[OFFSET(player.worldCol, player.worldRow, POTIONS_MAPWIDTH)] == 4)
    {
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow - 15;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = DESK;
    }
    if (potionsMap[OFFSET(player.worldCol, player.worldRow, POTIONS_MAPWIDTH)] == 5)
    {
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow + 15;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = CABINET;
        clueNumber = CLUE4;
        potionFound++;
        bCounter++;
    }
}