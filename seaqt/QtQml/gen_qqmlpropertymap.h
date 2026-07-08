#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLPROPERTYMAP_H
#define SEAQT_QTQML_GEN_QQMLPROPERTYMAP_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QQmlPropertyMap;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQmlPropertyMap QQmlPropertyMap;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQQmlPropertyMap VirtualQQmlPropertyMap;
typedef struct QQmlPropertyMap_VTable{
	void (*destructor)(VirtualQQmlPropertyMap* self);
	QMetaObject* (*metaObject)(const VirtualQQmlPropertyMap* self);
	void* (*metacast)(VirtualQQmlPropertyMap* self, const char* param1);
	int (*metacall)(VirtualQQmlPropertyMap* self, int param1, int param2, void** param3);
	QVariant* (*updateValue)(VirtualQQmlPropertyMap* self, struct seaqt_string key, QVariant* input);
	bool (*event)(VirtualQQmlPropertyMap* self, QEvent* event);
	bool (*eventFilter)(VirtualQQmlPropertyMap* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQmlPropertyMap* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQmlPropertyMap* self, QChildEvent* event);
	void (*customEvent)(VirtualQQmlPropertyMap* self, QEvent* event);
	void (*connectNotify)(VirtualQQmlPropertyMap* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQmlPropertyMap* self, QMetaMethod* signal);
}QQmlPropertyMap_VTable;

void* QQmlPropertyMap_vdata(VirtualQQmlPropertyMap* self);
VirtualQQmlPropertyMap* vdata_QQmlPropertyMap(void* vdata);

VirtualQQmlPropertyMap* QQmlPropertyMap_new(const QQmlPropertyMap_VTable* vtbl, size_t vdata);
VirtualQQmlPropertyMap* QQmlPropertyMap_new_parent(const QQmlPropertyMap_VTable* vtbl, size_t vdata, QObject* parent);

void QQmlPropertyMap_virtbase(QQmlPropertyMap* src, QObject** outptr_QObject);
QMetaObject* QQmlPropertyMap_metaObject(const QQmlPropertyMap* self);
void* QQmlPropertyMap_metacast(QQmlPropertyMap* self, const char* param1);
int QQmlPropertyMap_metacall(QQmlPropertyMap* self, int param1, int param2, void** param3);
struct seaqt_string QQmlPropertyMap_tr_s(const char* s);
QVariant* QQmlPropertyMap_value(const QQmlPropertyMap* self, struct seaqt_string key);
void QQmlPropertyMap_insert_key_value(QQmlPropertyMap* self, struct seaqt_string key, QVariant* value);
void QQmlPropertyMap_insert_values(QQmlPropertyMap* self, struct seaqt_map /* of struct seaqt_string to QVariant* */  values);
void QQmlPropertyMap_clear(QQmlPropertyMap* self, struct seaqt_string key);
void QQmlPropertyMap_freeze(QQmlPropertyMap* self);
struct seaqt_array /* of struct seaqt_string */  QQmlPropertyMap_keys(const QQmlPropertyMap* self);
int QQmlPropertyMap_count(const QQmlPropertyMap* self);
int QQmlPropertyMap_size(const QQmlPropertyMap* self);
bool QQmlPropertyMap_isEmpty(const QQmlPropertyMap* self);
bool QQmlPropertyMap_contains(const QQmlPropertyMap* self, struct seaqt_string key);
QVariant* QQmlPropertyMap_operatorSubscript_cQString(QQmlPropertyMap* self, struct seaqt_string key);
QVariant* QQmlPropertyMap_operatorSubscript_const_cQString(const QQmlPropertyMap* self, struct seaqt_string key);
void QQmlPropertyMap_valueChanged(QQmlPropertyMap* self, struct seaqt_string key, QVariant* value);
void QQmlPropertyMap_connect_valueChanged(QQmlPropertyMap* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, QVariant*), void (*release)(intptr_t));
QVariant* QQmlPropertyMap_updateValue(QQmlPropertyMap* self, struct seaqt_string key, QVariant* input);
struct seaqt_string QQmlPropertyMap_tr_s_c(const char* s, const char* c);
struct seaqt_string QQmlPropertyMap_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QQmlPropertyMap_virtualbase_metaObject(const VirtualQQmlPropertyMap* self);
void* QQmlPropertyMap_virtualbase_metacast(VirtualQQmlPropertyMap* self, const char* param1);
int QQmlPropertyMap_virtualbase_metacall(VirtualQQmlPropertyMap* self, int param1, int param2, void** param3);
QVariant* QQmlPropertyMap_virtualbase_updateValue(VirtualQQmlPropertyMap* self, struct seaqt_string key, QVariant* input);
bool QQmlPropertyMap_virtualbase_event(VirtualQQmlPropertyMap* self, QEvent* event);
bool QQmlPropertyMap_virtualbase_eventFilter(VirtualQQmlPropertyMap* self, QObject* watched, QEvent* event);
void QQmlPropertyMap_virtualbase_timerEvent(VirtualQQmlPropertyMap* self, QTimerEvent* event);
void QQmlPropertyMap_virtualbase_childEvent(VirtualQQmlPropertyMap* self, QChildEvent* event);
void QQmlPropertyMap_virtualbase_customEvent(VirtualQQmlPropertyMap* self, QEvent* event);
void QQmlPropertyMap_virtualbase_connectNotify(VirtualQQmlPropertyMap* self, QMetaMethod* signal);
void QQmlPropertyMap_virtualbase_disconnectNotify(VirtualQQmlPropertyMap* self, QMetaMethod* signal);

QObject* QQmlPropertyMap_protectedbase_sender(const VirtualQQmlPropertyMap* self);
int QQmlPropertyMap_protectedbase_senderSignalIndex(const VirtualQQmlPropertyMap* self);
int QQmlPropertyMap_protectedbase_receivers(const VirtualQQmlPropertyMap* self, const char* signal);
bool QQmlPropertyMap_protectedbase_isSignalConnected(const VirtualQQmlPropertyMap* self, QMetaMethod* signal);

const QMetaObject* QQmlPropertyMap_staticMetaObject();
void QQmlPropertyMap_delete(QQmlPropertyMap* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
