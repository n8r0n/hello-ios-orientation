//
//  ThirdViewController.h
//  HelloOrientation
//

#import <UIKit/UIKit.h>
#import "RotatingViewController.h"

@interface ThirdViewController : RotatingViewController

@property (weak, nonatomic) IBOutlet UIImageView *photo;
@property (weak, nonatomic) IBOutlet UILabel *message;

@end
