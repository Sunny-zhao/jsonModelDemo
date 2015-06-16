//
//  GarDensModel.h
//  jsonModelDemo
//
//  Created by Sunny on 15/6/15.
//  Copyright (c) 2015年 Sunny. All rights reserved.
//

#import "JSONModel.h"

@protocol ClassModel <NSObject>
@end

@interface ClassModel : JSONModel
@property (nonatomic, strong) NSString * checkinid;
@property (nonatomic, strong) NSString * classid;
@property (nonatomic, strong) NSString * classname;
@property (nonatomic, strong) NSString * classphoto;
@property (nonatomic, strong) NSString * invite;
@property (nonatomic, strong) NSString * nick;
@property (nonatomic, strong) NSString * photo;
@property (nonatomic, strong) NSString * roleid;
@property (nonatomic, strong) NSString * status; //1正常，4已经毕业
@property (nonatomic, strong) NSString * unread;
@property (nonatomic, strong) NSString * vpic_big;
@property (nonatomic, strong) NSString * vpic_small;
@end


@protocol ManagerModel <NSObject>
@end

@interface ManagerModel : JSONModel
@property (nonatomic, strong) NSString *newly;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *value;
@end



@protocol GarDenModel<NSObject>
@end
@interface GarDenModel : JSONModel
@property (nonatomic, strong) NSString * checkinid;
@property (nonatomic, strong) NSString * is_manager;
@property (nonatomic, strong) NSString * keywordNum;
@property (nonatomic, strong) NSString * kindergartenid;
@property (nonatomic, strong) NSString * kindergartenname;
@property (nonatomic, strong) NSString * roleID;
@property (nonatomic, strong) NSString * unread;
@property (nonatomic, strong) NSString * unique_id;
@property (nonatomic, strong) NSArray <ManagerModel> * managers; //功能开关
@property (nonatomic, strong) NSArray <ClassModel> *classes;
@end




@interface memberinfoModel : JSONModel
@property (nonatomic, strong) NSString *deviceid;
@property (nonatomic, strong) NSString *memberid;
@property (nonatomic, strong) NSString *mobile;
@property (nonatomic, strong) NSString *platform;
@property (nonatomic, strong) NSString *teacher;

@end



@interface GarDensModel : JSONModel
@property (nonatomic, strong) NSString *errcode;
@property (nonatomic, strong) NSString *errmsg;
@property (nonatomic, strong) NSArray<GarDenModel>*kindergartens;
@property (nonatomic, strong) memberinfoModel *memberinfo;
@property (nonatomic, strong) NSString *newnotice;

@end
