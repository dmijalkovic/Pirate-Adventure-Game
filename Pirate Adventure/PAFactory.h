//
//  PAFactory.h
//  Pirate Adventure
//
//  Created by Dragana Mijalkovic on 3/18/14.
//  Copyright (c) 2014 Dragana Mijalkovic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PACharacter.h"
#import "PABoss.h"

@interface PAFactory : NSObject

-(NSArray *)tiles;
-(PACharacter *)character;
-(PABoss *)boss;

//@property (nonatomic,strong) NSArray *tiles;
//
//- (void)initializeTiles;
//
//- (PATile *)getTileFrom:(CGPoint)point;

@end
