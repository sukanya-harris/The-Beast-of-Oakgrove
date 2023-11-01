# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"

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
# 3 "main.c" 2
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
# 4 "main.c" 2
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
# 5 "main.c" 2
# 1 "minigameBG.h" 1
# 22 "minigameBG.h"
extern const unsigned short minigameBGTiles[32];


extern const unsigned short minigameBGMap[1024];


extern const unsigned short minigameBGPal[256];
# 6 "main.c" 2
# 1 "title.h" 1
# 22 "title.h"
extern const unsigned short titleTiles[7312];


extern const unsigned short titleMap[1024];


extern const unsigned short titlePal[256];
# 7 "main.c" 2
# 1 "instructions.h" 1
# 22 "instructions.h"
extern const unsigned short instructionsTiles[3760];


extern const unsigned short instructionsMap[1024];


extern const unsigned short instructionsPal[256];
# 8 "main.c" 2
# 1 "instructions01.h" 1
# 22 "instructions01.h"
extern const unsigned short instructions01Tiles[5328];


extern const unsigned short instructions01Map[1024];


extern const unsigned short instructions01Pal[256];
# 9 "main.c" 2
# 1 "instructions02.h" 1
# 22 "instructions02.h"
extern const unsigned short instructions02Tiles[5024];


extern const unsigned short instructions02Map[1024];


extern const unsigned short instructions02Pal[256];
# 10 "main.c" 2
# 1 "foreground.h" 1
# 22 "foreground.h"
extern const unsigned short foregroundTiles[240];


extern const unsigned short foregroundMap[1024];


extern const unsigned short foregroundPal[256];
# 11 "main.c" 2
# 1 "pause.h" 1
# 22 "pause.h"
extern const unsigned short pauseTiles[1824];


extern const unsigned short pauseMap[1024];


extern const unsigned short pausePal[256];
# 12 "main.c" 2
# 1 "lose.h" 1
# 22 "lose.h"
extern const unsigned short loseTiles[1712];


extern const unsigned short loseMap[1024];


extern const unsigned short losePal[256];
# 13 "main.c" 2
# 1 "winBG.h" 1
# 22 "winBG.h"
extern const unsigned short winBGTiles[1760];


extern const unsigned short winBGMap[2048];


extern const unsigned short winBGPal[256];
# 14 "main.c" 2
# 1 "winBG1.h" 1
# 22 "winBG1.h"
extern const unsigned short winBG1Tiles[1488];


extern const unsigned short winBG1Map[2048];


extern const unsigned short winBG1Pal[256];
# 15 "main.c" 2
# 1 "winText.h" 1
# 22 "winText.h"
extern const unsigned short winTextTiles[832];


extern const unsigned short winTextMap[1024];


extern const unsigned short winTextPal[256];
# 16 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 17 "main.c" 2
# 1 "collisionMapTest.h" 1
# 21 "collisionMapTest.h"
extern const unsigned short collisionMapTestBitmap[131072];


extern const unsigned short collisionMapTestPal[256];
# 18 "main.c" 2
# 1 "minigameCollisionMap.h" 1
# 21 "minigameCollisionMap.h"
extern const unsigned short minigameCollisionMapBitmap[19200];


extern const unsigned short minigameCollisionMapPal[256];
# 19 "main.c" 2
# 1 "bone2.h" 1
# 22 "bone2.h"
extern const unsigned short bone2Tiles[2176];


extern const unsigned short bone2Map[2048];


extern const unsigned short bone2Pal[256];
# 20 "main.c" 2
# 1 "startBG.h" 1
# 22 "startBG.h"
extern const unsigned short startBGTiles[6656];


extern const unsigned short startBGMap[1024];


extern const unsigned short startBGPal[256];
# 21 "main.c" 2
# 1 "startText.h" 1
# 22 "startText.h"
extern const unsigned short startTextTiles[2592];


extern const unsigned short startTextMap[1024];


extern const unsigned short startTextPal[256];
# 22 "main.c" 2
# 1 "textbox.h" 1
# 21 "textbox.h"
extern const unsigned short textboxBitmap[19200];


extern const unsigned short textboxPal[256];
# 23 "main.c" 2
# 1 "textboxView.h" 1
void initText();
void drawText();
# 24 "main.c" 2
# 1 "room.h" 1
# 22 "room.h"
extern const unsigned short roomTiles[2128];


extern const unsigned short roomMap[1024];


extern const unsigned short roomPal[256];
# 25 "main.c" 2
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
# 26 "main.c" 2
# 1 "roomCollisionMap.h" 1
# 21 "roomCollisionMap.h"
extern const unsigned short roomCollisionMapBitmap[32768];


extern const unsigned short roomCollisionMapPal[256];
# 27 "main.c" 2
# 1 "mazeView.h" 1

extern int completeMaze;

void initMaze();
void updateMaze();
void drawMaze();
void initPlayerMaze();
void updatePlayerMaze();
void drawPlayerMaze();
void finishMaze();
# 28 "main.c" 2
# 1 "maze2.h" 1
# 22 "maze2.h"
extern const unsigned short maze2Tiles[1488];


extern const unsigned short maze2Map[1024];


extern const unsigned short maze2Pal[256];
# 29 "main.c" 2
# 1 "testBG.h" 1
# 22 "testBG.h"
extern const unsigned short testBGTiles[4624];


extern const unsigned short testBGMap[4096];


extern const unsigned short testBGPal[256];
# 30 "main.c" 2
# 1 "mountainBG.h" 1
# 22 "mountainBG.h"
extern const unsigned short mountainBGTiles[2848];


extern const unsigned short mountainBGMap[1024];


extern const unsigned short mountainBGPal[256];
# 31 "main.c" 2
# 1 "mountainFarBG.h" 1
# 22 "mountainFarBG.h"
extern const unsigned short mountainFarBGTiles[1008];


extern const unsigned short mountainFarBGMap[2048];


extern const unsigned short mountainFarBGPal[256];
# 32 "main.c" 2
# 1 "mountainForegroundTrees.h" 1
# 22 "mountainForegroundTrees.h"
extern const unsigned short mountainForegroundTreesTiles[3648];


extern const unsigned short mountainForegroundTreesMap[3072];


extern const unsigned short mountainForegroundTreesPal[256];
# 33 "main.c" 2
# 1 "mountainMountainsBG.h" 1
# 22 "mountainMountainsBG.h"
extern const unsigned short mountainMountainsBGTiles[1376];


extern const unsigned short mountainMountainsBGMap[2048];


extern const unsigned short mountainMountainsBGPal[256];
# 34 "main.c" 2
# 1 "mountainTrees.h" 1
# 22 "mountainTrees.h"
extern const unsigned short mountainTreesTiles[1376];


extern const unsigned short mountainTreesMap[2048];


extern const unsigned short mountainTreesPal[256];
# 35 "main.c" 2
# 1 "titleScreen.h" 1
# 22 "titleScreen.h"
extern const unsigned short titleScreenTiles[3536];


extern const unsigned short titleScreenMap[1024];


extern const unsigned short titleScreenPal[256];
# 36 "main.c" 2
# 1 "library.h" 1
# 22 "library.h"
extern const unsigned short libraryTiles[1168];


extern const unsigned short libraryMap[1024];


extern const unsigned short libraryPal[256];
# 37 "main.c" 2
# 1 "libraryView.h" 1



void initLibrary();
void drawLibrary();
void updateLibrary();
void initLPlayer();
void drawLPlayer();
void updateLPlayer();
void libraryItems();
# 38 "main.c" 2
# 1 "potionsRoom.h" 1
# 22 "potionsRoom.h"
extern const unsigned short potionsRoomTiles[1776];


extern const unsigned short potionsRoomMap[1024];


extern const unsigned short potionsRoomPal[256];
# 39 "main.c" 2
# 1 "potionsLab.h" 1



void initPotions();
void drawPotions();
void updatePotions();
void initPPlayer();
void drawPPlayer();
void updatePPlayer();
void potionsLabItems();
# 40 "main.c" 2
# 1 "forest.h" 1
# 22 "forest.h"
extern const unsigned short forestTiles[4832];


extern const unsigned short forestMap[1024];


extern const unsigned short forestPal[256];
# 41 "main.c" 2
# 1 "office.h" 1
# 22 "office.h"
extern const unsigned short officeTiles[3616];


extern const unsigned short officeMap[1024];


extern const unsigned short officePal[256];
# 42 "main.c" 2
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
# 43 "main.c" 2
# 1 "forestView.h" 1



void initForest();
void drawForest();
void updateForest();

void initForestPlayer();
void drawForestPlayer();
void updateForestPlayer();
void drawWand();
# 44 "main.c" 2
# 1 "barn.h" 1
# 22 "barn.h"
extern const unsigned short barnTiles[2800];


extern const unsigned short barnMap[1024];


extern const unsigned short barnPal[256];
# 45 "main.c" 2
# 1 "barnRoom.h" 1
# 22 "barnRoom.h"
extern const unsigned short barnRoomTiles[2800];


extern const unsigned short barnRoomMap[1024];


extern const unsigned short barnRoomPal[256];
# 46 "main.c" 2
# 1 "barnView.h" 1



void initBarn();
void updateBarn();
void drawBarn();
# 47 "main.c" 2
# 1 "sound.h" 1
void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 49 "sound.h"
typedef struct{
    const signed char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 48 "main.c" 2
# 1 "academy.h" 1


extern const unsigned int academy_sampleRate;
extern const unsigned int academy_length;
extern const signed char academy_data[];
# 49 "main.c" 2
# 1 "blackCat.h" 1


extern const unsigned int blackCat_sampleRate;
extern const unsigned int blackCat_length;
extern const signed char blackCat_data[];
# 50 "main.c" 2
# 1 "everglowDunDun.h" 1


extern const unsigned int everglowDunDun_sampleRate;
extern const unsigned int everglowDunDun_length;
extern const signed char everglowDunDun_data[];
# 51 "main.c" 2
# 1 "enemyArcane.h" 1


extern const unsigned int enemyArcane_sampleRate;
extern const unsigned int enemyArcane_length;
extern const signed char enemyArcane_data[];
# 52 "main.c" 2
# 1 "blackpinkPrettySavage.h" 1


extern const unsigned int blackpinkPrettySavage_sampleRate;
extern const unsigned int blackpinkPrettySavage_length;
extern const signed char blackpinkPrettySavage_data[];
# 53 "main.c" 2
# 1 "mamamooHIP.h" 1


extern const unsigned int mamamooHIP_sampleRate;
extern const unsigned int mamamooHIP_length;
extern const signed char mamamooHIP_data[];
# 54 "main.c" 2
# 1 "bossBattle.h" 1
# 22 "bossBattle.h"
extern const unsigned short bossBattleTiles[928];


extern const unsigned short bossBattleMap[1024];


extern const unsigned short bossBattlePal[256];
# 55 "main.c" 2
# 1 "theBeast.h" 1


extern const unsigned int theBeast_sampleRate;
extern const unsigned int theBeast_length;
extern const signed char theBeast_data[];
# 56 "main.c" 2
# 1 "Celeste.h" 1


extern const unsigned int Celeste_sampleRate;
extern const unsigned int Celeste_length;
extern const signed char Celeste_data[];
# 57 "main.c" 2
# 1 "pause0.h" 1
# 22 "pause0.h"
extern const unsigned short pause0Tiles[1216];


extern const unsigned short pause0Map[2048];


extern const unsigned short pause0Pal[256];
# 58 "main.c" 2
# 1 "pause1.h" 1
# 22 "pause1.h"
extern const unsigned short pause1Tiles[944];


extern const unsigned short pause1Map[2048];


extern const unsigned short pause1Pal[256];
# 59 "main.c" 2
# 1 "pause2.h" 1
# 22 "pause2.h"
extern const unsigned short pause2Tiles[720];


extern const unsigned short pause2Map[2048];


extern const unsigned short pause2Pal[256];
# 60 "main.c" 2
# 1 "equip.h" 1


extern const unsigned int equip_sampleRate;
extern const unsigned int equip_length;
extern const signed char equip_data[];
# 61 "main.c" 2
# 1 "dialogue.h" 1


extern const unsigned int dialogue_sampleRate;
extern const unsigned int dialogue_length;
extern const signed char dialogue_data[];
# 62 "main.c" 2
# 1 "loseScreen.h" 1


extern const unsigned int loseScreen_sampleRate;
extern const unsigned int loseScreen_length;
extern const signed char loseScreen_data[];
# 63 "main.c" 2
# 1 "winScreen.h" 1


extern const unsigned int winScreen_sampleRate;
extern const unsigned int winScreen_length;
extern const signed char winScreen_data[];
# 64 "main.c" 2
# 1 "pauseScreen.h" 1


extern const unsigned int pauseScreen_sampleRate;
extern const unsigned int pauseScreen_length;
extern const signed char pauseScreen_data[];
# 65 "main.c" 2
# 1 "instructions03.h" 1
# 22 "instructions03.h"
extern const unsigned short instructions03Tiles[2960];


extern const unsigned short instructions03Map[1024];


extern const unsigned short instructions03Pal[256];
# 66 "main.c" 2



void initialize();
void goToStart();
void start();
void goToInstructions();
void instructions();
void goToGame();
void game();
void goToMinigame();
void miniGame();
void goToMaze();
void maze();
void goToPopup();
void popup();
void goToRoom();
void room();
void goToLibrary();
void library();
void goToPotionsLab();
void potionsLab();
void goToOffice();
void office();
void goToForest();
void forest();
void goToBarn();
void barn();
void goToBossBattle();
void battle();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();
void goToWin();
void win();



enum
{
    START,
    INTSRUCTIONS,
    GAME,
    MINIGAME,
    MAZE,
    POPUP,
    ROOM,
    LIBRARYROOM,
    POTIONSROOM,
    OFFICE,
    FOREST,
    BARN,
    BATTLE,
    PAUSE,
    LOSE,
    WIN
};
int state;

int roomNumber;
int bCounter;
int aCounter;
int clueNumber;
int potionFound;
int prevHOFFRoom;
int prevVOFFRoom;
int prevVOFFItem;
int prevHOFFItem;
ANISPRITE aButton;


unsigned short buttons;
unsigned short oldButtons;
int bgTimer;
int parallaxTimer;

OBJ_ATTR shadowOAM[128];

int main()
{
    initialize();

    while (1)
    {

        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);


        switch (state)
        {
        case START:
            start();
            break;
        case INTSRUCTIONS:
            instructions();
            break;
        case GAME:
            game();
            break;
        case MINIGAME:
            miniGame();
            break;
        case MAZE:
            maze();
            break;
        case POPUP:
            popup();
            break;
        case ROOM:
            room();
            break;
        case LIBRARYROOM:
            library();
            break;
        case POTIONSROOM:
            potionsLab();
            break;
        case OFFICE:
            office();
            break;
        case FOREST:
            forest();
            break;
        case BARN:
            barn();
            break;
        case BATTLE:
            battle();
            break;
        case PAUSE:
            pause();
            break;
        case LOSE:
            lose();
            break;
        case WIN:
            win();
            break;
        }
    }
}


void initialize()
{

    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<9) | (1<<12);

    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<14) | (0<<7);
    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((15)<<8) | (3<<14) | (0<<7);
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    buttons = (*(volatile unsigned short *)0x04000130);
    oldButtons = 0;

    setupInterrupts();
    setupSounds();

    goToStart();
}


void goToStart()
{
    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<9) | (1<<10) | (1<<11) | (1<<12);


    (*(volatile unsigned short*)0x400000E) = (0<<14) | ((1)<<2) | ((15)<<8);
    DMANow(3, mountainBGPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, mountainBGTiles, &((charblock *)0x6000000)[1], 5696 / 2);
    DMANow(3, mountainBGMap, &((screenblock *)0x6000000)[15], 2048 / 2);

    (*(volatile unsigned short*)0x400000C) = (1<<14) | ((2)<<2) | ((21)<<8);
    DMANow(3, mountainMountainsBGTiles, &((charblock *)0x6000000)[2], 2752 / 2);
    DMANow(3, mountainMountainsBGMap, &((screenblock *)0x6000000)[21], 4096 / 2);

    (*(volatile unsigned short*)0x400000A) = (1<<14) | ((3)<<2) | ((28)<<8);
    DMANow(3, mountainTreesTiles, &((charblock *)0x6000000)[3], 2752 / 2);
    DMANow(3, mountainTreesMap, &((screenblock *)0x6000000)[28], 4096 / 2);

    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((0)<<2) | ((31)<<8);
    DMANow(3, titleScreenTiles, &((charblock *)0x6000000)[0], 7072 / 2);
    DMANow(3, titleScreenMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;
    (*(volatile unsigned short *)0x04000014) = hOff;
    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000018) = hOff;
    (*(volatile unsigned short *)0x0400001A) = vOff;
    (*(volatile unsigned short *)0x0400001C) = hOff;
    (*(volatile unsigned short *)0x0400001E) = vOff;

    stopSound();
    playSoundA(blackCat_data, blackCat_length, 1);

    state = START;
}


void start()
{
    parallaxTimer++;
    (*(volatile unsigned short *)0x04000014) = parallaxTimer / 2;
    (*(volatile unsigned short *)0x04000018) = parallaxTimer / 5;
    (*(volatile unsigned short *)0x0400001C) = parallaxTimer / 8;
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
    {


        goToGame();
        initGame();
    }
    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0)))))
    {
        goToInstructions();
    }
}



void goToInstructions()
{
    (*(unsigned short *)0x4000000) = 0 | (1<<8);
    waitForVBlank();
    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((0)<<2) | ((31)<<8);
    DMANow(3, instructionsPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, instructions01Tiles, &((charblock *)0x6000000)[0], 10656 / 2);
    DMANow(3, instructions01Map, &((screenblock *)0x6000000)[31], 2048 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    state = INTSRUCTIONS;
}

void instructions()
{
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
    {
        goToGame();
        initGame();
    }
    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0)))))
    {
        aCounter++;
        if (aCounter == 1)
        {
            DMANow(3, instructions02Tiles, &((charblock *)0x6000000)[0], 10048 / 2);
            DMANow(3, instructions02Map, &((screenblock *)0x6000000)[31], 2048 / 2);
            DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
        }
        if (aCounter == 2)
        {
            DMANow(3, instructions03Tiles, &((charblock *)0x6000000)[0], 5920 / 2);
            DMANow(3, instructions03Map, &((screenblock *)0x6000000)[31], 2048 / 2);
            DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
        }
        if (aCounter == 3) {
            DMANow(3, instructionsTiles, &((charblock *)0x6000000)[0], 7520 / 2);
            DMANow(3, instructionsMap, &((screenblock *)0x6000000)[31], 2048 / 2);
            DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
        }
    }
}



void goToGame()
{
    collisionMap = collisionMapTestBitmap;

    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);
    waitForVBlank();

    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((28)<<8) | (3<<14);
    DMANow(3, testBGPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, testBGTiles, &((charblock *)0x6000000)[1], 9248 / 2);
    DMANow(3, testBGMap, &((screenblock *)0x6000000)[28], 8192 / 2);

    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000014) = hOff;
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;
    state = GAME;
}


void game()
{

    mini = 0;
    completeMaze = 0;
    roomNumber = MAIN;
    clueNumber = ZERO;
    updateGame();
    drawGame();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
    {
        pauseSound();
        playSoundB(pauseScreen_data, pauseScreen_length, 0);
        goToPause();
    }
    if (lives == 0)
    {
        goToLose();
    }
    if (mini == 1)
    {
        goToMinigame();
        initMinigame();
    }
    else if (mini == 2)
    {
        goToMaze();
        initMaze();
    }
    if (textFlag)
    {
        goToPopup();
        initText();
    }
}



void goToMinigame()
{
    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<9) | (1<<12);
    waitForVBlank();

    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((1)<<2) | ((15)<<8);
    DMANow(3, minigameBGPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, minigameBGTiles, &((charblock *)0x6000000)[1], 64 / 2);
    DMANow(3, minigameBGMap, &((screenblock *)0x6000000)[15], 2048 / 2);

    (*(volatile unsigned short*)0x400000A) = (3<<14) | ((0)<<2) | ((28)<<8);
    DMANow(3, bone2Tiles, &((charblock *)0x6000000)[0], 4352 / 2);
    DMANow(3, bone2Map, &((screenblock *)0x6000000)[28], 4096 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000014) = hOff;
    state = MINIGAME;
}

void miniGame()
{

    mini = 1;
    bgTimer++;
    (*(volatile unsigned short *)0x04000014) = bgTimer * 2;
    updateMinigame();
    drawMinigame();
    if (timer == 0)
    {
        if (score > 200)
        {
            player.worldCol = player.prevItemCol;
            player.worldRow = player.prevItemRow;
            vOff = prevVOFFItem;
            hOff = prevHOFFItem;
            goToGame();
        }
        else
        {
            lives--;
            player.worldCol = player.prevItemCol;
            player.worldRow = player.prevItemRow;
            vOff = prevVOFFItem;
            hOff = prevHOFFItem;
            goToGame();
        }
    }
}



void goToMaze()
{
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);
    waitForVBlank();

    (*(volatile unsigned short*)0x400000A) = (0<<14) | ((1)<<2) | ((15)<<8);
    DMANow(3, maze2Pal, ((unsigned short *)0x5000000), 256);
    DMANow(3, maze2Tiles, &((charblock *)0x6000000)[1], 2976 / 2);
    DMANow(3, maze2Map, &((screenblock *)0x6000000)[15], 2048 / 2);
    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000014) = hOff;
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    state = MAZE;
}
void maze()
{
    mini = 2;
    updateMaze();
    drawMaze();
    if (completeMaze)
    {
        player.worldCol = player.prevItemCol;
        player.worldRow = player.prevItemRow;
        vOff = prevVOFFItem;
        hOff = prevHOFFItem;
        goToGame();
    }
    else if (timer == 0)
    {
        lives--;
        player.worldCol = player.prevItemCol;
        player.worldRow = player.prevItemRow;
        vOff = prevVOFFItem;
        hOff = prevHOFFItem;
        goToGame();
    }
}



void goToPopup()
{
    (*(unsigned short *)0x4000000) = 4 | (1<<10) | (1<<4);
    waitForVBlank();
    flipPage();
    state = POPUP;
}

void popup()
{
    textFlag = 0;
    drawText();
    waitForVBlank();
    flipPage();
    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0)))))
    {
        if (roomNumber == MAIN)
        {

            if (doorFlag == 1)
            {
                pauseSound();
                playSoundA(blackpinkPrettySavage_data, blackpinkPrettySavage_length, 1);
                goToRoom();
                initRoom();
            }
            else if (doorFlag == 2)
            {
                pauseSound();
                playSoundA(mamamooHIP_data, mamamooHIP_length, 1);
                waitForVBlank();
                flipPage();
                goToLibrary();
                initLibrary();
            }
            else if (doorFlag == 3)
            {
                pauseSound();
                playSoundA(mamamooHIP_data, mamamooHIP_length, 1);
                goToPotionsLab();
                initPotions();
            }
            else if (doorFlag == 4)
            {
                pauseSound();
                playSoundA(blackpinkPrettySavage_data, blackpinkPrettySavage_length, 1);
                goToOffice();
                initOffice();
            }
            else if (doorFlag == 6)
            {
                goToBossBattle();
                initBattle();
            }
            else if (doorFlag == 7)
            {
                stopSound();
                playSoundA(Celeste_data, Celeste_length, 1);
                goToForest();
                initForest();
            }
            else if ((potionFound < 3) || (!(amulet)))
            {
                player.worldCol = player.prevRoomCol;
                player.worldRow = player.prevRoomRow + 15;
                vOff = prevVOFFRoom;
                hOff = prevHOFFRoom;
                goToGame();
            }

        }
        else if (roomNumber != MAIN)
        {
            if (itemCheck == DOOR)
            {
                pauseSound();
                playSoundA(blackCat_data, blackCat_length, 1);
                goToGame();
            }
            if (itemCheck == BARNDOOR)
            {
                vOff = 0;
                hOff = 0;
                player.worldCol = 24;
                player.worldRow = 80;
                goToBarn();
            }
        }
    }
    if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1)))))
    {

        if (!clueNumber)
        {
            if (roomNumber == ROOM1)
            {
                playSoundB(dialogue_data, dialogue_length, 0);
                bCounter = 0;
                itemCheck = NONE;
                player.worldCol = player.prevItemCol;
                player.worldRow = player.prevItemRow;
                vOff = prevVOFFItem;
                hOff = prevHOFFItem;
                goToRoom();
            }
            if (roomNumber == LIBRARY)
            {

                playSoundB(dialogue_data, dialogue_length, 0);
                bCounter = 0;
                itemCheck = NONE;
                player.worldCol = player.prevItemCol;
                player.worldRow = player.prevItemRow;
                vOff = prevVOFFItem;
                hOff = prevHOFFItem;
                goToLibrary();
            }
            if (roomNumber == POTIONS)
            {

                playSoundB(dialogue_data, dialogue_length, 0);
                bCounter = 0;
                itemCheck == NONE;
                player.worldCol = player.prevItemCol;
                player.worldRow = player.prevItemRow;
                vOff = prevVOFFItem;
                hOff = prevHOFFItem;
                goToPotionsLab();
            }
            if (roomNumber == OFFICEROOM)
            {

                playSoundB(dialogue_data, dialogue_length, 0);
                bCounter = 0;
                itemCheck = NONE;
                player.worldCol = player.prevItemCol;
                player.worldRow = player.prevItemRow;
                vOff = prevVOFFItem;
                hOff = prevHOFFItem;
                goToOffice();
            }
            if (roomNumber == OUTSIDE1)
            {
                bCounter = 0;
                itemCheck = NONE;
                player.worldCol = player.prevItemCol;
                player.worldRow = player.prevItemRow;
                vOff = prevVOFFItem;
                hOff = prevHOFFItem;
                goToForest();
            }
            if (roomNumber == BARNROOM)
            {

                playSoundB(dialogue_data, dialogue_length, 0);
                bCounter = 0;
                itemCheck = NONE;
                player.worldCol = player.prevItemCol;
                player.worldRow = player.prevItemRow;
                vOff = prevVOFFItem;
                hOff = prevHOFFItem;
                goToBarn();
            }
            if (roomNumber == MAIN) {
                playSoundB(dialogue_data, dialogue_length, 0);
                bCounter = 0;
                itemCheck = NONE;
                player.worldCol = player.prevItemCol;
                player.worldRow = player.prevItemRow;
                vOff = prevVOFFItem;
                hOff = prevHOFFItem;
                goToGame();
            }
        }


        if (itemCheck == AMULET)
        {
            bCounter++;
            playSoundB(dialogue_data, dialogue_length, 0);
            if (bCounter < 7)
            {
                drawText();
            }
            else
            {
                bCounter = 0;
                clueNumber = ZERO;
                player.worldCol = player.prevItemCol;
                player.worldRow = player.prevItemRow;
                vOff = prevVOFFItem;
                hOff = prevHOFFItem;
                playSoundB(equip_data, equip_length, 0);
                goToGame();
            }
        }
        if (itemCheck == DESK)
        {
            bCounter++;
            playSoundB(dialogue_data, dialogue_length, 0);
            if (bCounter < 5)
            {
                drawText();
            }
            else
            {
                bCounter = 0;
                clueNumber = ZERO;
                player.worldCol = player.prevItemCol;
                player.worldRow = player.prevItemRow;
                vOff = prevVOFFItem;
                hOff = prevHOFFItem;
                goToRoom();
            }
        }
        if (itemCheck == BOOKSHELF)
        {
            bCounter++;
            playSoundB(dialogue_data, dialogue_length, 0);
            if (bCounter < 6)
            {
                drawText();
            }
            else
            {
                bCounter = 0;
                clueNumber = ZERO;
                player.worldCol = player.prevItemCol;
                player.worldRow = player.prevItemRow;
                vOff = prevVOFFItem;
                hOff = prevHOFFItem;
                playSoundB(equip_data, equip_length, 0);
                goToLibrary();
            }
        }
        if (itemCheck == BOOKS)
        {
            bCounter++;
            playSoundB(dialogue_data, dialogue_length, 0);
            if (bCounter < 5)
            {
                drawText();
            }
            else
            {
                bCounter = 0;
                clueNumber = ZERO;
                player.worldCol = player.prevItemCol;
                player.worldRow = player.prevItemRow;
                vOff = prevVOFFItem;
                hOff = prevHOFFItem;
                goToLibrary();
            }
        }
        if (itemCheck == DRAWERS)
        {
            bCounter++;
            playSoundB(dialogue_data, dialogue_length, 0);
            if (bCounter < 5)
            {
                drawText();
            }
            else
            {
                bCounter = 0;
                clueNumber = ZERO;
                player.worldCol = player.prevItemCol;
                player.worldRow = player.prevItemRow;
                vOff = prevVOFFItem;
                hOff = prevHOFFItem;
                playSoundB(equip_data, equip_length, 0);
                goToOffice();
            }
        }
        if (itemCheck == CABINET)
        {
            bCounter++;
            playSoundB(dialogue_data, dialogue_length, 0);
            if (bCounter < 5)
            {
                drawText();
            }
            else
            {
                bCounter = 0;
                clueNumber = ZERO;
                player.worldCol = player.prevItemCol;
                player.worldRow = player.prevItemRow;
                vOff = prevVOFFItem;
                hOff = prevHOFFItem;
                playSoundB(equip_data, equip_length, 0);
                goToPotionsLab();
            }
        }
        if (itemCheck == CHEST)
        {
            bCounter++;
            playSoundB(dialogue_data, dialogue_length, 0);
            if (bCounter < 5)
            {
                drawText();
            }
            else
            {
                bCounter = 0;
                clueNumber = ZERO;
                player.worldCol = player.prevItemCol;
                player.worldRow = player.prevItemRow;
                vOff = prevVOFFItem;
                hOff = prevHOFFItem;
                goToOffice();
            }
        }
        if (itemCheck == VOODOO)
        {
            bCounter++;
            playSoundB(dialogue_data, dialogue_length, 0);
            if (bCounter < 5)
            {
                drawText();
            }
            else
            {
                bCounter = 0;
                clueNumber = ZERO;
                player.worldCol = player.prevItemCol;
                player.worldRow = player.prevItemRow;
                vOff = prevVOFFItem;
                hOff = prevHOFFItem;
                playSoundB(equip_data, equip_length, 0);
                goToBarn();
            }
        }
        if (itemCheck == STAIRS)
        {
            bCounter++;
            playSoundB(dialogue_data, dialogue_length, 0);
            if (bCounter < 4)
            {
                drawText();
            }
            else
            {
                bCounter = 0;
                clueNumber = ZERO;
                if (keyFound)
                {
                    goToBossBattle();
                    initBattle();
                    stopSound();
                    playSoundA(theBeast_data, theBeast_length, 1);
                }
                else
                {
                    player.worldCol = player.prevItemCol;
                    player.worldRow = player.prevItemRow;
                    vOff = prevVOFFItem;
                    hOff = prevHOFFItem;
                    goToBarn();
                }
            }

        }
    }
}



void goToRoom()
{
    collisionMap = roomCollisionMapBitmap;
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);
    waitForVBlank();
    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((15)<<8) | (0<<14);
    DMANow(3, roomPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, roomTiles, &((charblock *)0x6000000)[1], 4256 / 2);
    DMANow(3, roomMap, &((screenblock *)0x6000000)[15], 2048 / 2);
    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000014) = hOff;
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    state = ROOM;
}

void room()
{
    roomNumber = ROOM1;
    updateRoom();
    drawRoom();
    waitForVBlank();
    if (textFlag)
    {
        goToPopup();
        initText();
    }
}



void goToLibrary()
{
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);
    waitForVBlank();
    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((15)<<8) | (0<<14);
    DMANow(3, libraryPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, libraryTiles, &((charblock *)0x6000000)[1], 2336 / 2);
    DMANow(3, libraryMap, &((screenblock *)0x6000000)[15], 2048 / 2);
    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000014) = hOff;
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    state = LIBRARYROOM;
}
void library()
{
    roomNumber = LIBRARY;
    updateLibrary();
    drawLibrary();
    waitForVBlank();
    if (textFlag)
    {
        goToPopup();
        initText();
    }
}



void goToPotionsLab()
{
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);
    waitForVBlank();
    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((15)<<8) | (0<<14);
    DMANow(3, potionsRoomPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, potionsRoomTiles, &((charblock *)0x6000000)[1], 3552 / 2);
    DMANow(3, potionsRoomMap, &((screenblock *)0x6000000)[15], 2048 / 2);
    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000014) = hOff;
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    state = POTIONSROOM;
}
void potionsLab()
{
    roomNumber = POTIONS;
    updatePotions();
    waitForVBlank();
    drawPotions();
    if (textFlag)
    {
        goToPopup();
        initText();
    }
}



void goToOffice()
{
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);
    waitForVBlank();
    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((15)<<8) | (0<<14);
    DMANow(3, officePal, ((unsigned short *)0x5000000), 256);
    DMANow(3, officeTiles, &((charblock *)0x6000000)[1], 7232 / 2);
    DMANow(3, officeMap, &((screenblock *)0x6000000)[15], 2048 / 2);
    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000014) = hOff;
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    state = OFFICE;
}
void office()
{
    roomNumber = OFFICEROOM;
    updateOffice();
    drawOffice();
    waitForVBlank();
    if (textFlag)
    {
        goToPopup();
        initText();
    }
}



void goToForest()
{
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);
    waitForVBlank();
    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((31)<<8) | (0<<14);
    DMANow(3, forestPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, forestTiles, &((charblock *)0x6000000)[1], 9664 / 2);
    DMANow(3, forestMap, &((screenblock *)0x6000000)[31], 2048 / 2);
    (*(volatile unsigned short *)0x04000016) = vOff;
    (*(volatile unsigned short *)0x04000014) = hOff;
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    state = FOREST;
}
void forest()
{
    roomNumber = OUTSIDE1;
    updateForest();
    waitForVBlank();
    drawForest();
    if (textFlag)
    {
        goToPopup();
        initText();
    }
}



void goToBarn()
{
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);
    waitForVBlank();
    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((31)<<8) | (0<<14);
    DMANow(3, barnRoomPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, barnRoomTiles, &((charblock *)0x6000000)[1], 5600 / 2);
    DMANow(3, barnRoomMap, &((screenblock *)0x6000000)[31], 2048 / 2);
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    state = BARN;
}
void barn()
{
    roomNumber = BARNROOM;
    updateBarn();
    waitForVBlank();
    drawBarn();
    if (textFlag)
    {
        goToPopup();
        initText();
    }
}



void goToBossBattle()
{
    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
    waitForVBlank();

    (*(volatile unsigned short*)0x4000008) = ((1)<<2) | ((28)<<8) | (0<<14) | (0<<7);
    DMANow(3, bossBattlePal, ((unsigned short *)0x5000000), 256);
    DMANow(3, bossBattleTiles, &((charblock *)0x6000000)[1], 1856 / 2);
    DMANow(3, bossBattleMap, &((screenblock *)0x6000000)[28], 2048 / 2);

    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    state = BATTLE;
}
void battle()
{
    roomNumber = BOSS;
    updateBattle();
    drawBattle();
    waitForVBlank();
    if (playerWon)
    {
        goToWin();
    }
    else if (player.damage == 10)
    {
        goToLose();
    }
}



void goToPause()
{

    (*(unsigned short *)0x4000000) = 0 | (1<<9);
    waitForVBlank();

    (*(volatile unsigned short*)0x400000A) = (0<<14) | ((1)<<2) | ((15)<<8);
    DMANow(3, pausePal, ((unsigned short *)0x5000000), 256);
    DMANow(3, pauseTiles, &((charblock *)0x6000000)[1], 3648 / 2);
    DMANow(3, pauseMap, &((screenblock *)0x6000000)[15], 2048 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    (*(volatile unsigned short *)0x04000014) = 0;
    (*(volatile unsigned short *)0x04000016) = 0;
    state = PAUSE;
}


void pause()
{
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
    {
        unpauseSound();
        goToGame();
    }
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2)))))
    {
        goToStart();
    }
}



void goToLose()
{
    (*(unsigned short *)0x4000000) = 0 | (1<<9);
    waitForVBlank();
    (*(volatile unsigned short*)0x400000A) = (0<<14) | ((1)<<2) | ((15)<<8);
    DMANow(3, losePal, ((unsigned short *)0x5000000), 256);
    DMANow(3, loseTiles, &((charblock *)0x6000000)[1], 3424 / 2);
    DMANow(3, loseMap, &((screenblock *)0x6000000)[15], 2048 / 2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    stopSound();
    playSoundA(loseScreen_data, loseScreen_length, 1);
    state = LOSE;
    (*(volatile unsigned short *)0x04000014) = 0;
    (*(volatile unsigned short *)0x04000016) = 0;
}


void lose()
{
    waitForVBlank();

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
    {
        initialize();
        bgTimer = 0;
        mini = 0;
        completeMaze = 0;
        lives = 4;
        amulet = 0;
        potionFound = 0;
        itemCheck = NONE;
        keyFound = 0;
    }
}


void goToWin()
{
    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<9) | (1<<10);
    waitForVBlank();
    (*(volatile unsigned short*)0x400000C) = (1<<14) | ((0)<<2) | ((21)<<8);
    (*(volatile unsigned short*)0x400000A) = (1<<14) | ((1)<<2) | ((28)<<8);
    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((2)<<2) | ((31)<<8);
    DMANow(3, winBGPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, winBG1Tiles, &((charblock *)0x6000000)[0], 2976/2);
    DMANow(3, winBG1Map, &((screenblock *)0x6000000)[21], 4096/2);
    DMANow(3, winBGTiles, &((charblock *)0x6000000)[1], 3520 / 2);
    DMANow(3, winBGMap, &((screenblock *)0x6000000)[28], 4096 / 2);
    DMANow(3, winTextTiles, &((charblock *)0x6000000)[2], 1664/2);
    DMANow(3, winTextMap, &((screenblock *)0x6000000)[31], 2048/2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
    stopSound();
    playSoundA(winScreen_data, winScreen_length, 1);
    state = WIN;
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;
    (*(volatile unsigned short *)0x04000014) = 0;
    (*(volatile unsigned short *)0x04000016) = 0;
    (*(volatile unsigned short *)0x04000018) = 0;
    (*(volatile unsigned short *)0x0400001A) = 0;
}

void win()
{
    parallaxTimer++;
    (*(volatile unsigned short *)0x04000014) = parallaxTimer / 5;
    (*(volatile unsigned short *)0x04000018) = parallaxTimer / 8;
    waitForVBlank();

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
    {
        initialize();
        bgTimer = 0;
        mini = 0;
        completeMaze = 0;
        lives = 4;
        amulet = 0;
        potionFound = 0;
        itemCheck = NONE;
        keyFound = 0;
    }
}
