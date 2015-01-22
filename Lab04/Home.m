//
//  ViewController.m
//  Lab04
//
//  Created by Alberto Cordero Arellanes on 21/01/15.
//  Copyright (c) 2015 AlbertoCorderoArellanes. All rights reserved.
//

#import "Home.h"
#import "VariablesGlobales.h"

NSTimer *myTimer;

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    counter=0;
    
    myTimer = [NSTimer scheduledTimerWithTimeInterval:10.0 target:self selector:@selector(pantallados) userInfo:nil repeats:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pantallados{
    //NSLog(@"hoola gotoscorres");
    [self performSegueWithIdentifier:@"GoToScores" sender:self];
}

- (IBAction)btnPush:(id)sender {
    counter ++;
    self.lblScore.text=[NSString stringWithFormat:@"%d",counter];
}
@end
