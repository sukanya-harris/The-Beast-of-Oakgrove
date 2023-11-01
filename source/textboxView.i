# 1 "textboxView.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "textboxView.c"
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
# 2 "textboxView.c" 2
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
# 3 "textboxView.c" 2
# 1 "textboxView.h" 1
void initText();
void drawText();
# 4 "textboxView.c" 2
# 1 "text.h" 1

void drawChar3(int col, int row, char ch, unsigned short color);
void drawString3(int col, int row, char *str, unsigned short color);


void drawChar4(int col, int row, char ch, unsigned char colorIndex);
void drawString4(int col, int row, char *str, unsigned char colorIndex);
# 5 "textboxView.c" 2
# 1 "textbox.h" 1
# 21 "textbox.h"
extern const unsigned short textboxBitmap[19200];


extern const unsigned short textboxPal[256];
# 6 "textboxView.c" 2
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
# 7 "textboxView.c" 2
# 1 "keyPrompt.h" 1
# 21 "keyPrompt.h"
extern const unsigned short keyPromptBitmap[19200];


extern const unsigned short keyPromptPal[256];
# 8 "textboxView.c" 2

void initText() {
    DMANow(3, textboxPal, ((unsigned short *)0x5000000), 256);
}


void drawText() {
    drawFullscreenImage4(textboxBitmap);
    if (potionFound < 3 && (doorFlag == 8)) {
        drawString4(32, 112, "You cannot go outside until", 1);
        drawString4(32, 122, "you have collected all the", 1);
        drawString4(32, 132, "potions", 1);
        drawString4(32, 142, "Press A", 1);
    }
    if (roomNumber == 0) {
        if (doorFlag == 1) {
            drawString4(32, 112, "Would you like to enter", 1);
            drawString4(32, 122, "the room?", 1);
            drawString4(32, 132, "Press A", 1);
        }
        if (doorFlag == 2) {
            drawString4(32, 112, "Would you like to enter", 1);
            drawString4(32, 122, "the library?", 1);
            drawString4(32, 132, "Press A", 1);
        }
        if (doorFlag == 3) {
            drawString4(32, 112, "Would you like to enter", 1);
            drawString4(32, 122, "the potions lab?", 1);
            drawString4(32, 132, "Press A", 1);
        }
        if (doorFlag == 4) {
            drawString4(32, 112, "Would you like to enter", 1);
            drawString4(32, 122, "the office?", 1);
            drawString4(32, 132, "Press A", 1);
        }
        if (doorFlag == 6) {
            drawString4(32, 112, "Are you ready to go", 1);
            drawString4(32, 122, "outside?", 1);
            drawString4(32, 132, "Press A", 1);
        }
        if (doorFlag == 7) {
            drawString4(32, 112, "Would you like to enter", 1);
            drawString4(32, 122, "the forest?", 1);
            drawString4(32, 132, "Press A", 1);
        }
        if (itemCheck == AMULET) {
            if (bCounter == 1) {
                drawString4(32, 112, "This painting has", 1);
                drawString4(32, 122, "been here a while", 1);
                drawString4(32, 132, "Press B", 1);
            }
            if (bCounter == 2) {
                drawString4(32, 112, "It looks so old and peeling", 1);
                drawString4(32, 122, "Press B", 1);
            }
            if (bCounter == 3) {
                drawString4(32, 112, "You reach out to touch it", 1);
                drawString4(32, 122, "Press B", 1);
            }
            if (bCounter == 4) {
                drawString4(32, 112, "At the last second it moves", 1);
                drawString4(32, 122, "and you notice something", 1);
                drawString4(32, 132, "shimmering behind it", 1);
                drawString4(32, 142, "Press B", 1);
            }
            if (bCounter == 5) {
                drawString4(32, 112, "You reach out to grab it", 1);
                drawString4(32, 122, "the cold object", 1);
                drawString4(32, 132, "Press B", 1);
            }
            if (bCounter == 6) {
                drawString4(32, 112, "You found your amulet!", 1);
                drawString4(32, 122, "Press B", 1);
            }
        }
        else if (itemCheck == PUMPKIN)
        {
            drawString4(32, 112, "This pumpkin is huge!!", 1);
            drawString4(32, 122, "Press B", 1);
        } else if (itemCheck == HEADMISTRESS) {
            drawString4(32, 112, "She looks angry here", 1);
            drawString4(32, 122, "Press B", 1);
        }
    }
    else if (roomNumber == 1) {
        if (itemCheck == DOOR) {
            drawString4(32, 112, "Would you like to enter the", 1);
            drawString4(32, 122, "hallway?", 1);
            drawString4(32, 132, "Press A", 1);
        } else if (itemCheck == BOOKSHELF)
        {
            drawString4(32, 112, "There are a variety of books", 1);
            drawString4(32, 122, "here", 1);
            drawString4(32, 132, "Press B", 1);
        }
        else if (itemCheck == DESK)
        {
            if (bCounter == 1) {
                drawString4(32, 112, "You found a strange note", 1);
                drawString4(32, 122, "Press B", 1);
            }
            if (bCounter == 2) {
                drawString4(32, 112, "Should I read it?...", 1);
                drawString4(32, 122, "Press B", 1);
            }
            if (bCounter == 3) {
                drawString4(32, 112, "Unfolding the piece of paper", 1);
                drawString4(32, 122, "you read what's written down", 1);
                drawString4(32, 132, "Press B", 1);
            }
            if (bCounter == 4) {
                drawString4(32, 112, "'What you seek can be found", 1);
                drawString4(32, 122, "in a place where a good book", 1);
                drawString4(32, 132, "lives.'", 1);
                drawString4(32, 142, "Press B", 1);
            }
        }
        else if (itemCheck == PLAQUE)
        {
            drawString4(32, 112, "This plaque doesn't really", 1);
            drawString4(32, 122, "interest you", 1);
            drawString4(32, 132, "Press B", 1);
        }
    } else if (roomNumber == LIBRARY) {
        if (itemCheck == DOOR) {
            drawString4(32, 112, "Would you like to enter the", 1);
            drawString4(32, 122, "hallway?", 1);
            drawString4(32, 132, "Press A", 1);
        } else if (itemCheck == BOOKSHELF) {
            if (bCounter == 1) {
                drawString4(32, 112, "This bookshelf seems", 1);
                drawString4(32, 122, "a little dusty", 1);
                drawString4(32, 132, "Press B", 1);
            }
            if (bCounter == 2) {
                drawString4(32, 112, "You notice something", 1);
                drawString4(32, 122, "at the back", 1);
                drawString4(32, 132, "Press B", 1);
            }
            if (bCounter == 3) {
                drawString4(32, 112, "Reaching over you grab", 1);
                drawString4(32, 122, "a cold item", 1);
                drawString4(32, 132, "Press B", 1);
            }
            if (bCounter == 4) {
                drawString4(32, 112, "Wiping off the dust,", 1);
                drawString4(32, 122, "you inspect the item", 1);
                drawString4(32, 132, "Press B", 1);
            }
            if (bCounter == 5) {
                drawString4(32, 112, "You found a potion!", 1);
                drawString4(32, 122, "Press B", 1);
            }
        } else if (itemCheck == BOOKS) {
            if (bCounter == 1) {
                drawString4(32, 112, "These books are arranged", 1);
                drawString4(32, 122, "strangely", 1);
                drawString4(32, 132, "Press B", 1);
            }
            if (bCounter == 2) {
                drawString4(32, 112, "The pattern seems important", 1);
                drawString4(32, 122, "Press B", 1);
            }
            if (bCounter == 3) {
                drawString4(32, 112, "Try to remember this pattern", 1);
                drawString4(32, 122, "Press B", 1);
            }
            if (bCounter == 4) {
                drawString4(32, 112, "BLUE", 1);
                drawString4(32, 122, "GREEN", 1);
                drawString4(32, 132, "RED", 1);
                drawString4(32, 142, "Press B", 1);
            }
        }
    } else if (roomNumber == POTIONS) {
        if (itemCheck == DOOR) {
            drawString4(32, 112, "Would you like to enter the", 1);
            drawString4(32, 122, "hallway?", 1);
            drawString4(32, 132, "Press A", 1);
        } else if (itemCheck == CABINET)
        {
            if (bCounter == 1) {
                drawString4(32, 112, "Why is this one open?", 1);
                drawString4(32, 122, "Press B", 1);
            }
            if (bCounter == 2) {
                drawString4(32, 112, "You reach up and search", 1);
                drawString4(32, 122, "around with your hand", 1);
                drawString4(32, 132, "Press B", 1);
            }
            if (bCounter == 3) {
                drawString4(32, 112, "You grab something cold", 1);
                drawString4(32, 122, "Press B", 1);
            }
            if (bCounter == 4) {
                drawString4(32, 112, "You found a potion!", 1);
                drawString4(32, 122, "Press B", 1);
            }
        }
        else if (itemCheck == DESK)
        {
            drawString4(32, 112, "This is your desk", 1);
            drawString4(32, 122, "Press B", 1);
        } else if (itemCheck == CAULDRON) {
            drawString4(32, 112, "The cauldron is bubbling", 1);
            drawString4(32, 122, "Press B", 1);
        }
    } else if (roomNumber == 4) {
        if (itemCheck == DOOR) {
            drawString4(32, 112, "Would you like to enter the", 1);
            drawString4(32, 122, "hallway?", 1);
            drawString4(32, 132, "Press A", 1);
        } else if (itemCheck == CHEST)
        {
            if (bCounter == 1) {
                drawString4(32, 112, "You carefully lift the chest", 1);
                drawString4(32, 122, "open", 1);
                drawString4(32, 132, "Press B", 1);
            }
            if (bCounter == 2) {
                drawString4(32, 112, "Sticking your head in, you", 1);
                drawString4(32, 122, "almost fall in", 1);
                drawString4(32, 132, "Press B", 1);
            }
            if (bCounter == 3) {
                drawString4(32, 112, "You grab a piece of paper", 1);
                drawString4(32, 122, "Press B", 1);
            }
            if (bCounter == 4) {
                drawString4(32, 112, "What you seek may be located in", 1);
                drawString4(32, 122, "a high place where ingredients", 1);
                drawString4(32, 132, "are stored ready for mixing", 1);
                drawString4(32, 142, "Press B", 1);
            }
        }
        else if (itemCheck == PUMPKIN)
        {
            drawString4(32, 112, "This pumpkin is huge!!", 1);
            drawString4(32, 122, "Press B", 1);
        } else if (itemCheck == DRAWERS) {
            if (bCounter == 1) {
                drawString4(32, 112, "This pattern seems familiar", 1);
                drawString4(32, 122, "Press B", 1);
            }
            if (bCounter == 2) {
                drawString4(32, 112, "You open each of the", 1);
                drawString4(32, 122, "drawers one...", 1);
                drawString4(32, 132, "Press B", 1);
            }
            if (bCounter == 3) {
                drawString4(32, 112, "by one and in", 1);
                drawString4(32, 122, "the last drawer...", 1);
                drawString4(32, 132, "Press B", 1);
            }
            if (bCounter == 4) {
                drawString4(32, 112, "You found a potion!", 1);
                drawString4(32, 122, "Press B", 1);
            }
        }
    } else if (roomNumber == 5) {
        if (itemCheck == DOOR) {
            drawString4(32, 112, "Would you like to enter the", 1);
            drawString4(32, 122, "school?", 1);
            drawString4(32, 132, "Press A", 1);
        } else if (itemCheck == BARNDOOR)
        {
            drawString4(32, 112, "Would you like to enter", 1);
            drawString4(32, 122, "the barn?", 1);
            drawString4(32, 132, "Press A", 1);
        } else if (itemCheck == PUMPKINCLUE) {
            drawString4(32, 112, "Something taken from you is", 1);
            drawString4(32, 122, "hidden within these", 1);
            drawString4(32, 132, "pumpkins", 1);
            drawString4(32, 142, "Press B", 1);
        } else if (itemCheck == POND) {
            drawString4(32, 112, "You can't swim!", 1);
            drawString4(32, 122, "Better step away from", 1);
            drawString4(32, 132, "the pond.", 1);
            drawString4(32, 142, "Press B", 1);
        }else if (itemCheck == WAND) {
            drawString4(32, 112, "You push your hand", 1);
            drawString4(32, 122, "into the pumpkin...", 1);
            drawString4(32, 132, "Your wand!", 1);
            drawString4(32, 142, "Press B", 1);
        }
    } else if (roomNumber == 7) {
        if (itemCheck == DOOR) {
            drawString4(32, 112, "Would you like to enter the", 1);
            drawString4(32, 122, "forest?", 1);
            drawString4(32, 132, "Press A", 1);
        } else if (itemCheck == VOODOO) {
            if (bCounter == 1) {
                drawString4(32, 112, "This looks a little creepy", 1);
                drawString4(32, 122, "Press B", 1);
            }
            if (bCounter == 2) {
                drawString4(32, 112, "Turning the doll", 1);
                drawString4(32, 122, "in your hands", 1);
                drawString4(32, 132, "Press B", 1);
            }
            if (bCounter == 3) {
                drawString4(32, 112, "You notice a zipper", 1);
                drawString4(32, 122, "on the back.", 1);
                drawString4(32, 132, "Unzipping it you see...", 1);
                drawString4(32, 142, "Press B", 1);
            }
            if (bCounter == 4) {
                drawString4(32, 112, "You find a key!", 1);
                drawString4(32, 122, "This should unlock", 1);
                drawString4(32, 132, "the stairs", 1);
                drawString4(32, 142, "Press B", 1);
            }
        } else if (itemCheck == BED) {
            drawString4(32, 112, "Looks like someone slept in", 1);
            drawString4(32, 122, "this recently", 1);
            drawString4(32, 132, "Press B", 1);
        } else if (itemCheck == PUMPKIN2) {
            drawString4(32, 112, "This pumpkin is overgrown", 1);
            drawString4(32, 122, "How weird", 1);
            drawString4(32, 132, "Press B", 1);
        } else if (itemCheck == STAIRS) {
            if (keyFound) {
                if (bCounter == 1) {
                    drawString4(32, 112, "Are you ready to", 1);
                    drawString4(32, 122, "go up the stairs?", 1);
                    drawString4(32, 132, "Press B", 1);
                }
                if (bCounter == 2) {
                    drawString4(32, 112, "Do you have everything you need?", 1);
                    drawString4(32, 122, "Press B to continue", 1);
                    drawString4(32, 132, "Press A to return", 1);
                }
                if (bCounter == 3) {
                    drawString4(32, 112, "You creak up the", 1);
                    drawString4(32, 122, "stairs and call out", 1);
                    drawString4(32, 132, "to your brother...", 1);
                    drawString4(32, 142, "Press B", 1);
                }
            } else {
                if (bCounter == 1) {
                    drawString4(32, 112, "You can hear growling", 1);
                    drawString4(32, 122, "coming from up the", 1);
                    drawString4(32, 132, "stairs...", 1);
                    drawString4(32, 142, "Press B", 1);
                }
                if (bCounter == 2) {
                    drawString4(32, 112, "However you cannot go up", 1);
                    drawString4(32, 122, "the stairs, they're locked.", 1);
                    drawString4(32, 132, "Press B", 1);
                }
                if (bCounter == 3) {
                    drawString4(32, 112, "Try and find the key!", 1);
                    drawString4(32, 122, "Press B", 1);
                }
            }
        }
    }
}
