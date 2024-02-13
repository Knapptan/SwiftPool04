//
//  main.m
//  quest1
//
//  Created by Knapptan on 27.01.2024.
//

#import <Foundation/Foundation.h>
#import "Coffee.h"
#import "Barista.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Создаем объекты кофе из меню
        Coffee *cappuccino = [[Coffee alloc] initWithName:@"Cappuccino" price:2.0];
        Coffee *americano = [[Coffee alloc] initWithName:@"Americano" price:1.5];
        Coffee *latte = [[Coffee alloc] initWithName:@"Latte" price:2.3];
        
        // Выводим меню
        NSLog(@"Choose coffee in menu:");
        NSLog(@"1. %@ %.1f$", cappuccino.name, cappuccino.price);
        NSLog(@"2. %@ %.1f$", americano.name, americano.price);
        NSLog(@"3. %@ %.1f$", latte.name, latte.price);
        
        NSLog(@"\nSelect a coffee by entering its number:");
        int choice;
        scanf("%d", &choice);
        
        // Проверяем корректность выбора и готовим кофе
        Barista *barista = [[Barista alloc] initWithFirstName:@"John" lastName:@"Doe" experience:5];
        switch (choice) {
            case 1:
                [barista brewCoffee:cappuccino];
                break;
            case 2:
                [barista brewCoffee:americano];
                break;
            case 3:
                [barista brewCoffee:latte];
                break;
            default:
                NSLog(@"Try again! Please enter a valid coffee number.");
                break;
        }
    }
    return 0;
}
