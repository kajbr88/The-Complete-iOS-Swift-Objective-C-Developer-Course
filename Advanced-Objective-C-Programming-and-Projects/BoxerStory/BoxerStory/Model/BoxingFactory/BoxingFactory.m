#import "BoxingFactory.h" // This class can create objects of type stage.
#import "Stage.h"
#import "Gloves.h"
#import "HeavyBag.h"
#import "SpeedBall.h"
#import "JumpRope.h"
#import "Boxer.h"
#import "BoxingMonster.h"

@implementation BoxingFactory

- (NSArray *)initializeAndReturnStages {// This method is going to return an Array of Stages.
    
    Stage *stage1 = [[Stage alloc] init];
    stage1.stageBackgroundImage = [UIImage imageNamed:@"stage1.jpg"];
    stage1.stageDescription = @"Hello, you want to become boxing champion. right?. Let's get started.";
    stage1.stagePlayButtonText = @"Let's get started";
    stage1.healthInfluence = 7;
    
    
    Stage *stage2 = [[Stage alloc] init];
    stage2.stageBackgroundImage = [UIImage imageNamed:@"stage2.png"];
    stage2.stageDescription = @"Here you can get high quality gloves in order to increase the power of your punches.";
    stage2.stagePlayButtonText = @"Take the Gloves";
    Gloves *highQualityGloves = [[Gloves alloc] init];
    highQualityGloves.type = @"Leather";
    highQualityGloves.powerEffect = 20;
    stage2.gloves = highQualityGloves;
    stage2.powerEffect = stage2.powerEffect + stage2.gloves.powerEffect;
    
    
    Stage *stage3 = [[Stage alloc] init];
    stage3.stageBackgroundImage = [UIImage imageNamed:@"punchPower.png"];
    stage3.stageDescription = @"Here you can work on the heavy bag to increase the power of your punches";
    stage3.stagePlayButtonText = @"Work on the Heavy Bag";
    HeavyBag *myHeavyBag = [[HeavyBag alloc] init];
    myHeavyBag.powerEffect = 30;
    stage3.heavyBag = myHeavyBag;
    stage3.powerEffect = stage3.powerEffect + stage3.heavyBag.powerEffect;
    
    // Column 1
    NSArray *column1 = @[stage1, stage2, stage3];
    
    Stage *stage4 = [[Stage alloc] init];
    stage4.stageBackgroundImage = [UIImage imageNamed:@"punchSpeed.jpg"];
    stage4.stageDescription = @"Here you can train with the jump rope to increase your stamina";
    stage4.stagePlayButtonText = @"Work on the Speed Ball";
    SpeedBall *mySpeedBall = [[SpeedBall alloc] init];
    mySpeedBall.speedEffect = 25;
    stage4.speedBall = mySpeedBall;
    stage4.speedEffect = stage4.speedEffect + stage4.speedEffect;
    
    
    Stage *stage5 = [[Stage alloc] init];
    stage5.stageBackgroundImage = [UIImage imageNamed:@"stamina.jpg"];
    stage5.stageDescription = @"Here you can train with the jump rope to increase your stamina";
    stage5.stagePlayButtonText = @"Work on the Speed Ball";
    JumpRope *myJumpRope = [[JumpRope alloc] init];
    myJumpRope.staminaEffect = 15;
    stage5.jumpRope = myJumpRope;
    stage5.staminaEffect= stage5.staminaEffect + stage5.jumpRope.staminaEffect;
    
    
    Stage *stage6 = [[Stage alloc] init];
    stage6.stageBackgroundImage = [UIImage imageNamed:@"fight1.png"];
    stage6.stageDescription = @"Here is your first boxing fight. Do you want to fight?";
    stage6.stagePlayButtonText = @"FIGHT!";
    stage6.healthInfluence = -20;
    
    
    // column 2
    NSArray *column2 = @[stage4, stage5, stage6];
    
    Stage *stage7 = [[Stage alloc] init];
    stage7.stageBackgroundImage = [UIImage imageNamed:@"fight2.png"];
    stage7.stageDescription = @"Here is another Fight. Do you want to fight with this opponent?";
    stage7.stagePlayButtonText = @"FIGHT!";
    stage7.healthInfluence = -25;
    
    
    Stage *stage8 = [[Stage alloc] init];
    stage8.stageBackgroundImage = [UIImage imageNamed:@"food.png"];
    stage8.stageDescription = @"Here you can eat healthy foods in order to increase your health";
    stage8.stagePlayButtonText = @"EAT";
    stage8.healthInfluence = stage8.healthInfluence + 40;
    
    Stage *stage9 = [[Stage alloc] init];
    stage9.stageBackgroundImage = [UIImage imageNamed:@"boxingMaster.png"];
    stage9.stageDescription = @"Here you can fight the boxing monster. knock him out and Win the GLORY!.";
    stage9.stagePlayButtonText = @"Punch him!";
    stage9.healthInfluence = -10;
    
    // column 3
    NSArray *column3 = @[stage7, stage8, stage9];
    
    NSArray *allStages = [[NSArray alloc] initWithObjects: column1, column2, column3, nil];
    return allStages;
}

/*
 @property (nonatomic, strong) Gloves *boxerGloves;
 @property (nonatomic, strong) HeavyBag *boxerHeavyBag;
 @property (nonatomic, strong) SpeedBall *boxerSpeedBall;
 @property (nonatomic, strong) JumpRope *boxerJumpRope;
 @property (nonatomic) int *boxerPunchPower;
 @property (nonatomic) int *boxerPunchSpeed;
 @property (nonatomic) int *boxerStamina;
 @property (nonatomic) int *boxerHealth;
 */

- (Boxer *) initializeAndReturnBoxerInstance{
    
    Boxer *boxerInstance = [[Boxer alloc] init]; //Boxer class has type Gloves
    
    Gloves *lowQualityGloves = [[Gloves alloc] init];
    
    lowQualityGloves.type = @"Plastic";
    lowQualityGloves.powerEffect = 5;
    
    boxerInstance.boxerGloves = lowQualityGloves; //assigning Gloves to Boxer.
    
    HeavyBag *heavyBag = [[HeavyBag alloc]init];
    heavyBag.powerEffect = 2;
    
    boxerInstance.boxerHeavyBag = heavyBag;
    
    SpeedBall *speedBall = [[SpeedBall alloc]init];
    speedBall.speedEffect = 3;
    
    boxerInstance.boxerSpeedBall = speedBall;
    
    JumpRope *jumpRope = [[JumpRope alloc]init];
    jumpRope.staminaEffect = 2;
    
    boxerInstance.boxerJumpRope = jumpRope;
    
    boxerInstance.boxerPunchPower = boxerInstance.boxerGloves.powerEffect + boxerInstance.boxerHeavyBag.powerEffect;
    
    boxerInstance.boxerPunchSpeed = boxerInstance.boxerSpeedBall.speedEffect;
    
    boxerInstance.boxerStamina = boxerInstance.boxerJumpRope.staminaEffect;
    
    boxerInstance.boxerHealth = 15;
    
    return boxerInstance;
}

- (BoxingMonster *) initializeAndReturnBoxingMonster{
    BoxingMonster *monster = [[BoxingMonster alloc] init];
    monster.healthValue = 150;
    return monster;
}
@end
