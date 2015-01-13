//
//  ViewController.m
//  BoxTest
//
//  Created by Jingliang on 15/1/9.
//  Copyright (c) 2015年 jingBox. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITableView *tableView=[[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.dataSource=self;
    tableView.delegate=self;
    [self.view addSubview:tableView];
    NSLog(@"----%@",[tableView class]);
    NSString *str=@"AfdfA454fdfEWdf";
    static int Max=0,Min=0,number=0;
    for (int i=0; i<str.length; i++) {
        char c=[str characterAtIndex:i];
        if (c>=65 && c<=90)  //大写字母
        {
            Max++;
        }
        else if (c>=97 && c<=122) //小写字母
        {
            Min++;
        }
        else if(c>=48 && c<=57)  //数字
        {
            number++;
        }
    }
    NSLog(@"--%d-%d=%d",Max,Min,number);
}
/**
 *  <#Description#>
 *
 *  @param NSInteger <#NSInteger description#>
 *
 *  @return <#return value description#>
 */
#pragma mark - UITableDataSource&Delegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIndentifier=@"cellIndentifier";
    CustomCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIndentifier];
    if (!cell) {
        cell = (CustomCell *)[[[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil] objectAtIndex:0];
        cell.selectionStyle=UITableViewCellSelectionStyleNone;
        [cell.image1 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickImage1:)]];
        [cell.image2 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickImage2:)]];
        cell.image1.userInteractionEnabled = YES;
        cell.image2.userInteractionEnabled = YES;
    }
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 120;
}
#pragma mark - pickImage
-(void)pickImage1:(UIImageView *)imgView
{
    NSLog(@"+++111++++");
}
-(void)pickImage2:(UIImageView *)imgView
{
    NSLog(@"+++222++++");
}
#pragma mark -
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
