//
//  HTHScrollCell.h
//  ZSS Lofprijs
//
//  Created by Harmen ter Horst on 05-10-13.
//  Copyright (c) 2013 Solid Ingenuity. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HTHScrollCell : UIImageView

@property (weak, nonatomic) id delegate;

@end

@protocol HTHScrollCellDelegate <NSObject>

- (void)tappedOnImage:(UIImage *)image;

@end
