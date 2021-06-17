//
//  CarpVideoAcittyDetailFooter.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/17.
//

#import "CarpVideoAcittyDetailFooter.h"
@interface CarpVideoAcittyDetailFooter ()
@property(nonatomic,strong) UIImageView * CarpTopImgView;
@property(nonatomic,strong) UILabel * CarpTopLb;
@property(nonatomic,strong) UILabel * CarpVideoLocationlb;
@property(nonatomic,strong) UILabel * CarpVieoTimelb;

@property(nonatomic,strong) UIImageView * CarpCebterImgView;
@property(nonatomic,strong) UILabel * CarpCenterLb;
@property(nonatomic,strong) UILabel * CarpCenterDetailb;


@property(nonatomic,strong) UIImageView * CarpDeepImgView;
@property(nonatomic,strong) UILabel     * carpDeeplb;
@property(nonatomic,strong) UILabel     * carpDeepDetailb;

@end
@implementation CarpVideoAcittyDetailFooter
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
         [self addSubview:self.CarpTopImgView];
        [self addSubview:self.CarpTopLb];
        [self addSubview:self.CarpVideoLocationlb];
        [self addSubview:self.CarpVieoTimelb];

        
        [self addSubview:self.CarpCebterImgView];
        [self addSubview:self.CarpCenterLb];
        [self addSubview:self.CarpCenterDetailb];

        
        [self addSubview:self.CarpDeepImgView];
        [self addSubview:self.carpDeeplb];
        [self addSubview:self.carpDeepDetailb];

        
        [_CarpTopImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.inset(RealWidth(15));
            make.size.mas_equalTo(CGSizeMake(RealWidth(12), RealWidth(12)));
        }];
        [_CarpTopLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_CarpTopImgView.mas_right).offset(RealWidth(5));
            make.centerY.mas_equalTo(_CarpTopImgView.mas_centerY);
        }];
                
        [_CarpVideoLocationlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(RealWidth(15));
            make.top.mas_equalTo(_CarpTopImgView.mas_bottom).offset(RealWidth(20));
        }];
        
        [_CarpVieoTimelb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(RealWidth(15));
            make.top.mas_equalTo(_CarpVideoLocationlb.mas_bottom).offset(RealWidth(10));
        }];
        
        [_CarpCebterImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.inset(RealWidth(15));
            make.top.mas_equalTo(_CarpVieoTimelb.mas_bottom).offset(RealWidth(20));
            make.size.mas_equalTo(CGSizeMake(RealWidth(12), RealWidth(12)));
        }];
        [_CarpCenterLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_CarpCebterImgView.mas_right).offset(RealWidth(5));
            make.centerY.mas_equalTo(_CarpCebterImgView.mas_centerY);
        }];
        
        [_CarpCenterDetailb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(RealWidth(30));
            make.top.mas_equalTo(_CarpCenterLb.mas_bottom).offset(RealWidth(15));
        }];
        
        [_CarpDeepImgView mas_makeConstraints:^(MASConstraintMaker *make) {
                   
            make.left.inset(RealWidth(15));
            make.top.mas_equalTo(_CarpCenterDetailb.mas_bottom).offset(RealWidth(20));
            make.size.mas_equalTo(CGSizeMake(RealWidth(12), RealWidth(12)));
            
        }];
        
        [_carpDeeplb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_CarpDeepImgView.mas_right).offset(RealWidth(5));
            make.centerY.mas_equalTo(_CarpDeepImgView.mas_centerY);
        }];

        [_carpDeepDetailb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.inset(RealWidth(30));
            make.right.inset(RealWidth(15));
            make.top.mas_equalTo(_carpDeeplb.mas_bottom).offset(RealWidth(15));
        }];
    }
    return self;
}
- (UIImageView *)CarpTopImgView{
    if (!_CarpTopImgView) {
        _CarpTopImgView = [UIImageView new];
        _CarpTopImgView.image = [UIImage imageNamed:@"xuanzhong"];
    }
    return _CarpTopImgView;
}
- (UILabel *)CarpTopLb{
    if (!_CarpTopLb) {
        _CarpTopLb = [UILabel new];
        _CarpTopLb.textColor = LGDBLackColor;
        _CarpTopLb.font = [UIFont boldSystemFontOfSize:14];
        _CarpTopLb.text = @"活动时间及地点";
    }
    return _CarpTopLb;
}
- (UILabel *)CarpVideoLocationlb{
    if (!_CarpVideoLocationlb) {
        _CarpVideoLocationlb = [UILabel new];
        _CarpVideoLocationlb.textColor = LGDLightBLackColor;
        _CarpVideoLocationlb.font = [UIFont systemFontOfSize:13];
        [_CarpVideoLocationlb setText:@"  金岭谷科技展厅3号会议室" textColor:LGDLightBLackColor appendingImg:@"dingwei" imgIndex:0 lineSpacing:RealWidth(3)];
    }
    return _CarpVideoLocationlb;
}
- (UILabel *)CarpVieoTimelb{
    if (!_CarpVieoTimelb) {
        _CarpVieoTimelb = [UILabel new];
        _CarpVieoTimelb.textColor = LGDLightBLackColor;
        _CarpVieoTimelb.font = [UIFont systemFontOfSize:13];
        [_CarpVieoTimelb setText:@"  1/1 - 3/8" textColor:LGDLightBLackColor appendingImg:@"guaqi" imgIndex:0 lineSpacing:RealWidth(3)];
    }
    return _CarpVieoTimelb;
}
- (UIImageView *)CarpCebterImgView{
    if (!_CarpCebterImgView) {
        _CarpCebterImgView = [UIImageView new];
        _CarpCebterImgView.image = [UIImage imageNamed:@"xuanzhong"];
    }
    return _CarpCebterImgView;
}
- (UILabel *)CarpCenterLb{
    if (!_CarpCenterLb) {
        _CarpCenterLb = [UILabel new];
        _CarpCenterLb.textColor = LGDBLackColor;
        _CarpCenterLb.font = [UIFont boldSystemFontOfSize:14];
        _CarpCenterLb.text = @"活动对象";
    }
    return _CarpCenterLb;
}
- (UILabel *)CarpCenterDetailb{
    if (!_CarpCenterDetailb) {
        _CarpCenterDetailb = [UILabel new];
        _CarpCenterDetailb.textColor = LGDLightBLackColor;
        _CarpCenterDetailb.font = [UIFont systemFontOfSize:13];
        _CarpCenterDetailb.text = @"园区全体人员均可参加";
    }
    return _CarpCenterDetailb;
}
- (UIImageView *)CarpDeepImgView{
    if (!_CarpDeepImgView) {
        _CarpDeepImgView =  [UIImageView new];
        _CarpDeepImgView.image = [UIImage imageNamed:@"xuanzhong"];
    }
    return _CarpDeepImgView;
}
- (UILabel *)carpDeeplb{
    if (!_carpDeeplb) {
        _carpDeeplb = [UILabel new];
        _carpDeeplb.text = @"活动形式与流程";
        _carpDeeplb.textColor = LGDBLackColor;
        _carpDeeplb.font = [UIFont boldSystemFontOfSize:14];
    }
    return _carpDeeplb;

}
- (UILabel *)carpDeepDetailb{
    if (!_carpDeepDetailb) {
        _carpDeepDetailb = [UILabel new];
        _carpDeepDetailb.textColor = LGDLightBLackColor;
        _carpDeepDetailb.font = [UIFont systemFontOfSize:13];
        
        _carpDeepDetailb.text = @"参会人员根据各班班长进行引领，依次有序通行会场，不得做一些脱离组织的行为，大会结束后可随意在会场自由活动";
        _carpDeepDetailb.numberOfLines = 0;
    }
    return _carpDeepDetailb;
}
-(UIImageView *)CarpVideoConfiguration{
    UIImageView * CarpVideoImg = [UIImageView new];
    CarpVideoImg.image = [UIImage imageNamed:@"xuanzhong"];
    return CarpVideoImg;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
