//
//  toast.m
//  Toast
//
//  Created by jkc on 16/5/23.
//  Copyright © 2016年 cjt. All rights reserved.
//

#import "toast.h"


@implementation toast
-(instancetype)initWithString:(NSString*)str
{
    if (self = [super init]) {
        [self LabelString:str];
    }
    return self;
}

-(void)LabelString:(NSString *)str
{
    /*获取屏幕尺寸*/
    CGFloat height = [[UIScreen mainScreen] bounds].size.height;
    CGFloat width = [[UIScreen mainScreen] bounds].size.width;
    
    /*获取文字所占的尺寸*/
    NSDictionary *attribute = @{NSFontAttributeName: [UIFont systemFontOfSize:20]};
    CGRect Rect = [str boundingRectWithSize:CGSizeMake(width-40, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attribute context:nil];
    
    /*设置label*/
    self.label.frame = CGRectMake((width-Rect.size.width)/2, height-Rect.size.height-20, Rect.size.width, Rect.size.height);
    self.label.font = [UIFont systemFontOfSize:20];
    self.label.text = str;
    self.label.alpha = 1;
    
    /*三秒淡出*/
    [UIView animateWithDuration:3 animations:^{
        _label.alpha = 0;
    }];
    [self addSubview:self.label];
}

-(UILabel *)label
{
    if(!_label)
    {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
        _label.backgroundColor = [UIColor blackColor];
        _label.textColor = [UIColor whiteColor];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.alpha = 1;
        _label.numberOfLines = 0;

    }
    return _label;
}
@end
