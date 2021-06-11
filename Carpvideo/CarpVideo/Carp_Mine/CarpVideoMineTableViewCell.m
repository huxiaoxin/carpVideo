//
//  CarpVideoMineTableViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/10.
//

#import "CarpVideoMineTableViewCell.h"
@interface CarpVideoMineTableViewCell ()
@property(nonatomic,strong) UILabel      *  CarpVideoLeftlb;
@property(nonatomic,strong) UIView       * CarpVideoLine;
@property(nonatomic,strong) UIImageView  * CarpRightImgView;
@property(nonatomic,strong) UILabel      * CarpRightlb;
@end
@implementation CarpVideoMineTableViewCell
-(void)setContentUI{
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    [self.contentView addSubview:self.CarpVideoLeftlb];
    [self.contentView addSubview:self.CarpVideoLine];
    [self.contentView addSubview:self.CarpRightImgView];
    [self.contentView addSubview:self.CarpRightlb];
    [_CarpVideoLeftlb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.inset(RealWidth(15));
        make.centerY.mas_equalTo(self);
    }];
    [_CarpVideoLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.inset(RealWidth(15));
        make.bottom.mas_equalTo(self);
        make.height.mas_equalTo(1);
    }];
    [_CarpRightImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self);
        make.right.mas_equalTo(-RealWidth(15));
        make.size.mas_equalTo(CGSizeMake(RealWidth(10), RealWidth(10)));
    }];
    [_CarpRightlb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(_CarpRightImgView.mas_left).offset(-RealWidth(2));
        make.centerY.mas_equalTo(self);
    }];
}
- (UILabel *)CarpVideoLeftlb{
    if (!_CarpVideoLeftlb) {
        _CarpVideoLeftlb = [UILabel new];
        _CarpVideoLeftlb.font = KBlFont(13);
        _CarpVideoLeftlb.textColor = LGDBLackColor;
        _CarpVideoLeftlb.text = @"实名认证";
    }
    return _CarpVideoLeftlb;
}
-(UIView *)CarpVideoLine{
    if (!_CarpVideoLine) {
        _CarpVideoLine = [UIView new];
        _CarpVideoLine.backgroundColor   = LGDLightGaryColor;
    }
    return _CarpVideoLine;
}
- (UIImageView *)CarpRightImgView{
    if (!_CarpRightImgView) {
        _CarpRightImgView = [UIImageView new];
        _CarpRightImgView.image =[UIImage imageNamed:@"youbian"];
        
    }
    return _CarpRightImgView;
}
- (UILabel *)CarpRightlb{
    if (!_CarpRightlb) {
        _CarpRightlb = [UILabel new];
        _CarpRightlb.textColor = LGDGaryColor;
        _CarpRightlb.font = [UIFont systemFontOfSize:12];
        _CarpRightlb.text = @"0.12M";
    }
    return _CarpRightlb;
}
-(void)CarpVideoMineTableViewCellConfigDatasoure:(NSMutableArray *)DataSoure indexPath:(NSIndexPath *)indexPath{
    _CarpVideoLeftlb.text =  DataSoure[indexPath.row];
    if (indexPath.row == 2) {
        _CarpRightlb.text = [NSString stringWithFormat:@"%.2fM",[self CarpVideoLoadMemorySize]];
    }else if (indexPath.row == 4    ){
        _CarpRightlb.text  =@"V_1.0";
    }else{
        _CarpRightlb.text  =@"";
    }
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
    - (CGFloat)CarpVideoLoadMemorySize{
        CGFloat CarpVideoLoadMemorySize = 0.0;
        NSString *cachePath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory,NSUserDomainMask,YES)firstObject];
        NSArray *files = [[NSFileManager defaultManager] subpathsAtPath:cachePath];
        for(NSString *path in files) {
            NSString*filePath = [cachePath stringByAppendingString:[NSString stringWithFormat:@"/%@",path]];
            CarpVideoLoadMemorySize += [[NSFileManager defaultManager]attributesOfItemAtPath:filePath error:nil].fileSize;
        }
        CGFloat sizeM = CarpVideoLoadMemorySize /1024.0/1024.0;
        
        return sizeM;
    }
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
