//
//  AController.m
//  enum
//
//  Created by Almas on 16/3/30.
//  Copyright © 2016年 Ali. All rights reserved.
//

#import "AController.h"
#import "ResultController.h"

@implementation AController{
    
    __weak IBOutlet UIButton *btngo;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    switch (self.go) {
        case GotoA:
            [btngo setTitle:@"来自A" forState:UIControlStateNormal];
            break;
        case GotoB:
            [btngo setTitle:@"来自B" forState:UIControlStateNormal];

            break;
        case GotoC:
            [btngo setTitle:@"来自C" forState:UIControlStateNormal];
            break;
            
        default:
            break;
    }
    
    
}

- (IBAction)Go:(id)sender {
    
    ResultController *result =[[ResultController alloc]initWithNibName:@"ResultController" bundle:nil];
    switch (self.go) {
        case GotoA:
            result.type = ViewTypeA;
            break;
        case GotoB:
            result.type = ViewTypeB;
            break;
        case GotoC:
            result.type = ViewTypeC;
            break;
            
        default:
            break;
    }
    [self.navigationController pushViewController:result animated:YES];
    
    
}

@end
