#define BATTLE_MAPWIDTH 512
#define BATTLE_MAPHEIGHT 256
#define BULLETCOUNT 10

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
