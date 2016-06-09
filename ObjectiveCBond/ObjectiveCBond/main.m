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
        
    }
    
    return 0;
}

/*
 Задание 3.
 Условие:
 1. Есть автомойка и есть админ здание;
 2. И то, и другое является зданием;
 3. Каждое из них имеет отдельные помещения;
 4. Каждое помещение рассчитано на определенное количество людей;
 5. У автомойки помещения могут еще вмещать и машины;
 6. Работники автомойки деляцца на мойщиков, бухгалтеров и директоров;
 7. Все они - люди, у которых разная зарплата, опыт работы и обязанности;
 8. Бухгалтера считают деньги;
 9. Директора получают прибыль;
 10. Мойщики моют машины;
 11. Финансовые потоки идут по пути обработки машины - мойщики - бухгалтера - директора;
 12. Есть машины, у которых есть деньги, до мойки они грязные, а после мойки чистые.
 13. Есть одно здание мойки с одной комнатой и одним мойщиком
 14. Есть одно здание администрации с одной комнатой, в которой сидит бухгалтер и директор.
 Задание:
 Придумать и реализовать иерархию классов автомойки, учитывая, что используецца следуюший процесс взаимодействий:
 1. Мойщику мойки отдают машину
 2. Мойщик моет машину
 3. Мойщик забирает деньги у машины
 4. Мойщик отдает деньги бухгалтеру
 5. Бухгалтер считает деньги
 6. Бухгалтер отдает деньги директору
 7. Директор получает прибыль
 
 // arc4random, rand, srand
 // архитектура категорий
 */
