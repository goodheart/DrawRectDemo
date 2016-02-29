//
//  PMRedrawView.m
//  20160229DrawRect
//
//  Created by majian on 16/2/29.
//  Copyright © 2016年 majian. All rights reserved.
//

#import "PMRedrawView.h"

@interface PMRedrawView () {
    CGFloat _x;
    CGFloat _y;
}
@property (nonatomic,strong) NSTimer * timer;



@end

@implementation PMRedrawView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _x = 150;
        _y = 150;
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(change) userInfo:nil repeats:YES];
//        [self.timer fire];
    }
    return self;
}

- (void)change {
    if (_y < 100 || _x < 100) {
        [self.timer invalidate];
        _timer = nil;
    }
    _x -= 10;
    _y -= 10;
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context  = UIGraphicsGetCurrentContext();
    
    CGContextSetRGBStrokeColor(context, 1.0, 0.5, 0.5, 1.0);
    CGContextSetLineWidth(context, 2.0f);
    CGContextSetLineCap(context, kCGLineCapSquare);
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, 0, 50);
    CGContextAddLineToPoint(context, 50, 50);
    CGContextAddLineToPoint(context, 50, 0);
    CGContextAddLineToPoint(context, 0, 0);
    CGContextStrokePath(context); //画线
//    CGContextFillPath(context);
    
    CGContextSetStrokeColorWithColor(context, [UIColor orangeColor].CGColor);
    CGContextSetLineWidth(context, 3.0f);
    CGContextBeginPath(context);
    CGContextAddEllipseInRect(context, CGRectMake(50, 50, 100, 100));
    CGContextStrokePath(context);
    
    CGContextBeginPath(context);
    CGContextAddRect(context, CGRectMake(_x, _y, 200 - _x, 200 - _y));
    CGContextStrokePath(context);

    NSString * string = @"Hello world";
    [string drawInRect:CGRectMake(0, 50, 100, 30) withAttributes:@{NSForegroundColorAttributeName : [UIColor purpleColor],NSFontAttributeName : [UIFont systemFontOfSize:11.0]}];
}



















@end






