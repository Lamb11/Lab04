//
//  Scores.m
//  Lab04
//
//  Created by Alberto Cordero Arellanes on 21/01/15.
//  Copyright (c) 2015 AlbertoCorderoArellanes. All rights reserved.
//

#import "Scores.h"
#import "VariablesGlobales.h"
#import "puntosL.h"


//NSDate *hoy;
//NSDateFormatter *dateFormat;
//NSString *prettyVersion;
NSMutableArray *datos;
NSTimer *myTimer;
int contador;
int pos;
int total;


@interface Scores ()

@end

@implementation Scores

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
  //  hoy = [[NSDate alloc] init];
    
  //  dateFormat = [[NSDateFormatter alloc] init];
  //  [dateFormat setDateFormat:@"cccc, MMMM dd, \n YYYY, hh:mm aa"];
  //  prettyVersion = [dateFormat stringFromDate:hoy];
    
  //  self.lblPuntuaje.text = [NSString stringWithFormat:@"%d",counter];
    
  //  self.lblFecha.text = prettyVersion;
    
    [self puntosLista];
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
- (void)puntosLista{
    contador = 0;
    datos = [[BaseD getSharedInstance]listar];
    //NSLog(@"Valor insertado: %d",valorNuevo);
    
    for(NSArray *st in datos) {
        if([[st objectAtIndex:0] integerValue] == valorNuevo){
            pos = contador;
        }
        contador++;
    }
    total = (int)[datos count];
    
    //NSLog(@"Valor posicion: %d",pos);
    
    
  NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
  [self.tblMain scrollToRowAtIndexPath:indexPath
                        atScrollPosition:UITableViewScrollPositionTop animated:NO];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    total = (int)[datos count];
    return [datos count];
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"puntosL";
    puntosL *cell = (puntosL *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil){
        cell = [[puntosL alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSMutableArray *dato = datos[indexPath.row];
    contador++;
    cell.puntos.text = [dato objectAtIndex:0];
    cell.fecha.text = [dato objectAtIndex:1];
    return cell;
}
- (IBAction)aregresar:(id)sender {
    
}
@end
