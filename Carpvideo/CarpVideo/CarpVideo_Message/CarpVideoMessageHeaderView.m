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
        NSArray * coloTextArr = @[@"FC725E",@"FC305A",@"2aa515",@"0061b2"];
        for (int index = 0 ; index < btnArr.count; index++) {
            CarpVideoMessageBtn * messagBtn  = [[CarpVideoMessageBtn alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH/btnArr.count*index+RealWidth(10), RealWidth(10), RealWidth(70), RealWidth(60))];
            messagBtn.tag = index;
            messagBtn.CarpImgView.image = [UIImage imageNamed:btnArr[index]];
            messagBtn.CarpVideo_ContentView.backgroundColor = [UIColor colorWithHexString:coloTextArr[index] Alpha:0.15];            
             UILabel * CarpBtomlb  = [messagBtn valueForKey:@"CarpBtomlb"];
            CarpBtomlb.text =  btnArr[index];
            [messagBtn addTarget:self action:@selector(CarpVideoMessageBtnClick:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:messagBtn];
        }
        
        
    }
    return self;
}
-(void)CarpVideoMessageBtnClick:(CarpVideoMessageBtn *)messageBtn{
    if (self.MeaasgeTapBlock) {
        self.MeaasgeTapBlock(messageBtn.tag);
    }
}
@end
