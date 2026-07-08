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
class QPartialOrdering;
#else
typedef struct QDataStream QDataStream;
typedef struct QDebug QDebug;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaType QMetaType;
typedef struct QPartialOrdering QPartialOrdering;
#endif

QMetaType* QMetaType_new_type(int type);
QMetaType* QMetaType_new_d(const void* d);
QMetaType* QMetaType_new();
QMetaType* QMetaType_new_from(QMetaType* from);

void QMetaType_registerNormalizedTypedef(struct seaqt_string normalizedTypeName, QMetaType* type);
int QMetaType_type_char(const char* typeName);
int QMetaType_type_QByteArray(struct seaqt_string typeName);
const char* QMetaType_typeName(int type);
int QMetaType_sizeOf_type(int type);
int QMetaType_typeFlags(int type);
QMetaObject* QMetaType_metaObjectForType(int type);
void* QMetaType_create_type(int type);
void QMetaType_destroy_type_data(int type, void* data);
void* QMetaType_construct_type_where_copy(int type, void* where, const void* copy);
void QMetaType_destruct_type_where(int type, void* where);
bool QMetaType_isRegistered_type(int type);
bool QMetaType_isValid(const QMetaType* self);
bool QMetaType_isRegistered(const QMetaType* self);
int QMetaType_id(const QMetaType* self);
ptrdiff_t QMetaType_sizeOf(const QMetaType* self);
ptrdiff_t QMetaType_alignOf(const QMetaType* self);
int QMetaType_flags(const QMetaType* self);
QMetaObject* QMetaType_metaObject(const QMetaType* self);
const char* QMetaType_name(const QMetaType* self);
void* QMetaType_create(const QMetaType* self);
void QMetaType_destroy_data(const QMetaType* self, void* data);
void* QMetaType_construct_where(const QMetaType* self, void* where);
void QMetaType_destruct_data(const QMetaType* self, void* data);
QPartialOrdering* QMetaType_compare_lhs_rhs(const QMetaType* self, const void* lhs, const void* rhs);
bool QMetaType_equals_lhs_rhs(const QMetaType* self, const void* lhs, const void* rhs);
bool QMetaType_isEqualityComparable(const QMetaType* self);
bool QMetaType_isOrdered(const QMetaType* self);
bool QMetaType_save_stream_data(const QMetaType* self, QDataStream* stream, const void* data);
bool QMetaType_load_stream_data(const QMetaType* self, QDataStream* stream, void* data);
bool QMetaType_hasRegisteredDataStreamOperators(const QMetaType* self);
bool QMetaType_save_stream_type_data(QDataStream* stream, int type, const void* data);
bool QMetaType_load_stream_type_data(QDataStream* stream, int type, void* data);
QMetaType* QMetaType_fromName(struct seaqt_string name);
bool QMetaType_debugStream_dbg_rhs(QMetaType* self, QDebug* dbg, const void* rhs);
bool QMetaType_hasRegisteredDebugStreamOperator(const QMetaType* self);
bool QMetaType_debugStream_dbg_rhs_typeId(QDebug* dbg, const void* rhs, int typeId);
bool QMetaType_hasRegisteredDebugStreamOperator_typeId(int typeId);
bool QMetaType_convert_fromType_from_toType_to(QMetaType* fromType, const void* from, QMetaType* toType, void* to);
bool QMetaType_canConvert(QMetaType* fromType, QMetaType* toType);
bool QMetaType_view(QMetaType* fromType, void* from, QMetaType* toType, void* to);
bool QMetaType_canView(QMetaType* fromType, QMetaType* toType);
bool QMetaType_convert_from_fromTypeId_to_toTypeId(const void* from, int fromTypeId, void* to, int toTypeId);
bool QMetaType_compare_lhs_rhs_typeId_result(const void* lhs, const void* rhs, int typeId, int* result);
bool QMetaType_equals_lhs_rhs_typeId_result(const void* lhs, const void* rhs, int typeId, int* result);
bool QMetaType_hasRegisteredConverterFunction(QMetaType* fromType, QMetaType* toType);
bool QMetaType_hasRegisteredMutableViewFunction(QMetaType* fromType, QMetaType* toType);
void QMetaType_unregisterConverterFunction(QMetaType* from, QMetaType* to);
void QMetaType_unregisterMutableViewFunction(QMetaType* from, QMetaType* to);
void QMetaType_unregisterMetaType(QMetaType* type);
const void* QMetaType_iface(QMetaType* self);
const void* QMetaType_iface_const(const QMetaType* self);
void* QMetaType_create_type_copy(int type, const void* copy);
int QMetaType_id_int(const QMetaType* self, int param1);
void* QMetaType_create_copy(const QMetaType* self, const void* copy);
void* QMetaType_construct_where_copy(const QMetaType* self, void* where, const void* copy);

void QMetaType_delete(QMetaType* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
