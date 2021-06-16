//
//  CarpVideoCatagoryComentDetailView.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/15.
//

#import "CarpVideoCatagoryComentDetailView.h"
#import "UITextField+AddPlaceholder.h"
@interface CarpVideoCatagoryComentDetailView  ()
@property(nonatomic,copy) CoementTextSendBlock sendBlock;
@property(nonatomic,strong)UITextField * CarpVideoTextField;
@end
@implementation CarpVideoCatagoryComentDetailView
-(instancetype)initWithFrame:(CGRect)frame CoementTextSendConfiguar:(CoementTextSendBlock)sendBlock{
    if (self = [super initWithFrame:frame]) {
        self.sendBlock = sendBlock;
        
        UIView * CarpVideoTextView  = [UIView new];
        CarpVideoTextView.backgroundColor = LGDLightGaryColor;
        CarpVideoTextView.layer.cornerRadius = RealWidth(5);
        CarpVideoTextView.layer.masksToBounds = YES;
        [self addSubview:CarpVideoTextView];
        
        [CarpVideoTextView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.inset(RealWidth(15));
            make.centerY.mas_equalTo(self);
            make.size.mas_equalTo(CGSizeMake(RealWidth(280), RealWidth(30)));
        }];
        
        UITextField * CarpVideoTextField = [UITextField new];
        CarpVideoTextField.textColor = LGDBLackColor;
        CarpVideoTextField.clearButtonMode =  UITextFieldViewModeAlways;
        CarpVideoTextField.font = [UIFont systemFontOfSize:RealWidth(15)];
        [CarpVideoTextField addPlaceholders:[UIFont systemFontOfSize:13] holderStr:@"说点什么吧～" holderColor:LGDGaryColor];
        [CarpVideoTextView addSubview:CarpVideoTextField];
        [CarpVideoTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(UIEdgeInsetsMake(0, RealWidth(5), 0, RealWidth(5)));
        }];
        self.CarpVideoTextField =  CarpVideoTextField;
        
        UIButton * CarpVideoSendBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [CarpVideoSendBtn addTarget:self action:@selector(CarpVideoSendBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [CarpVideoSendBtn setTitle:@"发送" forState:UIControlStateNormal];
        CarpVideoSendBtn.layer.cornerRadius = RealWidth(5);
        CarpVideoSendBtn.layer.masksToBounds = YES;
        CarpVideoSendBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        [CarpVideoSendBtn setTitleColor:LGDMianColor forState:UIControlStateNormal];
        CarpVideoSendBtn.layer.borderColor= LGDMianColor.CGColor;
        CarpVideoSendBtn.layer.borderWidth = RealWidth(1);
        [self addSubview:CarpVideoSendBtn];
        [CarpVideoSendBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                    
            make.centerY.mas_equalTo(CarpVideoTextView.mas_centerY);
            make.left.mas_equalTo(CarpVideoTextView.mas_right).offset(RealWidth(15));
            make.size.mas_equalTo(CGSizeMake(RealWidth(50), RealWidth(30)));
        }];
        
    }
    return self;
}
-(void)CarpVideoSendBtnClick{
    self.CarpVideoTextField.text = nil;
    if (self.CarpVideoTextField.text.length > 0) {
        self.sendBlock(self.CarpVideoTextField.text);
    }
   
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
