//
//  LKSavedeleteBtnView.m
//  cltios
//
//  Created by zjlk03 on 2021/6/1.
//

#import "LKSavedeleteBtnView.h"
@interface LKSavedeleteBtnView ()
@property(nonatomic,strong) UIButton * lkDeleteBtn;
@property(nonatomic,strong) UIButton * lkSaveBtn;
@property(nonatomic,copy) BtnViewClickBlock btnBlock;
@end
@implementation LKSavedeleteBtnView
-(instancetype)initWithFrame:(CGRect)frame configurationBtnClick:(BtnViewClickBlock)btnBlock{
    if (self = [super initWithFrame:frame]) {
        self.btnBlock = btnBlock;
        [self addSubview:self.lkSaveBtn];
        [self addSubview:self.lkDeleteBtn];

        [_lkDeleteBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.inset(RealWidth(10));
            make.bottom.mas_offset(-RealWidth(13)-GK_SAFEAREA_BTM);
            make.height.mas_equalTo(RealWidth(40));
        }];
        [_lkSaveBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.inset(RealWidth(10));
            make.bottom.mas_equalTo(_lkDeleteBtn.mas_top).offset(-RealWidth(10));
            make.height.mas_equalTo(RealWidth(40));
            
      }];
        
    }
    return self;
}
- (UIButton *)lkDeleteBtn{
    if (!_lkDeleteBtn) {
        _lkDeleteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_lkDeleteBtn setTitle:@"删除此数据" forState:UIControlStateNormal];
        [_lkDeleteBtn setBackgroundColor:[UIColor whiteColor]];
        [_lkDeleteBtn setTitleColor:[UIColor colorWithHexString:@"FF6C00"] forState:UIControlStateNormal];
        _lkDeleteBtn.layer.borderColor = [UIColor colorWithHexString:@"FF6C00"].CGColor;
        _lkDeleteBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _lkDeleteBtn.tag = 1;
        _lkDeleteBtn.layer.borderWidth = 1;
        _lkDeleteBtn.layer.cornerRadius = 5;
        _lkDeleteBtn.layer.masksToBounds = YES;
        [_lkDeleteBtn addTarget:self action:@selector(LKSavedeleteBtnViewClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _lkDeleteBtn;
}
- (UIButton *)lkSaveBtn{
    if (!_lkSaveBtn) {
        _lkSaveBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_lkSaveBtn setTitle:@"保存" forState:UIControlStateNormal];
        [_lkSaveBtn setBackgroundColor:[UIColor colorWithHexString:@"FF6C00"]];
        [_lkSaveBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _lkSaveBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        _lkSaveBtn.tag = 0;
        _lkSaveBtn.layer.cornerRadius = 5;
        _lkSaveBtn.layer.masksToBounds = YES;
        [_lkSaveBtn addTarget:self action:@selector(LKSavedeleteBtnViewClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _lkSaveBtn;
}
-(void)LKSavedeleteBtnViewClick:(UIButton *)lkBtn{
    if (self.btnBlock) {
        self.btnBlock(lkBtn.tag);
    }
}
@end
