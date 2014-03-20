//
//  PAViewController.m
//  Pirate Adventure
//
//  Created by Dragana Mijalkovic on 3/18/14.
//  Copyright (c) 2014 Dragana Mijalkovic. All rights reserved.
//

#import "PAViewController.h"
#import "PAFactory.h"

#import "PATile.h"

@interface PAViewController ()

@end

@implementation PAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    PAFactory *factory = [[PAFactory alloc] init];
    NSArray *tiles = [factory tiles];
    self.tiles = tiles;
    self.character = [factory character];
    self.boss = [factory boss];
    self.currentPoint = CGPointMake(0, 0);
    [self updateTile];
}

#pragma mark - Initialize
- (void)updateTile
{
    PATile *tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tile.story;
    [self.actionButton setTitle:tile.actionButtonName forState:UIControlStateNormal];
    self.healthLabel.text = [NSString stringWithFormat:@"%i", self.character.health];
    self.damageLabel.text = [NSString stringWithFormat:@"%i", self.character.damage];
    self.weaponLabel.text = self.character.weapon.name;
    self.armorLabel.text = self.character.armor.name;
    self.backgroundImageView.image = tile.backgroundImage;
    [self updateButtons];
}

-(void)updateCharacterStatsForArmor:(PAArmor *)armor withWeapons:(PAWeapon *)weapon withHealthEffect:(int)healthEffect
{
    if (armor != nil) {
        self.character.health = self.character.health - self.character.armor.health
        + armor.health;
        self.character.armor = armor;
    }
    else if (weapon != nil) {
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
    }
    else if (healthEffect != 0)
    {
        self.character.health += healthEffect;
    }
    else {
        self.character.health += self.character.armor.health;
        self.character.damage += self.character.weapon.damage;
    }
}

#pragma mark - Buttons
-(void)updateButtons {
    self.nButton.hidden = (self.currentPoint.y == 2);
    self.eButton.hidden = (self.currentPoint.x == 3);
    self.sButton.hidden = (self.currentPoint.y == 0);
    self.wButton.hidden = (self.currentPoint.x == 0);
}

- (IBAction)nButtonClicked:(id)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y+1);
    [self updateTile];
}

- (IBAction)eButtonClicked:(id)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x+1, self.currentPoint.y);
    [self updateTile];
}

- (IBAction)sButtonClicked:(id)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y-1);
    [self updateTile];
}

- (IBAction)wButtonClicked:(id)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x-1, self.currentPoint.y);
    [self updateTile];
}

- (IBAction)actionButtonClicked:(id)sender {
    PATile *tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    if (tile.healthEffect == -15) {
        self.boss.health -= self.character.damage;
    }
    [self updateCharacterStatsForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    
    if (self.character.health <= 0)
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Death Meassage" message:@"You have died. Please restart the game!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    }
    else if (self.boss.health <= 0)
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Victory Meassage" message:@"You have defeated the evil pirate boss!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    }
    [self updateTile];
}

#pragma mark - Reset
- (IBAction)resetGameClicked:(id)sender
{
    self.character = nil;
    self.boss = nil;
    [self viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
