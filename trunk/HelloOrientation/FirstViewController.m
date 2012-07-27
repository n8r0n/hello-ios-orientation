//
//  FirstViewController.m
//  HelloOrientation
//

#import "FirstViewController.h"

@implementation FirstViewController
@synthesize photo;
@synthesize stepper;
@synthesize progress;
@synthesize onOffSwitch;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setProgress:nil];
    [self setOnOffSwitch:nil];
    [self setPhoto:nil];
    [self setStepper:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

@end
