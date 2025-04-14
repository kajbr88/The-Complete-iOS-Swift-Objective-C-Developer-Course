#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Computer : NSObject

@property (nonatomic, strong) NSString *computerName;
@property (nonatomic, strong) NSString *computerColor;
@property (nonatomic) long computerRam;
@property (nonatomic) long computerSpeed;
@property (nonatomic) long computerPower;

- (void) turnOnComputer; // signature or head of the method.
- (void) turnOFFComputer;
- (long) evaluteTheOveralValueOfComputerWithcomputerPower:  (long) computerPower computerSpeed: (long) computerSpeed computerRam: (long) computerRam;

@end

NS_ASSUME_NONNULL_END
