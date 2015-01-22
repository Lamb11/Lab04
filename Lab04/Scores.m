//
//  Scores.m
//  Lab04
//
//  Created by Alberto Cordero Arellanes on 21/01/15.
//  Copyright (c) 2015 AlbertoCorderoArellanes. All rights reserved.
//

#import "Scores.h"
#import "VariablesGlobales.h"
NSDate *hoy;
NSDateFormatter *dateFormat;
NSString *prettyVersion;

@interface Scores ()

@end

@implementation Scores

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    hoy = [[NSDate alloc] init];
    
    dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"cccc, MMMM dd, \n YYYY, hh:mm aa"];
    prettyVersion = [dateFormat stringFromDate:hoy];
    
    self.lblPuntuaje.text = [NSString stringWithFormat:@"%d",counter];
    
    self.lblFecha.text = prettyVersion;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
