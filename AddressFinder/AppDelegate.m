//
//  AppDelegate.m
//  AddressFinder
//
//  Created by Xu Jun on 8/30/12.
//  Copyright (c) 2012 Xu Jun. All rights reserved.
//

#import "AppDelegate.h"
#import "DNAddressFinder.h"

@implementation AppDelegate
@synthesize lat_textfield;
@synthesize lng_textfield;
@synthesize address_textfield;

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)onFindNow:(id)sender
{
    if([[lat_textfield stringValue]length] > 0 &&
       [[lng_textfield stringValue]length] > 0) {
        
        double lat = [lat_textfield doubleValue];
        double lng = [lng_textfield doubleValue];
        
        NSString *add = [DNAddressFinder addressOfLat:lat withLng:lng];
        
        [address_textfield setStringValue:add];
    }
    else {
        [address_textfield setStringValue:@"Bad Latitude or Longitude ..."];
        [address_textfield performSelector:@selector(setStringValue:) withObject:@"" afterDelay:3.0];
    }
}

@end
