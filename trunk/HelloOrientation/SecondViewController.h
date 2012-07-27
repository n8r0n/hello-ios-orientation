//
//  SecondViewController.h
//  HelloOrientation
//

#import <UIKit/UIKit.h>
#import "RotatingViewController.h"

@interface SecondViewController : RotatingViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *description;
@property (weak, nonatomic) IBOutlet UIImageView *photo;
@property (weak, nonatomic) IBOutlet UISwitch *switch1;
@property (weak, nonatomic) IBOutlet UISwitch *switch2;
@property (weak, nonatomic) IBOutlet UISwitch *switch3;
@property (weak, nonatomic) IBOutlet UISwitch *switch4;
@property (weak, nonatomic) IBOutlet UISwitch *switch5;
@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)onSwitch4Changed:(id)sender;

@end
