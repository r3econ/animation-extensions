//
//  RAFMasterViewController.m
//  UIViewAnimationExtensions
//
//  Created by Rafal Sroka on 10/04/14.
//
//  License CC0.
//  This is free and unencumbered software released into the public domain.
//
//  Anyone is free to copy, modify, publish, use, compile, sell, or
//  distribute this software, either in source code form or as a compiled
//  binary, for any purpose, commercial or non-commercial, and by any means.
//


#import "RAFMasterViewController.h"
#import "RAFDetailViewController.h"


#define ROW_INDEX_SHAKE 0
#define ROW_INDEX_PULSE 1
#define ROW_INDEX_MOTION_EFFECTS 2


@implementation RAFMasterViewController


#pragma mark - Table View


- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"
                                                            forIndexPath:indexPath];

    switch (indexPath.row)
    {
        case ROW_INDEX_SHAKE:
            cell.textLabel.text = @"Shake animation";
            break;
            
        case ROW_INDEX_PULSE:
            cell.textLabel.text = @"Pulse animation";
            break;
            
        case ROW_INDEX_MOTION_EFFECTS:
            cell.textLabel.text = @"Motion effects";
            break;
        default:
            break;
    }
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"])
    {
        
    }
}


@end