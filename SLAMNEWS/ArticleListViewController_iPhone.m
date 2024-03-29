//
//  ArticleListViewController_iPhone.m
//  SLAMNEWS
//
//  Created by Abigail Diaz on 3/19/13.
//  Copyright (c) 2013 Abigail Diaz. All rights reserved.
//

#import "ArticleListViewController_iPhone.h"
#import "ControlVariables.h"
#import "HorizontalTableCell_iPhone.h"

#define kHeadlineSectionHeight  26
#define kRegularSectionHeight   18

@implementation ArticleListViewController_iPhone

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (!self.reusableCells)
    {
        NSSortDescriptor* sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES selector:@selector(localizedCompare:)];
        NSArray* sortedCategories = [self.articleDictionary.allKeys sortedArrayUsingDescriptors:[NSArray arrayWithObject:sortDescriptor]];
        
        NSString *categoryName;
        NSArray *currentCategory;
        
        self.reusableCells = [NSMutableArray array];
        
        for (int i = 0; i < [self.articleDictionary.allKeys count]; i++)
        {
            HorizontalTableCell_iPhone *cell = [[HorizontalTableCell_iPhone alloc] initWithFrame:CGRectMake(0, 0, 320, 416)];
            
            categoryName = [sortedCategories objectAtIndex:i];
            currentCategory = [self.articleDictionary objectForKey:categoryName];
            cell.articles = [NSArray arrayWithArray:currentCategory];
            
            [self.reusableCells addObject:cell];
            [cell release];
        }
    }
}

#pragma mark - Table View Data Source

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return section == 0 ? kHeadlineSectionHeight : kRegularSectionHeight;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *customSectionHeaderView;
    UILabel *titleLabel;
    UIFont *labelFont;
    
    if (section == 0)
    {
        customSectionHeaderView = [[[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, kHeadlineSectionHeight)] autorelease];
        
        titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, tableView.frame.size.width, kHeadlineSectionHeight)];
        labelFont = [UIFont boldSystemFontOfSize:20];
    }
    else
    {
        customSectionHeaderView = [[[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, kRegularSectionHeight)] autorelease];
        
        titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, tableView.frame.size.width, kRegularSectionHeight)];
        
        labelFont = [UIFont boldSystemFontOfSize:13];
    }
    
    customSectionHeaderView.backgroundColor = [UIColor blackColor];
    
    titleLabel.textAlignment = UITextAlignmentLeft;
    [titleLabel setTextColor:[UIColor whiteColor]];
    [titleLabel setBackgroundColor:[UIColor clearColor]];
    titleLabel.font = labelFont;
    
    NSSortDescriptor* sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES selector:@selector(localizedCompare:)];
    NSArray* sortedCategories = [self.articleDictionary.allKeys sortedArrayUsingDescriptors:[NSArray arrayWithObject:sortDescriptor]];
    
    NSString *categoryName = [sortedCategories objectAtIndex:section];
    
    titleLabel.text = [categoryName substringFromIndex:1];
    
    [customSectionHeaderView addSubview:titleLabel];
    [titleLabel release];
    
    return customSectionHeaderView;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SLAMTableCell *cell = [self.reusableCells objectAtIndex:indexPath.section];
    
    return cell;
}

#pragma mark - Memory Management

- (void)awakeFromNib
{
    [self.tableView setBackgroundColor:kVerticalTableBackgroundColor];
    self.tableView.rowHeight = kCellHeight + (kRowVerticalPadding * 0.5) + ((kRowVerticalPadding * 0.5) * 0.5);
}

@end
