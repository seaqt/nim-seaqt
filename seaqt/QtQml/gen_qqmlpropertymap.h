#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLPROPERTYMAP_H
#define SEAQT_QTQML_GEN_QQMLPROPERTYMAP_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

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

struct QQmlPropertyMap_VTable {
	void (*destructor)(struct QQmlPropertyMap_VTable* vtbl, QQmlPropertyMap* self);
	QMetaObject* (*metaObject)(struct QQmlPropertyMap_VTable* vtbl, const QQmlPropertyMap* self);
	void* (*metacast)(struct QQmlPropertyMap_VTable* vtbl, QQmlPropertyMap* self, const char* param1);
	int (*metacall)(struct QQmlPropertyMap_VTable* vtbl, QQmlPropertyMap* self, int param1, int param2, void** param3);
	QVariant* (*updateValue)(struct QQmlPropertyMap_VTable* vtbl, QQmlPropertyMap* self, struct miqt_string key, QVariant* input);
	bool (*event)(struct QQmlPropertyMap_VTable* vtbl, QQmlPropertyMap* self, QEvent* event);
	bool (*eventFilter)(struct QQmlPropertyMap_VTable* vtbl, QQmlPropertyMap* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QQmlPropertyMap_VTable* vtbl, QQmlPropertyMap* self, QTimerEvent* event);
	void (*childEvent)(struct QQmlPropertyMap_VTable* vtbl, QQmlPropertyMap* self, QChildEvent* event);
	void (*customEvent)(struct QQmlPropertyMap_VTable* vtbl, QQmlPropertyMap* self, QEvent* event);
	void (*connectNotify)(struct QQmlPropertyMap_VTable* vtbl, QQmlPropertyMap* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQmlPropertyMap_VTable* vtbl, QQmlPropertyMap* self, QMetaMethod* signal);
};
QQmlPropertyMap* QQmlPropertyMap_new(struct QQmlPropertyMap_VTable* vtbl);
QQmlPropertyMap* QQmlPropertyMap_new2(struct QQmlPropertyMap_VTable* vtbl, QObject* parent);
void QQmlPropertyMap_virtbase(QQmlPropertyMap* src, QObject** outptr_QObject);
QMetaObject* QQmlPropertyMap_metaObject(const QQmlPropertyMap* self);
void* QQmlPropertyMap_metacast(QQmlPropertyMap* self, const char* param1);
int QQmlPropertyMap_metacall(QQmlPropertyMap* self, int param1, int param2, void** param3);
struct miqt_string QQmlPropertyMap_tr(const char* s);
struct miqt_string QQmlPropertyMap_trUtf8(const char* s);
QVariant* QQmlPropertyMap_value(const QQmlPropertyMap* self, struct miqt_string key);
void QQmlPropertyMap_insert(QQmlPropertyMap* self, struct miqt_string key, QVariant* value);
void QQmlPropertyMap_clear(QQmlPropertyMap* self, struct miqt_string key);
struct miqt_array /* of struct miqt_string */  QQmlPropertyMap_keys(const QQmlPropertyMap* self);
int QQmlPropertyMap_count(const QQmlPropertyMap* self);
int QQmlPropertyMap_size(const QQmlPropertyMap* self);
bool QQmlPropertyMap_isEmpty(const QQmlPropertyMap* self);
bool QQmlPropertyMap_contains(const QQmlPropertyMap* self, struct miqt_string key);
QVariant* QQmlPropertyMap_operatorSubscript(QQmlPropertyMap* self, struct miqt_string key);
QVariant* QQmlPropertyMap_operatorSubscriptWithKey(const QQmlPropertyMap* self, struct miqt_string key);
void QQmlPropertyMap_valueChanged(QQmlPropertyMap* self, struct miqt_string key, QVariant* value);
void QQmlPropertyMap_connect_valueChanged(QQmlPropertyMap* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string, QVariant*), void (*release)(intptr_t));
QVariant* QQmlPropertyMap_updateValue(QQmlPropertyMap* self, struct miqt_string key, QVariant* input);
struct miqt_string QQmlPropertyMap_tr2(const char* s, const char* c);
struct miqt_string QQmlPropertyMap_tr3(const char* s, const char* c, int n);
struct miqt_string QQmlPropertyMap_trUtf82(const char* s, const char* c);
struct miqt_string QQmlPropertyMap_trUtf83(const char* s, const char* c, int n);
QMetaObject* QQmlPropertyMap_virtualbase_metaObject(const void* self);
void* QQmlPropertyMap_virtualbase_metacast(void* self, const char* param1);
int QQmlPropertyMap_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QVariant* QQmlPropertyMap_virtualbase_updateValue(void* self, struct miqt_string key, QVariant* input);
bool QQmlPropertyMap_virtualbase_event(void* self, QEvent* event);
bool QQmlPropertyMap_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQmlPropertyMap_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QQmlPropertyMap_virtualbase_childEvent(void* self, QChildEvent* event);
void QQmlPropertyMap_virtualbase_customEvent(void* self, QEvent* event);
void QQmlPropertyMap_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QQmlPropertyMap_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQmlPropertyMap_protectedbase_sender(const void* self);
int QQmlPropertyMap_protectedbase_senderSignalIndex(const void* self);
int QQmlPropertyMap_protectedbase_receivers(const void* self, const char* signal);
bool QQmlPropertyMap_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QQmlPropertyMap_staticMetaObject();
void QQmlPropertyMap_delete(QQmlPropertyMap* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
