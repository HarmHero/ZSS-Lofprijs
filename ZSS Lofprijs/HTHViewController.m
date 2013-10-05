//
//  HTHViewController.m
//  ZSS Lofprijs
//
//  Created by Harmen ter Horst on 05-10-13.
//  Copyright (c) 2013 Solid Ingenuity. All rights reserved.
//

#import "HTHViewController.h"

@interface HTHViewController () {
    NSArray *data;
}

@end

@implementation HTHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	data = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"images" ofType:@"plist"]];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return data.count;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UICollectionViewCell alloc] init];
    }
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
