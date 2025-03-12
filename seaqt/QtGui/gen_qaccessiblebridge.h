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

typedef struct VirtualQAccessibleBridgePlugin VirtualQAccessibleBridgePlugin;
typedef struct QAccessibleBridgePlugin_VTable{
	void (*destructor)(VirtualQAccessibleBridgePlugin* self);
	QMetaObject* (*metaObject)(const VirtualQAccessibleBridgePlugin* self);
	void* (*metacast)(VirtualQAccessibleBridgePlugin* self, const char* param1);
	int (*metacall)(VirtualQAccessibleBridgePlugin* self, int param1, int param2, void** param3);
	QAccessibleBridge* (*create)(VirtualQAccessibleBridgePlugin* self, struct miqt_string key);
	bool (*event)(VirtualQAccessibleBridgePlugin* self, QEvent* event);
	bool (*eventFilter)(VirtualQAccessibleBridgePlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAccessibleBridgePlugin* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAccessibleBridgePlugin* self, QChildEvent* event);
	void (*customEvent)(VirtualQAccessibleBridgePlugin* self, QEvent* event);
	void (*connectNotify)(VirtualQAccessibleBridgePlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAccessibleBridgePlugin* self, QMetaMethod* signal);
}QAccessibleBridgePlugin_VTable;

const QAccessibleBridgePlugin_VTable* QAccessibleBridgePlugin_vtbl(const VirtualQAccessibleBridgePlugin* self);
void* QAccessibleBridgePlugin_vdata(const VirtualQAccessibleBridgePlugin* self);
void QAccessibleBridgePlugin_setVdata(VirtualQAccessibleBridgePlugin* self, void* vdata);

VirtualQAccessibleBridgePlugin* QAccessibleBridgePlugin_new(const QAccessibleBridgePlugin_VTable* vtbl, void* vdata);
VirtualQAccessibleBridgePlugin* QAccessibleBridgePlugin_new2(const QAccessibleBridgePlugin_VTable* vtbl, void* vdata, QObject* parent);

void QAccessibleBridgePlugin_virtbase(QAccessibleBridgePlugin* src, QObject** outptr_QObject);
QMetaObject* QAccessibleBridgePlugin_metaObject(const QAccessibleBridgePlugin* self);
void* QAccessibleBridgePlugin_metacast(QAccessibleBridgePlugin* self, const char* param1);
int QAccessibleBridgePlugin_metacall(QAccessibleBridgePlugin* self, int param1, int param2, void** param3);
struct miqt_string QAccessibleBridgePlugin_tr(const char* s);
QAccessibleBridge* QAccessibleBridgePlugin_create(QAccessibleBridgePlugin* self, struct miqt_string key);
struct miqt_string QAccessibleBridgePlugin_tr2(const char* s, const char* c);
struct miqt_string QAccessibleBridgePlugin_tr3(const char* s, const char* c, int n);

QMetaObject* QAccessibleBridgePlugin_virtualbase_metaObject(const VirtualQAccessibleBridgePlugin* self);
void* QAccessibleBridgePlugin_virtualbase_metacast(VirtualQAccessibleBridgePlugin* self, const char* param1);
int QAccessibleBridgePlugin_virtualbase_metacall(VirtualQAccessibleBridgePlugin* self, int param1, int param2, void** param3);
QAccessibleBridge* QAccessibleBridgePlugin_virtualbase_create(VirtualQAccessibleBridgePlugin* self, struct miqt_string key);
bool QAccessibleBridgePlugin_virtualbase_event(VirtualQAccessibleBridgePlugin* self, QEvent* event);
bool QAccessibleBridgePlugin_virtualbase_eventFilter(VirtualQAccessibleBridgePlugin* self, QObject* watched, QEvent* event);
void QAccessibleBridgePlugin_virtualbase_timerEvent(VirtualQAccessibleBridgePlugin* self, QTimerEvent* event);
void QAccessibleBridgePlugin_virtualbase_childEvent(VirtualQAccessibleBridgePlugin* self, QChildEvent* event);
void QAccessibleBridgePlugin_virtualbase_customEvent(VirtualQAccessibleBridgePlugin* self, QEvent* event);
void QAccessibleBridgePlugin_virtualbase_connectNotify(VirtualQAccessibleBridgePlugin* self, QMetaMethod* signal);
void QAccessibleBridgePlugin_virtualbase_disconnectNotify(VirtualQAccessibleBridgePlugin* self, QMetaMethod* signal);

QObject* QAccessibleBridgePlugin_protectedbase_sender(const VirtualQAccessibleBridgePlugin* self);
int QAccessibleBridgePlugin_protectedbase_senderSignalIndex(const VirtualQAccessibleBridgePlugin* self);
int QAccessibleBridgePlugin_protectedbase_receivers(const VirtualQAccessibleBridgePlugin* self, const char* signal);
bool QAccessibleBridgePlugin_protectedbase_isSignalConnected(const VirtualQAccessibleBridgePlugin* self, QMetaMethod* signal);

const QMetaObject* QAccessibleBridgePlugin_staticMetaObject();
void QAccessibleBridgePlugin_delete(QAccessibleBridgePlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
