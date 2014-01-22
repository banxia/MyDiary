//
//  Diary.h
//  MyDiary
//
//  Created by jin jianxiong on 22/1/14.
//  Copyright (c) 2014 jjx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Diary : NSObject

+(id) createDiary;

@property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSString *content;
@property (nonatomic,readonly,getter = dateCreate) NSDate *dateCreate;


@end
