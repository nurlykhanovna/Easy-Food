//
//  ViewController.m
//  Easy Food
//
//  Created by Alima on 3/17/18.
//  Copyright © 2018 Alima. All rights reserved.
//

#import "ViewController.h"
//#import "secondViewController.m"
//#import "thirdViewController.m"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textUsername;
@property (weak, nonatomic) IBOutlet UITextField *textPassword;

@end

@implementation ViewController
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)loginButton:(id)sender {
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
