//
//  ToDoItem.h
//  Every.Do
//
//  Created by Cody Zazulak on 2015-07-15.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *itemDescription;
@property (assign) int priority;
@property (nonatomic, assign) BOOL isComplete;

-(instancetype)initWithTitle:(NSString*)title andItemDescription:(NSString*)itemDescription andPriority:(int)priority andIsComplete:(BOOL)isComplete;

@end
