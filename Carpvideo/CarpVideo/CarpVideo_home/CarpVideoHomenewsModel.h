#import "CarpVideoBaseModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface CarpVideoHomenewsModel : CarpVideoBaseModel
@property(nonatomic,copy) NSString * imgUrl;
@property(nonatomic,copy) NSString * title;
@property(nonatomic,copy) NSString * content;
@property(nonatomic,assign) NSInteger viewsNum;
@property(nonatomic,assign) NSInteger news_ID;
@property(nonatomic,copy) NSString * time;
@property(nonatomic,assign) CGFloat      height;
@property(nonatomic,assign) CGFloat    width;
@end

NS_ASSUME_NONNULL_END
