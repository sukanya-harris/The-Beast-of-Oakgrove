#define BONES_MAPWIDTH 512
#define NORM_MAPWIDTH 256

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