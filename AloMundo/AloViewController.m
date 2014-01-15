//
//  AloViewController.m
//  AloMundo
//
//  Created by Rodrigo Rocha on 13/01/14.
//  Copyright (c) 2014 Rodrigo Rocha. All rights reserved.
//

#import "AloViewController.h"
#import "ListaTarefas.h"

@interface AloViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) ListaTarefas *tarefas;

@end

@implementation AloViewController

- (void)atualizaTarefas {
    self.textView.text = [self.tarefas description];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.textField.delegate = self;
    
    self.tarefas = [[ListaTarefas alloc] init];
    [self atualizaTarefas];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)adicionaItem:(id)sender {
    NSString *item = self.textField.text;
    [self.tarefas adicionaItem:item];
    [self atualizaTarefas];
}

- (IBAction)limpaItens:(id)sender {
    [self.tarefas limpaItens];
    [self atualizaTarefas];
}

@end
