//
//  DetailViewController.m
//  Every.Do
//
//  Created by Cody Zazulak on 2015-07-15.
//  Copyright (c) 2015 Cody Zazulak. All rights reserved.
//

#import "DetailViewController.h"
#import "EditItemViewController.h"

@interface DetailViewController ()

- (IBAction)switchChanged:(UISwitch *)sender;
- (IBAction)stepperTapped:(UIStepper *)sender;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@property int value;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_object != newDetailItem) {
        _object = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (_object) {
        self.detailNameLabel.text = self.object.title;
        self.detailDescriptionLabel.text = self.object.itemDescription;
        self.detailPriorityLabel.text = [NSString stringWithFormat:@"Priority Level: %d", self.object.priority];
//        self.detailIsCompletedLabel.text = [NSString stringWithFormat:@"Completed: %d",self.object.isComplete];
        self.isCompletedSwitch.on = self.object.isComplete;
        self.stepper.value = self.object.priority;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.detailNameLabel.text = self.object.title;
    self.detailDescriptionLabel.text = self.object.itemDescription;
}

- (IBAction)switchChanged:(UISwitch *)sender {
    if([sender isOn]){
        self.object.isComplete = YES;
    } else{
        self.object.isComplete = NO;
    }
//    self.detailIsCompletedLabel.text = [NSString stringWithFormat:@"Completed: %d",self.object.isComplete];
}

- (IBAction)stepperTapped:(UIStepper *)sender {
    self.value = [sender value];
    self.object.priority = self.value;
    
    self.detailPriorityLabel.text = [NSString stringWithFormat:@"Priority Level: %d", self.object.priority];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"detailToEditSegue"]) {
        EditItemViewController *vc = segue.destinationViewController;
        vc.toDoItem = self.object;
    }
}

@end
