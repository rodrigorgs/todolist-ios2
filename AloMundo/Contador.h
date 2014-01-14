//
//  Contador.h
//  AloMundo
//
//  Created by Rodrigo Rocha on 13/01/14.
//  Copyright (c) 2014 Rodrigo Rocha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contador : NSObject

- (void)zerar;
- (void)incrementar;
- (void)adicionar:(NSInteger)delta;

@property (nonatomic) NSInteger contagem;
@property (strong, nonatomic) NSString *nome;

@end
