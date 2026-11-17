#pragma once
#ifndef SEAQT_QTCORE_GEN_QMETAOBJECT_H
#define SEAQT_QTCORE_GEN_QMETAOBJECT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QGenericArgument;
class QGenericReturnArgument;
class QMetaClassInfo;
class QMetaEnum;
class QMetaMethod;
class QMetaObject;
class QMetaProperty;
class QMetaType;
class QObject;
class QUntypedBindable;
class QVariant;
#else
typedef struct QGenericArgument QGenericArgument;
typedef struct QGenericReturnArgument QGenericReturnArgument;
typedef struct QMetaClassInfo QMetaClassInfo;
typedef struct QMetaEnum QMetaEnum;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaProperty QMetaProperty;
typedef struct QMetaType QMetaType;
typedef struct QObject QObject;
typedef struct QUntypedBindable QUntypedBindable;
typedef struct QVariant QVariant;
#endif

QMetaMethod* QMetaMethod_new();
QMetaMethod* QMetaMethod_new_from(QMetaMethod* from);

struct seaqt_string QMetaMethod_methodSignature(const QMetaMethod* self);
struct seaqt_string QMetaMethod_name(const QMetaMethod* self);
const char* QMetaMethod_typeName(const QMetaMethod* self);
int QMetaMethod_returnType(const QMetaMethod* self);
QMetaType* QMetaMethod_returnMetaType(const QMetaMethod* self);
int QMetaMethod_parameterCount(const QMetaMethod* self);
int QMetaMethod_parameterType(const QMetaMethod* self, int index);
QMetaType* QMetaMethod_parameterMetaType(const QMetaMethod* self, int index);
void QMetaMethod_getParameterTypes(const QMetaMethod* self, int* types);
struct seaqt_array /* of struct seaqt_string */  QMetaMethod_parameterTypes(const QMetaMethod* self);
struct seaqt_string QMetaMethod_parameterTypeName(const QMetaMethod* self, int index);
struct seaqt_array /* of struct seaqt_string */  QMetaMethod_parameterNames(const QMetaMethod* self);
const char* QMetaMethod_tag(const QMetaMethod* self);
int QMetaMethod_access(const QMetaMethod* self);
int QMetaMethod_methodType(const QMetaMethod* self);
int QMetaMethod_attributes(const QMetaMethod* self);
int QMetaMethod_methodIndex(const QMetaMethod* self);
int QMetaMethod_relativeMethodIndex(const QMetaMethod* self);
int QMetaMethod_revision(const QMetaMethod* self);
bool QMetaMethod_isConst(const QMetaMethod* self);
QMetaObject* QMetaMethod_enclosingMetaObject(const QMetaMethod* self);
bool QMetaMethod_invoke_object_connectionType_returnValue(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue);
bool QMetaMethod_invoke_object_returnValue(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue);
bool QMetaMethod_invoke_object_connectionType_val0(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0);
bool QMetaMethod_invoke_object_val0(const QMetaMethod* self, QObject* object, QGenericArgument* val0);
bool QMetaMethod_invokeOnGadget_gadget_returnValue(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue);
bool QMetaMethod_invokeOnGadget_gadget_val0(const QMetaMethod* self, void* gadget, QGenericArgument* val0);
bool QMetaMethod_isValid(const QMetaMethod* self);
bool QMetaMethod_invoke_object_connectionType_returnValue_val0(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0);
bool QMetaMethod_invoke_object_connectionType_returnValue_val0_val1(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaMethod_invoke_object_connectionType_returnValue_val0_val1_val2(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaMethod_invoke_object_connectionType_returnValue_val0_val1_val2_val3(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaMethod_invoke_object_connectionType_returnValue_val0_val1_val2_val3_val4(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaMethod_invoke_object_connectionType_returnValue_val0_val1_val2_val3_val4_val5(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaMethod_invoke_object_connectionType_returnValue_val0_val1_val2_val3_val4_val5_val6(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaMethod_invoke_object_connectionType_returnValue_val0_val1_val2_val3_val4_val5_val6_val7(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaMethod_invoke_object_connectionType_returnValue_val0_val1_val2_val3_val4_val5_val6_val7_val8(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaMethod_invoke_object_connectionType_returnValue_val0_val1_val2_val3_val4_val5_val6_val7_val8_val9(const QMetaMethod* self, QObject* object, int connectionType, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
bool QMetaMethod_invoke_object_returnValue_val0(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0);
bool QMetaMethod_invoke_object_returnValue_val0_val1(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaMethod_invoke_object_returnValue_val0_val1_val2(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaMethod_invoke_object_returnValue_val0_val1_val2_val3(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaMethod_invoke_object_returnValue_val0_val1_val2_val3_val4(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaMethod_invoke_object_returnValue_val0_val1_val2_val3_val4_val5(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaMethod_invoke_object_returnValue_val0_val1_val2_val3_val4_val5_val6(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaMethod_invoke_object_returnValue_val0_val1_val2_val3_val4_val5_val6_val7(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaMethod_invoke_object_returnValue_val0_val1_val2_val3_val4_val5_val6_val7_val8(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaMethod_invoke_object_returnValue_val0_val1_val2_val3_val4_val5_val6_val7_val8_val9(const QMetaMethod* self, QObject* object, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
bool QMetaMethod_invoke_object_connectionType_val0_val1(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaMethod_invoke_object_connectionType_val0_val1_val2(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaMethod_invoke_object_connectionType_val0_val1_val2_val3(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaMethod_invoke_object_connectionType_val0_val1_val2_val3_val4(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaMethod_invoke_object_connectionType_val0_val1_val2_val3_val4_val5(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaMethod_invoke_object_connectionType_val0_val1_val2_val3_val4_val5_val6(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaMethod_invoke_object_connectionType_val0_val1_val2_val3_val4_val5_val6_val7(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaMethod_invoke_object_connectionType_val0_val1_val2_val3_val4_val5_val6_val7_val8(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaMethod_invoke_object_connectionType_val0_val1_val2_val3_val4_val5_val6_val7_val8_val9(const QMetaMethod* self, QObject* object, int connectionType, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
bool QMetaMethod_invoke_object_val0_val1(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaMethod_invoke_object_val0_val1_val2(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaMethod_invoke_object_val0_val1_val2_val3(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaMethod_invoke_object_val0_val1_val2_val3_val4(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaMethod_invoke_object_val0_val1_val2_val3_val4_val5(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaMethod_invoke_object_val0_val1_val2_val3_val4_val5_val6(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaMethod_invoke_object_val0_val1_val2_val3_val4_val5_val6_val7(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaMethod_invoke_object_val0_val1_val2_val3_val4_val5_val6_val7_val8(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaMethod_invoke_object_val0_val1_val2_val3_val4_val5_val6_val7_val8_val9(const QMetaMethod* self, QObject* object, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
bool QMetaMethod_invokeOnGadget_gadget_returnValue_val0(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0);
bool QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1_val2(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1_val2_val3(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1_val2_val3_val4(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1_val2_val3_val4_val5(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1_val2_val3_val4_val5_val6(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1_val2_val3_val4_val5_val6_val7(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1_val2_val3_val4_val5_val6_val7_val8(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaMethod_invokeOnGadget_gadget_returnValue_val0_val1_val2_val3_val4_val5_val6_val7_val8_val9(const QMetaMethod* self, void* gadget, QGenericReturnArgument* returnValue, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
bool QMetaMethod_invokeOnGadget_gadget_val0_val1(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaMethod_invokeOnGadget_gadget_val0_val1_val2(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaMethod_invokeOnGadget_gadget_val0_val1_val2_val3(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaMethod_invokeOnGadget_gadget_val0_val1_val2_val3_val4(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaMethod_invokeOnGadget_gadget_val0_val1_val2_val3_val4_val5(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaMethod_invokeOnGadget_gadget_val0_val1_val2_val3_val4_val5_val6(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaMethod_invokeOnGadget_gadget_val0_val1_val2_val3_val4_val5_val6_val7(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaMethod_invokeOnGadget_gadget_val0_val1_val2_val3_val4_val5_val6_val7_val8(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaMethod_invokeOnGadget_gadget_val0_val1_val2_val3_val4_val5_val6_val7_val8_val9(const QMetaMethod* self, void* gadget, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);

void QMetaMethod_delete(QMetaMethod* self);

QMetaEnum* QMetaEnum_new();
QMetaEnum* QMetaEnum_new_from(QMetaEnum* from);

const char* QMetaEnum_name(const QMetaEnum* self);
const char* QMetaEnum_enumName(const QMetaEnum* self);
QMetaType* QMetaEnum_metaType(const QMetaEnum* self);
bool QMetaEnum_isFlag(const QMetaEnum* self);
bool QMetaEnum_isScoped(const QMetaEnum* self);
int QMetaEnum_keyCount(const QMetaEnum* self);
const char* QMetaEnum_key(const QMetaEnum* self, int index);
int QMetaEnum_value(const QMetaEnum* self, int index);
const char* QMetaEnum_scope(const QMetaEnum* self);
int QMetaEnum_keyToValue_key(const QMetaEnum* self, const char* key);
const char* QMetaEnum_valueToKey(const QMetaEnum* self, int value);
int QMetaEnum_keysToValue_keys(const QMetaEnum* self, const char* keys);
struct seaqt_string QMetaEnum_valueToKeys(const QMetaEnum* self, int value);
QMetaObject* QMetaEnum_enclosingMetaObject(const QMetaEnum* self);
bool QMetaEnum_isValid(const QMetaEnum* self);
int QMetaEnum_keyToValue_key_ok(const QMetaEnum* self, const char* key, bool* ok);
int QMetaEnum_keysToValue_keys_ok(const QMetaEnum* self, const char* keys, bool* ok);

void QMetaEnum_delete(QMetaEnum* self);

QMetaProperty* QMetaProperty_new();

const char* QMetaProperty_name(const QMetaProperty* self);
const char* QMetaProperty_typeName(const QMetaProperty* self);
int QMetaProperty_type(const QMetaProperty* self);
int QMetaProperty_userType(const QMetaProperty* self);
int QMetaProperty_typeId(const QMetaProperty* self);
QMetaType* QMetaProperty_metaType(const QMetaProperty* self);
int QMetaProperty_propertyIndex(const QMetaProperty* self);
int QMetaProperty_relativePropertyIndex(const QMetaProperty* self);
bool QMetaProperty_isReadable(const QMetaProperty* self);
bool QMetaProperty_isWritable(const QMetaProperty* self);
bool QMetaProperty_isResettable(const QMetaProperty* self);
bool QMetaProperty_isDesignable(const QMetaProperty* self);
bool QMetaProperty_isScriptable(const QMetaProperty* self);
bool QMetaProperty_isStored(const QMetaProperty* self);
bool QMetaProperty_isUser(const QMetaProperty* self);
bool QMetaProperty_isConstant(const QMetaProperty* self);
bool QMetaProperty_isFinal(const QMetaProperty* self);
bool QMetaProperty_isRequired(const QMetaProperty* self);
bool QMetaProperty_isBindable(const QMetaProperty* self);
bool QMetaProperty_isFlagType(const QMetaProperty* self);
bool QMetaProperty_isEnumType(const QMetaProperty* self);
QMetaEnum* QMetaProperty_enumerator(const QMetaProperty* self);
bool QMetaProperty_hasNotifySignal(const QMetaProperty* self);
QMetaMethod* QMetaProperty_notifySignal(const QMetaProperty* self);
int QMetaProperty_notifySignalIndex(const QMetaProperty* self);
int QMetaProperty_revision(const QMetaProperty* self);
QVariant* QMetaProperty_read(const QMetaProperty* self, QObject* obj);
bool QMetaProperty_write(const QMetaProperty* self, QObject* obj, QVariant* value);
bool QMetaProperty_reset(const QMetaProperty* self, QObject* obj);
QUntypedBindable* QMetaProperty_bindable(const QMetaProperty* self, QObject* object);
QVariant* QMetaProperty_readOnGadget(const QMetaProperty* self, const void* gadget);
bool QMetaProperty_writeOnGadget(const QMetaProperty* self, void* gadget, QVariant* value);
bool QMetaProperty_resetOnGadget(const QMetaProperty* self, void* gadget);
bool QMetaProperty_hasStdCppSet(const QMetaProperty* self);
bool QMetaProperty_isAlias(const QMetaProperty* self);
bool QMetaProperty_isValid(const QMetaProperty* self);
QMetaObject* QMetaProperty_enclosingMetaObject(const QMetaProperty* self);

void QMetaProperty_delete(QMetaProperty* self);

QMetaClassInfo* QMetaClassInfo_new();
QMetaClassInfo* QMetaClassInfo_new_from(QMetaClassInfo* from);

const char* QMetaClassInfo_name(const QMetaClassInfo* self);
const char* QMetaClassInfo_value(const QMetaClassInfo* self);
QMetaObject* QMetaClassInfo_enclosingMetaObject(const QMetaClassInfo* self);

void QMetaClassInfo_delete(QMetaClassInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
