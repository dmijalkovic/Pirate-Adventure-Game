//
//  PAViewController.h
//  Pirate Adventure
//
//  Created by Dragana Mijalkovic on 3/18/14.
//  Copyright (c) 2014 Dragana Mijalkovic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PAFactory.h"
#import "PACharacter.h"
#import "PABoss.h"

@interface PAViewController : UIViewController

@property (nonatomic) CGPoint currentPoint;
@property (nonatomic, strong) NSArray *tiles;
@property (nonatomic, strong) PABoss *boss;
//@property (nonatomic, strong) PATile *currentTile;
//@property (nonatomic, strong) PAFactory *factory;
@property (nonatomic, strong) PACharacter *character;
@property (strong, nonatomic) IBOutlet UIButton *nButton;
@property (strong, nonatomic) IBOutlet UIButton *eButton;
@property (strong, nonatomic) IBOutlet UIButton *sButton;
@property (strong, nonatomic) IBOutlet UIButton *wButton;
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;

//-(void) updateButtons;
- (IBAction)nButtonClicked:(id)sender;
- (IBAction)eButtonClicked:(id)sender;
- (IBAction)sButtonClicked:(id)sender;
- (IBAction)wButtonClicked:(id)sender;
- (IBAction)actionButtonClicked:(id)sender;
- (IBAction)resetGameClicked:(id)sender;

@end
