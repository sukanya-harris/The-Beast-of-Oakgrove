#include "mylib.h"
#include "game.h"
#include "roomView.h"
#include "roomCollisionMap.h"

ANISPRITE player;
int itemCheck = NONE;
unsigned char *collisionMap;

void initRoom() {
    vOff = 9;
    hOff = 9;
    collisionMap = roomCollisionMapBitmap;
    initPlayerInRoom((SCREENWIDTH / 2 - (player.width / 2) - 8), 34);
}

void drawRoom() {
    shadowIndex = 0;
    drawPlayerInRoom();
    drawLives();
    drawPotion();
    drawAmulet();
    DMANow(3, shadowOAM, OAM, 512);
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}

void updateRoom() {
    updatePlayerInRoom();
}

void initPlayerInRoom(int col, int row) {
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

void drawPlayerInRoom() {
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

// #region Room Movement
void updatePlayerInRoom()
{
    if (BUTTON_HELD(BUTTON_UP))
    {
        if (player.worldRow - player.rdel >= 0 && collisionMap[OFFSET(player.worldCol, player.worldRow - player.rdel, ROOM_MAPWIDTH)] && collisionMap[OFFSET(player.worldCol + player.width - 1, player.worldRow - player.rdel, ROOM_MAPWIDTH)])
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
        if (player.worldRow + player.height + player.rdel <= ROOM_MAPHEIGHT && collisionMap[OFFSET(player.worldCol, player.worldRow + player.height + player.rdel - 1, ROOM_MAPWIDTH)] && collisionMap[OFFSET(player.worldCol + player.width - 1, player.worldRow + player.rdel + player.height - 1, ROOM_MAPWIDTH)])
        {
            player.worldRow += player.rdel;
            if (vOff < (ROOM_MAPHEIGHT - SCREENHEIGHT) && (player.worldRow - vOff) >= SCREENHEIGHT / 2)
            {
                vOff++;
            }
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT))
    {
        if (player.worldCol + player.cdel >= 0 && collisionMap[OFFSET(player.worldCol - player.cdel, player.worldRow, ROOM_MAPWIDTH)] && collisionMap[OFFSET(player.worldCol - player.cdel, player.worldRow + player.height - 1, ROOM_MAPWIDTH)])
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
        if (player.worldCol + player.width + player.cdel <= ROOM_MAPWIDTH && collisionMap[OFFSET(player.worldCol + player.cdel + player.width - 1, player.worldRow, ROOM_MAPWIDTH)] && collisionMap[OFFSET(player.worldCol + player.cdel + player.width - 1, player.worldRow + player.height - 1, ROOM_MAPWIDTH)])
        {
            player.worldCol += player.cdel;
            if (hOff < (ROOM_MAPWIDTH - SCREENWIDTH) && (player.worldCol - hOff) >= SCREENWIDTH / 2)
            {
                hOff++;
            }
        }
    }
    animateRoomPlayer();
    itemCollisionRoom();
}
// #endregion

// #region Item Collision
void itemCollisionRoom()
{
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, ROOM_MAPWIDTH)] == 2)
    {
        textFlag = 1;
        itemCheck = DOOR;
        player.worldCol = player.prevRoomCol;
        player.worldRow = player.prevRoomRow + 15;
        vOff = prevVOFFRoom;
        hOff = prevHOFFRoom;
    }
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, ROOM_MAPWIDTH)] == 3)
    {
        textFlag = 1;
        itemCheck = BOOKSHELF;
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow + 15;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
    }
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, ROOM_MAPWIDTH)] == 4)
    {
        textFlag = 1;
        itemCheck = DESK;
        clueNumber = CLUE1;
        bCounter++;
        player.prevItemCol = player.worldCol + 15;
        player.prevItemRow = player.worldRow;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
    }
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, ROOM_MAPWIDTH)] == 5)
    {
        textFlag = 1;
        itemCheck = PLAQUE;
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow + 15;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
    }
}
// #endregion

//animate pacman to open mouth
void animateRoomPlayer() {
    player.prevAniState = player.aniState;
    player.aniState = PLAYERIDLE;

    if(player.aniCounter % 15 == 0) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }

    if (BUTTON_HELD(BUTTON_UP)) {
        player.aniState = PLAYERBACK;
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        player.aniState = PLAYERFRONT;
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        player.aniState = PLAYERLEFT;
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        player.aniState = PLAYERRIGHT;
    }

    if (player.aniState == PLAYERIDLE) {
        player.curFrame = 0;
        player.aniCounter = 0;
        player.aniState = player.prevAniState;
    } else {
        player.aniCounter++;
    }
}