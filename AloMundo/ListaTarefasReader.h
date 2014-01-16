//
//  ListaTarefasReader.h
//  AloMundo
//
//  Created by Rodrigo Rocha on 16/01/14.
//  Copyright (c) 2014 Rodrigo Rocha. All rights reserved.
//

/*
 
 Você pode iniciar um servidor web apenas para servir arquivos estáticos.
 Exemplo:
 
 $ ls
 itens    start.sh
 
 $ cat itens
 ["Trabalhar", "Estudar", "Jogar"]
 
 $ cat start.sh
 ruby -rwebrick -e'WEBrick::HTTPServer.new(:Port => 3389, :DocumentRoot => Dir.pwd).start'
 
 */

#import <Foundation/Foundation.h>
#import "ListaTarefas.h"

@interface ListaTarefasReader : NSObject

- (ListaTarefas *)readTarefas;

@end
