//
//  BTCViewController.m
//  BasicToolComponents
//
//  Created by caojian1235 on 10/24/2021.
//  Copyright (c) 2021 caojian1235. All rights reserved.
//

#import "BTCViewController.h"
#import <YSKDefineMacro.h>
#import <Category.h>
#import <Masonry.h>

@interface BTCViewController ()


@end

@implementation BTCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    UIImageView * imageView = UIImageView.new;
    imageView.image = IMAGE(@"mine_share_circle");
    [self.view addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.centerX.mas_equalTo(0);
        make.centerY.mas_equalTo(0);
        make.width.height.mas_equalTo(200);
        
    }];
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
