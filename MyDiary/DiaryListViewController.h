//
//  DiaryListViewController.h
//  MyDiary
//
//  Created by jin jianxiong on 24/1/14.
//  Copyright (c) 2014 jjx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Diary.h"
#import "DetailDiaryViewController.h"
#import "CreateDiaryViewController.h"

@interface DiaryListViewController : UITableViewController <UITableViewDataSource,CreateDiaryViewControllerDelegate>

@property (nonatomic,strong) NSMutableArray *diaries;

-(id)addNewDiary:(id)sender;

@end
