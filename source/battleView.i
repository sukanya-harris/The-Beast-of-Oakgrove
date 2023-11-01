# 1 "battleView.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "battleView.c"
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
# 2 "battleView.c" 2
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
# 3 "battleView.c" 2
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
# 4 "battleView.c" 2
# 1 "battleView.h" 1




extern enum buttonState {UNCLICKED, CLICK, BLANK};
extern enum healthAnimation {EIGHT, SEVEN, SIX, FIVE, FOUR, THREE, TWO, ONE};
extern ANISPRITE beast;
extern ANISPRITE cursor;
extern ANISPRITE playerBar;
extern ANISPRITE beastBar;
extern ANISPRITE *healthBars[];
extern ANISPRITE fight;
extern ANISPRITE heal;
extern ANISPRITE run;
extern ANISPRITE talk;
extern ANISPRITE *options[];
extern ANISPRITE prompt;
extern ANISPRITE bullets;
extern int playerWon;
extern int finalBattleTimer;

void initBattle();
void updateBattle();
void drawBattle();
void initBP();
void drawBP();
void updateBP();
# 5 "battleView.c" 2

ANISPRITE player;
ANISPRITE beast;
ANISPRITE playerBar;
ANISPRITE beastBar;
ANISPRITE *healthBars[] = {&playerBar, &beastBar};
ANISPRITE bullets;
ANISPRITE beastBullet;
int battleTimer;
int playerWon = 0;
int amulet;
int fireBullet = 0;
int beastFiring = 0;

void initBattle()
{
    initBP();
    initBeast();
    initHealthBar();
    initBeastBullet();
}

void updateBattle()
{
    battleTimer++;
    updateBP();
    updateBeast();
    if (beast.damage == 10)
    {
        playerWon = 1;
    }
}

void drawBattle()
{
    shadowIndex = 0;
    drawBP();
    drawBeast();
    drawHealthBar();
    drawBullet();
    drawBeastBullet();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
}


void initBP()
{
    player.width = 8;
    player.height = 8;
    player.rdel = 1;
    player.cdel = 1;
    player.worldRow = 97;
    player.worldCol = 111;
    player.health = 100;
    player.damage = 0;
}

void drawBP()
{
    if (player.hide)
    {
        shadowOAM[shadowIndex].attr0 |= (2<<8);
        shadowIndex++;
    }
    else
    {
        shadowOAM[shadowIndex].attr0 = (0xFF & (player.worldRow)) | (0<<14);
        shadowOAM[shadowIndex].attr1 = (0x1FF & (player.worldCol)) | (0<<14);
        shadowOAM[shadowIndex].attr2 = ((7)<<12) | ((9)*32+(0));
        shadowIndex++;
    }
}


void updateBP()
{
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5))) && player.worldCol >= player.cdel)
    {
        player.worldCol -= player.cdel;
    }
    else if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4))) && player.worldCol + player.width - 1 < 207 - player.cdel)
    {
        player.worldCol += player.cdel;
    }
    else if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6))) && player.worldRow >= player.rdel)
    {
        player.worldRow -= player.rdel;
    }
    else if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7))) && player.worldRow + player.height - 1 < 119 - player.rdel)
    {
        player.worldRow += player.rdel;
    }
    if ((!(~(oldButtons)&((1<<9))) && (~buttons & ((1<<9)))))
    {
        initBullets();
        bullets.hide = 0;
        fireBullet = 1;
    }
    if (fireBullet)
    {
        if (bullets.worldRow + bullets.height - 1 >= 25)
        {
            bullets.worldRow -= bullets.rdel;
        }
        else
        {
            fireBullet = 0;
            bullets.hide = 1;
        }
    }
}


void initBeast()
{
    beast.worldCol = 111;
    beast.worldRow = 24;
    beast.width = 32;
    beast.height = 32;
    beast.curFrame = 0;
    beast.aniCounter = 0;
    beast.aniState = PLAYERFRONT;
    beast.numFrames = 4;
    beast.health = 100;
    beast.cdel = 1;
    beast.damage = 0;
}
void drawBeast()
{
    if (beast.hide)
    {
        shadowOAM[shadowIndex].attr0 |= (2<<8);
        shadowIndex++;
    }
    else
    {
        shadowOAM[shadowIndex].attr0 = (0xFF & (beast.worldRow)) | (0<<14);
        shadowOAM[shadowIndex].attr1 = (0x1FF & (beast.worldCol)) | (2<<14);
        shadowOAM[shadowIndex].attr2 = ((5)<<12) | ((15 + (beast.curFrame * 4))*32+(16));
        shadowIndex++;
    }
}


void updateBeast()
{
    if (!(beast.hide))
    {
        if ((beast.worldCol + beast.width - 1 >= 207) || (beast.worldCol <= 33))
        {
            beast.cdel *= -1;
        }
        beast.worldCol += beast.cdel;
    }
    if (battleTimer % 2 == 0 && beastFiring == 0) {
        beastFiring = 1;
        beastBullet.hide = 0;
        beastBullet.worldRow = beast.worldRow + beast.height/2;
        beastBullet.worldCol = beast.worldCol + beast.width/2;
    }
    if (beastFiring) {
        if (beastBullet.worldRow < 118) {
            beastBullet.worldRow += beastBullet.rdel;
        }
        else {
            beastBullet.hide = 1;
            beastFiring = 0;
        }
    }
    if (collision(bullets.worldCol, bullets.worldRow, bullets.width, bullets.height, beast.worldCol, beast.worldRow, beast.width, beast.height) && !(bullets.hide))
    {
        bullets.hide = 1;
        if (amulet)
        {
            beast.damage += 2;
        }
        else
        {
            beast.damage++;
        }
    }
    if (collision(beastBullet.worldCol, beastBullet.worldRow, beastBullet.width, beastBullet.height, player.worldCol, player.worldRow, player.width, player.height) && !(beastBullet.hide))
    {
        beastBullet.hide = 1;
        if (amulet)
        {
            player.damage++;
        }
        else
        {
            player.damage += 2;
        }
    }
    animateBeast();
}

void animateBeast()
{
    if (beast.aniCounter % 12 == 0)
    {
        if (beast.curFrame < beast.numFrames - 1)
        {
            beast.curFrame++;
        }
        else
        {
            beast.curFrame = 0;
        }
    }
    beast.aniCounter++;
}


void initBullets()
{
    bullets.worldRow = player.worldRow;
    bullets.worldCol = player.worldCol;
    bullets.width = 8;
    bullets.height = 8;
    bullets.rdel = 1;
    bullets.cdel = 1;
    bullets.hide = 1;
}

void drawBullet()
{
    if (bullets.hide)
    {
        shadowOAM[shadowIndex].attr0 |= (2<<8);
        shadowIndex++;
    }
    else
    {
        shadowOAM[shadowIndex].attr0 = bullets.worldRow | (0<<14);
        shadowOAM[shadowIndex].attr1 = bullets.worldCol | (0<<14);
        shadowOAM[shadowIndex].attr2 = ((7)<<12) | ((11)*32+(14));
        shadowIndex++;
    }
}


void initBeastBullet()
{
    beastBullet.width = 16;
    beastBullet.height = 16;
    beastBullet.rdel = 2;
    beastBullet.cdel = 1;
    beastBullet.hide = 1;
}

void drawBeastBullet()
{
    if (beastBullet.hide)
    {
        shadowOAM[shadowIndex].attr0 |= (2<<8);
        shadowIndex++;
    }
    else
    {
        shadowOAM[shadowIndex].attr0 = beastBullet.worldRow | (0<<14);
        shadowOAM[shadowIndex].attr1 = beastBullet.worldCol | (1<<14);
        shadowOAM[shadowIndex].attr2 = ((7)<<12) | ((11)*32+(15));
        shadowIndex++;
    }
}


void initHealthBar()
{
    for (int i = 0; i < 2; i++)
    {
        healthBars[i]->width = 32;
        healthBars[i]->height = 8;
        healthBars[i]->numFrames = 10;
        healthBars[i]->curFrame = 0;
        healthBars[i]->aniCounter = 0;
        healthBars[i]->aniState = EIGHT;
        if (i == 0)
        {
            healthBars[i]->worldCol = 8;
            healthBars[i]->worldRow = 16;
        }
        if (i == 1)
        {
            healthBars[i]->worldCol = 200;
            healthBars[i]->worldRow = 16;
        }
    }
}

void drawHealthBar()
{
    for (int i = 0; i < 2; i++)
    {
        if (healthBars[i]->hide)
        {
            shadowOAM[shadowIndex].attr0 |= (2<<8);
            shadowIndex++;
        }
        else
        {
            if (i == 0)
            {
                shadowOAM[shadowIndex].attr0 = (0xFF & (healthBars[i]->worldRow)) | (1<<14);
                shadowOAM[shadowIndex].attr1 = (0x1FF & (healthBars[i]->worldCol)) | (1<<14);
                shadowOAM[shadowIndex].attr2 = ((7)<<12) | ((19 + player.damage)*32+(4));
                shadowIndex++;
            }
            else
            {
                shadowOAM[shadowIndex].attr0 = (0xFF & (healthBars[i]->worldRow)) | (1<<14);
                shadowOAM[shadowIndex].attr1 = (0x1FF & (healthBars[i]->worldCol)) | (1<<14);
                shadowOAM[shadowIndex].attr2 = ((7)<<12) | ((19 + beast.damage)*32+(0));
                shadowIndex++;
            }
        }
    }
}
