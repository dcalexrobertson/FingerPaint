//
//  FingerPainterView.m
//  Finger Paint
//
//  Created by Alex on 2015-10-30.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "FingerPainterView.h"

@implementation FingerPainterView

- (UIBezierPath *)path
{
    if (!_path) {
        _path = [UIBezierPath new];
    }
    return _path;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect {
    [self.currentColor setStroke];
    [self.path stroke];
}



@end
