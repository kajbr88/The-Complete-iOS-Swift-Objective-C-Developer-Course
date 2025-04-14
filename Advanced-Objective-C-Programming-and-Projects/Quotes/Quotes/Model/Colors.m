#import "Colors.h"

@implementation Colors

- (instancetype)init// initializing the array whenever object of of type Colors is created.
{
    self = [super init];
    if (self) {
        self.myColors = [[NSArray alloc] initWithObjects:[UIColor blueColor], [UIColor redColor], [UIColor yellowColor], [UIColor greenColor], [UIColor purpleColor], [UIColor brownColor], [UIColor colorWithRed:12 green:50 blue:500 alpha:1], nil]; // blueColor is an method of type/class UIColor.
    }
    return self;
}

- (UIColor *) returnARandomColor {
    
    int randomIndex = arc4random_uniform((int) self.myColors.count);
    
    return [self.myColors objectAtIndex:randomIndex];// gets the value from the array index and returns an object of type UIColor.
}

@end
