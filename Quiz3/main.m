//
//  main.m
//  Quiz3
//
//  Created by Muhammad-Sharif Moustafa on 1/31/14.
//
//

#import <UIKit/UIKit.h>

#import "q3AppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        NSLog(@"Muhammad-Sharif");
        NSString *firstName = @"Muhammad-Sharif";
        NSLog(@"%@",firstName);
        NSNumber *num = @200;
        NSLog(@"%@", num);
        
        NSArray *fruits = @[@"lemon",
                            @"grapefruit",
                            @"orange"];
        
        NSArray *sweetarray = @[@1,
                                @4,
                                @10];
        
        NSDictionary *sweetness = [NSDictionary dictionaryWithObjects:sweetarray forKeys:fruits];
        NSLog(@"%@", [sweetness objectForKey:@"lemon"]);
//        NSLog(@"%@", [sweetness objectForKey:@"grapefruit"]);
        
        NSUInteger *uint = -1;
        
        NSNumber *num1 = @3;
        NSNumber *num2 = @4;
        NSLog(@"%d", [num1 unsignedIntValue] * [num2 unsignedIntValue]);
        
        NSString *lastName = @"Moustafa";
        NSString *fullName = [NSString stringWithFormat:@"%@ %@", firstName, lastName];
        NSLog(@"%@", fullName);
        
        
        for (NSString *fruit in fruits) {
        if ([(NSNumber *)[sweetness objectForKey:fruit] unsignedIntValue] < 4) {
            NSLog(@"Not sweet");
        } else if ([(NSNumber *)[sweetness objectForKey:fruit] unsignedIntValue] >= 4 &&
                   [(NSNumber *)[sweetness objectForKey:fruit] unsignedIntValue] <= 7) {
            NSLog(@"somewhat sweet");
        } else {
            NSLog(@"sweet");
        }
        }
        
//        typedef enum DayOfWeek {
//            MON,
//            TUE,
//            WED,
//            THU,
//            FRI,
//            SAT,
//            SUN
//        };
//        
//        DayOfWeek currentDay = DayOfWeek.MON;
        
        
        void (^myFirstBlock)(void);
        
        myFirstBlock = ^(void) {
            NSLog(@"Hello World");
        };
        
        void (^mySecondBlock)(NSString *);
        
        mySecondBlock = ^(NSString *astring) {
            NSLog(@"%@", astring);
        };
        
        mySecondBlock(@"Hello");
        mySecondBlock(@"World");
        
        
        
    }
}
