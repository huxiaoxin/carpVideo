//
//  CarpVideoBaseTableViewCell.m
//  Carpvideo
//
//  Created by zjlk03 on 2021/6/8.
//

#import "CarpVideoBaseTableViewCell.h"

@implementation CarpVideoBaseTableViewCell
+(id)createCellWithTheTableView:(UITableView *)tableView AndTheIndexPath:(NSIndexPath *)indexPath {
    NSString  *identifier = NSStringFromClass([self classForCoder]);
    [tableView registerClass:[self classForCoder] forCellReuseIdentifier:identifier];
    CarpVideoBaseTableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    return  cell;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.contentView.layer.shadowPath = [UIBezierPath bezierPathWithRect:self.contentView.bounds].CGPath;
        [self setContentUI];
    }
    return  self;
}

-(void)setContentUI {
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
