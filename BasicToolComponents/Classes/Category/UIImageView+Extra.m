//
//  UIImageView+Extra.m
//  YiJiYou
//
//  Created by 灵恩 on 2021/3/9.
//

#import "UIImageView+Extra.h"

@implementation UIImageView (Extra)


- (void)setAllScreenImageIphoneX:(NSString *)imageXName image_iphone8:(NSString *)iphone8{
    
    if (IS_IPHONE_Xs || IS_IPHONE_Xs_Max || IS_IPHONE_Xr || IS_IPHONE_X || IS_IPHONE_12_Mini || IS_IPHONE_iPhone12 || IS_iPhone12_ProMax || IS_iPhoneSE) {
        
        self.image = [UIImage imageNamed:imageXName];
    }else {
        self.image = [UIImage imageNamed:iphone8];
    }
    
}
@end
