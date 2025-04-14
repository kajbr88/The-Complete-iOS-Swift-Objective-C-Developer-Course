#import <Foundation/Foundation.h>

@class Boxer;
@class BoxingMonster;

NS_ASSUME_NONNULL_BEGIN

@interface BoxingFactory : NSObject //This class can create objects of type stage.

- (NSArray *)initializeAndReturnStages; // This method is going to return an Array of Stages.
// - means this is a instance method not "+" which is used for class method.
- (Boxer *)initializeAndReturnBoxerInstance;
- (BoxingMonster *)initializeAndReturnBoxingMonster;

@end

NS_ASSUME_NONNULL_END
