//
//  SecondViewController.h
//  zad1_ps9
//
//  Created by student on 12/10/2021.
//  Copyright © 2021 MobileSystemsForPB. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class SecondViewController;
@protocol SecondViewControllerDelegate <NSObject>
- (void) addItemViewControler:(SecondViewController *) controller didFinishEnteringItem: (NSString *) item;
@end

@interface SecondViewController : UIViewController
@property (nonatomic, weak) IBOutlet UITextField *modifiedSurnameInputField;
@property NSString *surname;
@property (nonatomic, weak) id <SecondViewControllerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
