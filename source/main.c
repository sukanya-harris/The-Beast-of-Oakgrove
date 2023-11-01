// #region includes
#include "mylib.h"
#include "game.h"
#include "MiniGameView.h"
#include "minigameBG.h"
#include "title.h"
#include "instructions.h"
#include "instructions01.h"
#include "instructions02.h"
#include "foreground.h"
#include "pause.h"
#include "lose.h"
#include "winBG.h"
#include "winBG1.h"
#include "winText.h"
#include "spritesheet.h"
#include "collisionMapTest.h"
#include "minigameCollisionMap.h"
#include "bone2.h"
#include "startBG.h"
#include "startText.h"
#include "textbox.h"
#include "textboxView.h"
#include "room.h"
#include "roomView.h"
#include "roomCollisionMap.h"
#include "mazeView.h"
#include "maze2.h"
#include "testBG.h"
#include "mountainBG.h"
#include "mountainFarBG.h"
#include "mountainForegroundTrees.h"
#include "mountainMountainsBG.h"
#include "mountainTrees.h"
#include "titleScreen.h"
#include "library.h"
#include "libraryView.h"
#include "potionsRoom.h"
#include "potionsLab.h"
#include "forest.h"
#include "office.h"
#include "battleView.h"
#include "forestView.h"
#include "barn.h"
#include "barnRoom.h"
#include "barnView.h"
#include "sound.h"
#include "academy.h"
#include "blackCat.h"
#include "everglowDunDun.h"
#include "enemyArcane.h"
#include "blackpinkPrettySavage.h"
#include "mamamooHIP.h"
#include "bossBattle.h"
#include "theBeast.h"
#include "Celeste.h"
#include "pause0.h"
#include "pause1.h"
#include "pause2.h"
#include "equip.h"
#include "dialogue.h"
#include "loseScreen.h"
#include "winScreen.h"
#include "pauseScreen.h"
#include "instructions03.h"
// #endregion

// #region function prototypes
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
// #endregion

// States
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

// Button Variables
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
        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
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

// Sets up GBA
void initialize()
{
    //enable mode, bgs, and sprites
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;
    //placing bgs in memory
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL | BG_4BPP;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(15) | BG_SIZE_LARGE | BG_4BPP;
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);

    buttons = BUTTONS;
    oldButtons = 0;

    setupInterrupts();
    setupSounds();

    goToStart();
}

// #region Start State
void goToStart()
{
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE | BG3_ENABLE | SPRITE_ENABLE;
    //load title pal and bg
    //sky and moon bg
    REG_BG3CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(15);
    DMANow(3, mountainBGPal, PALETTE, 256);
    DMANow(3, mountainBGTiles, &CHARBLOCK[1], mountainBGTilesLen / 2);
    DMANow(3, mountainBGMap, &SCREENBLOCK[15], mountainBGMapLen / 2);
    //mountain range bg
    REG_BG2CNT = BG_SIZE_WIDE | BG_CHARBLOCK(2) | BG_SCREENBLOCK(21);
    DMANow(3, mountainMountainsBGTiles, &CHARBLOCK[2], mountainMountainsBGTilesLen / 2);
    DMANow(3, mountainMountainsBGMap, &SCREENBLOCK[21], mountainMountainsBGMapLen / 2);
    //forest bg
    REG_BG1CNT = BG_SIZE_WIDE | BG_CHARBLOCK(3) | BG_SCREENBLOCK(28);
    DMANow(3, mountainTreesTiles, &CHARBLOCK[3], mountainTreesTilesLen / 2);
    DMANow(3, mountainTreesMap, &SCREENBLOCK[28], mountainTreesMapLen / 2);
    //title and buttons bg
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    DMANow(3, titleScreenTiles, &CHARBLOCK[0], titleScreenTilesLen / 2);
    DMANow(3, titleScreenMap, &SCREENBLOCK[31], titleScreenMapLen / 2);

    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
    REG_BG2HOFF = hOff;
    REG_BG2VOFF = vOff;
    REG_BG3HOFF = hOff;
    REG_BG3VOFF = vOff;

    stopSound();
    playSoundA(blackCat_data, blackCat_length, 1);

    state = START;
}

// Runs every frame of the start state
void start()
{
    parallaxTimer++;
    REG_BG1HOFF = parallaxTimer / 2;
    REG_BG2HOFF = parallaxTimer / 5;
    REG_BG3HOFF = parallaxTimer / 8;
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START))
    {
        // stopSound();
        // playSoundA(blackCat_data, blackCat_length, 1);
        goToGame();
        initGame();
    }
    if (BUTTON_PRESSED(BUTTON_A))
    {
        goToInstructions();
    }
}
// #endregion

// #region Instruction State
void goToInstructions()
{
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    waitForVBlank();
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    DMANow(3, instructionsPal, PALETTE, 256);
    DMANow(3, instructions01Tiles, &CHARBLOCK[0], instructions01TilesLen / 2);
    DMANow(3, instructions01Map, &SCREENBLOCK[31], instructions01MapLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    state = INTSRUCTIONS;
}

void instructions()
{
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START))
    {
        goToGame();
        initGame();
    }
    if (BUTTON_PRESSED(BUTTON_A))
    {
        aCounter++;
        if (aCounter == 1)
        {
            DMANow(3, instructions02Tiles, &CHARBLOCK[0], instructions02TilesLen / 2);
            DMANow(3, instructions02Map, &SCREENBLOCK[31], instructions02MapLen / 2);
            DMANow(3, shadowOAM, OAM, 512);
        }
        if (aCounter == 2)
        {
            DMANow(3, instructions03Tiles, &CHARBLOCK[0], instructions03TilesLen / 2);
            DMANow(3, instructions03Map, &SCREENBLOCK[31], instructions03MapLen / 2);
            DMANow(3, shadowOAM, OAM, 512);
        }
        if (aCounter == 3) {
            DMANow(3, instructionsTiles, &CHARBLOCK[0], instructionsTilesLen / 2);
            DMANow(3, instructionsMap, &SCREENBLOCK[31], instructionsMapLen / 2);
            DMANow(3, shadowOAM, OAM, 512);
        }
    }
}
// #endregion

// #region Game State
void goToGame()
{
    collisionMap = collisionMapTestBitmap;
    //enable mode, bgs, sprite
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    waitForVBlank();
    //set up main game bg
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_LARGE;
    DMANow(3, testBGPal, PALETTE, 256);
    DMANow(3, testBGTiles, &CHARBLOCK[1], testBGTilesLen / 2);
    DMANow(3, testBGMap, &SCREENBLOCK[28], testBGMapLen / 2);
    //load in vOff, hOff for bg1
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    //set vOff, hOff for bg0
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    state = GAME;
}

// Runs every frame of the game state
void game()
{
    //set flag variables
    mini = 0;
    completeMaze = 0;
    roomNumber = MAIN;
    clueNumber = ZERO;
    updateGame();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_START))
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
// #endregion

// #region MiniGame 1
void goToMinigame()
{
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;
    waitForVBlank();
    //bg 0 enabling
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(15);
    DMANow(3, minigameBGPal, PALETTE, 256);
    DMANow(3, minigameBGTiles, &CHARBLOCK[1], minigameBGTilesLen / 2);
    DMANow(3, minigameBGMap, &SCREENBLOCK[15], minigameBGMapLen / 2);
    //bg 1
    REG_BG1CNT = BG_SIZE_LARGE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);
    DMANow(3, bone2Tiles, &CHARBLOCK[0], bone2TilesLen / 2);
    DMANow(3, bone2Map, &SCREENBLOCK[28], bone2MapLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    state = MINIGAME;
}

void miniGame()
{
    //set flag variable
    mini = 1;
    bgTimer++;
    REG_BG1HOFF = bgTimer * 2;
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
// #endregion

// #region Maze State
void goToMaze()
{
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    waitForVBlank();
    //bg 0 enabling
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(15);
    DMANow(3, maze2Pal, PALETTE, 256);
    DMANow(3, maze2Tiles, &CHARBLOCK[1], maze2TilesLen / 2);
    DMANow(3, maze2Map, &SCREENBLOCK[15], maze2MapLen / 2);
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
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
// #endregion

// #region TextPrompts
void goToPopup()
{
    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;
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
    if (BUTTON_PRESSED(BUTTON_A))
    {
        if (roomNumber == MAIN)
        {
            // #region which door flag collision
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
            // #endregion
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
    if (BUTTON_PRESSED(BUTTON_B))
    {
        // #region checking items with one line
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
        // #endregion
        // #region checking items for dialogue
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
            // #endregion
        }
    }
}
// #endregion

// #region Room 1 State
void goToRoom()
{
    collisionMap = roomCollisionMapBitmap;
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    waitForVBlank();
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(15) | BG_SIZE_SMALL;
    DMANow(3, roomPal, PALETTE, 256);
    DMANow(3, roomTiles, &CHARBLOCK[1], roomTilesLen / 2);
    DMANow(3, roomMap, &SCREENBLOCK[15], roomMapLen / 2);
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
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
// #endregion

// #region Library State
void goToLibrary()
{
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    waitForVBlank();
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(15) | BG_SIZE_SMALL;
    DMANow(3, libraryPal, PALETTE, 256);
    DMANow(3, libraryTiles, &CHARBLOCK[1], libraryTilesLen / 2);
    DMANow(3, libraryMap, &SCREENBLOCK[15], libraryMapLen / 2);
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
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
// #endregion

// #region Potion Lab State
void goToPotionsLab()
{
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    waitForVBlank();
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(15) | BG_SIZE_SMALL;
    DMANow(3, potionsRoomPal, PALETTE, 256);
    DMANow(3, potionsRoomTiles, &CHARBLOCK[1], potionsRoomTilesLen / 2);
    DMANow(3, potionsRoomMap, &SCREENBLOCK[15], potionsRoomMapLen / 2);
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
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
// #endregion

// #region Office State
void goToOffice()
{
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    waitForVBlank();
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(15) | BG_SIZE_SMALL;
    DMANow(3, officePal, PALETTE, 256);
    DMANow(3, officeTiles, &CHARBLOCK[1], officeTilesLen / 2);
    DMANow(3, officeMap, &SCREENBLOCK[15], officeMapLen / 2);
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
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
// #endregion

// #region Forest State
void goToForest()
{
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    waitForVBlank();
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    DMANow(3, forestPal, PALETTE, 256);
    DMANow(3, forestTiles, &CHARBLOCK[1], forestTilesLen / 2);
    DMANow(3, forestMap, &SCREENBLOCK[31], forestMapLen / 2);
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
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
// #endregion

// #region Barn State
void goToBarn()
{
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    waitForVBlank();
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    DMANow(3, barnRoomPal, PALETTE, 256);
    DMANow(3, barnRoomTiles, &CHARBLOCK[1], barnRoomTilesLen / 2);
    DMANow(3, barnRoomMap, &SCREENBLOCK[31], barnRoomMapLen / 2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
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
// #endregion

// #region Boss Battle State
void goToBossBattle()
{
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    waitForVBlank();
    //set up main game bg
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL | BG_4BPP;
    DMANow(3, bossBattlePal, PALETTE, 256);
    DMANow(3, bossBattleTiles, &CHARBLOCK[1], bossBattleTilesLen / 2);
    DMANow(3, bossBattleMap, &SCREENBLOCK[28], bossBattleMapLen / 2);

    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
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
// #endregion

// #region Pause State
void goToPause()
{
    //set mode and bg
    REG_DISPCTL = MODE0 | BG1_ENABLE;
    waitForVBlank();
    //load in pause screen
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(15);
    DMANow(3, pausePal, PALETTE, 256);
    DMANow(3, pauseTiles, &CHARBLOCK[1], pauseTilesLen / 2);
    DMANow(3, pauseMap, &SCREENBLOCK[15], pauseMapLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;
    state = PAUSE;
}

// Runs every frame of the pause state
void pause()
{
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START))
    {
        unpauseSound();
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT))
    {
        goToStart();
    }
}
// #endregion

// #region Lose State
void goToLose()
{
    REG_DISPCTL = MODE0 | BG1_ENABLE;
    waitForVBlank();
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(15);
    DMANow(3, losePal, PALETTE, 256);
    DMANow(3, loseTiles, &CHARBLOCK[1], loseTilesLen / 2);
    DMANow(3, loseMap, &SCREENBLOCK[15], loseMapLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    stopSound();
    playSoundA(loseScreen_data, loseScreen_length, 1);
    state = LOSE;
    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;
}

//lose screen for when the player loses all their lives or loses a minigame
void lose()
{
    waitForVBlank();
    //reset the game for new gameplay
    if (BUTTON_PRESSED(BUTTON_START))
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
// #endregion

void goToWin()
{
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE;
    waitForVBlank();
    REG_BG2CNT = BG_SIZE_WIDE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(21);
    REG_BG1CNT = BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(28);
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(2) | BG_SCREENBLOCK(31);
    DMANow(3, winBGPal, PALETTE, 256);
    DMANow(3, winBG1Tiles, &CHARBLOCK[0], winBG1TilesLen/2);
    DMANow(3, winBG1Map, &SCREENBLOCK[21], winBG1MapLen/2);
    DMANow(3, winBGTiles, &CHARBLOCK[1], winBGTilesLen / 2);
    DMANow(3, winBGMap, &SCREENBLOCK[28], winBGMapLen / 2);
    DMANow(3, winTextTiles, &CHARBLOCK[2], winTextTilesLen/2);
    DMANow(3, winTextMap, &SCREENBLOCK[31], winTextMapLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    stopSound();
    playSoundA(winScreen_data, winScreen_length, 1);
    state = WIN;
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;
    REG_BG2HOFF = 0;
    REG_BG2VOFF = 0;
}

void win()
{
    parallaxTimer++;
    REG_BG1HOFF = parallaxTimer / 5;
    REG_BG2HOFF = parallaxTimer / 8;
    waitForVBlank();
    //reset the game for new gameplay
    if (BUTTON_PRESSED(BUTTON_START))
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
