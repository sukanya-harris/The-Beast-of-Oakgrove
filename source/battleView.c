#include "mylib.h"
#include "game.h"
#include "roomView.h"
#include "battleView.h"

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
    DMANow(3, shadowOAM, OAM, 512);
}

// #region initialize and draw the player
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
        shadowOAM[shadowIndex].attr0 |= ATTR0_HIDE;
        shadowIndex++;
    }
    else
    {
        shadowOAM[shadowIndex].attr0 = (ROWMASK & (player.worldRow)) | ATTR0_SQUARE;
        shadowOAM[shadowIndex].attr1 = (COLMASK & (player.worldCol)) | ATTR1_TINY;
        shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(0, 9);
        shadowIndex++;
    }
}
// #endregion

void updateBP()
{
    if (BUTTON_HELD(BUTTON_LEFT) && player.worldCol >= player.cdel)
    {
        player.worldCol -= player.cdel;
    }
    else if (BUTTON_HELD(BUTTON_RIGHT) && player.worldCol + player.width - 1 < 207 - player.cdel)
    {
        player.worldCol += player.cdel;
    }
    else if (BUTTON_HELD(BUTTON_UP) && player.worldRow >= player.rdel)
    {
        player.worldRow -= player.rdel;
    }
    else if (BUTTON_HELD(BUTTON_DOWN) && player.worldRow + player.height - 1 < 119 - player.rdel)
    {
        player.worldRow += player.rdel;
    }
    if (BUTTON_PRESSED(BUTTON_L))
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

// #region initialize and draw the beast
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
        shadowOAM[shadowIndex].attr0 |= ATTR0_HIDE;
        shadowIndex++;
    }
    else
    {
        shadowOAM[shadowIndex].attr0 = (ROWMASK & (beast.worldRow)) | ATTR0_SQUARE;
        shadowOAM[shadowIndex].attr1 = (COLMASK & (beast.worldCol)) | ATTR1_MEDIUM;
        shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(16, 15 + (beast.curFrame * 4));
        shadowIndex++;
    }
}
// #endregion

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

// #region initialize and draw player's bullets
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
        shadowOAM[shadowIndex].attr0 |= ATTR0_HIDE;
        shadowIndex++;
    }
    else
    {
        shadowOAM[shadowIndex].attr0 = bullets.worldRow | ATTR0_SQUARE;
        shadowOAM[shadowIndex].attr1 = bullets.worldCol | ATTR1_TINY;
        shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(14, 11);
        shadowIndex++;
    }
}
// #endregion

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
        shadowOAM[shadowIndex].attr0 |= ATTR0_HIDE;
        shadowIndex++;
    }
    else
    {
        shadowOAM[shadowIndex].attr0 = beastBullet.worldRow | ATTR0_SQUARE;
        shadowOAM[shadowIndex].attr1 = beastBullet.worldCol | ATTR1_SMALL;
        shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(15, 11);
        shadowIndex++;
    }
}

// #region initialize and draw healthbars
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
            shadowOAM[shadowIndex].attr0 |= ATTR0_HIDE;
            shadowIndex++;
        }
        else
        {
            if (i == 0)
            {
                shadowOAM[shadowIndex].attr0 = (ROWMASK & (healthBars[i]->worldRow)) | ATTR0_WIDE;
                shadowOAM[shadowIndex].attr1 = (COLMASK & (healthBars[i]->worldCol)) | ATTR1_SMALL;
                shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(4, 19 + player.damage);
                shadowIndex++;
            }
            else
            {
                shadowOAM[shadowIndex].attr0 = (ROWMASK & (healthBars[i]->worldRow)) | ATTR0_WIDE;
                shadowOAM[shadowIndex].attr1 = (COLMASK & (healthBars[i]->worldCol)) | ATTR1_SMALL;
                shadowOAM[shadowIndex].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(0, 19 + beast.damage);
                shadowIndex++;
            }
        }
    }
}
// #endregion