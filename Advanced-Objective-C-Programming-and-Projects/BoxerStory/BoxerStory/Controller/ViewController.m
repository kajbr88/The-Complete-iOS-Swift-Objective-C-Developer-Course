#import "ViewController.h"
#import "BoxingFactory.h"
#import "Stage.h"
#import "Boxer.h"
#import "Gloves.h"
#import "HeavyBag.h"
#import "SpeedBall.h"
#import "JumpRope.h"
#import "BoxingMonster.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    BoxingFactory *boxingFactory = [[BoxingFactory alloc]init ];
    
    self.stages = [boxingFactory initializeAndReturnStages];
    self.boxer = [boxingFactory initializeAndReturnBoxerInstance]; // create Boxer instance initialize and return instance and then assign that instance to boxer property.
    
    self.monster = [boxingFactory initializeAndReturnBoxingMonster];
    
    self.currentStage = CGPointMake(0, 0); // (row, col)
    [self modifyBoxerCharacteristicsAccordingToGloves:nil andHeavyBag:nil andSpeedBall: nil andJumpRope:nil andPowerEffect:0 andSpeedEffect:0 andStaminaEffect:0 andHealthInfluence:0];
    
    [self modifyCurrentStage];
    [self modifyDirectionsButtons];
}

#pragma mark - IBAction Methods

- (IBAction)btnPlayPressed{
    
    Stage *stage = [[self.stages objectAtIndex: self.currentStage.x] objectAtIndex: self.currentStage.y]; // gets the current stage.
    if([stage.stagePlayButtonText isEqualToString:@"Punch him!"]) {
        self.monster.healthValue = self.monster.healthValue - (self.boxer.boxerPunchPower + self.boxer.boxerPunchSpeed + self.boxer.boxerStamina);
    }
    
    [self modifyBoxerCharacteristicsAccordingToGloves:stage.gloves andHeavyBag:stage.heavyBag andSpeedBall:stage.speedBall andJumpRope:stage.jumpRope andPowerEffect:stage.powerEffect andSpeedEffect:stage.speedEffect andStaminaEffect:stage.staminaEffect andHealthInfluence:stage.healthInfluence];
    
    if(self.boxer.boxerHealth <= 0)// this if specifies whether we or monster won the game.
    { // UIAlertController is a sub class of UIViewController.
        UIAlertController *failureAlert = [UIAlertController alertControllerWithTitle:@"Failure!" message:@"You lost the game!"  preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *btnResetGame = [UIAlertAction actionWithTitle:@"Reset the game!" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            // reset the game.
            [self resetTheGame];
        }];
        UIAlertAction *btnNo = [UIAlertAction actionWithTitle:@"No Thanks!" style:UIAlertActionStyleDefault handler: nil];
        
        [failureAlert addAction:btnResetGame]; // adds the above created two buttons to failureAlert instance.
        [failureAlert addAction:btnNo]; // ``
        
        [self presentViewController:failureAlert animated:YES completion:nil]; // used to show alert to the user.
    } else if (self.monster.healthValue <= 0) {
        // UIAlertController is a sub class of UIViewController.
        UIAlertController *victoryAlert = [UIAlertController alertControllerWithTitle:@"Victory!" message:@"You Won the game. Congratulations!"  preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *btnResetGame = [UIAlertAction actionWithTitle:@"Reset the game!" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            // reset the game.
            [self resetTheGame];
        }];
        // UIAlertAction is a class used to represent an action that can be taken when a user taps a button in an alert.
        UIAlertAction *btnNo =  [UIAlertAction actionWithTitle:@"No Thanks!" style:UIAlertActionStyleDefault handler: nil];
        
        [victoryAlert addAction:btnResetGame]; // adds the above created two buttons to victoryAlert instance.
        [victoryAlert addAction:btnNo]; // ``
        
        [self presentViewController:victoryAlert animated:YES completion:nil]; // used to show alert to the user. // [self presentViewController is a method of UIViewcontroller.
    }
    
    [self modifyCurrentStage];
}
- (IBAction)btnUpPressed{
    self.currentStage = CGPointMake(self.currentStage.x, self.currentStage.y + 1);
    [self modifyCurrentStage];
    [self modifyDirectionsButtons];
}
- (IBAction)btnLeftPressed{
    self.currentStage = CGPointMake(self.currentStage.x - 1, self.currentStage.y);
    [self modifyCurrentStage];
    [self modifyDirectionsButtons];
}
- (IBAction)btnDownPressed{
    self.currentStage = CGPointMake(self.currentStage.x, self.currentStage.y - 1);
    [self modifyCurrentStage];
    [self modifyDirectionsButtons];
}
- (IBAction)btnRightPressed{
    self.currentStage = CGPointMake(self.currentStage.x + 1, self.currentStage.y);
    [self modifyCurrentStage];
    [self modifyDirectionsButtons];
}

#pragma mark - Custom Methods

- (void) modifyCurrentStage {
    Stage *stage = [[self.stages objectAtIndex:self.currentStage.x] objectAtIndex:self.currentStage.y];
    
    self.backgroundImageView.image = stage.stageBackgroundImage;
    self.lblGameDescription.text = stage.stageDescription;
    
    self.lblPunchPower.text = [NSString stringWithFormat:@"%d", self.boxer.boxerPunchPower];
    self.lblPunchSpeed.text = [NSString stringWithFormat:@"%d", self.boxer.boxerPunchSpeed];
    self.lblStamina.text = [NSString stringWithFormat:@"%d", self.boxer.boxerStamina];
    self.lblHealth.text = [NSString stringWithFormat:@"%d", self.boxer.boxerHealth];
    self.lblGlovesType.text = self.boxer.boxerGloves.type;
    
    [self.btnPlay setTitle:stage.stagePlayButtonText forState:UIControlStateNormal];
}

- (bool) ifStageIsAvailableAtThePassedPointReturnNoOtherwiseYes: (CGPoint) passedPoint { // passedPoint is a parameter
    
    if (passedPoint.x >= 0 && passedPoint.y >= 0 && passedPoint.x < [self.stages count] && passedPoint.y < [[self.stages objectAtIndex: passedPoint.x] count]) {
        
        return NO;
    }
    return YES; //excutes if out of bounds
}

- (void) modifyDirectionsButtons {
    self.btnUp.hidden = [self ifStageIsAvailableAtThePassedPointReturnNoOtherwiseYes:CGPointMake(self.currentStage.x, self.currentStage.y + 1)];
    self.btnLeft.hidden = [self ifStageIsAvailableAtThePassedPointReturnNoOtherwiseYes:CGPointMake(self.currentStage.x - 1, self.currentStage.y)];
    self.btnDown.hidden = [self ifStageIsAvailableAtThePassedPointReturnNoOtherwiseYes:CGPointMake(self.currentStage.x, self.currentStage.y - 1)];
    self.btnRight.hidden = [self ifStageIsAvailableAtThePassedPointReturnNoOtherwiseYes:CGPointMake(self.currentStage.x + 1, self.currentStage.y)];
}

/*
 @interface Boxer : NSObject
 
 @property (nonatomic, strong) Gloves *boxerGloves;
 @property (nonatomic, strong) HeavyBag *boxerHeavyBag;
 @property (nonatomic, strong) SpeedBall *boxerSpeedBall;
 @property (nonatomic, strong) JumpRope *boxerJumpRope;
 @property (nonatomic) int *boxerPunchPower;
 @property (nonatomic) int *boxerPunchSpeed;
 @property (nonatomic) int *boxerStamina;
 @property (nonatomic) int *boxerHealth;*/

- (void) modifyBoxerCharacteristicsAccordingToGloves: (Gloves *) gloves andHeavyBag: (HeavyBag *)heavyBag andSpeedBall: (SpeedBall *)speedBall andJumpRope: (JumpRope *)jumpRope andPowerEffect: (int)powerEffect andSpeedEffect: (int)speedEffect andStaminaEffect: (int)staminaEffect andHealthInfluence: (int)healthInfluence {
    
    if(gloves != nil) {
        self.boxer.boxerPunchPower = self.boxer.boxerPunchPower + gloves.powerEffect;
        self.boxer.boxerGloves = gloves;
    } else if (heavyBag != nil) {
        self.boxer.boxerPunchPower = self.boxer.boxerPunchPower + heavyBag.powerEffect;
        self.boxer.boxerHeavyBag = heavyBag;
    } else if (speedBall != nil) {
        self.boxer.boxerPunchSpeed = self.boxer.boxerPunchSpeed + speedBall.speedEffect;
        self.boxer.boxerSpeedBall = speedBall;
    } else if (jumpRope != nil) {
        self.boxer.boxerStamina = self.boxer.boxerStamina + jumpRope.staminaEffect;
        self.boxer.boxerJumpRope = jumpRope;
    } else if (powerEffect != 0) {
        self.boxer.boxerPunchPower = self.boxer.boxerPunchPower + powerEffect;
    } else if (speedEffect != 0) {
        self.boxer.boxerPunchSpeed = self.boxer.boxerPunchSpeed + speedEffect;
    } else if (staminaEffect != 0) {
        self.boxer.boxerStamina = self.boxer.boxerStamina + staminaEffect;
    } else if (healthInfluence != 0) {
        self.boxer.boxerHealth = self.boxer.boxerHealth + healthInfluence;
    }
}

- (void) resetTheGame {
    self.boxer = nil;
    self.monster = nil;
    [self viewDidLoad];
}

@end
