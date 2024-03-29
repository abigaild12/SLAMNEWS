//
//  SLAMTableCell.m
//  SLAMNEWS
//
//  Created by Abigail Diaz on 3/21/13.
//  Copyright (c) 2013 Abigail Diaz. All rights reserved.
//

#import "SLAMTableCell.h"

@implementation SLAMTableCell

@synthesize horizontalTableView = _horizontalTableView;
@synthesize articles = _articles;

#pragma mark - Table View Data Source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.articles count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"ArticleCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil)
    {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier] autorelease];
    }
    
    cell.textLabel.text = @"The title of the cell in the table within the table :O";
    
    return cell;
}

#pragma mark - Memory Management

- (NSString *) reuseIdentifier
{
    return @"HorizontalCell";
}

- (void)dealloc
{
    self.horizontalTableView = nil;
    self.articles = nil;
    
    [super dealloc];
}


@end

