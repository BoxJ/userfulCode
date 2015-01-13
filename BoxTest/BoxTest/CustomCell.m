//
//  CustomCell.m
//  BoxTest
//
//  Created by Jingliang on 15/1/9.
//  Copyright (c) 2015年 jingBox. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)awakeFromNib {
    // Initialization code
    self.image1.backgroundColor=[UIColor redColor];
    self.image2.backgroundColor=[UIColor blueColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
