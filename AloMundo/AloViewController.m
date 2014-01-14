//
//  AloViewController.m
//  AloMundo
//
//  Created by Rodrigo Rocha on 13/01/14.
//  Copyright (c) 2014 Rodrigo Rocha. All rights reserved.
//

#import "AloViewController.h"

@interface AloViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation AloViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.label.text = @"Alo Mundo!!!";
    // ou
    [self.label setText:@"Alo Mundo!!!"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)aloBotao:(id)sender {
    self.label.text = @"Alo, Botao!";
    NSLog(@"Apertou o botao");
}

@end
