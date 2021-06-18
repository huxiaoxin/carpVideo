
#import "CarpVideoKefuTableViewCell.h"
@interface CarpVideoKefuTableViewCell ()
@property(nonatomic,strong) UIImageView * CarpVideoChatSEND_paopaoImgView;
@property(nonatomic,strong) UIImageView * CarpVideoChatSEND_userImgView;
@property(nonatomic,strong) UILabel * CarpVideoChatSEND_Contentlb;
@property(nonatomic,strong) UIImage * CarpVideoChatSEND_uiimageName;


@property(nonatomic,strong) UIImageView * CarpVideoChatReVICE_paopaoIMgView;
@property(nonatomic,strong) UIImageView * CarpVideoChatReVICE_userImgView;
@property(nonatomic,strong) UILabel * CarpVideoChatReVICE_contelb;
@property(nonatomic,strong) UIImage * CarpVideoChatReVICE_uiimaname;


@end
@implementation CarpVideoKefuTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        
        [self.contentView addSubview:self.CarpVideoChatSEND_userImgView];
        [self addSubview:self.CarpVideoChatSEND_paopaoImgView];
        [_CarpVideoChatSEND_paopaoImgView addSubview:self.CarpVideoChatSEND_Contentlb];
        
        [self.contentView addSubview:self.CarpVideoChatReVICE_userImgView];
        [self addSubview:self.CarpVideoChatReVICE_paopaoIMgView];
        [_CarpVideoChatReVICE_paopaoIMgView addSubview:self.CarpVideoChatReVICE_contelb];
    }
    return self;
}
-(UIImageView *)CarpVideoChatReVICE_userImgView{
    if (!_CarpVideoChatReVICE_userImgView) {
        _CarpVideoChatReVICE_userImgView = [[UIImageView alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(17.5), RealWidth(35), RealWidth(35))];
        _CarpVideoChatReVICE_userImgView.layer.cornerRadius = RealWidth(17.5);
        _CarpVideoChatReVICE_userImgView.layer.masksToBounds = YES;
    }
    return _CarpVideoChatReVICE_userImgView;
}
-(UIImageView *)CarpVideoChatSEND_userImgView{
    if (!_CarpVideoChatSEND_userImgView) {
        _CarpVideoChatSEND_userImgView = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_Width-RealWidth(60), RealWidth(17.5), RealWidth(35), RealWidth(35))];
        _CarpVideoChatSEND_userImgView.layer.cornerRadius = RealWidth(17.5);
        _CarpVideoChatSEND_userImgView.layer.masksToBounds = YES;
    }
    return _CarpVideoChatSEND_userImgView;
}

- (UIImageView *)CarpVideoChatReVICE_paopaoIMgView{
    if (!_CarpVideoChatReVICE_paopaoIMgView) {
        _CarpVideoChatReVICE_paopaoIMgView = [[UIImageView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_CarpVideoChatReVICE_userImgView.frame)+RealWidth(15), CGRectGetMidY(_CarpVideoChatReVICE_userImgView.frame), 0, 0)];
        _CarpVideoChatReVICE_paopaoIMgView.image = self.CarpVideoChatReVICE_uiimaname;
    }
    return _CarpVideoChatReVICE_paopaoIMgView;
}
- (UIImageView *)CarpVideoChatSEND_paopaoImgView{
    if (!_CarpVideoChatSEND_paopaoImgView) {
        _CarpVideoChatSEND_paopaoImgView = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_Width-CGRectGetWidth(_CarpVideoChatSEND_paopaoImgView.frame)-RealWidth(15)-RealWidth(170), CGRectGetMidY(_CarpVideoChatSEND_userImgView.frame), RealWidth(160), RealWidth(30))];
        _CarpVideoChatSEND_paopaoImgView.image = self.CarpVideoChatSEND_uiimageName;
    }
    return _CarpVideoChatSEND_paopaoImgView;
}
-(UILabel *)CarpVideoChatReVICE_contelb{
    if (!_CarpVideoChatReVICE_contelb) {
        _CarpVideoChatReVICE_contelb = [[UILabel alloc]init];
        _CarpVideoChatReVICE_contelb.numberOfLines = 0;
        _CarpVideoChatReVICE_contelb.textColor = [UIColor blackColor];
        _CarpVideoChatReVICE_contelb.font = [UIFont systemFontOfSize:15];
    }
    return _CarpVideoChatReVICE_contelb;
}
-(UILabel *)CarpVideoChatSEND_Contentlb{
    if (!_CarpVideoChatSEND_Contentlb) {
        _CarpVideoChatSEND_Contentlb = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
        _CarpVideoChatSEND_Contentlb.numberOfLines = 0;
        _CarpVideoChatSEND_Contentlb.textColor = [UIColor whiteColor];
        _CarpVideoChatSEND_Contentlb.font = [UIFont systemFontOfSize:15];
    }
    return _CarpVideoChatSEND_Contentlb;
}
- (UIImage *)CarpVideoChatSEND_uiimageName {
    if (_CarpVideoChatSEND_uiimageName == nil) {
        UIImage *image = [UIImage imageNamed:@"carpVideosendIcon"];
        CGSize size = image.size;
        _CarpVideoChatSEND_uiimageName = [image stretchableImageWithLeftCapWidth:size.width/2 topCapHeight:size.height*0.8];
    }
    return _CarpVideoChatSEND_uiimageName;
}
- (UIImage *)CarpVideoChatReVICE_uiimaname{
    if (!_CarpVideoChatReVICE_uiimaname) {
        UIImage *image  = [UIImage imageNamed:@"carpVideoreviceIcon"];
        CGSize size = image.size;
        _CarpVideoChatReVICE_uiimaname = [image stretchableImageWithLeftCapWidth:size.width/2 topCapHeight:size.height*0.8];
    }
    return _CarpVideoChatReVICE_uiimaname;
}
-(void)setCarpVideoModel:(CarpVideoKefuModel *)carpVideoModel{
    _carpVideoModel =  carpVideoModel;
    [_CarpVideoChatSEND_userImgView sd_setImageWithURL:[NSURL URLWithString:@"https://p.qqan.com/up/2021-4/16194921988015974.jpg"]];
    _CarpVideoChatReVICE_userImgView.image = [UIImage imageNamed:@"kefu"];
    if (carpVideoModel.msgisMe) {
        _CarpVideoChatReVICE_paopaoIMgView.hidden = YES;
        _CarpVideoChatReVICE_userImgView.hidden = YES;
        _CarpVideoChatReVICE_contelb.hidden = YES;
        
        _CarpVideoChatSEND_paopaoImgView.hidden = NO;
        _CarpVideoChatSEND_userImgView.hidden = NO;
        _CarpVideoChatSEND_Contentlb.hidden = NO;
        
        [_CarpVideoChatSEND_Contentlb setText:carpVideoModel.msgname];
        CGRect contetnRect =  [carpVideoModel.msgname cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:SCREEN_Width-RealWidth(150)];
        
        _CarpVideoChatSEND_Contentlb.frame = CGRectMake(RealWidth(10), RealWidth(10), contetnRect.size.width, contetnRect.size.height);
        
        _CarpVideoChatSEND_paopaoImgView.frame = CGRectMake(SCREEN_Width-contetnRect.size.width-RealWidth(45+15+25), RealWidth(15), contetnRect.size.width+RealWidth(20), contetnRect.size.height+RealWidth(20));
        carpVideoModel.CellHeight =  CGRectGetMaxY(_CarpVideoChatSEND_paopaoImgView.frame)+RealWidth(30);
        
    }else{
        
        _CarpVideoChatReVICE_paopaoIMgView.hidden = NO;
        _CarpVideoChatReVICE_userImgView.hidden = NO;
        _CarpVideoChatReVICE_contelb.hidden = NO;
        
        _CarpVideoChatSEND_paopaoImgView.hidden = YES;
        _CarpVideoChatSEND_userImgView.hidden = YES;
        _CarpVideoChatSEND_Contentlb.hidden = YES;
        
        
        [_CarpVideoChatReVICE_contelb setText:carpVideoModel.msgname];
        CGRect contetnRect =  [carpVideoModel.msgname cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:SCREEN_Width-RealWidth(150)];
        
        _CarpVideoChatReVICE_contelb.frame = CGRectMake(RealWidth(10), RealWidth(10), contetnRect.size.width, contetnRect.size.height);
        
        _CarpVideoChatReVICE_paopaoIMgView.frame = CGRectMake(CGRectGetMaxX(_CarpVideoChatReVICE_userImgView.frame)+RealWidth(10), RealWidth(15), contetnRect.size.width+RealWidth(20), contetnRect.size.height+RealWidth(20));
        carpVideoModel.CellHeight =  CGRectGetMaxY(_CarpVideoChatReVICE_paopaoIMgView.frame)+RealWidth(30);
        
    }
    
}
- (void)setCarpDetalMoel:(carpVideoMessageDetailModel *)carpDetalMoel{
    _carpDetalMoel =  carpDetalMoel;
    [_CarpVideoChatSEND_userImgView sd_setImageWithURL:[NSURL URLWithString:@"https://p.qqan.com/up/2021-4/16194921988015974.jpg"]];
    [_CarpVideoChatReVICE_userImgView sd_setImageWithURL:[NSURL URLWithString:carpDetalMoel.imgUrl] placeholderImage:[UIImage imageNamed:@"whiteLogo"]];
    if (_carpDetalMoel.msgisMe) {
        _CarpVideoChatReVICE_paopaoIMgView.hidden = YES;
        _CarpVideoChatReVICE_userImgView.hidden = YES;
        _CarpVideoChatReVICE_contelb.hidden = YES;
        
        _CarpVideoChatSEND_paopaoImgView.hidden = NO;
        _CarpVideoChatSEND_userImgView.hidden = NO;
        _CarpVideoChatSEND_Contentlb.hidden = NO;
        
        [_CarpVideoChatSEND_Contentlb setText:carpDetalMoel.msgname];
        CGRect contetnRect =  [carpDetalMoel.msgname cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:SCREEN_Width-RealWidth(150)];
        
        _CarpVideoChatSEND_Contentlb.frame = CGRectMake(RealWidth(10), RealWidth(10), contetnRect.size.width, contetnRect.size.height);
        
        _CarpVideoChatSEND_paopaoImgView.frame = CGRectMake(SCREEN_Width-contetnRect.size.width-RealWidth(45+15+25), RealWidth(15), contetnRect.size.width+RealWidth(20), contetnRect.size.height+RealWidth(20));
        carpDetalMoel.CellHeight =  CGRectGetMaxY(_CarpVideoChatSEND_paopaoImgView.frame)+RealWidth(30);
        
    }else{
        
        _CarpVideoChatReVICE_paopaoIMgView.hidden = NO;
        _CarpVideoChatReVICE_userImgView.hidden = NO;
        _CarpVideoChatReVICE_contelb.hidden = NO;
        
        _CarpVideoChatSEND_paopaoImgView.hidden = YES;
        _CarpVideoChatSEND_userImgView.hidden = YES;
        _CarpVideoChatSEND_Contentlb.hidden = YES;
        
        
        [_CarpVideoChatReVICE_contelb setText:carpDetalMoel.msgname];
        CGRect contetnRect =  [carpDetalMoel.msgname cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:SCREEN_Width-RealWidth(150)];
        
        _CarpVideoChatReVICE_contelb.frame = CGRectMake(RealWidth(10), RealWidth(10), contetnRect.size.width, contetnRect.size.height);
        
        _CarpVideoChatReVICE_paopaoIMgView.frame = CGRectMake(CGRectGetMaxX(_CarpVideoChatReVICE_userImgView.frame)+RealWidth(10), RealWidth(15), contetnRect.size.width+RealWidth(20), contetnRect.size.height+RealWidth(20));
        carpDetalMoel.CellHeight =  CGRectGetMaxY(_CarpVideoChatReVICE_paopaoIMgView.frame)+RealWidth(30);
        
    }
    
}

@end


