//
//  MBViewControllerVC+ImagePicker.m
//  JieZhi
//
//  Created by ZYmac on 2018/12/6.
//  Copyright © 2018年 samples. All rights reserved.
//

#import "MBImagePicker.h"
#import <objc/runtime.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import <Photos/PHPhotoLibrary.h>
#import <AVFoundation/AVCaptureDevice.h>


static void *kImagePickerCompletionHandlerKey = @"kImagePickerCompletionHandlerKey";
static void *kCameraPickerKey = @"kCameraPickerKey";
static void *kPhotoLibraryPickerKey = @"kPhotoLibraryPickerKey";
static void *kImageSizeKey = @"kimageSizeKey";
static void *isCut =  @"isCut"; //截取

@interface UIViewController ()<UIActionSheetDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) UIImagePickerController *cameraPicker;
@property (nonatomic, strong) UIImagePickerController *photoLibraryPicker;
@property (nonatomic, copy) ImagePickerCompletionHandler completionHandler;

@property (nonatomic, assign) BOOL isCutImageBool;
@property (nonatomic, assign) CGSize imageSize;

@end

@implementation UIViewController (ImagePicker)
- (void)startScanQRCodeViewControllerWithResult:(void (^)(NSString * _Nonnull result))block {
    // 1、 获取摄像设备
    __weak typeof(self) weakSelf = self;
    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if (device) {
        // 判断授权状态
        AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
        if (authStatus == AVAuthorizationStatusRestricted) {
            NSLog(@"因为系统原因, 无法访问相机");
            return;
        } else if (authStatus == AVAuthorizationStatusDenied) { // 用户拒绝当前应用访问相机
            [self toSyeTomSetting:@"请点击'设置'去设置界面,允许微校wxiao访问你的相机。"];
            return;
        } else if (authStatus == AVAuthorizationStatusAuthorized) { // 用户允许当前应用访问相机
           //允许访问相机
            //使用相机
          
           //do you work
        } else if (authStatus == AVAuthorizationStatusNotDetermined) { // 用户还没有做出选择
            // 弹框请求用户授权
            [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
                if (granted) {
                    //这里是在block里面操作UI，因此需要回到主线程里面去才能操作UI
                    dispatch_async(dispatch_get_main_queue(), ^{
                       //回到主线程里面就不会出现延时几秒之后才执行UI操作
                       //do you work
                    });
                }else {
//                    [WXOtherTool createSVPHUDWithString:@"你已取消授权" isError:YES];
                }
            }];
        }
    } else {
//        [self toSyeTomSetting:@"未检测到您的摄像头, 请在真机上测试"];
        
    }
}

- (void)toSyeTomSetting:(NSString *)message {
//    [WXOtherTool createSystemAlertControllerWithTitle:@"提示信息"
//                                              message:message
//                                      doneActionTitle:@"设置"
//                                    cancelActionTitle:@"取消"
//                                       showController:self
//                                         cancelAction:^(UIAlertAction * _Nonnull action) {}
//                                           doneAction:^(UIAlertAction * _Nonnull action) {
//                                               [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
//                                           }];
}
- (void)pickImageWithCompletionHandler:(ImagePickerCompletionHandler)completionHandler {
    self.completionHandler = completionHandler;
    [self presentChoseActionSheet];
}
-(void)pickImageWithCamerCompletionHandler:(ImagePickerCompletionHandler)completionHandler{
    self.completionHandler = completionHandler;
    
    //判断相机授权
    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if(!device){
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"未检测摄像头" preferredStyle:UIAlertControllerStyleAlert];
            [alert addAction:[UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:nil]];
            [self presentViewController:alert animated:YES completion:nil];
            return ;
            
        }];
    }else{
        [self setUpCameraPickControllerIsEdit:self.isCutImageBool];
        //弹框请求用户授权
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            if (granted) {
                //使用相机
                [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                    self.cameraPicker.modalPresentationStyle = UIModalPresentationOverCurrentContext;
                    self.cameraPicker.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
                    [self presentViewController:self.cameraPicker animated:YES completion:nil];
                }];
            }else{
                // 判断授权状态
                AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
                if(authStatus != AVAuthorizationStatusAuthorized){
                    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                        UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"相机无权限或用户未授权" preferredStyle:UIAlertControllerStyleAlert];
                        [alert addAction:[UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:nil]];
                        [self presentViewController:alert animated:YES completion:nil];
                        return ;
                    }];
                }
            }
        }];
        
    }
}


- (void)pickImageWithpickImageCutImageWithImageSize:(CGSize)imageSize CompletionHandler:(ImagePickerCompletionHandler)completionHandler{
    self.completionHandler = completionHandler;
    self.isCutImageBool = YES; //是否裁剪图片
    self.imageSize = imageSize;
    [self presentChoseActionSheet];
}

- (void)presentChoseActionSheet{
    //UIImagePickerController是iOS系统提供的和系统的相册和相机交互的一个类,获取相册的照片调用系统的相机拍摄照片或者视频
    //判断相机可用
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        [self setUpCameraPickControllerIsEdit:self.isCutImageBool];
    }
    //判断相册是否用
    [self setUpPhotoPickControllerIsEdit:self.isCutImageBool];
    
    
    UIAlertController * actionController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    
    UIAlertAction * cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    
    
    UIAlertAction * takePhotoAction = [UIAlertAction actionWithTitle:@"拍照" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //判断相机授权
        AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
        if(!device){
            [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"未检测摄像头" preferredStyle:UIAlertControllerStyleAlert];
                [alert addAction:[UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:nil]];
                [self presentViewController:alert animated:YES completion:nil];
                return ;
                
            }];
        }
        
        //弹框请求用户授权
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            if (granted) {
                //使用相机
                [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                    self.cameraPicker.modalPresentationStyle = UIModalPresentationPopover;
                    self.cameraPicker.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
                    [self presentViewController:self.cameraPicker animated:YES completion:nil];
                }];
            }else{
                // 判断授权状态
                AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
                if(authStatus != AVAuthorizationStatusAuthorized){
                    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                        UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"相机无权限或用户未授权" preferredStyle:UIAlertControllerStyleAlert];
                        [alert addAction:[UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:nil]];
                        [self presentViewController:alert animated:YES completion:nil];
                        return ;
                    }];
                }
            }
        }];
    }];
    
    UIAlertAction * choseFromAlbumAction = [UIAlertAction actionWithTitle:@"相册选取" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //判断相册权限
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            if (status == PHAuthorizationStatusAuthorized) {
                [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                    self.photoLibraryPicker.modalPresentationStyle = UIModalPresentationOverCurrentContext;
                    self.photoLibraryPicker.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
                    [self presentViewController:self.photoLibraryPicker animated:YES completion:nil];
                }];
            }else{
                [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"相册无权限或用户未授权" preferredStyle:UIAlertControllerStyleAlert];
                    [alert addAction:[UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:nil]];
                    [self presentViewController:alert animated:YES completion:nil];
                    return ;
                }];
            }
        }];
    }];
    
    [actionController addAction:cancelAction];
    [actionController addAction:takePhotoAction];
    [actionController addAction:choseFromAlbumAction];
    actionController.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    actionController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    actionController.popoverPresentationController.sourceView = self.view;
    actionController.popoverPresentationController.sourceRect = CGRectMake(0,0,1.0,1.0);
    [self presentViewController:actionController animated:YES completion:nil];
}

//相机使用
- (void)setUpCameraPickControllerIsEdit:(BOOL)isEdit {
    self.cameraPicker.navigationBar.barTintColor = [UIColor colorWithRed:20.f/255.0 green:24.0/255.0 blue:38.0/255.0 alpha:1];
    self.cameraPicker = [[UIImagePickerController alloc] init];
    self.cameraPicker.allowsEditing = isEdit; //拍照选去是否可以截取，和代理中的获取截取后的方法配合使用
    self.cameraPicker.delegate = self;
    self.cameraPicker.sourceType = UIImagePickerControllerSourceTypeCamera;
}

//相册使用
- (void)setUpPhotoPickControllerIsEdit:(BOOL)isEdit {
    self.photoLibraryPicker = [[UIImagePickerController alloc] init];
    self.photoLibraryPicker.allowsEditing = isEdit; // 相册选取是否截图
    self.photoLibraryPicker.delegate = self;
    //去掉毛玻璃效果 否则在ios11 下 全局设置了UIScrollViewContentInsetAdjustmentNever 导致导航栏遮住了内容视图
    self.photoLibraryPicker.navigationBar.translucent = NO;
    self.photoLibraryPicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
}



#pragma mark <UIImagePickerControllerDelegate>
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    [picker dismissViewControllerAnimated:YES completion:nil];
    UIImage *editedimage = [[UIImage alloc] init];
    if(self.isCutImageBool){
        //获取裁剪的图
        editedimage = info[@"UIImagePickerControllerEditedImage"]; //获取裁剪的图
        CGSize imageSize = CGSizeMake(413, 626);
        if (self.imageSize.height>0) {
            imageSize = self.imageSize;
        }
        editedimage = [self reSizeImage:editedimage toSize:imageSize];
    }
    else{
        editedimage = info[@"UIImagePickerControllerOriginalImage"];
    }
    NSData *imageData = UIImageJPEGRepresentation(editedimage, 0.0001);//首次进行压缩
    UIImage *image = [UIImage imageWithData:imageData];
    //图片限制大小不超过 1M     CGFloat  kb =   data.lenth / 1000;  计算kb方法 os 按照千进制计算
    while (imageData.length/1000 > 1024) {
        NSLog(@"图片超过1M 压缩");
        imageData = UIImageJPEGRepresentation(image, 0.5);
        image = [UIImage imageWithData:imageData];
    }
    self.completionHandler(imageData, image);
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (UIImage *)reSizeImage:(UIImage *)image toSize:(CGSize)reSize{
    UIGraphicsBeginImageContext(CGSizeMake(reSize.width, reSize.height));
    [image drawInRect:CGRectMake(0, 0, reSize.width, reSize.height)];
    UIImage *reSizeImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return reSizeImage;
}

#pragma mark - setters & getters

- (void)setCompletionHandler:(ImagePickerCompletionHandler)completionHandler {
    objc_setAssociatedObject(self, kImagePickerCompletionHandlerKey, completionHandler, OBJC_ASSOCIATION_COPY);
}

- (ImagePickerCompletionHandler)completionHandler {
    return objc_getAssociatedObject(self, kImagePickerCompletionHandlerKey);
}

- (void)setCameraPicker:(UIImagePickerController *)cameraPicker {
    objc_setAssociatedObject(self, kCameraPickerKey, cameraPicker, OBJC_ASSOCIATION_RETAIN);
}

- (UIImagePickerController *)cameraPicker {
    return objc_getAssociatedObject(self, kCameraPickerKey);;
}

- (void)setPhotoLibraryPicker:(UIImagePickerController *)photoLibraryPicker {
    objc_setAssociatedObject(self, kPhotoLibraryPickerKey, photoLibraryPicker, OBJC_ASSOCIATION_RETAIN);
}

- (UIImagePickerController *)photoLibraryPicker {
    return objc_getAssociatedObject(self, kPhotoLibraryPickerKey);
}

- (void)setIsCutImageBool:(BOOL)isCutImageBool {
    return objc_setAssociatedObject(self, isCut, @(isCutImageBool), OBJC_ASSOCIATION_RETAIN);
}

- (BOOL)isCutImageBool {
    return [objc_getAssociatedObject(self, isCut) boolValue];
}

- (void)setImageSize:(CGSize)imageSize {
    return objc_setAssociatedObject(self, kImageSizeKey, [NSValue valueWithCGSize:imageSize], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGSize)imageSize {
    NSValue * value = objc_getAssociatedObject(self, kImageSizeKey);
    return  value.CGSizeValue;
}

@end

