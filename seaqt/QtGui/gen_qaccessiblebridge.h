#pragma once
#ifndef SEAQT_QTGUI_GEN_QACCESSIBLEBRIDGE_H
#define SEAQT_QTGUI_GEN_QACCESSIBLEBRIDGE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAccessibleBridge;
class QAccessibleBridgePlugin;
class QAccessibleEvent;
class QAccessibleInterface;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAccessibleBridge QAccessibleBridge;
typedef struct QAccessibleBridgePlugin QAccessibleBridgePlugin;
typedef struct QAccessibleEvent QAccessibleEvent;
typedef struct QAccessibleInterface QAccessibleInterface;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

void QAccessibleBridge_setRootObject(QAccessibleBridge* self, QAccessibleInterface* rootObject);
void QAccessibleBridge_notifyAccessibilityUpdate(QAccessibleBridge* self, QAccessibleEvent* event);
void QAccessibleBridge_operatorAssign(QAccessibleBridge* self, QAccessibleBridge* param1);
void QAccessibleBridge_delete(QAccessibleBridge* self);

struct QAccessibleBridgePlugin_VTable {
	void (*destructor)(struct QAccessibleBridgePlugin_VTable* vtbl, QAccessibleBridgePlugin* self);
	QMetaObject* (*metaObject)(struct QAccessibleBridgePlugin_VTable* vtbl, const QAccessibleBridgePlugin* self);
	void* (*metacast)(struct QAccessibleBridgePlugin_VTable* vtbl, QAccessibleBridgePlugin* self, const char* param1);
	int (*metacall)(struct QAccessibleBridgePlugin_VTable* vtbl, QAccessibleBridgePlugin* self, int param1, int param2, void** param3);
	QAccessibleBridge* (*create)(struct QAccessibleBridgePlugin_VTable* vtbl, QAccessibleBridgePlugin* self, struct miqt_string key);
	bool (*event)(struct QAccessibleBridgePlugin_VTable* vtbl, QAccessibleBridgePlugin* self, QEvent* event);
	bool (*eventFilter)(struct QAccessibleBridgePlugin_VTable* vtbl, QAccessibleBridgePlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAccessibleBridgePlugin_VTable* vtbl, QAccessibleBridgePlugin* self, QTimerEvent* event);
	void (*childEvent)(struct QAccessibleBridgePlugin_VTable* vtbl, QAccessibleBridgePlugin* self, QChildEvent* event);
	void (*customEvent)(struct QAccessibleBridgePlugin_VTable* vtbl, QAccessibleBridgePlugin* self, QEvent* event);
	void (*connectNotify)(struct QAccessibleBridgePlugin_VTable* vtbl, QAccessibleBridgePlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAccessibleBridgePlugin_VTable* vtbl, QAccessibleBridgePlugin* self, QMetaMethod* signal);
};
QAccessibleBridgePlugin* QAccessibleBridgePlugin_new(struct QAccessibleBridgePlugin_VTable* vtbl);
QAccessibleBridgePlugin* QAccessibleBridgePlugin_new2(struct QAccessibleBridgePlugin_VTable* vtbl, QObject* parent);
void QAccessibleBridgePlugin_virtbase(QAccessibleBridgePlugin* src, QObject** outptr_QObject);
QMetaObject* QAccessibleBridgePlugin_metaObject(const QAccessibleBridgePlugin* self);
void* QAccessibleBridgePlugin_metacast(QAccessibleBridgePlugin* self, const char* param1);
int QAccessibleBridgePlugin_metacall(QAccessibleBridgePlugin* self, int param1, int param2, void** param3);
struct miqt_string QAccessibleBridgePlugin_tr(const char* s);
QAccessibleBridge* QAccessibleBridgePlugin_create(QAccessibleBridgePlugin* self, struct miqt_string key);
struct miqt_string QAccessibleBridgePlugin_tr2(const char* s, const char* c);
struct miqt_string QAccessibleBridgePlugin_tr3(const char* s, const char* c, int n);
QMetaObject* QAccessibleBridgePlugin_virtualbase_metaObject(const void* self);
void* QAccessibleBridgePlugin_virtualbase_metacast(void* self, const char* param1);
int QAccessibleBridgePlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QAccessibleBridge* QAccessibleBridgePlugin_virtualbase_create(void* self, struct miqt_string key);
bool QAccessibleBridgePlugin_virtualbase_event(void* self, QEvent* event);
bool QAccessibleBridgePlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAccessibleBridgePlugin_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAccessibleBridgePlugin_virtualbase_childEvent(void* self, QChildEvent* event);
void QAccessibleBridgePlugin_virtualbase_customEvent(void* self, QEvent* event);
void QAccessibleBridgePlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAccessibleBridgePlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QAccessibleBridgePlugin_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAccessibleBridgePlugin_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAccessibleBridgePlugin_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAccessibleBridgePlugin_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAccessibleBridgePlugin_staticMetaObject();
void QAccessibleBridgePlugin_delete(QAccessibleBridgePlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
