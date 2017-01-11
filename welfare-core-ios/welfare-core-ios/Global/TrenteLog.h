//
//  TrenteLog.h
//  bienban-ios
//
//  Created by C Anh on 12/1/15.
//  Copyright © 2015 TrenteVietNam. All rights reserved.
//

#ifndef TrenteLog_h
#define TrenteLog_h

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

#pragma mark ------------------------------- interface -------------------------------

#if TARGET_OS_IPHONE
    #define TrenteEdgeInsets    UIEdgeInsets
    #define TrenteOffset        UIOffset
    #define valueWithTrenteOffset   valueWithUIOffset
    #define valueWithTrenteEdgeInsets   valueWithUIEdgeInsets

#endif

#define stringify               __STRING
#define TrenteType(var)             __typeof__((var))
#define TrenteBox(var)              __trente_box(@encode(TrenteType(var)), (var))
#define TrenteBoxToString(var)      [TrenteBox(var) description]
#define TrenteTypeStringOfVar(var)  __trente_type_string_for_var(@encode(TrenteType(var)), (var))


#ifdef DEBUG
#define TrentePrintf(fmt, ...)  printf("TRENTE LOG %s + %d TRENTE LOG: %s\n", __PRETTY_FUNCTION__, __LINE__, [[NSString stringWithFormat:fmt, ##__VA_ARGS__]UTF8String])
#define TrenteDBAnyVar(var)     TrentePrintf(@"%s = %@", #var, TrenteBox(var))
#define TrentePrintAnything(x)  printf("TRENTE LOG %s + %d TRENTE LOG: %s\n", __PRETTY_FUNCTION__, __LINE__, #x)
#define TrenteDBObjectAsJson(obj)   printf("TRENTE LOG %s + %d TRENTE LOG: %s\n", __PRETTY_FUNCTION__, __LINE__, __trente_json_db_object_string(obj).UTF8String)
#define TrenteDBObjectAsXml(obj)    printf("TRENTE LOG %s + %d TRENTE LOG: %s\n", __PRETTY_FUNCTION__, __LINE__, __trente_xml_db_object_string(obj).UTF8String)
#define TrenteDBViewHierarchy(view) printf("TRENTE LOG %s + %d TRENTE LOG: %s =\n%s\n", __PRETTY_FUNCTION__, __LINE__, #view, TrenteViewHierarchyDescription(view).UTF8String)
#else
#define TrentePrintf(fmt, ...)
#define TrenteDBAnyVar(any)
#define TrentePrintAnything(x)
#define TrenteDBObjectAsJson(obj)
#define TrenteDBObjectAsXml(obj)
#define TrenteDBViewHierarchy(view)
#endif
#pragma mark ------------------------------- implementation -------------------------------

static inline id __trente_box(const char * type, ...)
{
    va_list variable_param_list;
    va_start(variable_param_list, type);
    
    id object = nil;
    
    if (strcmp(type, @encode(id)) == 0) {
        id param = va_arg(variable_param_list, id);
        object = param;
    }
    else if (strcmp(type, @encode(CGPoint)) == 0) {
        CGPoint param = (CGPoint)va_arg(variable_param_list, CGPoint);
        object = [NSValue valueWithCGPoint:param];
    }
    else if (strcmp(type, @encode(CGSize)) == 0) {
        CGSize param = (CGSize)va_arg(variable_param_list, CGSize);
        object = [NSValue valueWithCGSize:param];
    }
    else if (strcmp(type, @encode(CGVector)) == 0) {
        CGVector param = (CGVector)va_arg(variable_param_list, CGVector);
        object = [NSValue valueWithCGVector:param];
    }
    else if (strcmp(type, @encode(CGRect)) == 0) {
        CGRect param = (CGRect)va_arg(variable_param_list, CGRect);
        object = [NSValue valueWithCGRect:param];
    }
    else if (strcmp(type, @encode(NSRange)) == 0) {
        NSRange param = (NSRange)va_arg(variable_param_list, NSRange);
        object = [NSValue valueWithRange:param];
    }
    else if (strcmp(type, @encode(CFRange)) == 0) {
        CFRange param = (CFRange)va_arg(variable_param_list, CFRange);
        object = [NSValue value:&param withObjCType:type];
    }
    else if (strcmp(type, @encode(CGAffineTransform)) == 0) {
        CGAffineTransform param = (CGAffineTransform)va_arg(variable_param_list, CGAffineTransform);
        object = [NSValue valueWithCGAffineTransform:param];
    }
    else if (strcmp(type, @encode(CATransform3D)) == 0) {
        CATransform3D param = (CATransform3D)va_arg(variable_param_list, CATransform3D);
        object = [NSValue valueWithCATransform3D:param];
    }
    else if (strcmp(type, @encode(SEL)) == 0) {
        SEL param = (SEL)va_arg(variable_param_list, SEL);
        object = NSStringFromSelector(param);
    }
    else if (strcmp(type, @encode(Class)) == 0) {
        Class param = (Class)va_arg(variable_param_list, Class);
        object = NSStringFromClass(param);
    }
    else if (strcmp(type, @encode(TrenteOffset)) == 0) {
        TrenteOffset param = (TrenteOffset)va_arg(variable_param_list, TrenteOffset);
        object = [NSValue valueWithTrenteOffset:param];
    }
    else if (strcmp(type, @encode(TrenteEdgeInsets)) == 0) {
        TrenteEdgeInsets param = (TrenteEdgeInsets)va_arg(variable_param_list, TrenteEdgeInsets);
        object = [NSValue valueWithTrenteEdgeInsets:param];
    }
    else if (strcmp(type, @encode(short)) == 0) {
        short param = (short)va_arg(variable_param_list, int);
        object = @(param);
    }
    else if (strcmp(type, @encode(int)) == 0) {
        int param = (int)va_arg(variable_param_list, int);
        object = @(param);
    }
    else if (strcmp(type, @encode(long)) == 0) {
        long param = (long)va_arg(variable_param_list, long);
        object = @(param);
    }
    else if (strcmp(type, @encode(long long)) == 0) {
        long long param = (long long)va_arg(variable_param_list, long long);
        object = @(param);
    }
    else if (strcmp(type, @encode(float)) == 0) {
        float param = (float)va_arg(variable_param_list, double);
        object = @(param);
    }
    else if (strcmp(type, @encode(double)) == 0) {
        double param = (double)va_arg(variable_param_list, double);
        object = @(param);
    }
    else if (strcmp(type, @encode(BOOL)) == 0) {
        BOOL param = (BOOL)va_arg(variable_param_list, int);
        object = param ? @"YES" : @"NO";
    }
    else if (strcmp(type, @encode(bool)) == 0) {
        bool param = (bool)va_arg(variable_param_list, int);
        object = param ? @"true" : @"false";
    }
    else if (strcmp(type, @encode(char)) == 0) {
        char param = (char)va_arg(variable_param_list, int);
        object = [NSString stringWithFormat:@"%c", param];
    }
    else if (strcmp(type, @encode(unsigned short)) == 0) {
        unsigned short param = (unsigned short)va_arg(variable_param_list, unsigned int);
        object = @(param);
    }
    else if (strcmp(type, @encode(unsigned int)) == 0) {
        unsigned int param = (unsigned int)va_arg(variable_param_list, unsigned int);
        object = @(param);
    }
    else if (strcmp(type, @encode(unsigned long)) == 0) {
        unsigned long param = (unsigned long)va_arg(variable_param_list, unsigned long);
        object = @(param);
    }
    else if (strcmp(type, @encode(unsigned long long)) == 0) {
        unsigned long long param = (unsigned long long)va_arg(variable_param_list, unsigned long long);
        object = @(param);
    }
    else if (strcmp(type, @encode(unsigned char)) == 0) {
        unsigned char param = (unsigned char)va_arg(variable_param_list, unsigned int);
        object = [NSString stringWithFormat:@"%c", param];
    }
    else {
        void * param = (void *)va_arg(variable_param_list, void *);
        object = [NSString stringWithFormat:@"%p", param];
    }
    
    va_end(variable_param_list);
    
    return object;
}
static inline char __trente_first_char_for_string(const char * string)
{
    if (strlen(string) > 0) {
        return string[0];
    }
    else {
        return '\0';
    }
}
static inline char __trente_last_char_for_string(const char * string)
{
    if (strlen(string) > 0) {
        return string[strlen(string) - 1];
    }
    else {
        return '\0';
    }
}
static inline NSString * __trente_type_string_for_var(const char * type, ...)
{
    va_list variable_param_list;
    va_start(variable_param_list, type);
    
    NSString * typeString = nil;
    
    if (strcmp(type, @encode(id)) == 0) {
        
        id param = va_arg(variable_param_list, id);
        typeString = NSStringFromClass([param class]);
    }
    else if (strcmp(type, @encode(CGPoint)) == 0) {
        
        typeString = @stringify(CGPoint);
    }
    else if (strcmp(type, @encode(CGSize)) == 0) {
        
        typeString = @stringify(CGSize);
    }
    else if (strcmp(type, @encode(CGVector)) == 0) {
        
        typeString = @stringify(CGVector);
    }
    else if (strcmp(type, @encode(CGRect)) == 0) {
        
        typeString = @stringify(CGRect);
    }
    else if (strcmp(type, @encode(NSRange)) == 0) {
        
        typeString = @stringify(NSRange);
    }
    else if (strcmp(type, @encode(CFRange)) == 0) {
        
        typeString = @stringify(CFRange);
    }
    else if (strcmp(type, @encode(CGAffineTransform)) == 0) {
        
        typeString = @stringify(CGAffineTransform);
    }
    else if (strcmp(type, @encode(CATransform3D)) == 0) {
        
        typeString = @stringify(CATransform3D);
    }
    else if (strcmp(type, @encode(SEL)) == 0) {
        
        typeString = @stringify(SEL);
    }
    else if (strcmp(type, @encode(Class)) == 0) {
        
        typeString = @stringify(Class);
    }
    else if (strcmp(type, @encode(TrenteOffset)) == 0) {
        
        typeString = @stringify(TrenteOffset);
    }
    else if (strcmp(type, @encode(TrenteEdgeInsets)) == 0) {
        
        typeString = @stringify(TrenteEdgeInsets);
    }
    else if (strcmp(type, @encode(short)) == 0) {
        
        typeString = @stringify(short);
    }
    else if (strcmp(type, @encode(int)) == 0) {
        
        typeString = @stringify(int);
    }
    else if (strcmp(type, @encode(long)) == 0) {
        
        typeString = @stringify(long);
    }
    else if (strcmp(type, @encode(long long)) == 0) {
        
        typeString = @stringify(long long);
    }
    else if (strcmp(type, @encode(float)) == 0) {
        
        typeString = @stringify(float);
    }
    else if (strcmp(type, @encode(double)) == 0) {
        
        typeString = @stringify(double);
    }
    else if (strcmp(type, @encode(long double)) == 0) {
        
        typeString = @stringify(long double);
    }
    else if (strcmp(type, @encode(BOOL)) == 0) {
        
        typeString = @stringify(BOOL);
    }
    else if (strcmp(type, @encode(bool)) == 0) {
        
        typeString = @stringify(bool);
    }
    else if (strcmp(type, @encode(char)) == 0) {
        
        typeString = @stringify(char);
    }
    else if (strcmp(type, @encode(unsigned short)) == 0) {
        
        typeString = @stringify(unsigned short);
    }
    else if (strcmp(type, @encode(unsigned int)) == 0) {
        
        typeString = @stringify(unsigned int);
    }
    else if (strcmp(type, @encode(unsigned long)) == 0) {
        
        typeString = @stringify(unsigned long);
    }
    else if (strcmp(type, @encode(unsigned long long)) == 0) {
        
        typeString = @stringify(unsigned long long);
    }
    else if (strcmp(type, @encode(unsigned char)) == 0) {
        
        typeString = @stringify(unsigned char);
    }
    else if (strcmp(type, @encode(char *)) == 0) {
        
        typeString = @stringify(char *);
    }
    else if (strcmp(type, @encode(void)) == 0) {
        
        typeString = @stringify(void);
    }
    else if (strcmp(type, @encode(void *)) == 0) {
        
        typeString = @stringify(void *);
    }
    else if (__trente_first_char_for_string(type) == '[' && __trente_last_char_for_string(type) == ']') {
        
        typeString = @stringify(array);
    }
    else if (__trente_first_char_for_string(type) == '{' && __trente_last_char_for_string(type) == '}') {
        
        typeString = @stringify(struct);
    }
    else if (__trente_first_char_for_string(type) == '(' && __trente_last_char_for_string(type) == ')') {
        
        typeString = @stringify(union);
    }
    else if (__trente_first_char_for_string(type) == '^') {
        
        typeString = @stringify(pointer);
    }
    else if (__trente_first_char_for_string(type) == 'b') {
        
        typeString = @stringify(bit_field);
    }
    else if (strcmp(type, "?") == 0) {
        
        typeString = @stringify(unknown_type);
    }
    else {
        typeString = @"TrenteDBAnything：Can not distinguish temporarily!😂";
    }
    
    va_end(variable_param_list);
    
    return typeString;
}
static NSObject * __trente_stringify_object_value(NSObject * object)
{
    if ([object isKindOfClass:[NSArray class]]) {
        
        NSMutableArray * arrayObject = [NSMutableArray array];
        
        for (id obj in (NSArray *)object) {
            [arrayObject addObject:__trente_stringify_object_value(obj)];
        }
        
        return [NSArray arrayWithArray:arrayObject];
    }
    else if ([object isKindOfClass:[NSDictionary class]]) {
        
        NSMutableDictionary * dictionaryObject = [NSMutableDictionary dictionary];
        
        [(NSDictionary *)object enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            
            [dictionaryObject setValue:__trente_stringify_object_value(obj) forKey:TrenteBoxToString(key)];
        }];
        
        return [NSDictionary dictionaryWithDictionary:dictionaryObject];
    }
    else if ([object isKindOfClass:[NSSet class]]) {
        
        NSMutableArray * arrayObject = [NSMutableArray array];
        
        for (id obj in (NSSet *)object) {
            [arrayObject addObject:__trente_stringify_object_value(obj)];
        }
        
        return [NSArray arrayWithArray:arrayObject];
    }
    else if ([object isKindOfClass:[NSOrderedSet class]]) {
        
        NSMutableArray * arrayObject = [NSMutableArray array];
        
        for (id obj in (NSOrderedSet *)object) {
            
            [arrayObject addObject:__trente_stringify_object_value(obj)];
        }
        
        return [NSArray arrayWithArray:arrayObject];
    }
    else {
        
        return TrenteBoxToString(object);
    }
}

#endif /* TrenteLog_h */