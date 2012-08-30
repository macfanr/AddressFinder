//
//  DNAddressFinder.h
//  AddressFinder
//
//  Created by Xu Jun on 8/30/12.
//  Copyright (c) 2012 Xu Jun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DNAddressFinder : NSObject

+ (NSString*)addressOfLat:(double)latitude withLng:(double)longitude;

@end
