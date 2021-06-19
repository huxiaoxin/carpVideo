 
#import "carpVideowarningTabeCell.h"
@interface carpVideowarningTabeCell ()
{
    UILabel * _carpVideoFirstlb;
    UIImageView * _carpVideoSecondlb;
}
@end
@implementation carpVideowarningTabeCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.selectionStyle =  UITableViewCellSelectionStyleNone;
        UIView * carpVideobtonline = [[UIView alloc]initWithFrame:CGRectMake(K(15), K(49), SCREEN_Width-K(30), K(1))];
        carpVideobtonline.backgroundColor = LGDLightGaryColor;
        [self.contentView addSubview:carpVideobtonline];
        
        UILabel * carpVideoFirstlb  = [[UILabel alloc]initWithFrame:CGRectMake(K(15), 0, K(200), K(49))];
        carpVideoFirstlb.font =[UIFont systemFontOfSize:15];
        carpVideoFirstlb.textColor = [UIColor blackColor];
        [self.contentView addSubview:carpVideoFirstlb];
        _carpVideoFirstlb = carpVideoFirstlb;
        
        
        UIImageView * carpVideoSecondlb  = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_Width-K(35), K(15), K(20), K(20))];
        [self.contentView addSubview:carpVideoSecondlb];
        _carpVideoSecondlb = carpVideoSecondlb;
        
    }
    return self;
}
-(void)setCarpMdoel:(carpVideoWarningModel *)carpMdoel{
    _carpMdoel = carpMdoel;
    _carpVideoFirstlb.text = carpMdoel.carpVideoText;
    _carpVideoSecondlb.image = [UIImage imageNamed:carpMdoel.carpVideoStatus ? @"xuanzhong_sel" : @"xuanzhongyuandian1"];
    
}
@end
