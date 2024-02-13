//
//  main.swift
//  quest2
//
//  Created by Knapptan on 28.01.2024.
//

import Foundation


// Протокол для общего интерфейса баристы
protocol IBarista {
    func brew(coffee: Coffee)
}

// Класс для представления кофемашины
class BaristaMachine: IBarista {
    let modelName: String
    let brewingTime: TimeInterval = 60 // 60 секунд - время приготовления
    
    init(modelName: String) {
        self.modelName = modelName
    }
    
    func brew(coffee: Coffee) {
        print("\nCoffee is brewing. One minute - time left")
        // Здесь может быть логика приготовления кофе, например, ожидание определенного времени
        // Для простоты примера, просто ждем 1 секунду (используем функцию sleep)
        sleep(1)
        print("Coffee is ready!")
    }
}

func main() {
    // Создаем объекты кофе
    let cappuccino = Coffee(name: "Cappuccino", price: 1.8)
    let americano = Coffee(name: "Americano", price: 1.35)
    let latte = Coffee(name: "Latte", price: 2.07)
    // Создаем объекты бариста
    let machine = BaristaMachine(modelName: "MyCoffeeMachine")
    let man = BaristaMachine(modelName: "Pit")
    // Флаг для изменнеия цен
    var machineSelected = true
    
    print("Choose barista:")
    print("1. Man")
    print("2. Machine")
    let baristaChoice = Int(readLine() ?? "") ?? 0
    
    var coffeeOperator = man
    // Проверяем корректность выбора и выбираем баристу
    switch baristaChoice {
        case 1:
        machineSelected = false
        case 2:
        coffeeOperator = machine
        default:
            print("Try again! Please enter a valid barista.")
            return
    }
    // Применение скидки
    let discount = machineSelected ? 0.9 : 1.0
    
    // Выводим меню
    print("Choose coffee in menu:")
    if let saveCappuccino = cappuccino {
        if let name = saveCappuccino.name {
            print("1. \(name) \(saveCappuccino.price * discount)$")
        } else {
            print("Error name in cappuccino")
            return
        }
    } else {
        print("Error cappuccino object")
        return
    }
    if let saveAmericano = americano {
        if let name = saveAmericano.name {
            print("2. \(name) \(saveAmericano.price * discount)$")
        } else {
            print("Error name in americano")
            return
        }
    } else {
        print("Error americano object")
        return
    }
    if let saveLatte = latte {
        if let name = saveLatte.name {
            print("3. \(name) \(saveLatte.price * discount)$")
        } else {
            print("Error name in latte")
            return
        }
    } else {
        print("Error latte object")
        return
    }
        
    // Получаем выбор пользователя
    print("\nSelect a coffee by entering its number:")
    let choice = Int(readLine() ?? "") ?? 0
    
    // Проверяем корректность выбора и готовим кофе
    switch choice {
        case 1:
        if let saveCappuccino  = cappuccino {
            coffeeOperator.brew(coffee: saveCappuccino)
        }
        case 2:
        if let saveAmericano  = americano {
            coffeeOperator.brew(coffee: saveAmericano)
        }
        case 3:
        if let saveLatte  = latte {
            coffeeOperator.brew(coffee: saveLatte)
        }
        default:
            print("Try again! Please enter a valid coffee number.")
        return
    }
}

main()
