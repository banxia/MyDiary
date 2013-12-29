//
//  ViewController.h
//  MyDiary
//
//  Created by jin jianxiong on 9/11/13.
//  Copyright (c) 2013 jjx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *qqNumber;
@property (weak, nonatomic) IBOutlet UILabel *weixin;
@property (weak, nonatomic) IBOutlet UIImageView *authorImage;
@property (weak, nonatomic) IBOutlet UISegmentedControl *authors;

- (IBAction)authorChanged:(id)sender;
@end
