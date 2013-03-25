//
//  SLAMTableCell.h
//  SLAMNEWS
//
//  Created by Abigail Diaz on 3/21/13.
//  Copyright (c) 2013 Abigail Diaz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SLAMTableCell : UITableViewCell <UITableViewDelegate, UITableViewDataSource>
{
    UITableView *_horizontalTableView;
    NSArray *_articles;
}

@property (nonatomic, retain) UITableView *horizontalTableView;
@property (nonatomic, retain) NSArray *articles;

@end