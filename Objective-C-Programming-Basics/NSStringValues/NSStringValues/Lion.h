#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Lion : NSObject

@property (nonatomic, strong) NSString *lionName;
@property (nonatomic, strong) NSString *lionColor;
@property (nonatomic) int lionSpeed;
@property (nonatomic) int lionPower;
@property (nonatomic) bool canFight;

- (instancetype)initWithLionName: (NSString *)lionName andLionColor: (NSString *)lionColor andLionPower: (int)lionPower andLionSpeed: (int)lionSpeed andCanFight: (bool)canFight;

- (instancetype)initWithLionName:  (NSString *)lionName;
@end

NS_ASSUME_NONNULL_END
