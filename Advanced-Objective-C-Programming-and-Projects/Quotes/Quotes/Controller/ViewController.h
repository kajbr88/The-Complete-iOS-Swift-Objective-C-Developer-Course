#import <UIKit/UIKit.h>

@class Quotes;
@class Colors;

@interface ViewController : UIViewController
//@property (weak, nonatomic) IBOutlet UILabel *lblQuotesTitle; // IBOutlet is used for creating relationship, or here IBOutlet specifically means that the view controller knows about this label inside the view.
// lblQuotesTitle is a property

@property (nonatomic, strong) Quotes *quote;// property quote of type Quotes.
@property (nonatomic, strong) Colors *colors;

//IBOutlet
@property (weak, nonatomic) IBOutlet UILabel *lblQuote;
// "UILabel" is a type/class and "lblQuote" is a property or name of the label view.

// IBActions
- (IBAction)btnNextClick;

@end

