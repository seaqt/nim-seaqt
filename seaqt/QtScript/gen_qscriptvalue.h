#pragma once
#ifndef SEAQT_QTSCRIPT_GEN_QSCRIPTVALUE_H
#define SEAQT_QTSCRIPT_GEN_QSCRIPTVALUE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDateTime;
class QMetaObject;
class QObject;
class QRegExp;
class QScriptClass;
class QScriptEngine;
class QScriptString;
class QScriptValue;
class QVariant;
#else
typedef struct QDateTime QDateTime;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRegExp QRegExp;
typedef struct QScriptClass QScriptClass;
typedef struct QScriptEngine QScriptEngine;
typedef struct QScriptString QScriptString;
typedef struct QScriptValue QScriptValue;
typedef struct QVariant QVariant;
#endif

QScriptValue* QScriptValue_new();
QScriptValue* QScriptValue_new_QScriptValue(QScriptValue* from);
QScriptValue* QScriptValue_new_QScriptEngine_QScriptValue_SpecialValue(QScriptEngine* engine, int val);
QScriptValue* QScriptValue_new_QScriptEngine_bool(QScriptEngine* engine, bool val);
QScriptValue* QScriptValue_new_QScriptEngine_int(QScriptEngine* engine, int val);
QScriptValue* QScriptValue_new_QScriptEngine_uint(QScriptEngine* engine, unsigned int val);
QScriptValue* QScriptValue_new_QScriptEngine_qsreal(QScriptEngine* engine, double val);
QScriptValue* QScriptValue_new_QScriptEngine_QString(QScriptEngine* engine, struct seaqt_string val);
QScriptValue* QScriptValue_new_QScriptEngine_char(QScriptEngine* engine, const char* val);
QScriptValue* QScriptValue_new_QScriptValue_SpecialValue(int value);
QScriptValue* QScriptValue_new_bool(bool value);
QScriptValue* QScriptValue_new_int(int value);
QScriptValue* QScriptValue_new_uint(unsigned int value);
QScriptValue* QScriptValue_new_qsreal(double value);
QScriptValue* QScriptValue_new_QString(struct seaqt_string value);
QScriptValue* QScriptValue_new_char(const char* value);

void QScriptValue_operatorAssign(QScriptValue* self, QScriptValue* from);
QScriptEngine* QScriptValue_engine(const QScriptValue* self);
bool QScriptValue_isValid(const QScriptValue* self);
bool QScriptValue_isBool(const QScriptValue* self);
bool QScriptValue_isBoolean(const QScriptValue* self);
bool QScriptValue_isNumber(const QScriptValue* self);
bool QScriptValue_isFunction(const QScriptValue* self);
bool QScriptValue_isNull(const QScriptValue* self);
bool QScriptValue_isString(const QScriptValue* self);
bool QScriptValue_isUndefined(const QScriptValue* self);
bool QScriptValue_isVariant(const QScriptValue* self);
bool QScriptValue_isQObject(const QScriptValue* self);
bool QScriptValue_isQMetaObject(const QScriptValue* self);
bool QScriptValue_isObject(const QScriptValue* self);
bool QScriptValue_isDate(const QScriptValue* self);
bool QScriptValue_isRegExp(const QScriptValue* self);
bool QScriptValue_isArray(const QScriptValue* self);
bool QScriptValue_isError(const QScriptValue* self);
struct seaqt_string QScriptValue_toString(const QScriptValue* self);
double QScriptValue_toNumber(const QScriptValue* self);
bool QScriptValue_toBool(const QScriptValue* self);
bool QScriptValue_toBoolean(const QScriptValue* self);
double QScriptValue_toInteger(const QScriptValue* self);
int QScriptValue_toInt32(const QScriptValue* self);
unsigned int QScriptValue_toUInt32(const QScriptValue* self);
unsigned short QScriptValue_toUInt16(const QScriptValue* self);
QVariant* QScriptValue_toVariant(const QScriptValue* self);
QObject* QScriptValue_toQObject(const QScriptValue* self);
QMetaObject* QScriptValue_toQMetaObject(const QScriptValue* self);
QScriptValue* QScriptValue_toObject(const QScriptValue* self);
QDateTime* QScriptValue_toDateTime(const QScriptValue* self);
QRegExp* QScriptValue_toRegExp(const QScriptValue* self);
bool QScriptValue_instanceOf(const QScriptValue* self, QScriptValue* other);
bool QScriptValue_lessThan(const QScriptValue* self, QScriptValue* other);
bool QScriptValue_equals(const QScriptValue* self, QScriptValue* other);
bool QScriptValue_strictlyEquals(const QScriptValue* self, QScriptValue* other);
QScriptValue* QScriptValue_prototype(const QScriptValue* self);
void QScriptValue_setPrototype(QScriptValue* self, QScriptValue* prototype);
QScriptValue* QScriptValue_scope(const QScriptValue* self);
void QScriptValue_setScope(QScriptValue* self, QScriptValue* scope);
QScriptValue* QScriptValue_property_QString(const QScriptValue* self, struct seaqt_string name);
void QScriptValue_setProperty_QString_QScriptValue(QScriptValue* self, struct seaqt_string name, QScriptValue* value);
QScriptValue* QScriptValue_property_quint32(const QScriptValue* self, unsigned int arrayIndex);
void QScriptValue_setProperty_quint32_QScriptValue(QScriptValue* self, unsigned int arrayIndex, QScriptValue* value);
QScriptValue* QScriptValue_property_QScriptString(const QScriptValue* self, QScriptString* name);
void QScriptValue_setProperty_QScriptString_QScriptValue(QScriptValue* self, QScriptString* name, QScriptValue* value);
int QScriptValue_propertyFlags_QString(const QScriptValue* self, struct seaqt_string name);
int QScriptValue_propertyFlags_QScriptString(const QScriptValue* self, QScriptString* name);
QScriptValue* QScriptValue_call(QScriptValue* self);
QScriptValue* QScriptValue_call_thisObject_arguments(QScriptValue* self, QScriptValue* thisObject, QScriptValue* arguments);
QScriptValue* QScriptValue_construct(QScriptValue* self);
QScriptValue* QScriptValue_construct_arguments(QScriptValue* self, QScriptValue* arguments);
QScriptValue* QScriptValue_data(const QScriptValue* self);
void QScriptValue_setData(QScriptValue* self, QScriptValue* data);
QScriptClass* QScriptValue_scriptClass(const QScriptValue* self);
void QScriptValue_setScriptClass(QScriptValue* self, QScriptClass* scriptClass);
long long QScriptValue_objectId(const QScriptValue* self);
QScriptValue* QScriptValue_property_QString_QScriptValue_ResolveFlags(const QScriptValue* self, struct seaqt_string name, int* mode);
void QScriptValue_setProperty_QString_QScriptValue_QScriptValue_PropertyFlags(QScriptValue* self, struct seaqt_string name, QScriptValue* value, int* flags);
QScriptValue* QScriptValue_property_quint32_QScriptValue_ResolveFlags(const QScriptValue* self, unsigned int arrayIndex, int* mode);
void QScriptValue_setProperty_quint32_QScriptValue_QScriptValue_PropertyFlags(QScriptValue* self, unsigned int arrayIndex, QScriptValue* value, int* flags);
QScriptValue* QScriptValue_property_QScriptString_QScriptValue_ResolveFlags(const QScriptValue* self, QScriptString* name, int* mode);
void QScriptValue_setProperty_QScriptString_QScriptValue_QScriptValue_PropertyFlags(QScriptValue* self, QScriptString* name, QScriptValue* value, int* flags);
int QScriptValue_propertyFlags_QString_QScriptValue_ResolveFlags(const QScriptValue* self, struct seaqt_string name, int* mode);
int QScriptValue_propertyFlags_QScriptString_QScriptValue_ResolveFlags(const QScriptValue* self, QScriptString* name, int* mode);
QScriptValue* QScriptValue_call_thisObject(QScriptValue* self, QScriptValue* thisObject);
QScriptValue* QScriptValue_call_thisObject_args(QScriptValue* self, QScriptValue* thisObject, struct seaqt_array /* of QScriptValue* */  args);
QScriptValue* QScriptValue_construct_args(QScriptValue* self, struct seaqt_array /* of QScriptValue* */  args);

void QScriptValue_delete(QScriptValue* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
