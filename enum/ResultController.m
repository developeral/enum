//
//  ResultController.m
//  enum
//
//  Created by Almas on 16/3/30.
//  Copyright © 2016年 Ali. All rights reserved.
//

#import "ResultController.h"

@interface ResultController (){
    
    __weak IBOutlet UILabel *lblTitle;
}

@end

@implementation ResultController

- (void)viewDidLoad {
    [super viewDidLoad];
    switch (self.type) {
        case ViewTypeA:
            lblTitle.text = @"A";
            break;
        case ViewTypeB:
            lblTitle.text = @"B";
            break;
        case ViewTypeC:
            lblTitle.text = @"C";
            break;
        default:
            break;
    }
    
    
    
}
- (IBAction)back:(id)sender {
    if (_changeBlock) {
        _changeBlock();
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    
    
}



@end
