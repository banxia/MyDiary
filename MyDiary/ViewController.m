//
//  ViewController.m
//  MyDiary
//
//  Created by jin jianxiong on 9/11/13.
//  Copyright (c) 2013 jjx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.qqNumber.text = @"QQ : 417562437";
    self.weixin.text = @"微信 : wxbianxia";
    self.authorImage.image = [UIImage imageNamed:@"author1.png"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)authorChanged:(id)sender {
    
    UISegmentedControl * sg = (UISegmentedControl *)sender;
    
    int sgIndex = [sg selectedSegmentIndex];
    
    
    switch (sgIndex) {
        case 0:
            self.qqNumber.text = @"QQ : 417562437";
            self.weixin.text = @"微信 : wxbianxia";
            self.authorImage.image = [UIImage imageNamed:@"author1.png"];
            break;
        case 1:
            self.qqNumber.text = @"QQ : 88866666";
            self.weixin.text = @"微信 : wx";
            self.authorImage.image = [UIImage imageNamed:@"author2.png"];
            break;
        default:
            break;
    }
    
    
    NSLog(@"我被点击了噎！");
}
@end
