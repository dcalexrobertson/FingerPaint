//
//  Line.m
//  Finger Paint
//
//  Created by Alex on 2015-10-30.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "Line.h"

@implementation Line

- (instancetype)initWithColor:(UIColor *)color
{
    self = [super init];
    if (self) {
        _path = [UIBezierPath new];
        _color = color;
    }
    return self;
}

@end
