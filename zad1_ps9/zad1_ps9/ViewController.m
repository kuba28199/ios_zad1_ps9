//
//  ViewController.m
//  zad1_ps9
//
//  Created by student on 12/10/2021.
//  Copyright © 2021 MobileSystemsForPB. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
    // Do any additional setup after loading the view, typically from a nib.
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"sendSurnameSegue"]) {
        SecondViewController *controller = (SecondViewController *) segue.destinationViewController;
        controller.surname = self.surnameTextField.text;
        controller.delegate = self;
    }
}

- (void) addItemViewControler:(SecondViewController *)controller didFinishEnteringItem:(NSString *)item{
    NSLog(@"This was returned from SecondViewController %@", item);
    self.surnameTextField.text = item;
}
    
-(IBAction) enter{
    NSString *yourName = self.inputField.text;
    NSString *myName = @"Kuba";
    NSString *message;
    
    if ([yourName length] == 0){
        yourName = @"World";
    }
    
    if ([yourName isEqualToString:myName]) {
        message = [NSString stringWithFormat:@"Hello %@! We have the same name :)", yourName];
    }else{
        message = [NSString stringWithFormat:@"Hello %@!", yourName];
    }
    
    self.messageLabel.text = message;
}


@end
