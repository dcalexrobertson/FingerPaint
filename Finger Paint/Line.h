//
//  Line.h
//  Finger Paint
//
//  Created by Alex on 2015-10-30.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Line : NSObject

@property (nonatomic) UIBezierPath *path;
@property (nonatomic) UIColor *color;

- (instancetype)initWithColor:(UIColor *)color;

@end
