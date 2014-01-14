//
//  AloViewController.m
//  AloMundo
//
//  Created by Rodrigo Rocha on 13/01/14.
//  Copyright (c) 2014 Rodrigo Rocha. All rights reserved.
//

#import "AloViewController.h"

@interface AloViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) NSArray *lista;

@end

@implementation AloViewController

- (void)atualizaTarefas {
    self.textView.text = [self.lista componentsJoinedByString:@"\n"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.lista = @[@"Programar", @"Estudar", @"Trabalhar"];
    [self atualizaTarefas];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)aloBotao:(id)sender {
}

@end
