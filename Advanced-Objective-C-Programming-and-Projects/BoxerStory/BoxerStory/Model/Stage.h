#import <UIKit/UIKit.h>

@class Gloves;
@class HeavyBag;
@class SpeedBall;
@class JumpRope;

NS_ASSUME_NONNULL_BEGIN

@interface Stage : NSObject

@property (strong, nonatomic)  UIImage *stageBackgroundImage;
@property (strong, nonatomic)  NSString *stageDescription;
@property (strong, nonatomic) NSString *stagePlayButtonText;
@property (nonatomic, strong) Gloves *gloves; // composition design pattern.
@property (nonatomic, strong) HeavyBag *heavyBag;
@property (nonatomic, strong) SpeedBall *speedBall;
@property (nonatomic, strong) JumpRope *jumpRope;

@property (nonatomic) int powerEffect;
@property (nonatomic) int speedEffect;
@property (nonatomic) int staminaEffect;
@property (nonatomic) int healthInfluence;

@end

NS_ASSUME_NONNULL_END
