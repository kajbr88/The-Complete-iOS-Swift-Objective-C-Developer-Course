#import <UIKit/UIKit.h>

@class Boxer;
//#import "Boxer.h"
@class BoxingMonster;

@interface ViewController : UIViewController

#pragma mark - Properties

@property (nonatomic, strong) IBOutlet NSArray *stages;
@property (nonatomic) CGPoint currentStage;
@property (nonatomic, strong) Boxer *boxer;
@property (nonatomic, strong) BoxingMonster *monster;

#pragma mark - IBOutlets

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;

@property (weak, nonatomic) IBOutlet UILabel *lblPunchPower;

@property (weak, nonatomic ) IBOutlet UILabel *lblPunchSpeed;

@property (weak, nonatomic ) IBOutlet UILabel *lblStamina;

@property (weak, nonatomic ) IBOutlet UILabel *lblHealth;

@property (weak, nonatomic ) IBOutlet UILabel *lblGlovesType;

@property (weak, nonatomic ) IBOutlet UIButton *btnPlay;

@property (weak, nonatomic ) IBOutlet UILabel *lblGameDescription;

@property (weak, nonatomic ) IBOutlet UIButton *btnUp;

@property (weak, nonatomic ) IBOutlet UIButton *btnLeft;

@property (weak, nonatomic ) IBOutlet UIButton *btnDown;

@property (weak, nonatomic ) IBOutlet UIButton *btnRight;

#pragma mark - IBAction

- (IBAction)btnPlayPressed; // Only put metohds in header file only if you want other other classes to know about.
- (IBAction)btnUpPressed;
- (IBAction)btnLeftPressed;
- (IBAction)btnDownPressed;
- (IBAction)btnRightPressed;

@end

