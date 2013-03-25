//
//  ArticleCell.m
//  SLAMNEWS
//
//  Created by Abigail Diaz on 3/21/13.
//  Copyright (c) 2013 Abigail Diaz. All rights reserved.
//

#import "ArticleCell.h"

@implementation ArticleCell

@synthesize thumbnail = _thumbnail;
@synthesize titleLabel = _titleLabel;

#pragma mark - View Lifecycle

- (NSString *)reuseIdentifier 
{
    return @"ArticleCell";
}

#pragma mark - Memory Management

- (void)dealloc
{
    self.thumbnail = nil;
    self.titleLabel = nil;
    
    [super dealloc];
}

@end
