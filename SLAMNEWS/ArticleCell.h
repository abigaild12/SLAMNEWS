//
//  ArticleCell.h
//  SLAMNEWS
//
//  Created by Abigail Diaz on 3/21/13.
//  Copyright (c) 2013 Abigail Diaz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ArticleTitleLabel;

@interface ArticleCell : UITableViewCell 
{
    UIImageView *_thumbnail;
    ArticleTitleLabel *_titleLabel;
}

@property (nonatomic, retain) UIImageView *thumbnail;
@property (nonatomic, retain) ArticleTitleLabel *titleLabel;

@end
