//
//  Barista.h
//  quest1
//
//  Created by Knapptan on 28.01.2024.
//

#ifndef Barista_h
#define Barista_h


#import <Foundation/Foundation.h>
#import "Coffee.h"

@interface Barista : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, assign) NSUInteger experience;

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName experience:(NSUInteger)experience;

- (void)brewCoffee:(Coffee *)coffee;

@end


#endif /* Barista_h */
