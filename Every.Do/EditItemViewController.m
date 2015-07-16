//
//  EditItemViewController.m
//  Every.Do
//
//  Created by Cody Zazulak on 2015-07-15.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "EditItemViewController.h"
#import "MasterViewController.h"
#import "ToDoItem.h"

@interface EditItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
- (IBAction)saveButtonPressed:(UIButton *)sender;

@end

@implementation EditItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButtonPressed:(UIButton *)sender {
    if([self.titleTextField isFirstResponder]){
        [self.titleTextField resignFirstResponder];
    }
    if([self.descriptionTextField isFirstResponder]){
        [self.descriptionTextField resignFirstResponder];
    }
    
    self.toDoItem.title = self.titleTextField.text;
    self.toDoItem.itemDescription = self.descriptionTextField.text;
    
    NSLog(@"Title: %@", self.titleTextField.text);
    NSLog(@"Desc: %@", self.descriptionTextField.text);
}

@end
