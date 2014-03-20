//
//  PAFactory.m
//  Pirate Adventure
//
//  Created by Dragana Mijalkovic on 3/18/14.
//  Copyright (c) 2014 Dragana Mijalkovic. All rights reserved.
//

#import "PAFactory.h"
#import "PATile.h"

@implementation PAFactory
-(NSArray *)tiles {
    PATile *tile00 = [[PATile alloc] init];
    tile00.story = @"Captain, we need a fearless leader such as you to undertake a voyage. You must stop the evil pirate Boss before he steals any more plunder. Would you like a blunted sword to get started?";
    tile00.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    tile00.actionButtonName = @"Take the sword";
    PAWeapon *bluntedSword = [[PAWeapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 7;
    tile00.weapon = bluntedSword;
    
    PATile *tile01 = [[PATile alloc] init];
    tile01.story = @"You have come across an armory. Would you like to upgrade your armor to steel armor?";
    tile01.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    tile01.actionButtonName = @"Take steel armor";
    PAArmor *steelArmor = [[PAArmor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 7;
    tile01.armor = steelArmor;
    
    
    PATile *tile02 = [[PATile alloc] init];
    tile02.story = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile02.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    NSArray *column1Array = [[NSArray alloc] initWithObjects:tile00, tile01, tile02, nil];
    tile02.actionButtonName = @"Stop at the Dock";
    tile02.healthEffect = 17;
    
    PATile *tile10 = [[PATile alloc] init];
    PATile *tile11 = [[PATile alloc] init];
    PATile *tile12 = [[PATile alloc] init];
    
    tile10.story = @"You have found a parrot can be used in your armor slot! Parrots are a great defender and are fiercly loyal to their captain.";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    tile10.actionButtonName = @"Adopt Parrot";
    PAArmor *parrotArmor = [[PAArmor alloc] init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot Armor";
    tile10.armor = parrotArmor;
    
    tile11.story = @"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    tile11.actionButtonName = @"Take pistol";
    PAWeapon *pistolWeapon = [[PAWeapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 12;
    tile11.weapon = pistolWeapon;
    
    tile12.story = @"You have been captured by pirates and are ordered to walk the plank";
    tile12.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile12.actionButtonName = @"Show no fear!";
    tile12.healthEffect = -22;
    
    NSArray *column2Array = [[NSArray alloc] initWithObjects:tile10, tile11, tile12, nil];
    
    PATile *tile20 = [[PATile alloc] init];
    PATile *tile21 = [[PATile alloc] init];
    PATile *tile22 = [[PATile alloc] init];
    
    tile20.story = @"You sight a pirate battle off the coast";
    tile20.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile20.actionButtonName = @"Fight those scum!";
    tile20.healthEffect = -15;
    
    tile21.story = @"The legend of the deep, the mighty kraken appears";
    tile21.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile21.actionButtonName = @"Abandon Ship";
    tile21.healthEffect = -46;
    
    tile22.story = @"You stumble upon a hidden cave of pirate treasurer";
    tile22.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile22.actionButtonName = @"Take Treasurer";
    tile22.healthEffect = 20;
    
    NSArray *column3Array = [[NSArray alloc] initWithObjects:tile20, tile21, tile22, nil];
    
    PATile *tile30 = [[PATile alloc] init];
    PATile *tile31 = [[PATile alloc] init];
    PATile *tile32 = [[PATile alloc] init];
    
    tile30.story = @"A group of pirates attempts to board your ship";
    tile30.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile30.actionButtonName = @"Repel the invaders";
    tile30.healthEffect = 15;
    
    tile31.story = @"In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";
    tile31.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile31.actionButtonName = @"Swim deeper";
    tile31.healthEffect = -7;
    
    tile32.story = @"Your final faceoff with the fearsome pirate boss";
    tile32.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile32.actionButtonName = @"Fight!";
    tile32.healthEffect = -15;
    NSArray *column4Array = [[NSArray alloc] initWithObjects:tile30, tile31, tile32, nil];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:column1Array, column2Array, column3Array, column4Array, nil];
    return tiles;
}

-(PABoss *)boss
{
    PABoss *boss = [[PABoss alloc] init];
    boss.health = 65;
    return boss;
}

/*- (void)initializeTiles {
    PATile *tile00 = [[PATile alloc] init];
    PATile *tile01 = [[PATile alloc] init];
    PATile *tile02 = [[PATile alloc] init];
    
    tile00.story = @"Story 0, 0";
    tile01.story = @"Story 0, 1";
    tile02.story = @"Story 0, 2";
    
    NSArray *column1Array = [[NSArray alloc] initWithObjects:tile00, tile01, tile02, nil];
    
    PATile *tile10 = [[PATile alloc] init];
    PATile *tile11 = [[PATile alloc] init];
    PATile *tile12 = [[PATile alloc] init];
    tile10.story = @"Story 1, 0";
    tile11.story = @"Story 1, 1";
    tile12.story = @"Story 1, 2";
    NSArray *column2Array = [[NSArray alloc] initWithObjects:tile10, tile11, tile12, nil];
    
    PATile *tile20 = [[PATile alloc] init];
    PATile *tile21 = [[PATile alloc] init];
    PATile *tile22 = [[PATile alloc] init];
    tile20.story = @"Story 2, 0";
    tile21.story = @"Story 2, 1";
    tile22.story = @"Story 2, 2";
    NSArray *column3Array = [[NSArray alloc] initWithObjects:tile20, tile21, tile22, nil];
    
    PATile *tile30 = [[PATile alloc] init];
    PATile *tile31 = [[PATile alloc] init];
    PATile *tile32 = [[PATile alloc] init];
    tile30.story = @"Story 3, 0";
    tile31.story = @"Story 3, 1";
    tile32.story = @"Story 3, 2";
    NSArray *column4Array = [[NSArray alloc] initWithObjects:tile30, tile31, tile32, nil];
    
    self.tiles = [[NSArray alloc] initWithObjects:column1Array, column2Array, column3Array, column4Array, nil];
}

- (PATile *)getTileFrom:(CGPoint)point
{
    NSArray *column = [self.tiles objectAtIndex:point.x];
    return [column objectAtIndex:point.y];
}
*/

-(PACharacter *)character {
    PACharacter *character = [[PACharacter alloc] init];
    character.health = 100;
    PAArmor *armor = [[PAArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    PAWeapon *weapon = [[PAWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    return character;
}

@end
