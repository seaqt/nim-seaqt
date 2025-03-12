#pragma once
#ifndef SEAQT_QTGUI_GEN_QGENERICPLUGIN_H
#define SEAQT_QTGUI_GEN_QGENERICPLUGIN_H

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
class QGenericPlugin;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QGenericPlugin QGenericPlugin;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQGenericPlugin VirtualQGenericPlugin;
typedef struct QGenericPlugin_VTable{
	void (*destructor)(VirtualQGenericPlugin* self);
	QMetaObject* (*metaObject)(const VirtualQGenericPlugin* self);
	void* (*metacast)(VirtualQGenericPlugin* self, const char* param1);
	int (*metacall)(VirtualQGenericPlugin* self, int param1, int param2, void** param3);
	QObject* (*create)(VirtualQGenericPlugin* self, struct miqt_string name, struct miqt_string spec);
	bool (*event)(VirtualQGenericPlugin* self, QEvent* event);
	bool (*eventFilter)(VirtualQGenericPlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGenericPlugin* self, QTimerEvent* event);
	void (*childEvent)(VirtualQGenericPlugin* self, QChildEvent* event);
	void (*customEvent)(VirtualQGenericPlugin* self, QEvent* event);
	void (*connectNotify)(VirtualQGenericPlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGenericPlugin* self, QMetaMethod* signal);
}QGenericPlugin_VTable;

const QGenericPlugin_VTable* QGenericPlugin_vtbl(const VirtualQGenericPlugin* self);
void* QGenericPlugin_vdata(const VirtualQGenericPlugin* self);
void QGenericPlugin_setVdata(VirtualQGenericPlugin* self, void* vdata);

VirtualQGenericPlugin* QGenericPlugin_new(const QGenericPlugin_VTable* vtbl, void* vdata);
VirtualQGenericPlugin* QGenericPlugin_new2(const QGenericPlugin_VTable* vtbl, void* vdata, QObject* parent);

void QGenericPlugin_virtbase(QGenericPlugin* src, QObject** outptr_QObject);
QMetaObject* QGenericPlugin_metaObject(const QGenericPlugin* self);
void* QGenericPlugin_metacast(QGenericPlugin* self, const char* param1);
int QGenericPlugin_metacall(QGenericPlugin* self, int param1, int param2, void** param3);
struct miqt_string QGenericPlugin_tr(const char* s);
QObject* QGenericPlugin_create(QGenericPlugin* self, struct miqt_string name, struct miqt_string spec);
struct miqt_string QGenericPlugin_tr2(const char* s, const char* c);
struct miqt_string QGenericPlugin_tr3(const char* s, const char* c, int n);

QMetaObject* QGenericPlugin_virtualbase_metaObject(const VirtualQGenericPlugin* self);
void* QGenericPlugin_virtualbase_metacast(VirtualQGenericPlugin* self, const char* param1);
int QGenericPlugin_virtualbase_metacall(VirtualQGenericPlugin* self, int param1, int param2, void** param3);
QObject* QGenericPlugin_virtualbase_create(VirtualQGenericPlugin* self, struct miqt_string name, struct miqt_string spec);
bool QGenericPlugin_virtualbase_event(VirtualQGenericPlugin* self, QEvent* event);
bool QGenericPlugin_virtualbase_eventFilter(VirtualQGenericPlugin* self, QObject* watched, QEvent* event);
void QGenericPlugin_virtualbase_timerEvent(VirtualQGenericPlugin* self, QTimerEvent* event);
void QGenericPlugin_virtualbase_childEvent(VirtualQGenericPlugin* self, QChildEvent* event);
void QGenericPlugin_virtualbase_customEvent(VirtualQGenericPlugin* self, QEvent* event);
void QGenericPlugin_virtualbase_connectNotify(VirtualQGenericPlugin* self, QMetaMethod* signal);
void QGenericPlugin_virtualbase_disconnectNotify(VirtualQGenericPlugin* self, QMetaMethod* signal);

QObject* QGenericPlugin_protectedbase_sender(const VirtualQGenericPlugin* self);
int QGenericPlugin_protectedbase_senderSignalIndex(const VirtualQGenericPlugin* self);
int QGenericPlugin_protectedbase_receivers(const VirtualQGenericPlugin* self, const char* signal);
bool QGenericPlugin_protectedbase_isSignalConnected(const VirtualQGenericPlugin* self, QMetaMethod* signal);

const QMetaObject* QGenericPlugin_staticMetaObject();
void QGenericPlugin_delete(QGenericPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
