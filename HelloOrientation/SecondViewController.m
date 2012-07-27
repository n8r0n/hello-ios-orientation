//
//  SecondViewController.m
//  HelloOrientation
//

#import "SecondViewController.h"

@interface SecondViewController() {
@private
    NSString* userEntry;  // ivar to hold textField.text during XIB switch
}
@property (nonatomic, strong) NSString* userEntry;
@end

@implementation SecondViewController

@synthesize userEntry;
@synthesize titleLabel;
@synthesize description;
@synthesize photo;
@synthesize switch1;
@synthesize switch2;
@synthesize switch3;
@synthesize switch4;
@synthesize switch5;
@synthesize textField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}

#pragma mark - RotatingViewController

- (void)saveUiState {
    BOOL switchOn = self.switch4.on;
    [[NSUserDefaults standardUserDefaults] setValue: [NSNumber numberWithBool: switchOn]
                                             forKey: @"switch4_on"];   
    self.userEntry = self.textField.text;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // do this here to avoid having to do it in two .xib files:
    self.textField.delegate = self;
    
    // we choose to persist some UI state via NSUserDefaults ...
    // ... may not always be the best choice (password fields come to mind!)
    BOOL switchOn = [(NSNumber*)[[NSUserDefaults standardUserDefaults] valueForKey: @"switch4_on"] boolValue];
    self.switch4.on = switchOn;
    
    // this text field, however, we temporarily store in an ivar
    self.textField.text = self.userEntry;
}

- (void)viewDidUnload
{
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    [self setTitleLabel:nil];
    [self setDescription:nil];
    [self setPhoto:nil];
    [self setSwitch1:nil];
    [self setSwitch2:nil];
    [self setSwitch3:nil];
    [self setSwitch4:nil];
    [self setSwitch5:nil];
    [self setTextField:nil];
    [super viewDidUnload];
}

#pragma mark - UITextFieldDelegate

-(BOOL)textFieldShouldReturn:(UITextField*) theTextField {
    [theTextField resignFirstResponder];
    return YES;
}

#pragma mark - IBActions

- (IBAction)onSwitch4Changed:(id)sender {
    // for more complicated view controllers, you may not want to save ALL
    //  the view controller's state when only one control changes
    [self saveUiState];
}

@end
