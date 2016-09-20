//
//  ViewController.m
//  UnitConverter
//
//  Created by Michael K on 6/17/16.
//  Copyright © 2016 Waxy Watermelon. All rights reserved.
//

#import "ViewController.h"

double convertFeetToMeters(double feetValue){
    double metersValue;
    metersValue = feetValue / 3.2808398950131;
    return metersValue;
}

double convertFeetToYards(double feetValue){
    double yardsValue;
    yardsValue = feetValue / 3.0;
    return yardsValue;
}

double convertFeetToMiles(double feetValue){
    double milesValue;
    milesValue = feetValue / 5280.0;
    return milesValue;
}

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;

@property (weak, nonatomic) IBOutlet UILabel *outputField;


@end

@implementation ViewController

- (IBAction)updateButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.inputField.text doubleValue];
    
    if(self.segmentController.selectedSegmentIndex == 0) {
        double metersValue = convertFeetToMeters(userInput);
        [buf appendString:[@(metersValue) stringValue]];
    }
    else if(self.segmentController.selectedSegmentIndex == 1) {
        double yardsValue = convertFeetToYards(userInput);
        [buf appendString: [@(yardsValue) stringValue]];
    }
    else{
        double milesValue = convertFeetToMiles(userInput);
        [buf appendString: [@(milesValue) stringValue]];
    }
    
    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
