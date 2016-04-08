//
//  ViewController.m
//  enum
//
//  Created by Almas on 16/3/30.
//  Copyright © 2016年 Ali. All rights reserved.
//

#import "ViewController.h"
#import "AController.h"
#import "ResultController.h"

@interface ViewController (){
    AController *aVC;
    
    __weak IBOutlet UIButton *btnC;

    __weak IBOutlet UIButton *btnA;
    
    __weak IBOutlet UIButton *btnB;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ResultController *result = [[ResultController alloc]initWithNibName:@"ResultController"bundle:nil];
    [result setChangeBlock:^{
        [self settingBtnBackgroundColor];
    }];
}
-(void)settingBtnBackgroundColor{
//    NSString *strColor;
    UIColor *color = [[UIColor alloc]init];
    UIButton *btn = [[UIButton alloc]init];
    switch (self.titleColor) {
        case TitleBackGroundColorBlack:
            color = [UIColor blackColor];
            break;
        case TitleBackGroundColorGreen:
            color = [UIColor greenColor];
            break;
        case TitleBackGroundColorRed:
            color = [UIColor redColor];
            break;
        case TitleBackGroundColorYellow:
            color = [UIColor yellowColor];
            break;
            
        default:
            break;
    }
    
    
    
    
    switch (self.backType) {
        case BackControllerA:
            //            [btnA setBackgroundColor:color];
            btn = btnA;
            break;
        case BackControllerB:
            //            [btnA setBackgroundColor:color];
            btn = btnB;
            break;
        case BackControllerC:
            //            [btnA setBackgroundColor:color];
            btn = btnC;
            break;
            
        default:
            break;
    }
                [btn setBackgroundColor:color];
    
    
}
- (IBAction)goSubView:(UIButton *)sender {

    aVC = [[AController alloc]initWithNibName:@"AController" bundle:nil];
    switch (sender.tag) {
        case 1:
            aVC.go = GotoA;
            break;
        case 2:
            aVC.go = GotoB;
            break;
        case 3:
            aVC.go = GotoC;
            break;
            
        default:
            break;
    }

    
    [self.navigationController pushViewController:aVC animated:YES];
}



@end
