//
//  ArticleListVIewController.h
//  SLAMNEWS
//
//  Created by Abigail Diaz on 3/19/13.
//  Copyright (c) 2013 Abigail Diaz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArticleListViewController : UITableViewController
{
    NSDictionary *_articleDictionary;
    NSMutableArray *_reusableCells;
}

@property (nonatomic, retain) NSDictionary *articleDictionary;
@property (nonatomic, retain) NSMutableArray *reusableCells;

@end