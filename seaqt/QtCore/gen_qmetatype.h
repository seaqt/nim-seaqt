#pragma once
#ifndef SEAQT_QTCORE_GEN_QMETATYPE_H
#define SEAQT_QTCORE_GEN_QMETATYPE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDataStream;
class QDebug;
class QMetaObject;
class QMetaType;
#else
typedef struct QDataStream QDataStream;
typedef struct QDebug QDebug;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaType QMetaType;
#endif

QMetaType* QMetaType_new();
QMetaType* QMetaType_new_type(const int type);

bool QMetaType_unregisterType(int type);
int QMetaType_registerTypedef(const char* typeName, int aliasId);
int QMetaType_registerNormalizedTypedef(struct seaqt_string normalizedTypeName, int aliasId);
int QMetaType_type_char(const char* typeName);
int QMetaType_type_QByteArray(struct seaqt_string typeName);
const char* QMetaType_typeName(int type);
int QMetaType_sizeOf_type(int type);
int QMetaType_typeFlags(int type);
QMetaObject* QMetaType_metaObjectForType(int type);
bool QMetaType_isRegistered_type(int type);
void* QMetaType_create_type(int type);
void QMetaType_destroy_type_data(int type, void* data);
void* QMetaType_construct_type_where_copy(int type, void* where, const void* copy);
void QMetaType_destruct_type_where(int type, void* where);
bool QMetaType_save(QDataStream* stream, int type, const void* data);
bool QMetaType_load(QDataStream* stream, int type, void* data);
bool QMetaType_isValid(const QMetaType* self);
bool QMetaType_isRegistered(const QMetaType* self);
int QMetaType_id(const QMetaType* self);
int QMetaType_sizeOf(const QMetaType* self);
int QMetaType_flags(const QMetaType* self);
QMetaObject* QMetaType_metaObject(const QMetaType* self);
struct seaqt_string QMetaType_name(const QMetaType* self);
void* QMetaType_create(const QMetaType* self);
void QMetaType_destroy_data(const QMetaType* self, void* data);
void* QMetaType_construct_where(const QMetaType* self, void* where);
void QMetaType_destruct_data(const QMetaType* self, void* data);
bool QMetaType_hasRegisteredComparators(int typeId);
bool QMetaType_hasRegisteredDebugStreamOperator(int typeId);
bool QMetaType_convert(const void* from, int fromTypeId, void* to, int toTypeId);
bool QMetaType_compare(const void* lhs, const void* rhs, int typeId, int* result);
bool QMetaType_equals(const void* lhs, const void* rhs, int typeId, int* result);
bool QMetaType_debugStream(QDebug* dbg, const void* rhs, int typeId);
bool QMetaType_hasRegisteredConverterFunction(int fromTypeId, int toTypeId);
void* QMetaType_create_type_copy(int type, const void* copy);
void* QMetaType_create_copy(const QMetaType* self, const void* copy);
void* QMetaType_construct_where_copy(const QMetaType* self, void* where, const void* copy);

void QMetaType_delete(QMetaType* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
