#include "mylib.h"
#include "game.h"
#include "officeView.h"
#include "officeCollision.h"
#include "roomView.h"

ANISPRITE player;
int itemCheck;
unsigned char* officeCollision;

void initOffice() {
    vOff = 9;
    hOff = 9;
    officeCollision = officeCollisionBitmap;
    initOfficePlayer((SCREENWIDTH / 2 - (player.width / 2) - 8), 34);
}

void drawOffice() {
    shadowIndex = 0;
    drawOfficePlayer();
    drawLives();
    drawPotion();
    drawAmulet();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}
void updateOffice() {
    updateOfficePlayer();
}

void initOfficePlayer(int col, int row) {
    player.worldCol = col;
    player.worldRow = row;
    player.width = 16;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 1;
    player.aniCounter = 0;
    player.aniState = PLAYERFRONT;
    player.curFrame = 0;
    player.numFrames = 3;
}

void drawOfficePlayer() {
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

// #region Player Movement
void updateOfficePlayer() {
    if (BUTTON_HELD(BUTTON_UP))
    {
        if (player.worldRow - player.rdel >= 0 && updateOfficeMovement(player.worldCol, player.worldRow, UP))
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
        if (player.worldRow + player.height + player.rdel <= OFFICE_MAPHEIGHT && updateOfficeMovement(player.worldCol, player.worldRow, DOWN))
        {
            player.worldRow += player.rdel;

            if (vOff < (OFFICE_MAPHEIGHT - SCREENHEIGHT) && (player.worldRow - vOff) >= SCREENHEIGHT / 2)
            {
                vOff++;
            }
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT))
    {
        if (player.worldCol + player.cdel >= 0 && updateOfficeMovement(player.worldCol, player.worldRow, LEFT))
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
        if (player.worldCol + player.width + player.cdel <= OFFICE_MAPWIDTH && updateOfficeMovement(player.worldCol, player.worldRow, RIGHT))
        {
            player.worldCol += player.cdel;

            if (hOff < (OFFICE_MAPWIDTH - SCREENWIDTH) && (player.worldCol - hOff) >= SCREENWIDTH / 2)
            {
                hOff++;
            }
        }
    }
    animatePlayer();
    officeItems();
}
// #endregion

//checks where the player is on the screen and if the movement is valid
int updateOfficeMovement(int col, int row, int direction) {
    switch (direction) {
    case UP:
        return walkableOffice(col, row - 1) && walkableOffice((col + 16 - 1), row - 1);
        break;
    case DOWN:
        return walkableOffice(col, (row + 16 - 1) + 1) && walkableOffice((col + 16 - 1), (row + 16 - 1) + 1);
        break;
    case LEFT:
        return walkableOffice(col - 1, row) && walkableOffice(col - 1, (row + 16 - 1));
        break;
    case RIGHT:
        return walkableOffice((col + 16 - 1) + 1, row) && walkableOffice((col + 16 - 1) + 1, (row + 16 - 1));
        break;
    }
    return 0;
}

int walkableOffice(int col, int row) {
    return officeCollision[OFFSET(col, row, OFFICE_MAPWIDTH)];
}

void officeItems()
{
    if (officeCollision[OFFSET(player.worldCol, player.worldRow, OFFICE_MAPWIDTH)] == 2)
    {
        textFlag = 1;
        itemCheck = DOOR;
        player.worldCol = player.prevRoomCol;
        player.worldRow = player.prevRoomRow + 15;
        vOff = prevVOFFRoom;
        hOff = prevHOFFRoom;
    }
    if (officeCollision[OFFSET(player.worldCol, player.worldRow, OFFICE_MAPWIDTH)] == 3)
    {
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow - 15;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = CHEST;
        clueNumber = CLUE3;
        bCounter++;
    }
    if (officeCollision[OFFSET(player.worldCol, player.worldRow, OFFICE_MAPWIDTH)] == 4)
    {
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow - 15;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = PUMPKIN;
    }
    if (officeCollision[OFFSET(player.worldCol, player.worldRow, OFFICE_MAPWIDTH)] == 5) {
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow + 15;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = DRAWERS;
        clueNumber = CLUE4;
        potionFound++;
        bCounter++;
    }
}