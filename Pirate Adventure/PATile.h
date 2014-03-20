//
//  PATile.h
//  Pirate Adventure
//
//  Created by Dragana Mijalkovic on 3/18/14.
//  Copyright (c) 2014 Dragana Mijalkovic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PAWeapon.h"
#import "PAArmor.h"

@interface PATile : NSObject

@property (nonatomic, strong) NSString *story;
@property (nonatomic, strong) UIImage *backgroundImage;
@property (nonatomic, strong) NSString *actionButtonName;
@property (nonatomic, strong) PAWeapon *weapon;
@property (nonatomic, strong) PAArmor *armor;
@property (nonatomic) int healthEffect;

@end
