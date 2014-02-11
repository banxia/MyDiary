//
//  DetailDiaryViewController.h
//  MyDiary
//
//  Created by jin jianxiong on 10/2/14.
//  Copyright (c) 2014 jjx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Diary.h"


@interface DetailDiaryViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *diaryTitle;
@property (weak, nonatomic) IBOutlet UITextView *diaryContent;
@property (weak, nonatomic) Diary *diary;

@end
