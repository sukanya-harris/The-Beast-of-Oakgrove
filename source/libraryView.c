#include "mylib.h"
#include "game.h"
#include "libraryView.h"
#include "libraryCollision.h"
#include "roomView.h"

ANISPRITE player;
unsigned char* libraryCollision;

void initLibrary() {
    vOff = 0;
    hOff = 0;
    prevHOFFItem = 0;
    prevVOFFItem = 0;
    initLPlayer();
    itemCheck = NONE;
    libraryCollision = libraryCollisionBitmap;
}

void drawLibrary() {
    shadowIndex = 0;
    drawLPlayer();
    drawLives();
    drawPotion();
    drawAmulet();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}
void updateLibrary() {
    updateLPlayer();
}

void initLPlayer() {
    player.worldCol = 111;
    player.worldRow = 32;
    player.width = 16;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 1;
    player.prevItemCol = 0;
    player.prevItemRow = 0;
    player.aniCounter = 0;
    player.aniState = PLAYERFRONT;
    player.curFrame = 0;
}

void drawLPlayer() {
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
void updateLPlayer() {
    if (BUTTON_HELD(BUTTON_UP))
    {
        if (player.worldRow - player.rdel >= 0 && updateLibraryMovement(player.worldCol, player.worldRow, UP))
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
        if (player.worldRow + player.height + player.rdel <= LIBRARY_MAPHEIGHT && updateLibraryMovement(player.worldCol, player.worldRow, DOWN))
        {
            player.worldRow += player.rdel;

            if (vOff < (LIBRARY_MAPHEIGHT - SCREENHEIGHT) && (player.worldRow - vOff) >= SCREENHEIGHT / 2)
            {
                vOff++;
            }
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT))
    {
        if (player.worldCol + player.cdel >= 0 && updateLibraryMovement(player.worldCol, player.worldRow, LEFT))
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
        if (player.worldCol + player.width + player.cdel <= LIBRARY_MAPWIDTH && updateLibraryMovement(player.worldCol, player.worldRow, RIGHT))
        {
            player.worldCol += player.cdel;

            if (hOff < (LIBRARY_MAPWIDTH - SCREENWIDTH) && (player.worldCol - hOff) >= SCREENWIDTH / 2)
            {
                hOff++;
            }
        }
    }
    animatePlayer();
    libraryItems();
}
// #endregion

//checks where the player is on the screen and if the movement is valid
int updateLibraryMovement(int col, int row, int direction) {
    switch (direction) {
    case UP:
        return walkableLibrary(col, row - 1) && walkableLibrary((col + 16 - 1), row - 1);
        break;
    case DOWN:
        return walkableLibrary(col, (row + 16 - 1) + 1) && walkableLibrary((col + 16 - 1), (row + 16 - 1) + 1);
        break;
    case LEFT:
        return walkableLibrary(col - 1, row) && walkableLibrary(col - 1, (row + 16 - 1));
        break;
    case RIGHT:
        return walkableLibrary((col + 16 - 1) + 1, row) && walkableLibrary((col + 16 - 1) + 1, (row + 16 - 1));
        break;
    }
    return 0;
}

int walkableLibrary(int col, int row) {
    return libraryCollision[OFFSET(col, row, LIBRARY_MAPWIDTH)];
}

void libraryItems()
{
    if (libraryCollision[OFFSET(player.worldCol, player.worldRow, LIBRARY_MAPWIDTH)] == 2)
    {
        textFlag = 1;
        itemCheck = DOOR;
        player.worldCol = player.prevRoomCol;
        player.worldRow = player.prevRoomRow + 15;
        vOff = prevVOFFRoom;
        hOff = prevHOFFRoom;
    }
    if (libraryCollision[OFFSET(player.worldCol, player.worldRow, LIBRARY_MAPWIDTH)] == 3)
    {
        player.prevItemCol = player.worldCol - 8;
        player.prevItemRow = player.worldRow;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = BOOKS;
        clueNumber = CLUE2;
        bCounter++;
    }
    if (libraryCollision[OFFSET(player.worldCol, player.worldRow, LIBRARY_MAPWIDTH)] == 4)
    {
        player.prevItemCol = 33;
        player.prevItemRow = 136;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = BOOKSHELF;
        clueNumber = CLUE7;
        potionFound++;
        bCounter++;
    }
}