#define OFFICE_MAPHEIGHT 256
#define OFFICE_MAPWIDTH 256

unsigned char* officeCollision;

void initOffice();
void updateOffice();
void drawOffice();
void initOfficePlayer(int, int);
void updateOfficePlayer();
void drawOfficePlayer();
void officeItems();