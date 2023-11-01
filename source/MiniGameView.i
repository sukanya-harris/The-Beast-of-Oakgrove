# 1 "MiniGameView.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "MiniGameView.c"
# 1 "mylib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "mylib.h"
extern unsigned short *videoBuffer;
# 85 "mylib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "mylib.h"
void hideSprites();






typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int prevRoomRow;
    int prevRoomCol;
    int prevItemRow;
    int prevItemCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
    int health;
    int damage;
} ANISPRITE;
# 206 "mylib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 217 "mylib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 257 "mylib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 298 "mylib.h"
typedef void (*ihp_t)(void);
# 362 "mylib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);

extern int bgTimer;
# 2 "MiniGameView.c" 2
# 1 "game.h" 1







extern enum aniStates {PLAYERFRONT, PLAYERBACK, PLAYERLEFT, PLAYERRIGHT, PLAYERIDLE};
extern enum directions {UP, DOWN, LEFT, RIGHT};
extern enum rooms {MAIN, ROOM1, LIBRARY, POTIONS, OFFICEROOM, OUTSIDE1, BOSS, BARNROOM};
extern enum clues {ZERO, CLUE1, CLUE2, CLUE3, CLUE4, CLUE5, CLUE6, CLUE7, CLUE8};
extern int hOff;
extern int vOff;
extern int mini;
extern int lives;
extern int emptyLives;
extern int roomNumber;
extern int clueNumber;
extern int doorFlag;
extern int bCounter;
extern int potionFound;
extern int shadowIndex;
extern int textFlag;
extern int keyFound;
extern int amulet;
extern int wandFound;
extern int prevHOFFRoom;
extern int prevVOFFRoom;
extern int prevHOFFItem;
extern int prevVOFFItem;
extern int itemCheck;
extern unsigned char* collisionMap;
extern OBJ_ATTR shadowOAM[128];
extern ANISPRITE player;
extern ANISPRITE sage;
extern ANISPRITE scarlett;
extern ANISPRITE sapphire;
extern ANISPRITE *sisters[];
extern ANISPRITE hearts;
extern ANISPRITE wand;
extern ANISPRITE potions;
extern ANISPRITE key;
extern ANISPRITE familyAmulet;
extern ANISPRITE *inventory[4];


void initGame();
void updateGame();
void drawGame();
void initPlayer();
void updatePlayer();
void animatePlayer();
void drawPlayer();
void initSisters();
void updateSisters();
void drawSisters();
void animateSisters();
void doorCollision(unsigned char*);
int updateMovement();
int walkable();
void drawLives();
void drawPotion();
void drawKey();
void animatePlayer();
# 3 "MiniGameView.c" 2
# 1 "MiniGameView.h" 1



extern int timer;
extern int score;
extern ANISPRITE player2;
extern ANISPRITE* bats[];
void initMinigame();
void updateMinigame();
void drawMinigame();

void initMiniGamePlayer();
void drawMiniGamePlayer();
void updateMiniGamePlayer();
void updateScore();
void drawScore();
int updateMiniGameMovement();
int walkableMiniGame();
# 4 "MiniGameView.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 5 "MiniGameView.c" 2
# 1 "minigameCollisionMap.h" 1
# 21 "minigameCollisionMap.h"
extern const unsigned short minigameCollisionMapBitmap[19200];


extern const unsigned short minigameCollisionMapPal[256];
# 6 "MiniGameView.c" 2
# 1 "bonesCollisionMap.h" 1
# 21 "bonesCollisionMap.h"
extern unsigned short bonesCollisionMapBitmap[65536];


extern const unsigned short bonesCollisionMapPal[256];
# 7 "MiniGameView.c" 2

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
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    (*(volatile unsigned short *)0x04000014) = hOff;
    (*(volatile unsigned short *)0x04000016) = vOff;
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
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
        if (player2.worldRow - player2.rdel >= 0 && updateMiniGameMovement(player2.worldCol, player2.worldRow, UP)) {
            player2.worldRow -= player2.rdel;
        }
    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {
        if (player2.worldRow + player2.height + player2.rdel <= 512 && updateMiniGameMovement(player2.worldCol, player2.worldRow, DOWN)) {
            player2.worldRow += player2.rdel;
        }
    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
        if (player2.worldCol + player2.cdel >= 0 && updateMiniGameMovement(player2.worldCol, player2.worldRow, LEFT)) {
            player2.worldCol -= player2.cdel;
        }
    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
        if (player2.worldCol + player2.width + player2.cdel <= 256 && updateMiniGameMovement(player2.worldCol, player2.worldRow, RIGHT)) {
            player2.worldCol += player2.cdel;
        }
    }
}

void updateScore() {
    if (!(collisionMap[((player2.worldRow)*(256)+(player2.worldCol))]
        && collisionMap2[((player2.worldRow)*(512)+(player2.worldCol))])) {
        if (score > 0) {
            score--;
        }
    }
}

void drawMiniGamePlayer() {
    if (player2.hide) {
        shadowOAM[shadowIndex].attr0 |= (2<<8);
        shadowIndex++;
    } else {
        shadowOAM[shadowIndex].attr0 = (0xFF & player2.worldRow - vOff) | (0<<14);
        shadowOAM[shadowIndex].attr1 = (0x1FF & player2.worldCol - hOff) | (0<<14);
        shadowOAM[shadowIndex].attr2 = ((0)<<12) | ((8)*32+(0));
        shadowIndex++;
    }
}

void drawScore() {

    int tempScore = score;
    int onesDigit = tempScore % 10;
    tempScore = tempScore / 10;
    int tensDigit = tempScore % 10;
    tempScore = tempScore / 10;
    int hunderedsDigit = tempScore % 10;
    int * digit[3] = {&hunderedsDigit, &tensDigit, &onesDigit};
    for (int i = 0; i < 3; i++) {
        shadowOAM[i + shadowIndex].attr0 = 1 | (0<<14);
        shadowOAM[i + shadowIndex].attr1 = ((6 * i) + 120) | (0<<14);
        shadowOAM[i + shadowIndex].attr2 = ((0)<<12) | ((10)*32+(*digit[i]));
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
    return collisionMap[((row)*(240)+(col))];
}
