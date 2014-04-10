//
//  RAFDetailViewController.m
//  UIViewAnimationExtensions
//
//  Created by Rafal Sroka on 10/04/14.
//  Copyright (c) 2014 Rafal Sroka. All rights reserved.
//

#import "RAFDetailViewController.h"

@interface RAFDetailViewController ()
- (void)configureView;
@end

@implementation RAFDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
