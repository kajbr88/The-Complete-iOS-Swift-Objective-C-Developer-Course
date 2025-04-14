#import <Foundation/Foundation.h>

@class Gloves;
//#import "Gloves.h"
@class HeavyBag;
@class SpeedBall;
@class JumpRope;

NS_ASSUME_NONNULL_BEGIN

@interface Boxer : NSObject

@property (nonatomic, strong) Gloves *boxerGloves;
@property (nonatomic, strong) HeavyBag *boxerHeavyBag;
@property (nonatomic, strong) SpeedBall *boxerSpeedBall;
@property (nonatomic, strong) JumpRope *boxerJumpRope;
@property (nonatomic) int boxerPunchPower;
@property (nonatomic) int boxerPunchSpeed;
@property (nonatomic) int boxerStamina;
@property (nonatomic) int boxerHealth;

@end

NS_ASSUME_NONNULL_END
