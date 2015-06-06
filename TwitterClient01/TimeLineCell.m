//
//  TimeLineCell.m
//  TwitterClient01
//
//  Created by 穂苅智哉 on 5/29/15.
//  Copyright (c) 2015 Tomoya Hokari. All rights reserved.
//

#import "TimeLineCell.h"

@implementation TimeLineCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        SharedDataManager *sharedManager = [SharedDataManager sharedManager];
        
        _tweetTextLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _tweetTextLabel.font = sharedManager.tweetTextLabelFont;
        _tweetTextLabel.textColor = [UIColor blackColor];
        _tweetTextLabel.numberOfLines = 0;
        [self.contentView addSubview:_tweetTextLabel];
        
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel.font = sharedManager.nameLabelFont;
        _nameLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:_nameLabel];
    
        _profileImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        [self.contentView addSubview:_profileImageView];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat x1, x2, x3, y1, y2, y3, imageX, imageY, tweetTextLabelX, nameLabelY;
    
    SharedDataManager *sharedManager = [SharedDataManager sharedManager];
    
    x1 = sharedManager.marginX1;
    x2 = sharedManager.marginX2;
    x3 = sharedManager.marginX3;
    y1 = sharedManager.marginY1;
    y2 = sharedManager.marginY2;
    y3 = sharedManager.marginY3;
    
    imageX = sharedManager.imageX;
    imageY = sharedManager.imageY;
    tweetTextLabelX = sharedManager.tweetTextLabelX;
    nameLabelY = sharedManager.nameLabelY;
    
    self.profileImageView.frame = CGRectMake(10, 10, imageX, imageY);
    
    self.nameLabel.frame = CGRectMake(self.profileImageView.frame.origin.x + self.profileImageView.frame.size.width + 10,
                                      10, tweetTextLabelX, nameLabelY);
    
    self.tweetTextLabel.frame = CGRectMake(self.nameLabel.frame.origin.x,
                                           self.nameLabel.frame.origin.y + 10,
                                           tweetTextLabelX, self.tweetTextLabelHeight);

    
    

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end