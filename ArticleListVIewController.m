//
//  ArticleListVIewController.m
//  SLAMNEWS
//
//  Created by Abigail Diaz on 3/19/13.
//  Copyright (c) 2013 Abigail Diaz. All rights reserved.
//

#import "ArticleListVIewController.h"

@implementation ArticleListViewController

@synthesize articleDictionary = _articleDictionary;
@synthesize reusableCells = _reusableCells;

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.articleDictionary = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Articles" ofType:@"plist"]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    self.articleDictionary = nil;
}

#pragma mark - Table View Data Source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.articleDictionary.allKeys count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

#pragma mark - Memory Management

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)dealloc
{
    self.articleDictionary = nil;
    
    [super dealloc];
}

@end