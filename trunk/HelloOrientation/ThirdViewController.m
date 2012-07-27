//
//  ThirdViewController.m
//  HelloOrientation
//

#import "ThirdViewController.h"

@implementation ThirdViewController
@synthesize photo;
@synthesize message;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Third", @"Third");
        self.tabBarItem.image = [UIImage imageNamed:@"third"];
    }
    return self;
}


#pragma mark - RotatingViewController

- (void) adjustLayoutForPortrait:(BOOL)portrait insideFrame: (CGRect) parentFrame {
    // autoresizing doesn't work for this subview, so we adjust its position manually.
    //  the superclass takes care of making this animated
    CGRect frame = self.photo.frame;
    if (portrait) {
        frame.origin = CGPointMake(20, 20);
    } else {
        // we move from upper left corner to bottom right, keeping padding the same
        int pad = frame.origin.x;
        frame.origin.x = parentFrame.size.width - frame.size.width - pad;
        frame.origin.y = parentFrame.size.height - frame.size.height - pad;
    }
    self.photo.frame = frame;
    
    // update the image to reflect the device orientation (assume a typical use
    //  case would involve more differences in images than simply rotation, which
    //  can be done with the same UIImage instance)
    self.photo.image = [self imageNamed: @"iphone.png"];
    self.message.center = CGPointMake(parentFrame.size.width / 2, parentFrame.size.height / 2);
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.autoresizesSubviews = NO;
}

- (void)viewDidUnload
{
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    [self setPhoto:nil];
    [self setMessage:nil];
    [super viewDidUnload];
}

@end
