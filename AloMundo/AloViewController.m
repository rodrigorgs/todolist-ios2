//
//  AloViewController.m
//  AloMundo
//
//  Created by Rodrigo Rocha on 13/01/14.
//  Copyright (c) 2014 Rodrigo Rocha. All rights reserved.
//

#import "AloViewController.h"

@interface AloViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) NSMutableArray *lista;

@end

@implementation AloViewController

- (void)atualizaTarefas {
    self.textView.text = [self.lista componentsJoinedByString:@"\n"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.lista = [NSMutableArray arrayWithArray:@[@"Programar", @"Estudar", @"Trabalhar"]];
    [self atualizaTarefas];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)aloBotao:(id)sender {
    NSString *item = self.textField.text;
    [self.lista addObject:item];
    [self atualizaTarefas];
}

@end
