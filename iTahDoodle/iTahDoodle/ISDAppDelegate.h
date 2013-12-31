//
//  ISDAppDelegate.h
//  iTahDoodle
//
//  Created by Shane Doyle on 31/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import <UIKit/UIKit.h>

// Declare a helper function that we will use to get a path to the location on disk where we can save the to-do list
NSString *docPath(void);

@interface ISDAppDelegate : UIResponder
<UIApplicationDelegate, UITableViewDataSource>
{
    UITableView *tasksTable;
    UITextField *taskField;
    UIButton *insertButton;
    
    NSMutableArray *tasks;
}

- (void)addTask:(id)sender;

@property (strong, nonatomic) UIWindow *window;

@end
