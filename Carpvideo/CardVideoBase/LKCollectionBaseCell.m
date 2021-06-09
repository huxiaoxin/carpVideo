//
//  LKCollectionBaseCell.m
//  cltios
//
//  Created by zjlk32 on 2021/4/22.
//

#import "LKCollectionBaseCell.h"

@implementation LKCollectionBaseCell

+(id)creatTheCollectView:(UICollectionView *)collectView AndTheIndexPath:(NSIndexPath *)indexpath {
    NSString  *idenfier = NSStringFromClass([self classForCoder]);
    [collectView registerClass:[self classForCoder] forCellWithReuseIdentifier:idenfier];
    LKCollectionBaseCell  *cell = [collectView dequeueReusableCellWithReuseIdentifier:idenfier forIndexPath:indexpath];
    return cell;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self == [super initWithFrame:frame]) {
        [self setUpTheCell];
    }
    return  self;
}
-(void)setUpTheCell{
    
}

@end
