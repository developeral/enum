//
//  ViewController.h
//  enum
//
//  Created by Almas on 16/3/30.
//  Copyright © 2016年 Ali. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AController.h"
typedef NS_ENUM(NSInteger , TitleBackGroundColor) {
    TitleBackGroundColorRed = 0,
    TitleBackGroundColorBlack,
    TitleBackGroundColorYellow,
    TitleBackGroundColorGreen
};

typedef NS_ENUM(NSInteger ,BackController) {
    BackControllerA = 0,
    BackControllerB,
    BackControllerC,
    
};
@interface ViewController : UIViewController
@property (nonatomic, assign) TitleBackGroundColor titleColor;
@property (nonatomic, assign) BackController backType;
@end

