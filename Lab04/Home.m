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
int valorNuevo;
int counter = 0;

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //se tarde en desaparecer el LaunchScreen
    sleep(5);
    //tiempo
    myTimer = [NSTimer scheduledTimerWithTimeInterval:10.0 target:self selector:@selector(pantallados) userInfo:nil repeats:NO];
    counter = 0;
    
        
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pantallados{
    [self performSegueWithIdentifier:@"GoToScores" sender:self];
}

- (IBAction)btnPush:(id)sender {
    counter ++;
    self.lblScore.text=[NSString stringWithFormat:@"%d",counter];
    NSDateFormatter *DateFormatter=[[NSDateFormatter alloc] init];
    [DateFormatter setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
    //NSLog(@"Fecha: %@",[DateFormatter stringFromDate:[NSDate date]]);
    NSString *fecha = [DateFormatter stringFromDate:[NSDate date]];
    
    //INSERT
    [[BaseD getSharedInstance]saveData:counter fecha:fecha];
    valorNuevo = counter;
    
    
}
@end
