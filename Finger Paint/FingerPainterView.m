//
//  FingerPainterView.m
//  Finger Paint
//
//  Created by Alex on 2015-10-30.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "FingerPainterView.h"
#import "Line.h"

@implementation FingerPainterView

- (void)awakeFromNib
{
    
    self.lines = [NSMutableArray new];
    
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect {
    
    for (Line *line in self.lines) {
        [line.color setStroke];
        [line.path stroke];
    }
    
}



@end
