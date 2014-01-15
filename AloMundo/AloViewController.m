//
//  AloViewController.m
//  AloMundo
//
//  Created by Rodrigo Rocha on 13/01/14.
//  Copyright (c) 2014 Rodrigo Rocha. All rights reserved.
//

#import "AloViewController.h"
#import "ListaTarefas.h"
#import "DetailViewController.h"

@interface AloViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) ListaTarefas *tarefas;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation AloViewController

- (void)atualizaTarefas {
//    self.textView.text = [self.tarefas description];
    [self.tableView reloadData];
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UITableViewCell *cell = (UITableViewCell *)sender;
    NSString *item = cell.textLabel.text;
    
    DetailViewController *detailVC = segue.destinationViewController;
    detailVC.item = item;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tarefas.itens.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [self.tarefas.itens objectAtIndex:indexPath.row];
    
    return cell;
}

@end
