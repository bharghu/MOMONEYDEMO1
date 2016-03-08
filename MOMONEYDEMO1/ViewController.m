//
//  ViewController.m
//  MOMONEYDEMO1
//
//  Created by parita  on 08/03/16.
//  Copyright © 2016 VRInfosystem. All rights reserved.
//

#import "ViewController.h"
#import "AKPickerView.h"

@interface ViewController ()<AKPickerViewDataSource,AKPickerViewDelegate>

    @property (nonatomic, strong) AKPickerView *pickerView;
    @property (nonatomic, strong) NSArray *titles;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lbltitle.text=@"MO MONEY";
   
    //self.lbltitle.font=[UIFont fontWithName:@"Hiragino MinchoProN W6" size:50];
    self.pickerView = [[AKPickerView alloc] initWithFrame:CGRectMake(30.0f, 20.0f, 320.0f, 300.0f)];
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
    self.pickerView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:self.pickerView];
    
    self.pickerView.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:20];
    self.pickerView.highlightedFont = [UIFont fontWithName:@"HelveticaNeue" size:30];
    self.pickerView.interitemSpacing = 20.0;
    self.pickerView.fisheyeFactor = 0.001;
    self.pickerView.pickerViewStyle = AKPickerViewStyleFlat;
    self.pickerView.maskDisabled = false;
    
    self.titles = @[@"Tokyo",
                    @"Kanagawa",
                    @"Osaka",
                    @"Aichi",
                    @"Saitama",
                    @"Chiba",
                    @"Hyogo",
                    @"Hokkaido",
                    @"Fukuoka",
                    @"Shizuoka"];
    
    [self.pickerView reloadData];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSUInteger)numberOfItemsInPickerView:(AKPickerView *)pickerView;
{
    return [self.titles count];
}
- (NSString *)pickerView:(AKPickerView *)pickerView titleForItem:(NSInteger)item
{
    return self.titles[item];
}
- (void)pickerView:(AKPickerView *)pickerView didSelectItem:(NSInteger)item
{
    NSLog(@"%@", self.titles[item]);
}

@end
