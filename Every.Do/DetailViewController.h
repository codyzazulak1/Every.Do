//
//  DetailViewController.h
//  Every.Do
//
//  Created by Cody Zazulak on 2015-07-15.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoItem.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) ToDoItem *object;
@property (weak, nonatomic) IBOutlet UILabel *detailNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailPriorityLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailIsCompletedLabel;
@property (weak, nonatomic) IBOutlet UISwitch *isCompletedSwitch;

@end

