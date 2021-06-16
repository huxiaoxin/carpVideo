 
#import "WindwoundwarningTabeCell.h"
@interface WindwoundwarningTabeCell ()
{
    UILabel * _WindwoundToplb;
    UIImageView * _Windwoundbtomlb;
}
@end
@implementation WindwoundwarningTabeCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.selectionStyle =  UITableViewCellSelectionStyleNone;
        UIView * Windwoundlines = [[UIView alloc]initWithFrame:CGRectMake(K(15), K(49), SCREEN_Width-K(30), K(1))];
        Windwoundlines.backgroundColor = LGDLightGaryColor;
        [self.contentView addSubview:Windwoundlines];
        
        UILabel * WindwoundToplb  = [[UILabel alloc]initWithFrame:CGRectMake(K(15), 0, K(200), K(49))];
        WindwoundToplb.font =[UIFont systemFontOfSize:15];
        WindwoundToplb.textColor = [UIColor blackColor];
        [self.contentView addSubview:WindwoundToplb];
        _WindwoundToplb = WindwoundToplb;
        
        
        UIImageView * Windwoundbtomlb  = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_Width-K(35), K(15), K(20), K(20))];
        [self.contentView addSubview:Windwoundbtomlb];
        _Windwoundbtomlb = Windwoundbtomlb;
        
    }
    return self;
}
-(void)setWindwoundItem:(WindwoundWarningModel *)windwoundItem{
    _windwoundItem = windwoundItem;
    _WindwoundToplb.text = windwoundItem.windwoundText;
    _Windwoundbtomlb.image = [UIImage imageNamed:windwoundItem.WindwoundState ? @"xuanzhong_sel" : @"xuanzhongyuandian1"];
    
}
@end
