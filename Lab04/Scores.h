//
//  Scores.h
//  Lab04
//
//  Created by Alberto Cordero Arellanes on 21/01/15.
//  Copyright (c) 2015 AlbertoCorderoArellanes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseD.h"

@interface Scores : UIViewController <UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>


- (IBAction)aregresar:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *tblMain;

@property (strong, nonatomic) IBOutlet UILabel *lblPuntuaje;

@property (strong, nonatomic) IBOutlet UILabel *lblFecha;



@end
