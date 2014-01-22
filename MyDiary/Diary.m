//
//  Diary.m
//  MyDiary
//
//  Created by jin jianxiong on 22/1/14.
//  Copyright (c) 2014 jjx. All rights reserved.
//

#import "Diary.h"

@implementation Diary


-(id)init{

    return [self initWithTitle:@"" content:@""];
    
}

-(id)initWithTitle:(NSString *)theTitle content:(NSString *) theContent{

    self = [super init];
    if (self) {
        [self setTitle:theTitle];
        [self setContent:theContent];
        _dateCreate = [[NSDate alloc] init];
    }
    return self;
}


+(id)createDiary{

    return [[Diary alloc] init];

}

@end
