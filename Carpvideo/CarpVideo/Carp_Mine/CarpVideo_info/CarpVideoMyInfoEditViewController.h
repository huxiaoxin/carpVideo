

#import "CarpVideoBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^CarpSeltecdInfo)(void);
@interface CarpVideoMyInfoEditViewController : CarpVideoBaseViewController
@property(nonatomic,copy) CarpSeltecdInfo  seltecdInfoBlock;
@end

NS_ASSUME_NONNULL_END
