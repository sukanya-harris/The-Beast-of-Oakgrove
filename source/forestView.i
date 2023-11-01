# 1 "forestView.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "forestView.c"
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
# 2 "forestView.c" 2
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
# 3 "forestView.c" 2
# 1 "forestView.h" 1



void initForest();
void drawForest();
void updateForest();

void initForestPlayer();
void drawForestPlayer();
void updateForestPlayer();
# 4 "forestView.c" 2
# 1 "forestCollision.h" 1
# 21 "forestCollision.h"
extern const unsigned short forestCollisionBitmap[32768];


extern const unsigned short forestCollisionPal[256];
# 5 "forestView.c" 2
# 1 "roomView.h" 1



extern ANISPRITE roomPlayer;
extern enum {NONE, BOOKSHELF, DESK, PLAQUE, BOOKS, CAULDRON, CABINET, CHEST, PUMPKIN, BARNDOOR, BED, VOODOO, PUMPKIN2, DRAWERS, STAIRS, DOOR, AMULET, HEADMISTRESS, POND, PUMPKINCLUE, WAND};

void initRoom();
void drawRoom();
void updateRoom();
void initPlayerInRoom(int, int);
void drawPlayerInRoom();
void updatePlayerInRoom();
void itemCollisionRoom();
# 6 "forestView.c" 2

ANISPRITE player;
ANISPRITE wand;
int wandFound = 0;
unsigned char* forestCollision;

void initForest() {
    vOff = 0;
    hOff = 0;
    initForestPlayer();
    itemCheck = NONE;
    forestCollision = forestCollisionBitmap;
}

void drawForest() {
    shadowIndex = 0;
    drawForestPlayer();
    drawPotion();
    drawLives();
    drawAmulet();
    drawWand();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    (*(volatile unsigned short *)0x04000014) = hOff;
    (*(volatile unsigned short *)0x04000016) = vOff;
}
void updateForest() {
    updateForestPlayer();
}

void initForestPlayer() {
    player.worldCol = 17;
    player.worldRow = 144;
    player.width = 16;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 1;
    player.aniCounter = 0;
    player.aniState = PLAYERFRONT;
    player.curFrame = 0;
}

void drawForestPlayer() {
    if (player.hide) {
        shadowOAM[shadowIndex].attr0 |= (2<<8);
        shadowIndex++;
    }
    else {
        shadowOAM[shadowIndex].attr0 = (0xFF & (player.worldRow - vOff)) | (0<<14);
        shadowOAM[shadowIndex].attr1 = (0x1FF & (player.worldCol - hOff)) | (1<<14);
        shadowOAM[shadowIndex].attr2 = ((0)<<12) | ((player.curFrame * 2)*32+(player.aniState * 2));
        shadowIndex++;
    }
}

void drawWand() {
    if (wandFound) {
        if (wand.hide) {
            shadowOAM[shadowIndex].attr0 |= (2<<8);
            shadowIndex++;
        }
        else {
            shadowOAM[shadowIndex].attr0 = (0xFF & 145) | (0<<14);
            shadowOAM[shadowIndex].attr1 = (0x1FF & 223) | (1<<14);
            shadowOAM[shadowIndex].attr2 = ((2)<<12) | ((11)*32+(6));
            shadowIndex++;
        }
    }
}


void updateForestPlayer() {
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6))))
    {
        if (player.worldRow - player.rdel >= 0 && updateForestFloor(player.worldCol, player.worldRow, UP))
        {
            player.worldRow -= player.rdel;

            if (vOff >= 0 && (player.worldRow - vOff) <= 160 / 2)
            {
                vOff--;
            }
        }
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7))))
    {
        if (player.worldRow + player.height + player.rdel <= 256 && updateForestFloor(player.worldCol, player.worldRow, DOWN))
        {
            player.worldRow += player.rdel;

            if (vOff < (256 - 160) && (player.worldRow - vOff) >= 160 / 2)
            {
                vOff++;
            }
        }
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5))))
    {
        if (player.worldCol + player.cdel >= 0 && updateForestFloor(player.worldCol, player.worldRow, LEFT))
        {

            player.worldCol -= player.cdel;

            if (hOff >= 0 && (player.worldCol - hOff) <= 240 / 2)
            {
                hOff--;
            }
        }
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4))))
    {
        if (player.worldCol + player.width + player.cdel <= 256 && updateForestFloor(player.worldCol, player.worldRow, RIGHT))
        {
            player.worldCol += player.cdel;

            if (hOff < (256 - 240) && (player.worldCol - hOff) >= 240 / 2)
            {
                hOff++;
            }
        }
    }
    animatePlayer();
    forestItems();
}



int updateForestFloor(int col, int row, int direction) {
    switch (direction) {
    case UP:
        return walkableForest(col, row - 1) && walkableForest((col + 16 - 1), row - 1);
        break;
    case DOWN:
        return walkableForest(col, (row + 16 - 1) + 1) && walkableForest((col + 16 - 1), (row + 16 - 1) + 1);
        break;
    case LEFT:
        return walkableForest(col - 1, row) && walkableForest(col - 1, (row + 16 - 1));
        break;
    case RIGHT:
        return walkableForest((col + 16 - 1) + 1, row) && walkableForest((col + 16 - 1) + 1, (row + 16 - 1));
        break;
    }
    return 0;
}

int walkableForest(int col, int row) {
    return forestCollision[((row)*(256)+(col))];
}

void forestItems()
{
    if (forestCollision[((player.worldRow)*(256)+(player.worldCol))] == 2)
    {
        player.worldCol = player.prevRoomCol;
        player.worldRow = player.prevRoomRow + 15;
        vOff = prevVOFFRoom;
        hOff = prevHOFFRoom;
        textFlag = 1;
        itemCheck = NONE;
    }
    if (forestCollision[((player.worldRow)*(256)+(player.worldCol))] == 3)
    {
        textFlag = 1;
        itemCheck = BARNDOOR;
    }
    if (forestCollision[((player.worldRow)*(256)+(player.worldCol))] == 10)
    {
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow - 15;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = POND;
    }
    if (forestCollision[((player.worldRow)*(256)+(player.worldCol))] == 5)
    {
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = PUMPKINCLUE;
    }
    if (forestCollision[((player.worldRow)*(256)+(player.worldCol))] == 8)
    {
        player.prevItemCol = player.worldCol;
        player.prevItemRow = player.worldRow + 15;
        prevVOFFItem = vOff;
        prevHOFFItem = hOff;
        textFlag = 1;
        itemCheck = WAND;
        wandFound = 1;
    }
}
