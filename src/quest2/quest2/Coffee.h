//
//  Coffee.h
//  quest1
//
//  Created by Knapptan on 28.01.2024.
//

#ifndef Coffee_h
#define Coffee_h

#import <Foundation/Foundation.h>

@interface Coffee : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) double price;

- (instancetype)initWithName:(NSString *)name price:(double)price;

@end

#endif /* Coffee_h */
