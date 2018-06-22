//
//  PickerView.h
//  Easy Food
//
//  Created by Alima on 3/17/18.
//  Copyright © 2018 Alima. All rights reserved.
//

#import "ViewController.h"

@interface PickerView : ViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lblText;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (weak, nonatomic) IBOutlet UITextField *textComplaints;

@end
