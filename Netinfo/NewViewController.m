//
//  NewViewController.m
//  Netinfo
//
//  Created by SRIKIRAN INAGANTI on 7/21/16.
//  Copyright © 2016 SRIKIRAN INAGANTI. All rights reserved.
//

#import "NewViewController.h"
@interface NewViewController ()
@end
@implementation NewViewController
@synthesize frist;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGFloat x = 0;
    
    CGFloat y = 0;
    
    CGFloat width = self.view.frame.size.width;
    
    CGFloat height = self.view.frame.size.height;
    
    CGRect tableFrame = CGRectMake(x, y, width, height);
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:tableFrame style:UITableViewStylePlain];
    
    tableView.rowHeight = 50;
    
    tableView.sectionFooterHeight = 10;
    
    tableView.sectionHeaderHeight = 10;
    
    tableView.scrollEnabled = YES;
    
    tableView.showsVerticalScrollIndicator = YES;
    
    tableView.userInteractionEnabled = YES;
    
    tableView.bounces = YES;
    
    tableView.delegate = self;
    
    tableView.dataSource = self;
    
    [self.view addSubview:tableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 0) {
        
        return 3;
    }
    
    return 0;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"sree";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        
    }
    
    else{
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        
    }
    
    cell.textLabel.text=[NSString stringWithFormat:@"sree %d",indexPath.row+1];
    
    return cell;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
