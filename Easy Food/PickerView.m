//
//  PickerView.m
//  Easy Food
//
//  Created by Alima on 3/17/18.
//  Copyright © 2018 Alima. All rights reserved.
//

#import "PickerView.h"

@interface PickerView ()
{
    NSArray *characters;
}
@end

@implementation PickerView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    characters = @[@"Review", @"Comments", @"Ratings"];
    self.pickerView.dataSource = self;
    self.pickerView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sendButton:(id)sender {
    if([_textComplaints.text isEqualToString:@" "]){
        
        
        UIAlertController * alert = [UIAlertController
                                     alertControllerWithTitle:@"Title"
                                     message:@"qweqweqweq"
                                     preferredStyle:UIAlertControllerStyleAlert];
        
        
        
        UIAlertAction* yesButton = [UIAlertAction
                                    actionWithTitle:@"Yes, please"
                                    style:UIAlertActionStyleDefault
                                    handler:^(UIAlertAction * action) {
                                        //Handle your yes please button action here
                                    }];

        
        [alert addAction:yesButton];
        
        [self presentViewController:alert animated:YES completion:nil];
        
        return;
    }
}

- (BOOL)textField:(UITextField *)_textComplaints shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string { if (_textComplaints.text.length >= 300 && range.length == 0) return NO; return YES; }

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return characters.count;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return characters[row];
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    self.lblText.text = characters[row];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
