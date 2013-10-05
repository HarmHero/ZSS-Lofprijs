//
//  HTHDragCell.m
//  ZSS Lofprijs
//
//  Created by Harmen ter Horst on 05-10-13.
//  Copyright (c) 2013 Solid Ingenuity. All rights reserved.
//

#import "HTHDragCell.h"

@implementation HTHDragCell {
    BOOL tapped;
    UIImageView *tapImg;
    int _xOffset, _yOffset;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        tapped = NO;
        self.userInteractionEnabled = YES;
        self.backgroundColor = [UIColor clearColor];
        
        self.backgroundColor = [UIColor clearColor];
        self.contentMode = UIViewContentModeScaleAspectFill;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tappedImage)];
        tap.numberOfTapsRequired = 1;
        tap.numberOfTouchesRequired = 2;
        [self addGestureRecognizer:tap];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    CGPoint pt = [[touches anyObject] locationInView:self.superview];
    _xOffset = pt.x - self.center.x;
    _yOffset = pt.y - self.center.y;
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    CGPoint pt = [[touches anyObject] locationInView:self.superview];
    self.center = CGPointMake(pt.x - _xOffset, pt.y - _yOffset);
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self touchesMoved:touches withEvent:event];
}

- (void)tappedImage {
    
    if (!tapped) {
        tapImg = [[UIImageView alloc] initWithFrame:CGRectMake(0.0, 0.0, 100.0, 100.0)];
        tapImg.backgroundColor = [UIColor clearColor];
        tapImg.image = [UIImage imageNamed:@"roodkruis.png"];
        tapImg.contentMode = UIViewContentModeScaleAspectFill;
        [self addSubview:tapImg];
        tapped = YES;
    } else {
        [tapImg removeFromSuperview];
        tapped = NO;
    }
}

@end
