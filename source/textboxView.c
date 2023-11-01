#include "mylib.h"
#include "game.h"
#include "textboxView.h"
#include "text.h"
#include "textbox.h"
#include "roomView.h"
#include "keyPrompt.h"

void initText() {
    DMANow(3, textboxPal, PALETTE, 256);
}

// #region Text to Screen
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
// #endregion