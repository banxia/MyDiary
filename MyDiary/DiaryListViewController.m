//
//  DiaryListViewController.m
//  MyDiary
//
//  Created by jin jianxiong on 24/1/14.
//  Copyright (c) 2014 jjx. All rights reserved.
//

#import "DiaryListViewController.h"
#import "Diary.h"
#import "CreateDiaryViewController.h"

@interface DiaryListViewController ()

@end

@implementation DiaryListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    Diary *a = [[Diary alloc] initWithTitle:@"第一篇日记" content:@"第一篇日记的内容"];
    Diary *b = [[Diary alloc] initWithTitle:@"第二篇日记" content:@"第二篇日记的内容"];
    Diary *c = [[Diary alloc] initWithTitle:@"第三篇日记" content:@"第三篇日记的内容"];
    Diary *d = [[Diary alloc] initWithTitle:@"第四篇日记" content:@"第四篇日记的内容"];
    Diary *e = [[Diary alloc] initWithTitle:@"第五篇日记" content:@"第五篇日记的内容"];
    
    self.diaries = [[NSMutableArray alloc] initWithObjects:a,b,c,d,e, nil];
    
    NSLog(@"Diaries的元素有，%@",self.diaries);
//    
//    UIBarButtonItem *bbi = [[UIBarButtonItem alloc]
//                            initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
//                                target:self
//                                action:@selector(addNewDiary:)];
    
//    [[self navigationItem] setRightBarButtonItem:bbi];
    [[self navigationItem] setLeftBarButtonItem:[self editButtonItem]];
    
    [[self navigationItem] setTitle:@"日记列表"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.diaries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DiaryCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Diary *diary = [self.diaries objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [diary title];
    
    cell.detailTextLabel.text = [[diary dateCreate] description];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*
    NSLog(@"表格视图中第 %d 行被点击",indexPath.row);
    
    NSString *messageString = [NSString stringWithFormat:@"表格视图中第 %d 行被点击",indexPath.row];
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"用户点击单元格"
                                                   message:messageString
                                                  delegate:nil
                                         cancelButtonTitle:@"确定"
                                         otherButtonTitles: nil];
    [alert show];
     */
    
}

//-(id)addNewDiary:(id)sender
//{
//}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"故事板中场景切换时执行的方法！");
    
    if ([segue.identifier isEqualToString:@"AddDiary" ]) {
        NSLog(@"进入到创建新日记的场景！");
    }
    
    if ([segue.identifier isEqualToString:@"DetailDiary" ]) {
        // 获取表格中被选择的行
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSInteger row = [indexPath row];
        
        //获取数组中选中的Diary对象
        Diary *diary = [self.diaries objectAtIndex:row];
        
        //通过segue获取被故事板初始化的对象，然后将数据传给它
        DetailDiaryViewController *detailDiaryViewController =
        (DetailDiaryViewController *) [segue destinationViewController];
        detailDiaryViewController.diary = diary;
    }
    
}

@end
