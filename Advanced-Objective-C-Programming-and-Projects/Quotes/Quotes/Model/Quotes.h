#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Quotes : NSObject

@property (nonatomic, strong) NSArray *myQuotes;

- (NSString *) returnRandomQuote;

@end

NS_ASSUME_NONNULL_END
