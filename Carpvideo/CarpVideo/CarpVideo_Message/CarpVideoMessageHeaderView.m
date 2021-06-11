//
//  CarpVideoMessageHeaderView.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/9.
//

#import "CarpVideoMessageHeaderView.h"
#import "CarpVideoMessageBtn.h"
@interface CarpVideoMessageHeaderView ()
@property(nonatomic,copy) CarpVideoMessageTap MeaasgeTapBlock;

@end
@implementation CarpVideoMessageHeaderView
-(instancetype)initWithFrame:(CGRect)frame Configugration:(CarpVideoMessageTap )messageBlock{
    if (self = [super initWithFrame:frame]) {
        self.MeaasgeTapBlock = messageBlock;
        self.backgroundColor = [UIColor whiteColor];
        NSArray  * btnArr = @[@"通知",@"客服",@"点赞",@"评论"];
        for (int index = 0 ; index < btnArr.count; index++) {
            CarpVideoMessageBtn * messagBtn  = [[CarpVideoMessageBtn alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH/btnArr.count*index+RealWidth(10), RealWidth(10), RealWidth(70), RealWidth(60))];
            messagBtn.tag = index;
             UILabel * CarpBtomlb  = [messagBtn valueForKey:@"CarpBtomlb"];
            CarpBtomlb.text =  btnArr[index];
            [messagBtn addTarget:self action:@selector(CarpVideoMessageBtnClick:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:messagBtn];
        }
        
        
    }
    return self;
}
-(void)CarpVideoMessageBtnClick:(CarpVideoMessageBtn *)messageBtn{
    NSLog(@"-------%ld",messageBtn.tag);
    if (self.MeaasgeTapBlock) {
        self.MeaasgeTapBlock(messageBtn.tag);
    }
}
@end
