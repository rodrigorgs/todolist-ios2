//
//  ListaTarefas.h
//  AloMundo
//
//  Created by Rodrigo Rocha on 15/01/14.
//  Copyright (c) 2014 Rodrigo Rocha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListaTarefas : NSObject

- (NSString *)description;
- (void)adicionaItem:(NSString *)item;
- (void)limpaItens;

@property (strong, nonatomic) NSArray *itens;

@end
