//
//  toast.h
//  Toast
//
//  Created by jkc on 16/5/23.
//  Copyright © 2016年 cjt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface toast : UIView
@property (nonatomic,strong) UILabel *label;

-(instancetype)initWithString:(NSString*)str;
@end
