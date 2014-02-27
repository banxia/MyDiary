//
//  CreateDiaryViewController.m
//  MyDiary
//
//  Created by jin jianxiong on 11/2/14.
//  Copyright (c) 2014 jjx. All rights reserved.
//

#import "CreateDiaryViewController.h"

@interface CreateDiaryViewController ()

@end

@implementation CreateDiaryViewController

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
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy年M月d h:m:s a"];
    NSString *date = [df stringFromDate: [NSDate date]];
    self.diaryDate.text = date;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
    [self.delegate CreateDiaryViewControllerDidCancel:self];
}

- (IBAction)saveDiary:(id)sender {
}
@end
