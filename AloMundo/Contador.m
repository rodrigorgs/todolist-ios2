//
//  Contador.m
//  AloMundo
//
//  Created by Rodrigo Rocha on 13/01/14.
//  Copyright (c) 2014 Rodrigo Rocha. All rights reserved.
//

#import "Contador.h"

@implementation Contador

- (void)zerar {
    self.contagem = 0;
}

- (void)adicionar:(NSInteger)delta {
    self.contagem += delta;
}

- (void)incrementar {
    [self adicionar:1];
}

@end
