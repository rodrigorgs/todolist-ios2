//
//  ListaTarefasReader.m
//  AloMundo
//
//  Created by Rodrigo Rocha on 16/01/14.
//  Copyright (c) 2014 Rodrigo Rocha. All rights reserved.
//

#import "ListaTarefasReader.h"

#define URL_STRING @"http://localhost:3389/itens"

@implementation ListaTarefasReader

+ (NSData *)dataFromUrl:(NSString *)urlString {
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    NSError *requestError;
    NSURLResponse *urlResponse = nil;
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:&urlResponse error:&requestError];
    
    return response;
}

+ (ListaTarefas *)tarefasFromData:(NSData *)data {
    NSError *error;
    NSArray *json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
    
    ListaTarefas *tarefas = [[ListaTarefas alloc] init];
    tarefas.itens = json;
    
    return tarefas;
    
}

- (ListaTarefas *)readTarefas {
    NSData *data = [ListaTarefasReader dataFromUrl:URL_STRING];
    return [ListaTarefasReader tarefasFromData:data];
}

@end
