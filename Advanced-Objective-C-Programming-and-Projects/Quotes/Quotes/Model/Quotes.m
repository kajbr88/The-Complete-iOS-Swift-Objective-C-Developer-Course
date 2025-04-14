#import "Quotes.h"

@implementation Quotes

- (instancetype)init
{// here all self refers to and object of type Quotes.
    self = [super init];
    if (self) {
        self.myQuotes = [[NSArray alloc] initWithObjects: @"I have the simplest tastes. I am always satisfied with the best. - Oscar Wilde",
@"Man is least himself when he talks in his own person. Give him a mask, and he will tell you the truth. - Oscar Wilde",
@"If you tell the truth, you don't have to remember anything.- Mark Twain",
@"A lie gets halfway around the world before the truth has a chance to get its pants on. - Winston Churchill",
@"Keep your face to the sunshine and you cannot see a shadow. - Helen",
@"If everyone is moving forward together, then success takes care of itself. - Henry"
@"True knowledge exists in knowing that you know nothing. - Socrates",
@"We are drowning in information but starved for knowledge. - John Naisbitt" , nil];
    }
    return self;
}

- (NSString *) returnRandomQuote {
    
    int randomIndex = arc4random_uniform((int) self.myQuotes.count);
    
    return [self.myQuotes objectAtIndex:randomIndex];// gets the value from the array index and returns an object of type NSString.
}

@end
