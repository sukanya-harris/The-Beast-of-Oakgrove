#include "mylib.h"
#include "game.h"
#include "mazeView.h"
#include "mazeCollisionMap2.h"

int completeMaze;
int shadowIndex;
ANISPRITE player;
unsigned char *map;
int timer;

void initMaze() {
    map = mazeCollisionMap2Bitmap;
    vOff = 0;
    hOff = 0;
    timer = 1000;
    initPlayerMaze();
}

void updateMaze()
{
    updatePlayerMaze();
    timer--;
}

void drawMaze()
{
    shadowIndex = 0;
    drawPlayerMaze();
    drawTimer();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}

void initPlayerMaze()
{
    player.worldCol = 0;
    player.worldRow = 8;
    player.width = 8;
    player.height = 8;
    player.rdel = 1;
    player.cdel = 1;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 3;
    player.aniState = PLAYERFRONT;
}

void drawPlayerMaze()
{
    if (player.hide)
    {
        shadowOAM[shadowIndex].attr0 |= ATTR0_HIDE;
        shadowIndex++;
    }
    else
    {
        shadowOAM[shadowIndex].attr0 = (ROWMASK & (player.worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[shadowIndex].attr1 = (COLMASK & (player.worldCol - hOff)) | ATTR1_TINY;
        shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 8);
        shadowIndex++;
    }
}

// #region Maze Movement
void updatePlayerMaze() {
    if (BUTTON_HELD(BUTTON_UP))
    {
        if (player.worldRow - player.rdel >= 0 && updateMazeMovement(player.worldCol, player.worldRow, UP))
        {
            player.worldRow -= player.rdel;
            if (vOff >= 0 && (player.worldRow - vOff) <= SCREENHEIGHT / 2)
            {
                vOff--;
            }
        }
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        if (player.worldRow + player.height + player.rdel <= 256 && updateMazeMovement(player.worldCol, player.worldRow, DOWN))
        {
            player.worldRow += player.rdel;
            if (vOff < (256 - SCREENHEIGHT) && (player.worldRow - vOff) >= SCREENHEIGHT / 2)
            {
                vOff++;
            }
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        if (player.worldCol + player.cdel >= 0 && updateMazeMovement(player.worldCol, player.worldRow, LEFT))
        {
            player.worldCol -= player.cdel;
            if (hOff >= 0 && (player.worldCol - hOff) <= SCREENWIDTH / 2)
            {
                hOff--;
            }
        }
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        if (player.worldCol + player.width + player.cdel <= MAZE_MAPWIDTH && updateMazeMovement(player.worldCol, player.worldRow, RIGHT))
        {
            player.worldCol += player.cdel;
            if (hOff < (MAZE_MAPWIDTH - SCREENWIDTH) && (player.worldCol - hOff) >= SCREENWIDTH / 2)
            {
                hOff++;
            }
        }
    }
    finishMaze();
}
// #endregion

void finishMaze()
{
    if (map[OFFSET(player.worldCol, player.worldRow, MAZE_MAPWIDTH)] == 2)
    {
        completeMaze = 1;
    }
}

int updateMazeMovement(int col, int row, int direction) {
    switch (direction)
    {
    case UP:
        return walkableMaze(col, row - 1) && walkableMaze((col + 8 - 1), row - 1);
        break;
    case DOWN:
        return walkableMaze(col, (row + 8 - 1) + 1) && walkableMaze((col + 8 - 1), (row + 8 - 1) + 1);
        break;
    case LEFT:
        return walkableMaze(col - 1, row) && walkableMaze(col - 1, (row + 8 - 1));
        break;
    case RIGHT:
        return walkableMaze((col + 8 - 1) + 1, row) && walkableMaze((col + 8 - 1) + 1, (row + 8 - 1));
        break;
    }
    return 0;
}
int walkableMaze(int col, int row)
{
    return map[OFFSET(col, row, MAZE_MAPWIDTH)];
}

void drawTimer() {
    //display the score as hundreds
    int tempScore = timer;
    int onesDigit = tempScore % 10;
    tempScore = tempScore / 10;
    int tensDigit = tempScore % 10;
    tempScore = tempScore / 10;
    int hunderedsDigit = tempScore % 10;
    tempScore = tempScore / 10;
    int thousandsDigit = tempScore % 10;
    int * digit[4] = {&thousandsDigit, &hunderedsDigit, &tensDigit, &onesDigit};
    for (int i = 0; i < 4; i++) {
        shadowOAM[i + shadowIndex].attr0 = 1 | ATTR0_SQUARE;
        shadowOAM[i + shadowIndex].attr1 = ((6 * i) + 120) | ATTR1_TINY;
        shadowOAM[i + shadowIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(*digit[i], 10);
    }
    shadowIndex++;
}