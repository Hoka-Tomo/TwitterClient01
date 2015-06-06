///
//  TimeLineCell.m
//  TwitterClient01
//
//  Created by 穂苅智哉 on 5/29/15.
//  Copyright (c) 2015 Tomoya Hokari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SharedDataManager.h"

@interface TimeLineCell : UITableViewCell

@property (nonatomic, strong) UILabel *tweetTextLabel;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UIImageView *profileImageView;
@property (nonatomic) CGFloat tweetTextLabelHeight;

@end