//
//  SnacksTableView.m
//  
//
//  Created by 张强 on 16/3/24.
//
//

#import "SnacksTableView.h"
#import "SnacksTableViewCell.h"
@implementation SnacksTableView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)layoutSubviews{
    self.backgroundColor=[UIColor groupTableViewBackgroundColor];
    [self registerNib:[UINib nibWithNibName:@"TestCell" bundle:nil]forCellReuseIdentifier:@"cellId"];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

        return 200;
    
    return 500;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

        return 3;

    return 10;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SnacksTableViewCell *cell = [self dequeueReusableCellWithIdentifier:@"cellId" forIndexPath:indexPath];
        return cell;
}

@end
