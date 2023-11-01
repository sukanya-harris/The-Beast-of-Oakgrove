# 1 "mazeView.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "mazeView.c"
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
# 2 "mazeView.c" 2
# 1 "game.h" 1







extern enum aniStates {PLAYERFRONT, PLAYERBACK, PLAYERLEFT, PLAYERRIGHT, PLAYERIDLE};
extern enum directions {UP, DOWN, LEFT, RIGHT};
extern enum rooms {MAIN, ROOM1, LIBRARY, POTIONS, OFFICEROOM, OUTSIDE1, BOSS, BARNROOM};
extern enum clues {ZERO, CLUE1, CLUE2, CLUE3, CLUE4, CLUE5, CLUE6, CLUE7, CLUE8};
extern int hOff;
extern int vOff;
extern int mini;
extern int lives;
extern int roomNumber;
extern int clueNumber;
extern int doorFlag;
extern int bCounter;
extern int potionFound;
extern int shadowIndex;
extern int textFlag;
extern int keyFound;
extern int amulet;
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
void drawAmulet();
void animatePlayer();
# 3 "mazeView.c" 2
# 1 "mazeView.h" 1

extern int completeMaze;

void initMaze();
void updateMaze();
void drawMaze();
void initPlayerMaze();
void updatePlayerMaze();
void drawPlayerMaze();
void finishMaze();
# 4 "mazeView.c" 2
# 1 "mazeCollisionMap2.h" 1
# 21 "mazeCollisionMap2.h"
extern const unsigned short mazeCollisionMap2Bitmap[32768];


extern const unsigned short mazeCollisionMap2Pal[256];
# 5 "mazeView.c" 2

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
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    (*(volatile unsigned short *)0x04000014) = hOff;
    (*(volatile unsigned short *)0x04000016) = vOff;
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
        shadowOAM[shadowIndex].attr0 |= (2<<8);
        shadowIndex++;
    }
    else
    {
        shadowOAM[shadowIndex].attr0 = (0xFF & (player.worldRow - vOff)) | (0<<14);
        shadowOAM[shadowIndex].attr1 = (0x1FF & (player.worldCol - hOff)) | (0<<14);
        shadowOAM[shadowIndex].attr2 = ((0)<<12) | ((8)*32+(0));
        shadowIndex++;
    }
}


void updatePlayerMaze() {
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6))))
    {
        if (player.worldRow - player.rdel >= 0 && updateMazeMovement(player.worldCol, player.worldRow, UP))
        {
            player.worldRow -= player.rdel;
            if (vOff >= 0 && (player.worldRow - vOff) <= 160 / 2)
            {
                vOff--;
            }
        }
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {
        if (player.worldRow + player.height + player.rdel <= 256 && updateMazeMovement(player.worldCol, player.worldRow, DOWN))
        {
            player.worldRow += player.rdel;
            if (vOff < (256 - 160) && (player.worldRow - vOff) >= 160 / 2)
            {
                vOff++;
            }
        }
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
        if (player.worldCol + player.cdel >= 0 && updateMazeMovement(player.worldCol, player.worldRow, LEFT))
        {
            player.worldCol -= player.cdel;
            if (hOff >= 0 && (player.worldCol - hOff) <= 240 / 2)
            {
                hOff--;
            }
        }
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
        if (player.worldCol + player.width + player.cdel <= 256 && updateMazeMovement(player.worldCol, player.worldRow, RIGHT))
        {
            player.worldCol += player.cdel;
            if (hOff < (256 - 240) && (player.worldCol - hOff) >= 240 / 2)
            {
                hOff++;
            }
        }
    }
    finishMaze();
}


void finishMaze()
{
    if (map[((player.worldRow)*(256)+(player.worldCol))] == 2)
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
    return map[((row)*(256)+(col))];
}

void drawTimer() {

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
        shadowOAM[i + shadowIndex].attr0 = 1 | (0<<14);
        shadowOAM[i + shadowIndex].attr1 = ((6 * i) + 120) | (0<<14);
        shadowOAM[i + shadowIndex].attr2 = ((0)<<12) | ((10)*32+(*digit[i]));
    }
    shadowIndex++;
}
