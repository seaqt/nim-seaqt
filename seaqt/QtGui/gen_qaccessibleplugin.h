#pragma once
#ifndef SEAQT_QTGUI_GEN_QACCESSIBLEPLUGIN_H
#define SEAQT_QTGUI_GEN_QACCESSIBLEPLUGIN_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAccessibleInterface;
class QAccessiblePlugin;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAccessibleInterface QAccessibleInterface;
typedef struct QAccessiblePlugin QAccessiblePlugin;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQAccessiblePlugin VirtualQAccessiblePlugin;
typedef struct QAccessiblePlugin_VTable{
	void (*destructor)(VirtualQAccessiblePlugin* self);
	QMetaObject* (*metaObject)(const VirtualQAccessiblePlugin* self);
	void* (*metacast)(VirtualQAccessiblePlugin* self, const char* param1);
	int (*metacall)(VirtualQAccessiblePlugin* self, int param1, int param2, void** param3);
	QAccessibleInterface* (*create)(VirtualQAccessiblePlugin* self, struct seaqt_string key, QObject* object);
	bool (*event)(VirtualQAccessiblePlugin* self, QEvent* event);
	bool (*eventFilter)(VirtualQAccessiblePlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAccessiblePlugin* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAccessiblePlugin* self, QChildEvent* event);
	void (*customEvent)(VirtualQAccessiblePlugin* self, QEvent* event);
	void (*connectNotify)(VirtualQAccessiblePlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAccessiblePlugin* self, QMetaMethod* signal);
}QAccessiblePlugin_VTable;

void* QAccessiblePlugin_vdata(VirtualQAccessiblePlugin* self);
VirtualQAccessiblePlugin* vdata_QAccessiblePlugin(void* vdata);

VirtualQAccessiblePlugin* QAccessiblePlugin_new(const QAccessiblePlugin_VTable* vtbl, size_t vdata);
VirtualQAccessiblePlugin* QAccessiblePlugin_new2(const QAccessiblePlugin_VTable* vtbl, size_t vdata, QObject* parent);

void QAccessiblePlugin_virtbase(QAccessiblePlugin* src, QObject** outptr_QObject);
QMetaObject* QAccessiblePlugin_metaObject(const QAccessiblePlugin* self);
void* QAccessiblePlugin_metacast(QAccessiblePlugin* self, const char* param1);
int QAccessiblePlugin_metacall(QAccessiblePlugin* self, int param1, int param2, void** param3);
struct seaqt_string QAccessiblePlugin_tr(const char* s);
struct seaqt_string QAccessiblePlugin_trUtf8(const char* s);
QAccessibleInterface* QAccessiblePlugin_create(QAccessiblePlugin* self, struct seaqt_string key, QObject* object);
struct seaqt_string QAccessiblePlugin_tr2(const char* s, const char* c);
struct seaqt_string QAccessiblePlugin_tr3(const char* s, const char* c, int n);
struct seaqt_string QAccessiblePlugin_trUtf82(const char* s, const char* c);
struct seaqt_string QAccessiblePlugin_trUtf83(const char* s, const char* c, int n);

QMetaObject* QAccessiblePlugin_virtualbase_metaObject(const VirtualQAccessiblePlugin* self);
void* QAccessiblePlugin_virtualbase_metacast(VirtualQAccessiblePlugin* self, const char* param1);
int QAccessiblePlugin_virtualbase_metacall(VirtualQAccessiblePlugin* self, int param1, int param2, void** param3);
QAccessibleInterface* QAccessiblePlugin_virtualbase_create(VirtualQAccessiblePlugin* self, struct seaqt_string key, QObject* object);
bool QAccessiblePlugin_virtualbase_event(VirtualQAccessiblePlugin* self, QEvent* event);
bool QAccessiblePlugin_virtualbase_eventFilter(VirtualQAccessiblePlugin* self, QObject* watched, QEvent* event);
void QAccessiblePlugin_virtualbase_timerEvent(VirtualQAccessiblePlugin* self, QTimerEvent* event);
void QAccessiblePlugin_virtualbase_childEvent(VirtualQAccessiblePlugin* self, QChildEvent* event);
void QAccessiblePlugin_virtualbase_customEvent(VirtualQAccessiblePlugin* self, QEvent* event);
void QAccessiblePlugin_virtualbase_connectNotify(VirtualQAccessiblePlugin* self, QMetaMethod* signal);
void QAccessiblePlugin_virtualbase_disconnectNotify(VirtualQAccessiblePlugin* self, QMetaMethod* signal);

QObject* QAccessiblePlugin_protectedbase_sender(const VirtualQAccessiblePlugin* self);
int QAccessiblePlugin_protectedbase_senderSignalIndex(const VirtualQAccessiblePlugin* self);
int QAccessiblePlugin_protectedbase_receivers(const VirtualQAccessiblePlugin* self, const char* signal);
bool QAccessiblePlugin_protectedbase_isSignalConnected(const VirtualQAccessiblePlugin* self, QMetaMethod* signal);

const QMetaObject* QAccessiblePlugin_staticMetaObject();
void QAccessiblePlugin_delete(QAccessiblePlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
