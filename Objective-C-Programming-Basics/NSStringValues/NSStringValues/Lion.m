#import "Lion.h"

@implementation Lion

- (instancetype)init{
    self = [super init] ;// self refers to instance(object) the we create(= [[Lion alloc]init];) in main, super refers to NSObject, init method is in super(NSObject) class.(created objects must be initialized by the initializer of the super class.)
    if(self){
        self.lionSpeed = 200;
    }
    return self;
}
    
- (instancetype) initWithLionName: (NSString *)lionName andLionColor: (NSString *)lionColor andLionPower: (int)lionPower andLionSpeed: (int)lionSpeed andCanFight: (bool)canFight
    {
        self = [super init];
        if(self){
            self.lionName = lionName;
            self.lionColor = lionColor;
            self.lionPower = lionPower;
            self.lionSpeed = lionSpeed;
            self.canFight = canFight;
        }
        return self;
    }

- (instancetype)initWithLionName:  (NSString *)lionName{
    self = [super init];
    if(self){
        self.lionName = lionName;
    }
    return self;
}
@end
