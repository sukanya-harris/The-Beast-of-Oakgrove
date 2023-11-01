#include <stdlib.h>
#include <stdio.h>
#include "mylib.h"
#include "game.h"
#include "collisionMapTest.h"
#include "roomView.h"

int hOff;
int vOff;
int shadowIndex = 0;
int mini = 0;
int textFlag = 0;
int doorFlag = 0;
int keyPromptFlag;
int lives = 4;
int potionFound = 0;
int keyFound = 0;
int amulet = 0;
int prevHOFF;
int prevVOFF;
unsigned char *collisionMap = collisionMapTestBitmap;
OBJ_ATTR shadowOAM[128];
ANISPRITE hearts;
ANISPRITE potions;
ANISPRITE player;
ANISPRITE textbox;
ANISPRITE sage;
ANISPRITE scarlett;
ANISPRITE sapphire;
ANISPRITE key;
ANISPRITE familyAmulet;
ANISPRITE *sisters[] = {&sage, &scarlett, &sapphire};

// Initialize the game
void initGame()
{
    // Place camera screen on map
    vOff = 0;
    hOff = 0;
    prevHOFFRoom = 0;
    prevVOFFRoom = 0;
    initPlayer();
    initSisters();
}

void updateGame()
{
    updatePlayer();
    updateSisters();
    if (potionFound == 3)
    {
        keyPromptFlag = 1;
    }
}

void drawGame()
{
    shadowIndex = 0;
    drawPlayer();
    drawSisters();
    drawLives();
    drawPotion();
    drawKey();
    drawAmulet();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}

void initPlayer()
{
    player.width = 16;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 1;
    player.worldRow = 40;
    player.worldCol = 48;
    player.prevRoomRow = 0;
    player.prevRoomCol = 0;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 3;
    player.aniState = PLAYERFRONT;
}

// #region Player Movement
void updatePlayer()
{
    if (BUTTON_HELD(BUTTON_UP))
    {
        if (player.worldRow - player.rdel >= 0 && updateMovement(player.worldCol, player.worldRow, UP))
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
        if (player.worldRow + player.height + player.rdel <= MAPHEIGHT && updateMovement(player.worldCol, player.worldRow, DOWN))
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
        if (player.worldCol + player.cdel >= 0 && updateMovement(player.worldCol, player.worldRow, LEFT))
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
        if (player.worldCol + player.width + player.cdel <= MAPWIDTH && updateMovement(player.worldCol, player.worldRow, RIGHT))
        {
            player.worldCol += player.cdel;

            if (hOff < (MAPWIDTH - SCREENWIDTH) && (player.worldCol - hOff) >= SCREENWIDTH / 2)
            {
                hOff++;
            }
        }
    }
    animatePlayer();
    doorCollision(collisionMap);
}
// #endregion

// #region update movement for anisprites
int updateMovement(int col, int row, int direction)
{
    switch (direction)
    {
    case UP:
        return walkable(col, row - 1) && walkable((col + 16 - 1), row - 1);
        break;
    case DOWN:
        return walkable(col, (row + 16 - 1) + 1) && walkable((col + 16 - 1), (row + 16 - 1) + 1);
        break;
    case LEFT:
        return walkable(col - 1, row) && walkable(col - 1, (row + 16 - 1));
        break;
    case RIGHT:
        return walkable((col + 16 - 1) + 1, row) && walkable((col + 16 - 1) + 1, (row + 16 - 1));
        break;
    }
    return 0;
}
// #endregion

// #region checks to see if this spot is walkable for anisprites
int walkable(int col, int row)
{
    return collisionMap[OFFSET(col, row, MAPWIDTH)];
}
// #endregion

// #region Draw Player
void drawPlayer()
{
    if (player.hide)
    {
        shadowOAM[shadowIndex].attr0 |= ATTR0_HIDE;
        shadowIndex++;
    }
    else
    {
        shadowOAM[shadowIndex].attr0 = (ROWMASK & (player.worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[shadowIndex].attr1 = (COLMASK & (player.worldCol - hOff)) | ATTR1_SMALL;
        shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.aniState * 2, player.curFrame * 2);
        shadowIndex++;
    }
}
// #endregion

// #region animate the player walking
void animatePlayer()
{
    player.prevAniState = player.aniState;
    player.aniState = PLAYERIDLE;

    if (player.aniCounter % 15 == 0)
    {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }

    if (BUTTON_HELD(BUTTON_UP))
    {
        player.aniState = PLAYERBACK;
    }
    if (BUTTON_HELD(BUTTON_DOWN))
    {
        player.aniState = PLAYERFRONT;
    }
    if (BUTTON_HELD(BUTTON_LEFT))
    {
        player.aniState = PLAYERLEFT;
    }
    if (BUTTON_HELD(BUTTON_RIGHT))
    {
        player.aniState = PLAYERRIGHT;
    }

    if (player.aniState == PLAYERIDLE)
    {
        player.curFrame = 0;
        player.aniCounter = 0;
        player.aniState = player.prevAniState;
    }
    else
    {
        player.aniCounter++;
    }
}
// #endregion

// #region initiliaze sisters to specific parts of the map
void initSisters()
{
    for (int i = 0; i < SISTERCOUNT; i++)
    {
        sisters[i]->width = 16;
        sisters[i]->height = 16;
        sisters[i]->rdel = 1;
        sisters[i]->cdel = 1;
        sisters[i]->curFrame = 0;
        sisters[i]->aniCounter = 0;
        sisters[i]->numFrames = 3;
        if (i == 0)
        {
            sisters[i]->worldCol = 464;
            sisters[i]->worldRow = 479;
            sisters[i]->aniState = PLAYERLEFT;
        }
        else if (i == 1)
        {
            sisters[i]->worldCol = 372;
            sisters[i]->worldRow = 140;
            sisters[i]->aniState = PLAYERLEFT;
        }
        else
        {
            sisters[i]->worldCol = 197;
            sisters[i]->worldRow = 64;
            sisters[i]->aniState = PLAYERBACK;
        }
    }
}
// #endregion

// #region draw Enemies to screen
void drawSisters() {
    int z = 8;
    for (int i = 0; i < 3; i++)
    {
        if ((sisters[i]->worldRow - vOff + sisters[i]->height >= 0) && (sisters[i]->worldCol + sisters[i]->width - hOff >= 0) && sisters[i]->worldRow - vOff <= SCREENHEIGHT && sisters[i]->worldCol - hOff <= SCREENWIDTH) {
            if (sisters[i]->hide) {
                shadowOAM[shadowIndex].attr0 |= ATTR0_HIDE;
                shadowIndex++;
            }
            else
            {
                shadowOAM[shadowIndex].attr0 = (ROWMASK & (sisters[i]->worldRow - vOff)) | ATTR0_SQUARE;
                shadowOAM[shadowIndex].attr1 = (COLMASK & (sisters[i]->worldCol - hOff)) | ATTR1_SMALL;
                shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID((2 * sisters[i]->aniState) + z, (sisters[i]->curFrame * 2));
                shadowIndex++;
            }
        }
        z += 8;
    }
}
// #endregion

// #region Sister's Collision and Movement
void updateSisters()
{
    if (collision(player.worldCol, player.worldRow, player.width, player.height, sisters[0]->worldCol, sisters[0]->worldRow, sisters[0]->width, sisters[0]->height))
    {
        prevVOFFItem = 0;
        prevHOFFItem = 0;
        player.prevItemRow = 48;
        player.prevItemCol = 40;
        mini = 1;
    }
    if (collision(player.worldCol, player.worldRow, player.width, player.height, sisters[1]->worldCol, sisters[1]->worldRow, sisters[1]->width, sisters[1]->height))
    {
        prevVOFFItem = 0;
        prevHOFFItem = 0;
        player.prevItemRow = 48;
        player.prevItemCol = 40;
        mini = 2;
    }
    if (collision(player.worldCol, player.worldRow, player.width, player.height, sisters[2]->worldCol, sisters[2]->worldRow, sisters[2]->width, sisters[2]->height))
    {
        prevVOFFItem = 0;
        prevHOFFItem = 0;
        player.prevItemRow = 48;
        player.prevItemCol = 40;
        mini = rand() % 2 + 1;
    }
    for (int i = 0; i < 3; i++)
    {
        int ranDirec[3] = {PLAYERBACK, PLAYERLEFT, PLAYERRIGHT};
        if (sisters[i]->aniState == PLAYERFRONT)
        {
            if (sisters[i]->worldRow - sisters[i]->rdel >= 48 && updateMovement(sisters[i]->worldCol, sisters[i]->worldRow, UP))
            {
                sisters[i]->worldRow -= sisters[i]->rdel;
            }
            else
            {
                sisters[i]->aniState = ranDirec[rand() % 3];
            }
        }
        if (sisters[i]->aniState == PLAYERBACK)
        {
            ranDirec[0] = PLAYERFRONT;
            if (sisters[i]->worldRow + sisters[i]->height + sisters[i]->rdel <= 495 && updateMovement(sisters[i]->worldCol, sisters[i]->worldRow, DOWN))
            {
                sisters[i]->worldRow += sisters[i]->rdel;
            }
            else
            {
                sisters[i]->aniState = ranDirec[rand() % 3];
            }
        }
        if (sisters[i]->aniState == PLAYERLEFT)
        {
            ranDirec[1] = PLAYERFRONT;
            if (sisters[i]->worldCol + sisters[i]->cdel >= 0 && updateMovement(sisters[i]->worldCol, sisters[i]->worldRow, LEFT))
            {
                sisters[i]->worldCol -= sisters[i]->cdel;
            }
            else
            {
                sisters[i]->aniState = ranDirec[rand() % 3];
            }
        }
        if (sisters[i]->aniState == PLAYERRIGHT)
        {
            ranDirec[2] = PLAYERFRONT;
            if (sisters[i]->worldCol + sisters[i]->width + sisters[i]->cdel <= MAPWIDTH && updateMovement(sisters[i]->worldCol, sisters[i]->worldRow, RIGHT))
            {
                sisters[i]->worldCol += sisters[i]->cdel;
            }
            else
            {
                sisters[i]->aniState = ranDirec[rand() % 3];
            }
        }
        animateSisters();
    }
}
// #endregion

void animateSisters()
{
    for (int i = 0; i < SISTERCOUNT; i++)
    {
        if (sisters[i]->aniCounter % 30 == 0)
        {
            if (sisters[i]->curFrame < sisters[i]->numFrames - 1)
            {
                sisters[i]->curFrame++;
            }
            else
            {
                sisters[i]->curFrame = 0;
            }
        }
        sisters[i]->aniCounter++;
    }
}

void drawLives()
{
    int x = 10;
    for (int i = 0; i < lives; i++)
    {
        if (hearts.hide)
        {
            shadowOAM[shadowIndex].attr0 |= ATTR0_HIDE;
            shadowIndex++;
        }
        else
        {
            shadowOAM[shadowIndex].attr0 = (ROWMASK & (145)) | ATTR0_SQUARE;
            shadowOAM[shadowIndex].attr1 = (COLMASK & (x)) | ATTR1_SMALL;
            shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(1, 8);
            shadowIndex++;
        }
        x += 15;
    }
}

// #region collision checks
void doorCollision(unsigned char *check)
{
    if (check[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 2)
    {
        prevVOFFRoom = vOff;
        prevHOFFRoom = hOff;
        player.prevRoomRow = player.worldRow;
        player.prevRoomCol = player.worldCol;
        textFlag = 1;
        doorFlag = 1;
    }
    if (check[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 3)
    {
        prevVOFFRoom = vOff;
        prevHOFFRoom = hOff;
        player.prevRoomRow = player.worldRow;
        player.prevRoomCol = player.worldCol;
        textFlag = 1;
        doorFlag = 2;
    }
    if (check[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 4)
    {
        prevVOFFRoom = vOff;
        prevHOFFRoom = hOff;
        player.prevRoomRow = player.worldRow;
        player.prevRoomCol = player.worldCol;
        textFlag = 1;
        doorFlag = 3;
    }
    if (check[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 5)
    {
        prevVOFFRoom = vOff;
        prevHOFFRoom = hOff;
        player.prevRoomRow = player.worldRow;
        player.prevRoomCol = player.worldCol;
        textFlag = 1;
        doorFlag = 4;
    }
    if (check[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 7)
    {
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        player.prevItemRow = player.worldRow;
        player.prevItemCol = player.worldCol;
        textFlag = 1;
        itemCheck = PUMPKIN;
    }
    if (check[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 8)
    {
        if ((potionFound == 3) || (amulet))
        {
            prevVOFFRoom = vOff;
            prevHOFFRoom = hOff;
            player.prevRoomRow = player.worldRow;
            player.prevRoomCol = player.worldCol;
            textFlag = 1;
            doorFlag = 7;
        }
        else
        {
            prevVOFFRoom = vOff;
            prevHOFFRoom = hOff;
            player.prevRoomRow = player.worldRow;
            player.prevRoomCol = player.worldCol;
            textFlag = 1;
            doorFlag = 8;
        }
    }
    if (check[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 6)
    {
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow + 15;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        doorFlag = 0;
        amulet = 1;
        itemCheck = AMULET;
        clueNumber = CLUE8;
        bCounter++;
    }
    if (check[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 13)
    {
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow + 15;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        doorFlag = 0;
        itemCheck = HEADMISTRESS;
    } 
}
// #endregion

// #region potion to screen
void drawPotion()
{
    int x = 180;
    for (int i = 0; i < potionFound; i++)
    {
        if (potions.hide)
        {
            shadowOAM[shadowIndex].attr0 |= ATTR0_HIDE;
            shadowIndex++;
        }
        else
        {
            shadowOAM[shadowIndex].attr0 = (ROWMASK & (145)) | ATTR0_SQUARE;
            shadowOAM[shadowIndex].attr1 = (COLMASK & (x)) | ATTR1_SMALL;
            shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(0, 11);
            shadowIndex++;
        }
        x += 15;
    }
}
// #endregion

// #region key to screen
void drawKey()
{
    if (keyFound)
    {
        if (key.hide)
        {
            shadowOAM[shadowIndex].attr0 |= ATTR0_HIDE;
            shadowIndex++;
        }
        else
        {
            shadowOAM[shadowIndex].attr0 = (ROWMASK & (145)) | ATTR0_SQUARE;
            shadowOAM[shadowIndex].attr1 = (COLMASK & (165)) | ATTR1_SMALL;
            shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, 11);
            shadowIndex++;
        }
    }
}
// #endregion

// #region Amulet for cheat
void drawAmulet()
{
    if (amulet)
    {
        if (familyAmulet.hide)
        {
            shadowOAM[shadowIndex].attr0 |= ATTR0_HIDE;
            shadowIndex++;
        }
        else
        {
            shadowOAM[shadowIndex].attr0 = (ROWMASK & (145)) | ATTR0_SQUARE;
            shadowOAM[shadowIndex].attr1 = (COLMASK & (148)) | ATTR1_SMALL;
            shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(2, 11);
            shadowIndex++;
        }
    }
}
// #endregion
