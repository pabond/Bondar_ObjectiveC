//
//  main.m
//  ObjectiveCBond
//
//  Created by Bondar Pavel on 6/6/16.
//  Copyright © 2016 Pavel Bondar. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BPVCreature.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BPVCreature *creature1 = [[[BPVCreature alloc] init] autorelease];
        BPVCreature *creature2 = [[[BPVCreature alloc] init] autorelease];
        BPVCreature *creature3 = [[[BPVCreature alloc] init] autorelease];
        BPVCreature *creature4 = [[[BPVCreature alloc] init] autorelease];
        BPVCreature *creature5 = [[[BPVCreature alloc] init] autorelease];
        
        creature1.gender = creature3.gender = creature5.gender = BPVCreatureGenderTypeMale;
        creature2.gender = creature4.gender = BPVCreatureGenderTypeFemale;
        
        creature1.name = @"Alex";
        creature2.name = @"Alexandra";
        creature3.name = @"Paul";
        creature4.name = @"Irene";
        creature5.name = @"Bob";
        
        NSArray *creatures = [NSArray arrayWithObjects: creature1, creature2, creature3, creature4, creature5, nil];
        
        for (BPVCreature *creature in creatures) {
            for (uint8_t iterator = 0; iterator < kBPVChildrenCount; iterator++) {
                [[creature addChild: [creature giveBirthToChild]] setName: @"child"];
            }
            
            [creature sayHi];
            for (BPVCreature *child in creature.children) {
                [child sayHi];
            }
            
            if (creature.gender == BPVCreatureGenderTypeMale) {
                [creature fight];
            } else if (creature.gender == BPVCreatureGenderTypeFemale) {
                [[creature addChild: [creature giveBirthToChild]] setName: @"child"];
            }
        }
    }
    
    return 0;
}


/*
 Задание 1.
 Условие:
 Есть существо, у существа есть typedef пола, есть строка имени, есть масса, есть возраст, есть массив детей. Существо умеет воевать и рожать детей. При родах существо не добавляет к себе ребенка автоматом. Существо умеет добавит к себе детей и удалить. Существо умеет говорить "Привет!", причем, когда существо говорит привет, то сначала говорит оно, а потом все его дети (значит и дети детей, и т.д.).
 Задание:
 1. Написать класс существа;
 2. Создать несколько существ и положить их в массив, каждому из существ добавить детей;
 3. В цикле пройти по массиву существ и проверить их пол. Если мужик, то надо отправить существо воевать, если баба, то рожать детей;
 4. У существа наружу должен быть немутабельный массив детей через динамическое проперти с копи+авторелиз, а внутри - еще и мутабельное свойство.
 */
