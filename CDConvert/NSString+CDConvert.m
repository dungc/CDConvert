//
//  NSString+CDConvert.m
//  
//
//  Created by Dong on 15/10/27.
//
//

#import "NSString+CDConvert.h"

@implementation NSString (CDConvert)

- (NSString *)convertToPinYin:(BOOL)upperCase
{
    NSMutableString *mutableString = [NSMutableString stringWithString:self];
    CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, false);
    NSString *pinyinString = (NSMutableString *)[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]];
    if (upperCase) {
        pinyinString = [pinyinString uppercaseString];
    }
    return pinyinString;
}

@end
