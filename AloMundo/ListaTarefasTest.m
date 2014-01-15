//
//  ListaTarefasTest.m
//  AloMundo
//
//  Created by Rodrigo Rocha on 15/01/14.
//  Copyright (c) 2014 Rodrigo Rocha. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ListaTarefas.h"

@interface ListaTarefasTest : XCTestCase

@end

@implementation ListaTarefasTest

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testLimpaItens {
    ListaTarefas *tarefas = [[ListaTarefas alloc] init];
    [tarefas limpaItens];
    XCTAssertTrue(0 == tarefas.itens.count);
}

- (void)testLimpaItensAposAdicionar {
    ListaTarefas *tarefas = [[ListaTarefas alloc] init];
    [tarefas adicionaItem:@"qwe"];
    [tarefas limpaItens];
    XCTAssertTrue(0 == tarefas.itens.count);
}

- (void)testAdicionaItem {
    ListaTarefas *tarefas = [[ListaTarefas alloc] init];
    [tarefas limpaItens];
    
    [tarefas adicionaItem:@"qwe"];
    XCTAssertTrue(1 == tarefas.itens.count);
    [tarefas adicionaItem:@"asd"];
    XCTAssertTrue(2 == tarefas.itens.count);
}

- (void)testDescription {
    ListaTarefas *tarefas = [[ListaTarefas alloc] init];
    [tarefas limpaItens];

    XCTAssertTrue([[tarefas description] isEqualToString:@""]);
    [tarefas adicionaItem:@"qwe"];
    XCTAssertTrue([[tarefas description] isEqualToString:@"qwe"]);
    [tarefas adicionaItem:@"asd"];
    XCTAssertTrue([[tarefas description] isEqualToString:@"qwe\nasd"]);
}

- (void)testPersistencia {
    ListaTarefas *tarefas = [[ListaTarefas alloc] init];
    [tarefas limpaItens];
    [tarefas adicionaItem:@"qwe"];
    
    ListaTarefas *tarefas2 = [[ListaTarefas alloc] init];
    XCTAssertTrue(1 == tarefas2.itens.count);
    XCTAssertTrue([[tarefas2.itens objectAtIndex:0] isEqualToString:@"qwe"]);
}

@end
