#pragma once
#ifndef SEAQT_QTCORE_GEN_QOBJECTDEFS_H
#define SEAQT_QTCORE_GEN_QOBJECTDEFS_H

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
class QMetaMethodArgument;
class QMetaMethodReturnArgument;
class QMetaObject;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#else
class QMetaObject__Connection;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Data)
typedef QMetaObject::Data QMetaObject__Data;
#else
class QMetaObject__Data;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__SuperData)
typedef QMetaObject::SuperData QMetaObject__SuperData;
#else
class QMetaObject__SuperData;
#endif
class QMetaProperty;
class QMetaType;
class QMethodRawArguments;
class QObject;
#else
typedef struct QGenericArgument QGenericArgument;
typedef struct QGenericReturnArgument QGenericReturnArgument;
typedef struct QMetaClassInfo QMetaClassInfo;
typedef struct QMetaEnum QMetaEnum;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaMethodArgument QMetaMethodArgument;
typedef struct QMetaMethodReturnArgument QMetaMethodReturnArgument;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QMetaObject__Data QMetaObject__Data;
typedef struct QMetaObject__SuperData QMetaObject__SuperData;
typedef struct QMetaProperty QMetaProperty;
typedef struct QMetaType QMetaType;
typedef struct QMethodRawArguments QMethodRawArguments;
typedef struct QObject QObject;
#endif

void QMethodRawArguments_delete(QMethodRawArguments* self);

QGenericArgument* QGenericArgument_new();
QGenericArgument* QGenericArgument_new_from(QGenericArgument* from);
QGenericArgument* QGenericArgument_new_aName(const char* aName);
QGenericArgument* QGenericArgument_new_aName_aData(const char* aName, const void* aData);

void* QGenericArgument_data(const QGenericArgument* self);
const char* QGenericArgument_name(const QGenericArgument* self);

void QGenericArgument_delete(QGenericArgument* self);

QGenericReturnArgument* QGenericReturnArgument_new();
QGenericReturnArgument* QGenericReturnArgument_new_from(QGenericReturnArgument* from);
QGenericReturnArgument* QGenericReturnArgument_new_aName(const char* aName);
QGenericReturnArgument* QGenericReturnArgument_new_aName_aData(const char* aName, void* aData);

void QGenericReturnArgument_virtbase(QGenericReturnArgument* src, QGenericArgument** outptr_QGenericArgument);
void QGenericReturnArgument_delete(QGenericReturnArgument* self);

const void* QMetaMethodArgument_metaType(const QMetaMethodArgument* self);
void QMetaMethodArgument_setMetaType(QMetaMethodArgument* self, const void* metaType);
const char* QMetaMethodArgument_name(const QMetaMethodArgument* self);
void QMetaMethodArgument_setName(QMetaMethodArgument* self, const char* name);

void QMetaMethodArgument_delete(QMetaMethodArgument* self);

QMetaMethodReturnArgument* QMetaMethodReturnArgument_new();
QMetaMethodReturnArgument* QMetaMethodReturnArgument_new_from(QMetaMethodReturnArgument* from);

const void* QMetaMethodReturnArgument_metaType(const QMetaMethodReturnArgument* self);
void QMetaMethodReturnArgument_setMetaType(QMetaMethodReturnArgument* self, const void* metaType);
const char* QMetaMethodReturnArgument_name(const QMetaMethodReturnArgument* self);
void QMetaMethodReturnArgument_setName(QMetaMethodReturnArgument* self, const char* name);

void QMetaMethodReturnArgument_delete(QMetaMethodReturnArgument* self);

QMetaObject* QMetaObject_new();
QMetaObject* QMetaObject_new_from(QMetaObject* from);

const char* QMetaObject_className(const QMetaObject* self);
QMetaObject* QMetaObject_superClass(const QMetaObject* self);
bool QMetaObject_inherits(const QMetaObject* self, QMetaObject* metaObject);
QObject* QMetaObject_cast_const_pQObject(const QMetaObject* self, QObject* obj);
QObject* QMetaObject_cast_const_pcQObject(const QMetaObject* self, QObject* obj);
struct seaqt_string QMetaObject_tr_s_c(const QMetaObject* self, const char* s, const char* c);
QMetaType* QMetaObject_metaType(const QMetaObject* self);
int QMetaObject_methodOffset(const QMetaObject* self);
int QMetaObject_enumeratorOffset(const QMetaObject* self);
int QMetaObject_propertyOffset(const QMetaObject* self);
int QMetaObject_classInfoOffset(const QMetaObject* self);
int QMetaObject_constructorCount(const QMetaObject* self);
int QMetaObject_methodCount(const QMetaObject* self);
int QMetaObject_enumeratorCount(const QMetaObject* self);
int QMetaObject_propertyCount(const QMetaObject* self);
int QMetaObject_classInfoCount(const QMetaObject* self);
int QMetaObject_indexOfConstructor(const QMetaObject* self, const char* constructor);
int QMetaObject_indexOfMethod(const QMetaObject* self, const char* method);
int QMetaObject_indexOfSignal(const QMetaObject* self, const char* signal);
int QMetaObject_indexOfSlot(const QMetaObject* self, const char* slot);
int QMetaObject_indexOfEnumerator(const QMetaObject* self, const char* name);
int QMetaObject_indexOfProperty(const QMetaObject* self, const char* name);
int QMetaObject_indexOfClassInfo(const QMetaObject* self, const char* name);
QMetaMethod* QMetaObject_constructor(const QMetaObject* self, int index);
QMetaMethod* QMetaObject_method(const QMetaObject* self, int index);
QMetaEnum* QMetaObject_enumerator(const QMetaObject* self, int index);
QMetaProperty* QMetaObject_property(const QMetaObject* self, int index);
QMetaClassInfo* QMetaObject_classInfo(const QMetaObject* self, int index);
QMetaProperty* QMetaObject_userProperty(const QMetaObject* self);
bool QMetaObject_checkConnectArgs_char_char(const char* signal, const char* method);
bool QMetaObject_checkConnectArgs_QMetaMethod_QMetaMethod(QMetaMethod* signal, QMetaMethod* method);
struct seaqt_string QMetaObject_normalizedSignature(const char* method);
struct seaqt_string QMetaObject_normalizedType(const char* type);
QMetaObject__Connection* QMetaObject_connect_sender_signal_index_receiver_method_index(QObject* sender, int signal_index, QObject* receiver, int method_index);
bool QMetaObject_disconnect(QObject* sender, int signal_index, QObject* receiver, int method_index);
bool QMetaObject_disconnectOne(QObject* sender, int signal_index, QObject* receiver, int method_index);
void QMetaObject_connectSlotsByName(QObject* o);
void QMetaObject_activate_QObject_int_void(QObject* sender, int signal_index, void** argv);
void QMetaObject_activate_QObject_QMetaObject_int_void(QObject* sender, QMetaObject* param2, int local_signal_index, void** argv);
void QMetaObject_activate_QObject_int_int_void(QObject* sender, int signal_offset, int local_signal_index, void** argv);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret);
bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument(QObject* obj, const char* member, QGenericReturnArgument* ret);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0);
bool QMetaObject_invokeMethod_QObject_char_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0);
QObject* QMetaObject_newInstance_val0(const QMetaObject* self, QGenericArgument* val0);
int QMetaObject_static_metacall(const QMetaObject* self, int param1, int param2, void** param3);
int QMetaObject_metacall(QObject* param1, int param2, int param3, void** param4);
void QMetaObject_operatorAssign(QMetaObject* self, QMetaObject* from);
struct seaqt_string QMetaObject_tr_s_c_n(const QMetaObject* self, const char* s, const char* c, int n);
QMetaObject__Connection* QMetaObject_connect_sender_signal_index_receiver_method_index_type(QObject* sender, int signal_index, QObject* receiver, int method_index, int type);
QMetaObject__Connection* QMetaObject_connect_sender_signal_index_receiver_method_index_type_types(QObject* sender, int signal_index, QObject* receiver, int method_index, int type, int* types);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int param3, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0);
bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaObject_invokeMethod_QObject_char_QGenericReturnArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericReturnArgument* ret, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaObject_invokeMethod_QObject_char_Qt_ConnectionType_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, int type, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1);
bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
bool QMetaObject_invokeMethod_QObject_char_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument_QGenericArgument(QObject* obj, const char* member, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);
QObject* QMetaObject_newInstance_val0_val1(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1);
QObject* QMetaObject_newInstance_val0_val1_val2(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2);
QObject* QMetaObject_newInstance_val0_val1_val2_val3(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3);
QObject* QMetaObject_newInstance_val0_val1_val2_val3_val4(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4);
QObject* QMetaObject_newInstance_val0_val1_val2_val3_val4_val5(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5);
QObject* QMetaObject_newInstance_val0_val1_val2_val3_val4_val5_val6(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6);
QObject* QMetaObject_newInstance_val0_val1_val2_val3_val4_val5_val6_val7(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7);
QObject* QMetaObject_newInstance_val0_val1_val2_val3_val4_val5_val6_val7_val8(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8);
QObject* QMetaObject_newInstance_val0_val1_val2_val3_val4_val5_val6_val7_val8_val9(const QMetaObject* self, QGenericArgument* val0, QGenericArgument* val1, QGenericArgument* val2, QGenericArgument* val3, QGenericArgument* val4, QGenericArgument* val5, QGenericArgument* val6, QGenericArgument* val7, QGenericArgument* val8, QGenericArgument* val9);

void QMetaObject_delete(QMetaObject* self);

QMetaObject__Connection* QMetaObject__Connection_new();
QMetaObject__Connection* QMetaObject__Connection_new_from(QMetaObject__Connection* from);

void QMetaObject__Connection_operatorAssign(QMetaObject__Connection* self, QMetaObject__Connection* from);
void QMetaObject__Connection_swap(QMetaObject__Connection* self, QMetaObject__Connection* other);

void QMetaObject__Connection_delete(QMetaObject__Connection* self);

QMetaObject__SuperData* QMetaObject__SuperData_new();
QMetaObject__SuperData* QMetaObject__SuperData_new_QMetaObject(QMetaObject* mo);
QMetaObject__SuperData* QMetaObject__SuperData_new_QMetaObject_SuperData(QMetaObject__SuperData* from);

QMetaObject* QMetaObject__SuperData_direct(const QMetaObject__SuperData* self);
void QMetaObject__SuperData_setDirect(QMetaObject__SuperData* self, QMetaObject* direct);
QMetaObject* QMetaObject__SuperData_operatorMinusGreater(const QMetaObject__SuperData* self);
QMetaObject* QMetaObject__SuperData_ToConstQMetaObjectMultiply(const QMetaObject__SuperData* self);
void QMetaObject__SuperData_operatorAssign(QMetaObject__SuperData* self, QMetaObject__SuperData* from);

void QMetaObject__SuperData_delete(QMetaObject__SuperData* self);

QMetaObject__Data* QMetaObject__Data_new();
QMetaObject__Data* QMetaObject__Data_new_from(QMetaObject__Data* from);

QMetaObject__SuperData* QMetaObject__Data_superdata(const QMetaObject__Data* self);
void QMetaObject__Data_setSuperdata(QMetaObject__Data* self, QMetaObject__SuperData* superdata);
const unsigned int* QMetaObject__Data_stringdata(const QMetaObject__Data* self);
void QMetaObject__Data_setStringdata(QMetaObject__Data* self, const unsigned int* stringdata);
const unsigned int* QMetaObject__Data_data(const QMetaObject__Data* self);
void QMetaObject__Data_setData(QMetaObject__Data* self, const unsigned int* data);
QMetaObject__SuperData* QMetaObject__Data_relatedMetaObjects(const QMetaObject__Data* self);
void QMetaObject__Data_setRelatedMetaObjects(QMetaObject__Data* self, QMetaObject__SuperData* relatedMetaObjects);
void QMetaObject__Data_operatorAssign(QMetaObject__Data* self, QMetaObject__Data* from);

void QMetaObject__Data_delete(QMetaObject__Data* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
