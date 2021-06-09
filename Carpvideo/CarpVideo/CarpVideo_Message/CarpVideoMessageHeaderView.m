//
//  CarpVideoMessageHeaderView.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/9.
//

#import "CarpVideoMessageHeaderView.h"
#import "CarpVideoMessageBtn.h"
@interface CarpVideoMessageHeaderView ()

@end
@implementation CarpVideoMessageHeaderView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        NSArray  * btnArr = @[@"通知",@"客服",@"点赞",@"评论"];
        for (int index = 0 ; index < btnArr.count; index++) {
            CarpVideoMessageBtn * messagBtn  = [[CarpVideoMessageBtn alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH/btnArr.count*index+RealWidth(10), RealWidth(10), RealWidth(70), RealWidth(60))];
          UILabel * CarpBtomlb  = [messagBtn valueForKey:@"CarpBtomlb"];
            CarpBtomlb.text =  btnArr[index];
            [self addSubview:messagBtn];
        }
        
        
    }
    return self;
}
@end
