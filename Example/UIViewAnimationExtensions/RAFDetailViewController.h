//
//  RAFDetailViewController.h
//  UIViewAnimationExtensions
//
//  Created by Rafal Sroka on 10/04/14.
//  Copyright (c) 2014 Rafal Sroka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RAFDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
