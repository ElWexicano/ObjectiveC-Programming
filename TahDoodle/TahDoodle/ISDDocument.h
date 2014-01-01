//
//  ISDDocument.h
//  TahDoodle
//
//  Created by Shane Doyle on 01/01/2014.
//  Copyright (c) 2014 Shane Doyle. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ISDDocument : NSDocument <NSTableViewDataSource>
{
    NSMutableArray *todoItems;
    IBOutlet NSTableView *itemTableView;
}

@property NSMutableArray *todoItems;
@property IBOutlet NSTableView *itemTableView;

- (IBAction)createNewItem:(id)sender;
@end
