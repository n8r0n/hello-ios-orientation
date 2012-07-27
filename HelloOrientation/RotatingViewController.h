//
//  RotatingViewController.h
//  HelloOrientation
//

@interface RotatingViewController : UIViewController

// subclasses with two XIBs should use this method to save their UI state,
//   in preparation for switching XIBs
- (void) saveUiState;

// subclasses should implement this method if they are using one XIB, but their
//  subviews need some manual layout adjustment
- (void) adjustLayoutForPortrait: (BOOL)isPortrait insideFrame: (CGRect) parentFrame;

// load a UIImage, accounting for the current rotation.  calling this during a rotation
//  will return the appropriate image for the orientation we're rotating to.  
- (UIImage*) imageNamed: (NSString*) baseName;

@end
