//
//  HTHViewController.h
//  ZSS Lofprijs
//
//  Created by Harmen ter Horst on 05-10-13.
//  Copyright (c) 2013 Solid Ingenuity. All rights reserved.
//

#import "HTHScrollCell.h"

@interface HTHViewController : UIViewController <HTHScrollCellDelegate>

@property (weak, nonatomic) IBOutlet UIView *mainView;
@property (weak, nonatomic) IBOutlet UIScrollView *scollView;


@end
