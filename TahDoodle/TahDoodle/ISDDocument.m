//
//  ISDDocument.m
//  TahDoodle
//
//  Created by Shane Doyle on 01/01/2014.
//  Copyright (c) 2014 Shane Doyle. All rights reserved.
//

#import "ISDDocument.h"

@implementation ISDDocument

@synthesize todoItems;
@synthesize itemTableView;

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

#pragma mark - NSDocument Overrides

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"ISDDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    /**
     This method is called when our document is being saved.
     We are expected to hand the caller an NSData object wrapping our data
     so that it can be written to disk.
     */
    
    if(!todoItems) {
        todoItems = [NSMutableArray array];
    }
    
    // Pack our todoItems array into an NSData object.
    NSData *data = [NSPropertyListSerialization
                    dataWithPropertyList:todoItems
                    format:NSPropertyListXMLFormat_v1_0
                    options:0
                    error:outError];
    
    // Return the newly packed NSData object.
    return data;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    /**
     This method is called when a document is being loaded.
     We are handed an NSData object and expected to pull our data out of it.
     */
    
    // Extract our todoItems.
    todoItems = [NSPropertyListSerialization
                 propertyListWithData:data
                 options:NSPropertyListMutableContainers
                 format:NULL
                 error:outError];
    
    // Return success or failure depending on success of the above call.
    return (todoItems != nil);
}


#pragma mark - Actions

- (IBAction)createNewItem:(id)sender
{
    if (!todoItems) {
        todoItems = [NSMutableArray array];
    }
    
    // Add an item to todoItems
    [todoItems addObject:@"New Item"];
    
    // Refresh the table data
    [itemTableView reloadData];
    
    // -updateChangeCount: tells the application whether or not the document
    // has unsaved changes. NSChangeDone flags the document as saved.
    [self updateChangeCount:NSChangeDone];
}


#pragma mark - Data Source Methods

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [todoItems count];
}

- (id)tableView:(NSTableView *)tableView
objectValueForTableColumn:(NSTableColumn *)tableColumn
            row:(NSInteger)row
{
    return [todoItems objectAtIndex:row];
}

- (void)tableView:(NSTableView *)tableView
   setObjectValue:(id)object
   forTableColumn:(NSTableColumn *)tableColumn
              row:(NSInteger)row
{
    // When the user changes a to-do item on the table view, update the todoItems array.
    [todoItems replaceObjectAtIndex:row withObject:object];
    
    [self updateChangeCount:NSChangeDone];
}

@end
