//
//  MBViewControllerVC+ImagePicker.h
//  JieZhi
//
//  Created by ZYmac on 2018/12/6.
//  Copyright © 2018年 samples. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ImagePickerCompletionHandler)(NSData *imageData, UIImage *image);

@interface UIViewController (ImagePicker)

//不使用裁剪功能，获取原图
- (void)pickImageWithCompletionHandler:(ImagePickerCompletionHandler)completionHandler;
//使用裁剪功能-自定义图片大小imageSize 我设置为400*400
- (void)pickImageWithpickImageCutImageWithImageSize:(CGSize)imageSize CompletionHandler:(ImagePickerCompletionHandler)completionHandler;

-(void)pickImageWithCamerCompletionHandler:(ImagePickerCompletionHandler)completionHandler;
- (void)startScanQRCodeViewControllerWithResult:(void (^)(NSString * _Nonnull result))block;

@end

