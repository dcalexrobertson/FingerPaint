//
//  ViewController.m
//  Finger Paint
//
//  Created by Alex on 2015-10-30.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "ViewController.h"
#import "FingerPainterView.h"
#import "Line.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet FingerPainterView *fpView;
@property (nonatomic) UIColor *currentColor;
@property (weak, nonatomic) IBOutlet UIView *colorMenuView;
@property (weak, nonatomic) IBOutlet UILabel *chooseColorLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.currentColor = [UIColor blackColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pgRecog:(UIPanGestureRecognizer *)sender {
    
    if (sender.state == UIGestureRecognizerStateBegan) {
        
        // new line
        Line *newLine = [[Line alloc] initWithColor:self.currentColor];
        [self.fpView.lines addObject:newLine];
        
        CGPoint point = [sender locationInView:self.fpView];
        [newLine.path moveToPoint:point];
        
    } else if (sender.state == UIGestureRecognizerStateChanged) {
        
        Line *newLine = [self.fpView.lines lastObject];
        CGPoint point = [sender locationInView:self.fpView];
        [newLine.path addLineToPoint:point];
    }
    
    [self.fpView setNeedsDisplay];
}
- (IBAction)menuSwitch:(UISwitch *)sender {
    if (sender.on) {
        self.colorMenuView.hidden = NO;
    } else {
        self.colorMenuView.hidden = YES;
    }
}
- (IBAction)chooseBlack:(id)sender {
    self.chooseColorLabel.textColor = [UIColor blackColor];
    self.currentColor = [UIColor blackColor];
}
- (IBAction)chooseBlue:(id)sender {
    self.chooseColorLabel.textColor = [UIColor blueColor];
    self.currentColor = [UIColor blueColor];
}
- (IBAction)chooseBrown:(id)sender {
    self.chooseColorLabel.textColor = [UIColor brownColor];
    self.currentColor = [UIColor brownColor];
}
- (IBAction)chooseCyan:(id)sender {
    self.chooseColorLabel.textColor = [UIColor cyanColor];
    self.currentColor = [UIColor cyanColor];
}
- (IBAction)chooseGreen:(id)sender {
    self.chooseColorLabel.textColor = [UIColor greenColor];
    self.currentColor = [UIColor greenColor];
}
- (IBAction)chooseMagenta:(id)sender {
    self.chooseColorLabel.textColor = [UIColor magentaColor];
    self.currentColor = [UIColor magentaColor];
}


@end
