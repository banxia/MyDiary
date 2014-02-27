//
//  CreateDiaryViewController.h
//  MyDiary
//
//  Created by jin jianxiong on 11/2/14.
//  Copyright (c) 2014 jjx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Diary.h"

@class CreateDiaryViewController;
@protocol CreateDiaryViewControllerDelegate <NSObject>
@required
-(void)CreateDiaryViewControllerDidCancel : (CreateDiaryViewController *)createDiaryViewController;
-(void)CreateDiaryViewController:(CreateDiaryViewController *)createDiaryViewController
                didSaveWithDiary:(Diary*) theDiary;
@end

@interface CreateDiaryViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *diaryDate;
@property (weak, nonatomic) IBOutlet UITextField *diaryTitle;
@property (weak, nonatomic) IBOutlet UITextView *diaryContent;
@property (weak, nonatomic) id <CreateDiaryViewControllerDelegate> delegate;
@property (strong, nonatomic) Diary *diary;

- (IBAction)cancel:(id)sender;
- (IBAction)saveDiary:(id)sender;

@end
