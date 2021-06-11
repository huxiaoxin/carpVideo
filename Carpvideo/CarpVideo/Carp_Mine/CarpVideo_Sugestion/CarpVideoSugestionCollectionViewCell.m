//
//  CarpVideoSugestionCollectionViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/11.
//

#import "CarpVideoSugestionCollectionViewCell.h"
@interface CarpVideoSugestionCollectionViewCell ()
@property(nonatomic,strong) UILabel * CarpVideoTitlelb;
@end
@implementation CarpVideoSugestionCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self  = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:self.CarpVideoTitlelb];
        [_CarpVideoTitlelb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(self.contentView);
        }];
        
    }
    return self;
}
-(UILabel *)CarpVideoTitlelb{
    if (!_CarpVideoTitlelb) {
        _CarpVideoTitlelb = [UILabel new];
        _CarpVideoTitlelb.textAlignment = NSTextAlignmentCenter;
        _CarpVideoTitlelb.font  = [UIFont systemFontOfSize:14];
        _CarpVideoTitlelb.textColor = [UIColor blackColor];
        _CarpVideoTitlelb.backgroundColor =  [UIColor colorWithHexString:@"e6e6e6" Alpha:0.5];
        _CarpVideoTitlelb.layer.cornerRadius = RealWidth(12.5);
        _CarpVideoTitlelb.layer.masksToBounds = YES;
    }
    return _CarpVideoTitlelb;
}
-(void)setSugestionModel:(CarpVideoSugestionModel *)sugestionModel{
    _sugestionModel = sugestionModel;
    _CarpVideoTitlelb.text =  sugestionModel.Title;
    if (sugestionModel.Seltecd) {
        [_CarpVideoTitlelb setBackgroundColor:[UIColor colorWithHexString:@"FC305A" Alpha:0.2]];
        _CarpVideoTitlelb.textColor = LGDMianColor;
    }else{
        _CarpVideoTitlelb.textColor = LGDBLackColor;
        [_CarpVideoTitlelb setBackgroundColor:[UIColor colorWithHexString:@"e6e6e6" Alpha:0.2]];

    }
}
@end
