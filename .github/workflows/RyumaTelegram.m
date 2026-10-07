#import <UIKit/UIKit.h>

__attribute__((constructor))
static void RyumaInit(void)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        NSURL *url = [NSURL URLWithString:@"https://t.me/ryumahackff"];

        if (!url) return;

        [[UIApplication sharedApplication] openURL:url
                                           options:@{}
                                 completionHandler:nil];
    });
}
