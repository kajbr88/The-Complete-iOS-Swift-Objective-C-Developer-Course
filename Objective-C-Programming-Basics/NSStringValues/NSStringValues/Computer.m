#import "Computer.h"

@implementation Computer

- (void) turnOnComputer { // - denotes instance method ; // signature or head of the method
    NSLog(@"The Computer is now turned on");
}

- (void) turnOFFComputer {
    NSLog(@"The Computer is now turned off");
}

- (long) evaluteTheOveralValueOfComputerWithcomputerPower:  (long) computerPower computerSpeed: (long) computerSpeed computerRam: (long) computerRam  {
    
    self.computerPower = computerPower;
    self.computerSpeed = computerSpeed;
    self.computerRam = computerRam;
    
    long overalValueOfComputer = computerPower * computerSpeed * computerRam ;
//    NSLog(@"The overall Value of your computer instance is %d", overalValueOfComputer);
    return overalValueOfComputer;
}

@end
