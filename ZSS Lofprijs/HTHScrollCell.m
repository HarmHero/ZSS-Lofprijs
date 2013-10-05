//
//  HTHScrollCell.m
//  ZSS Lofprijs
//
//  Created by Harmen ter Horst on 05-10-13.
//  Copyright (c) 2013 Solid Ingenuity. All rights reserved.
//

#import "HTHScrollCell.h"

@implementation HTHScrollCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;
        self.backgroundColor = [UIColor clearColor];
        self.contentMode = UIViewContentModeScaleAspectFill;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped)];
        tap.numberOfTapsRequired = 1;
        [self addGestureRecognizer:tap];
    }
    return self;
}

- (void)tapped {
    [_delegate tappedOnImage:self.image];
}

@end
