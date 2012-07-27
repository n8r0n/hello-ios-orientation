//
//  FirstViewController.h
//  HelloOrientation
//

#import <UIKit/UIKit.h>
#import "RotatingViewController.h"

@interface FirstViewController : RotatingViewController
@property (weak, nonatomic) IBOutlet UIProgressView *progress;
@property (weak, nonatomic) IBOutlet UISwitch *onOffSwitch;
@property (weak, nonatomic) IBOutlet UIImageView *photo;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@end
