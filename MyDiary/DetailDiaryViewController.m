//
//  DetailDiaryViewController.m
//  MyDiary
//
//  Created by jin jianxiong on 10/2/14.
//  Copyright (c) 2014 jjx. All rights reserved.
//

#import "DetailDiaryViewController.h"

@interface DetailDiaryViewController ()

@end

@implementation DetailDiaryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.diaryTitle.text = self.diary.title;
    self.diaryContent.text = self.diary.content;
    
    //修改导航标题为“日记内容”
    [[self navigationItem] setTitle:@"日记内容"];
}

@end
