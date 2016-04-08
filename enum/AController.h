//
//  AController.h
//  enum
//
//  Created by Almas on 16/3/30.
//  Copyright © 2016年 Ali. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger ,Goto) {
    GotoA = 0,
    GotoB,
    GotoC,
};
@interface AController : UIViewController
@property (nonatomic, assign) Goto go;
@end
