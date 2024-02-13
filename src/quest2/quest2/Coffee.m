//
//  Coffee.m
//  quest1
//
//  Created by Knapptan on 28.01.2024.
//

#import "Coffee.h"


@implementation Coffee

- (instancetype)initWithName:(NSString *)name price:(double)price {
    self = [super init];
    if (self) {
        _name = name;
        _price = price;
    }
    return self;
}

@end
