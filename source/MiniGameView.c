#include "mylib.h"
#include "game.h"
#include "MiniGameView.h"
#include "spritesheet.h"
#include "minigameCollisionMap.h"
#include "bonesCollisionMap.h"

int timer;
int score;
int shadowIndex;
ANISPRITE player2;
unsigned char* collisionMap;
unsigned char* collisionMap2;

void initMinigame() {
    score = 400;
    timer = 800;
    hOff = 0;
    vOff = 0;
    collisionMap = minigameCollisionMapBitmap;
    collisionMap2 = bonesCollisionMapBitmap;
    initMiniGamePlayer();
}
void drawMinigame() {
    shadowIndex = 0;
    drawMiniGamePlayer();
    drawScore();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}
void updateMinigame() {
    updateMiniGamePlayer();
    updateScore();
    timer--;
}

void initMiniGamePlayer() {
    player2.width = 16;
    player2.height = 16;
    player2.rdel = 1;
    player2.cdel = 1;
    player2.worldRow = 80;
    player2.worldCol = 16;
    player2.aniCounter = 0;
    player2.curFrame = 0;
    player2.numFrames = 3;
    player2.aniState = PLAYERFRONT;
}

void updateMiniGamePlayer() {
    if(BUTTON_HELD(BUTTON_UP)) {
        if (player2.worldRow - player2.rdel >= 0 && updateMiniGameMovement(player2.worldCol, player2.worldRow, UP)) {
            player2.worldRow -= player2.rdel;
        } 
    }
    if(BUTTON_HELD(BUTTON_DOWN)) {
        if (player2.worldRow + player2.height + player2.rdel <= MAPHEIGHT && updateMiniGameMovement(player2.worldCol, player2.worldRow, DOWN)) {
            player2.worldRow += player2.rdel;
        }
    }
    if(BUTTON_HELD(BUTTON_LEFT)) {
        if (player2.worldCol + player2.cdel >= 0 && updateMiniGameMovement(player2.worldCol, player2.worldRow, LEFT)) {
            player2.worldCol -= player2.cdel;
        }
    }
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        if (player2.worldCol + player2.width + player2.cdel <= NORM_MAPWIDTH && updateMiniGameMovement(player2.worldCol, player2.worldRow, RIGHT)) {
            player2.worldCol += player2.cdel;
        }
    }
}

void updateScore() {
    if (!(collisionMap[OFFSET(player2.worldCol, player2.worldRow, NORM_MAPWIDTH)]
        && collisionMap2[OFFSET(player2.worldCol, player2.worldRow, BONES_MAPWIDTH)])) {
        if (score > 0) {
            score--;
        }
    }
}

void drawMiniGamePlayer() {
    if (player2.hide) {
        shadowOAM[shadowIndex].attr0 |= ATTR0_HIDE;
        shadowIndex++;
    } else {
        shadowOAM[shadowIndex].attr0 = (ROWMASK & player2.worldRow - vOff) | ATTR0_SQUARE;
        shadowOAM[shadowIndex].attr1 = (COLMASK & player2.worldCol - hOff) | ATTR1_TINY;
        shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 8);
        shadowIndex++;
    }
}

void drawScore() {
    //display the score as hundreds
    int tempScore = score;
    int onesDigit = tempScore % 10;
    tempScore = tempScore / 10;
    int tensDigit = tempScore % 10;
    tempScore = tempScore / 10;
    int hunderedsDigit = tempScore % 10;
    int * digit[3] = {&hunderedsDigit, &tensDigit, &onesDigit};
    for (int i = 0; i < 3; i++) {
        shadowOAM[i + shadowIndex].attr0 = 1 | ATTR0_SQUARE;
        shadowOAM[i + shadowIndex].attr1 = ((6 * i) + 120) | ATTR1_TINY;
        shadowOAM[i + shadowIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(*digit[i], 10);
    }
    shadowIndex++;
}

int updateMiniGameMovement(int col, int row, int direction) {
    switch (direction) {
    case UP:
        return walkableMiniGame(col, row - 1) && walkableMiniGame((col + 8 - 1), row - 1);
        break;
    case DOWN:
        return walkableMiniGame(col, (row + 8 - 1) + 1) && walkableMiniGame((col + 8 - 1), (row + 8 - 1) + 1);
        break;
    case LEFT:
        return walkableMiniGame(col - 1, row) && walkableMiniGame(col - 1, (row + 8 - 1));
        break;
    case RIGHT:
        return walkableMiniGame((col + 8 - 1) + 1, row) && walkableMiniGame((col + 8 - 1) + 1, (row + 8 - 1));
        break;
    }
    return 0;
}
int walkableMiniGame(int col, int row) {
    return collisionMap[OFFSET(col, row, SCREENWIDTH)];
}
