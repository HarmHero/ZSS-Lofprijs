//
//  HTHViewController.m
//  ZSS Lofprijs
//
//  Created by Harmen ter Horst on 05-10-13.
//  Copyright (c) 2013 Solid Ingenuity. All rights reserved.
//

#import "HTHViewController.h"
#import "HTHDragCell.h"
#import "HTHScrollCell.h"

@interface HTHViewController ()

@end

@implementation HTHViewController {
    NSArray *data;
}

@synthesize scollView = scrollView, mainView = mainView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	data = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"images" ofType:@"plist"]];
    NSInteger i = 0;
    NSInteger j = 0;
    while (i < data.count) {
        HTHScrollCell *cell = [[HTHScrollCell alloc] initWithFrame:CGRectMake(i * 150, 12.0, 100.0, 100.0)];
        NSString *imageName = data[i];
        UIImage *image = [UIImage imageNamed:imageName];
        [cell setImage:image];
        cell.delegate = self;
        [scrollView addSubview:cell];
        i++;
        j = j + 150;
    }
    scrollView.contentSize = CGSizeMake(j, 100.0);
    scrollView.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.5];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(eraseCells)];
    tap.numberOfTouchesRequired = 2;
    tap.numberOfTapsRequired = 2;
    [mainView addGestureRecognizer:tap];
}

-(void)tappedOnImage:(UIImage *)image {
    HTHDragCell *cell = [[HTHDragCell alloc] initWithFrame:CGRectMake(300.0, 500.0, 100.0, 100.0)];
    cell.image = image;
    [mainView addSubview:cell];
}

- (void)eraseCells {
    NSArray *views = [mainView subviews];
    [views makeObjectsPerformSelector:@selector(removeFromSuperview)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
