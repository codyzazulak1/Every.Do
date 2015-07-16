//
//  ToDoItem.m
//  Every.Do
//
//  Created by Cody Zazulak on 2015-07-15.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "ToDoItem.h"

@implementation ToDoItem

-(instancetype)initWithTitle:(NSString*)title andItemDescription:(NSString*)itemDescription andPriority:(int)priority andIsComplete:(BOOL)isComplete {
    self = [super init];
    if (self) {
        self.title = title;
        self.itemDescription = itemDescription;
        self.priority = priority;
        self.isComplete = isComplete;
    }
    return self;
}

@end
