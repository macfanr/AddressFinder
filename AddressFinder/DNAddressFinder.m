//
//  DNAddressFinder.m
//  AddressFinder
//
//  Created by Xu Jun on 8/30/12.
//  Copyright (c) 2012 Xu Jun. All rights reserved.
//

#import "DNAddressFinder.h"
#import "CJSONDeserializer.h"

@implementation DNAddressFinder

+ (NSString*)addressOfLat:(double)latitude withLng:(double)longitude
{
    @try  {
        NSString *const GoogleMapServiceURLFormat = @"http://maps.googleapis.com/maps/api/geocode/json?latlng=%f,%f&sensor=true";
        NSError *error = nil;
        
        NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:GoogleMapServiceURLFormat, latitude, longitude]];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSData *googleMapJSONData = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:&error];
        
        if(!error) {
            NSDictionary *dic = [[CJSONDeserializer deserializer]deserializeAsDictionary:googleMapJSONData error:&error];
            return [[[dic valueForKey:@"results"]objectAtIndex:0] valueForKey:@"formatted_address"];
        }
    }
    @catch (NSException *exception) {
        
    }
    
    return nil;
}

@end
