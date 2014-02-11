//
//  CreateDiaryViewController.h
//  MyDiary
//
//  Created by jin jianxiong on 11/2/14.
//  Copyright (c) 2014 jjx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateDiaryViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *diaryDate;
@property (weak, nonatomic) IBOutlet UITextField *diaryTitle;
@property (weak, nonatomic) IBOutlet UITextView *diaryContent;

- (IBAction)cancel:(id)sender;
- (IBAction)saveDiary:(id)sender;

@end
