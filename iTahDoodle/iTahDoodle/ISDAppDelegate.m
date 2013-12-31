//
//  ISDAppDelegate.m
//  iTahDoodle
//
//  Created by Shane Doyle on 31/12/2013.
//  Copyright (c) 2013 Shane Doyle. All rights reserved.
//

#import "ISDAppDelegate.h"

// Helper function to fetch the path to our to-do data stored on disk.
NSString *docPath()
{
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    return [[pathList objectAtIndex:0] stringByAppendingPathComponent:@"data.td"];
}

@implementation ISDAppDelegate

#pragma mark - Application delegate callbacks

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // Attempt to load an existing to-do dataset from an array stored to disk.
    NSArray *pslist = [NSArray arrayWithContentsOfFile:docPath()];
    
    if (pslist) {
        // If there was a dataset available, copy it into our instance variable.
        tasks = [pslist mutableCopy];
    } else {
        // Otherwise just create an empty one to get us started.
        tasks = [[NSMutableArray alloc] init];
    }
    
    if ([tasks count] == 0) {
        [tasks addObject:@"Collect the take-away"];
        [tasks addObject:@"Create website with Jamie"];
        [tasks addObject:@"Kick some add on Battlefield 4"];
        [tasks addObject:@"Have some brewskis with James"];
    }
    
    // Create and Configure the UIWindow instance
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self setWindow:self.window];
    
    // Define the frame rectangles of the three UI Elements
    CGRect tableFrame = CGRectMake(0, 80, 320, 380);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    // Create and configure the table view
    tasksTable = [[UITableView alloc] initWithFrame:tableFrame
                                              style:UITableViewStylePlain];
    [tasksTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    // Make this object the table view's dataSource
    [tasksTable setDataSource:self];
    
    // Create and configure the tasks text field
    taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    [taskField setBorderStyle:UITextBorderStyleRoundedRect];
    [taskField setPlaceholder:@"Buy coffee for Colette"];
    
    // Create and configure the insert button
    insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [insertButton setFrame:buttonFrame];
    [insertButton setTitle:@"Insert"
                  forState:UIControlStateNormal];
    
    // Configure the buttons action to call the addTask
    [insertButton addTarget:self
                     action:@selector(addTask:)
           forControlEvents:UIControlEventTouchUpInside];
    
    // Add our three UI elements to the window
    [[self window] addSubview:tasksTable];
    [[self window] addSubview:taskField];
    [[self window] addSubview:insertButton];
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - Table View Management

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    // Because this table view only has one section, the number of rows in it is equal to the number of items in our tasks array.
    return [tasks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // To improve performance we reconfigure cells in memory that have scrolled off the screen and hand them back with new contents instead of always creating new cells. First, we check to see if there's a cell available to reuse.
    
    UITableViewCell *c = [tasksTable dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (!c) {
        // ...and only allocate a new cell if none are available.
        c = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                   reuseIdentifier:@"Cell"];
    }
    
    // Then we (re)configure the cell based on the model object
    NSString *item = [tasks objectAtIndex:[indexPath row]];
    [[c textLabel] setText:item];
    
    // ...and hand back to the table view the properly configured cell
    return c;
}

@end
