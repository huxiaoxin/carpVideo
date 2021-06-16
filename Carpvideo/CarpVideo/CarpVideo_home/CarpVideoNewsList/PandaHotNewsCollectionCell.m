
#import "PandaHotNewsCollectionCell.h"
@interface PandaHotNewsCollectionCell ()
@property(nonatomic,strong) UIView * PandaHoemContenView;
@property(nonatomic,strong) UIImageView * PandaHoemThubImgView;
@property(nonatomic,strong) UILabel * PandaHoemTitle;
@property(nonatomic,strong) UILabel *PandaHoemDetailb;
@end
@implementation PandaHotNewsCollectionCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        UIView * PandaHoemContenView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, K(10), K(10))];
        PandaHoemContenView.backgroundColor  =  [UIColor whiteColor];
        PandaHoemContenView.layer.cornerRadius =  K(5);
        PandaHoemContenView.layer.masksToBounds = YES;
        [self.contentView addSubview:PandaHoemContenView];
        _PandaHoemContenView = PandaHoemContenView;
        
        UIImageView * PandaHoemThubImgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, K(10), K(10))];    [PandaHoemContenView addSubview:PandaHoemThubImgView];
        _PandaHoemThubImgView  =PandaHoemThubImgView;
        
        
        UILabel * PandaHoemTitle = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(PandaHoemThubImgView.frame)+K(5), 0, 0)];
        PandaHoemTitle.numberOfLines =  0;
        PandaHoemTitle.textColor = LGDBLackColor;
        PandaHoemTitle.textAlignment = NSTextAlignmentCenter;
        PandaHoemTitle.font = KBlFont(13);
        [PandaHoemContenView addSubview:PandaHoemTitle];
        _PandaHoemTitle = PandaHoemTitle;
        
        
        UILabel *PandaHoemDetailb = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
        PandaHoemDetailb.numberOfLines = 0;
        PandaHoemDetailb.textColor = LGDGaryColor;
        PandaHoemDetailb.font = KSysFont(11);
        [PandaHoemContenView addSubview:PandaHoemDetailb];
        _PandaHoemDetailb = PandaHoemDetailb;
        
        
    }
    return self;
}
- (void)setPandaNewsitem:(CarpVideoHomenewsModel *)pandaNewsitem{
    _pandaNewsitem = pandaNewsitem;
    [_PandaHoemThubImgView sd_setImageWithURL:[NSURL URLWithString:pandaNewsitem.imgUrl]];
    _PandaHoemTitle.text =  pandaNewsitem.title;
    _PandaHoemDetailb.text = [self removeHtmlWithString:pandaNewsitem.content];
}
-(void)layoutSubviews{
    _PandaHoemContenView.frame = self.bounds;
    _PandaHoemThubImgView.frame=CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height-K(100));
    CGRect RFVRect  = [_pandaNewsitem.title cxl_sizeWithMoreString:KBlFont(13) maxWidth:self.bounds.size.width];
    _PandaHoemTitle.frame = CGRectMake(0, CGRectGetMaxY(_PandaHoemThubImgView.frame)+K(10), RFVRect.size.width, RFVRect.size.height);
    _PandaHoemDetailb.frame = CGRectMake(0, CGRectGetMaxY(_PandaHoemTitle.frame)+K(10), self.bounds.size.width, K(50));
}
-(NSString *)removeHtmlWithString:(NSString *)htmlString{
    NSRegularExpression * regularExpretion=[NSRegularExpression regularExpressionWithPattern:@"<[^>]*>|\n" options:0 error:nil];
    htmlString = [regularExpretion stringByReplacingMatchesInString:htmlString options:NSMatchingReportProgress range:NSMakeRange(0, htmlString.length) withTemplate:@""];
    return htmlString;
}

@end
