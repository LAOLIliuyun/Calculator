//
//  ViewController.m
//  UI_01(计算器)
//
//  Created by administrator on 16/5/23.
//  Copyright © 2016年 ibakan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    CGFloat number1;
    CGFloat number2;
    NSString *operation;
    BOOL isClear;
    CGFloat result;
    
}
@property (strong, nonatomic) IBOutlet UILabel *showLabel;

@end

@implementation ViewController
- (IBAction)numberButton:(UIButton *)sender {
    //数字0--9
    if ([self.showLabel.text isEqualToString:@"0"]||isClear) {
        _showLabel.text = sender.titleLabel.text;
        isClear = NO ;
    }else {
        _showLabel.text = [_showLabel.text stringByAppendingFormat:@"%@",sender.titleLabel.text];
    }
}

- (IBAction)pointButton:(UIButton *)sender {
    //。
    if ([self.showLabel.text rangeOfString:@"."].length ==0) {
        self.showLabel.text = [_showLabel.text stringByAppendingFormat:@"."];
        isClear = NO ;
        
    }
    
    
    
}

- (IBAction)operationAction:(UIButton *)sender {
   //+ - * /
    //!isClear代表着你按运算符号之前已经点击过数字了
    if (number1 == CGFLOAT_MAX) {
        number1 = [_showLabel.text floatValue];
    }else{
        number2 = [_showLabel.text floatValue];
    }
    
    if (number1 != CGFLOAT_MAX && number2 != CGFLOAT_MAX && !isClear) {
        if ([operation isEqualToString:@"+"]) {
            result = number1 + number2;
        }else if([operation isEqualToString:@"-"]){
            result = number1 - number2;
        }
        else if([operation isEqualToString:@"*"]){
            result = number1 * number2;
        }
        else if([operation isEqualToString:@"/"]){
            result = number1 / number2;
        }
        _showLabel.text = [NSString stringWithFormat:@"%g",result];
        number1 = result;
    }
    operation = sender.titleLabel.text;
    isClear = YES ;
    
}

- (IBAction)equalAction:(UIButton *)sender {
    //=
    if (number1 == CGFLOAT_MAX) {
        number1 = [_showLabel.text floatValue];
        
    }
    if (number2 ==CGFLOAT_MAX && ![operation isEqualToString:@""]) {
        number2 = [_showLabel.text floatValue];
    }else if(!isClear){
        number2 = [_showLabel.text floatValue];

    }

    if (number1 != CGFLOAT_MAX && number2 != CGFLOAT_MAX ) {
        if ([operation isEqualToString:@"+"]) {
            result = number1 + number2;
        }else if([operation isEqualToString:@"-"]){
            result = number1 - number2;
        }
        else if([operation isEqualToString:@"*"]){
            result = number1 * number2;
        }
        else if([operation isEqualToString:@"/"]){
            result = number1 / number2;
        }
        _showLabel.text = [NSString stringWithFormat:@"%g",result];
        number1 = result;
    }
    isClear = YES ;
    
}

- (IBAction)notAction:(id)sender {
    //+/-
}

- (IBAction)personAction:(id)sender {
    //%
}

- (IBAction)clearAction:(id)sender {
    //ac
    number1 = CGFLOAT_MAX;
    number2 = CGFLOAT_MAX;
    isClear = YES ;
    self.showLabel.text = @"0";
    operation = @"";
    result = CGFLOAT_MAX ;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    number1 = CGFLOAT_MAX;
    number2 = CGFLOAT_MAX;
    isClear = YES ;
    self.showLabel.text = @"0";
    operation = @"";
    result = CGFLOAT_MAX ;
    
    
    NSLog(@"视图加载完成时候调用");
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewDidAppear:animated];
        NSLog(@"视图将要出现");
    }

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"视图已经出现");
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"视图将要消失");
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"视图已经消失");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"内存警告,程序将要退出");
}



@end
