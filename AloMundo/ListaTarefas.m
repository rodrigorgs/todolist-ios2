//
//  ListaTarefas.m
//  AloMundo
//
//  Created by Rodrigo Rocha on 15/01/14.
//  Copyright (c) 2014 Rodrigo Rocha. All rights reserved.
//

#import "ListaTarefas.h"

#define ITENS_KEY @"itens"

@implementation ListaTarefas

- (id)init
{
    self = [super init];
    if (self) {
        [self loadItens];
    }
    return self;
}

- (void)loadItens {
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSArray *array = [prefs objectForKey:ITENS_KEY];
    if (!array)
        array = @[];
    _itens = array;
}

- (void)setItens:(NSArray *)novosItens {
    _itens = [novosItens copy];
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    [prefs setObject:_itens forKey:ITENS_KEY];
}

- (NSString *)description {
    return [self.itens componentsJoinedByString:@"\n"];
}

- (void)adicionaItem:(NSString *)item {
    NSMutableArray *novo = [NSMutableArray arrayWithArray:self.itens];
    [novo addObject:item];
    self.itens = novo;
}

- (void)limpaItens {
    self.itens = @[];
}

@end
