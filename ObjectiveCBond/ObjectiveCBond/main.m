//
//  main.m
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/6/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSObject+BPVCategory.h"

#import "BPVCreature.h"
#import "BPVCreatureMale.h"
#import "BPVCreatureFemale.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BPVCreatureMale *creature1 = [BPVCreatureMale object];
        BPVCreatureFemale *creature2 = [BPVCreatureFemale object];
        BPVCreatureMale *creature3 = [BPVCreatureMale object];
        BPVCreatureFemale *creature4 = [BPVCreatureFemale object];
        BPVCreatureMale *creature5 = [BPVCreatureMale object];
        
        creature1.name = @"Alex";
        creature2.name = @"Alexandra";
        creature3.name = @"Paul";
        creature4.name = @"Irene";
        creature5.name = @"Bob";
        
        NSArray *creatures = [NSArray arrayWithObjects: creature1, creature2, creature3, creature4, creature5, nil];
        
        for (BPVCreature *creature in creatures) {
            if ([creature respondsToSelector: @selector(giveBirthToChild)]) {
                [[(BPVCreatureFemale *)creature
                  addChild: [(BPVCreatureFemale *)creature
                             giveBirthToChild]] setName: @"child"];
            }
            
            [creature sayHi];
            [creature performGenderSpecificOperation];
        }
    }
    
    return 0;
}

/*
 Задание 2.
 Условие:
 Дано существо из задания 1.
 Задание:
 1. Убрать переменную пол из существа, а также умение воевать и рожать детей;
 2. Вместо нее создать наследников существа: мужское и женское существо;
 3. Мужское существо умеет воевать, женское - рожать детей;
 4. Создать метод performGenderSpecificOperation у родительского существа, который ничего не делает, мужское существо по вызову этого метода идет воевать, женское рожает детей;
 5. Создать массив существ, в котором бы лежали только мужчины и женщины, пройтись по нему через for (Creature *creature in creatures) и вызвать метод performGenderSpecificOperation, которой, в зависимости от пола существа приведет либо к войне, либо к родам -> Подчеркнуть, что это - полиморфизм, значит, охуенно.
 6. Заменить alloc init autorelease на NSOBject категорию с методом object
 */
