//
//  ResultController.h
//  enum
//
//  Created by Almas on 16/3/30.
//  Copyright © 2016年 Ali. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^changeTitleColor)();
typedef NS_ENUM(NSInteger ,ViewType) {
    ViewTypeA = 0,
    ViewTypeB,
    ViewTypeC
};

@interface ResultController : UIViewController

@property (nonatomic, assign) ViewType  type;
@property (nonatomic, strong) changeTitleColor changeBlock;
@end
