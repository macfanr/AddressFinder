//
//  AppDelegate.h
//  AddressFinder
//
//  Created by Xu Jun on 8/30/12.
//  Copyright (c) 2012 Xu Jun. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *lat_textfield;
@property (assign) IBOutlet NSTextField *lng_textfield;
@property (assign) IBOutlet NSTextField *address_textfield;

@end
