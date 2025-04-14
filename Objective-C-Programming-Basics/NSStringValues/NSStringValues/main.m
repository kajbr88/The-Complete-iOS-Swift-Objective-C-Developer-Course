#import <Foundation/Foundation.h>
#import "Tiger.h"
#import "Lion.h"
#import "Computer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Tiger *myTiger = [[Tiger alloc]init];
//
//        NSMutableString *ttigerName = [[NSMutableString alloc]initWithString:@"A Tiger"];
//
//        [myTiger setTigerName:ttigerName];
//        [myTiger setTigerNameCopy:ttigerName];
//
//        NSLog(@"%@", myTiger.tigerName);
//        NSLog(@"%@", myTiger.tigerNameCopy);
//
//        [ttigerName setString:@"B Tiger"];
//
//        NSLog(@"%@", myTiger.tigerName);
//        NSLog(@"%@", myTiger.tigerNameCopy);
//
//        Lion *myLion = [[Lion alloc]init];
//        NSLog(@"%d", myLion.lionSpeed);
//        NSLog(@"%@", myLion.lionColor);
//
//        Lion *secondLion = [[Lion alloc]init];
//        NSLog(@"%@", secondLion.lionColor);
        
//        Computer *myIphone = [[ Computer alloc]init];
//
//        [myIphone turnOnComputer ];
//        [myIphone turnOFFComputer ];
//        NSLog(@"%ld", [myIphone evaluteTheOveralValueOfComputerWithcomputerPower:  400 computerSpeed: 300 computerRam: 200]);
//
//        long overValueOfMyIphone = [myIphone evaluteTheOveralValueOfComputerWithcomputerPower:  700000 computerSpeed: 600000 computerRam: 500000];
//
//        NSLog(@"%ld", overValueOfMyIphone);
        
//        NSLog(@"The overall Value of your computer instance is %d", myIphone.computerRam);
        
//---Custom initializers in Objective C---
//        Lion *myLion = [[Lion alloc] init]; // when we call init here the default initializer is going to be called and excuted.
//        NSLog(@"%d", myLion.lionSpeed);
//
//        Lion *anotherLion = [[Lion alloc] initWithLionName: @"A Lion" andLionColor:@"Yellow" andLionPower:200  andLionSpeed:300 andCanFight:true];
//
//        NSLog(@"%@", anotherLion.lionName);
//        NSLog(@"%@", anotherLion.lionColor);
//        NSLog(@"%d", anotherLion.lionSpeed);
//        NSLog(@"%d", anotherLion.lionPower);
//        NSLog(@"%i", anotherLion.canFight);
//
////        Lion *thirdLion = [[Lion alloc] initWithLionName: @"C Lion"] ;
//        Lion *thirdLion = [[Lion alloc] initWithLionName: @"C Lion" andLionColor:@"white" andLionPower:500  andLionSpeed:300 andCanFight:true];
//
//        NSLog(@"%@", thirdLion.lionName);
//        NSLog(@"%@", thirdLion.lionColor);
        
//-----Pointers in Objective C-----
        
        NSString *myStringValue = @"String Object"; // using = @"A Tiger" syntax is similar to using alloc and init.
        NSLog(@"%@", myStringValue);
        NSLog(@"%p", &myStringValue);
        
        //Operators
        // * Dereference Operators // pointer
        // & reference Operators.
        int myIntegerValue = 50;
        NSLog(@"%d", myIntegerValue);
        NSLog(@"%p", &myIntegerValue);
        return 0;
    }
   
}
