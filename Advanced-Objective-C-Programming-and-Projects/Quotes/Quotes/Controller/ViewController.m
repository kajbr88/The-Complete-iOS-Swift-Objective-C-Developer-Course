/* ----MVC----
 Model = The Data that our application is interacting with.
 
 Controller = interacts with the model and update the view.(Controller can interact both with Model and View.)
 
 View = The User Interface.
 
 **Model and view cannot interact directly they must interact through Controller.  */

#import "ViewController.h"
#import "Quotes.h"
#import "Colors.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad { // viewDidLoad is the first method being called whenever we run our app.
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    //    self.lblQuotesTitle.backgroundColor = [UIColor redColor];
    
//    self.view.backgroundColor = [UIColor yellowColor]; //here self refers to an object of type viewController, UIColor is actually a method of viewController.
    
    self.quote = [[Quotes alloc] init]; // creating and object of type Quotes.
    
    self.lblQuote.text = [self.quote returnRandomQuote]; // returns an object of type NSString and assigns to lblQuote property of type/class UILabel.
    
    self.colors = [[Colors alloc] init]; // creating and object of type Colors.
    
    self.view.backgroundColor = [self.colors returnARandomColor]; // returns an object of type UIColor and assigns to backgroundColor property of view object.
}

- (IBAction)btnNextClick {
//    self.view.backgroundColor = [UIColor orangeColor];
//    self.lblQuote.backgroundColor = [UIColor greenColor];
    
    self.lblQuote.text = [self.quote returnRandomQuote]; // calls the returnRandomQuote method inside the Quotes class by first calling the quote property and then assigns it to lblQuote property's text property.
    
    self.lblQuote.backgroundColor = [self.colors returnARandomColor]; // calls the returnARandomColor method inside the Colors class by first calling the quote property and then assigns it to lblQuote property's background property.
    self.view.backgroundColor = [self.colors returnARandomColor]; // returns an object of type UIColor and assigns to backgroundColor property of view object.
}
@end
