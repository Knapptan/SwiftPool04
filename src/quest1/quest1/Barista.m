//
//  Barista.m
//  quest1
//
//  Created by Knapptan on 28.01.2024.
//

#import "Barista.h"

@implementation Barista

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName experience:(NSUInteger)experience {
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _experience = experience;
    }
    return self;
}

- (void)brewCoffee:(Coffee *)coffee {
    NSLog(@"Processing brewing coffee...");
    NSLog(@"Your %@ is ready!", coffee.name);
}

@end
