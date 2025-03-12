#pragma once
#ifndef SEAQT_QTCORE_GEN_QOBJECTCLEANUPHANDLER_H
#define SEAQT_QTCORE_GEN_QOBJECTCLEANUPHANDLER_H

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
class QObjectCleanupHandler;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QObjectCleanupHandler QObjectCleanupHandler;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQObjectCleanupHandler VirtualQObjectCleanupHandler;
typedef struct QObjectCleanupHandler_VTable{
	void (*destructor)(VirtualQObjectCleanupHandler* self);
	QMetaObject* (*metaObject)(const VirtualQObjectCleanupHandler* self);
	void* (*metacast)(VirtualQObjectCleanupHandler* self, const char* param1);
	int (*metacall)(VirtualQObjectCleanupHandler* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQObjectCleanupHandler* self, QEvent* event);
	bool (*eventFilter)(VirtualQObjectCleanupHandler* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQObjectCleanupHandler* self, QTimerEvent* event);
	void (*childEvent)(VirtualQObjectCleanupHandler* self, QChildEvent* event);
	void (*customEvent)(VirtualQObjectCleanupHandler* self, QEvent* event);
	void (*connectNotify)(VirtualQObjectCleanupHandler* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQObjectCleanupHandler* self, QMetaMethod* signal);
}QObjectCleanupHandler_VTable;

const QObjectCleanupHandler_VTable* QObjectCleanupHandler_vtbl(const VirtualQObjectCleanupHandler* self);
void* QObjectCleanupHandler_vdata(const VirtualQObjectCleanupHandler* self);
void QObjectCleanupHandler_setVdata(VirtualQObjectCleanupHandler* self, void* vdata);

VirtualQObjectCleanupHandler* QObjectCleanupHandler_new(const QObjectCleanupHandler_VTable* vtbl, void* vdata);

void QObjectCleanupHandler_virtbase(QObjectCleanupHandler* src, QObject** outptr_QObject);
QMetaObject* QObjectCleanupHandler_metaObject(const QObjectCleanupHandler* self);
void* QObjectCleanupHandler_metacast(QObjectCleanupHandler* self, const char* param1);
int QObjectCleanupHandler_metacall(QObjectCleanupHandler* self, int param1, int param2, void** param3);
struct miqt_string QObjectCleanupHandler_tr(const char* s);
QObject* QObjectCleanupHandler_add(QObjectCleanupHandler* self, QObject* object);
void QObjectCleanupHandler_remove(QObjectCleanupHandler* self, QObject* object);
bool QObjectCleanupHandler_isEmpty(const QObjectCleanupHandler* self);
void QObjectCleanupHandler_clear(QObjectCleanupHandler* self);
struct miqt_string QObjectCleanupHandler_tr2(const char* s, const char* c);
struct miqt_string QObjectCleanupHandler_tr3(const char* s, const char* c, int n);

QMetaObject* QObjectCleanupHandler_virtualbase_metaObject(const VirtualQObjectCleanupHandler* self);
void* QObjectCleanupHandler_virtualbase_metacast(VirtualQObjectCleanupHandler* self, const char* param1);
int QObjectCleanupHandler_virtualbase_metacall(VirtualQObjectCleanupHandler* self, int param1, int param2, void** param3);
bool QObjectCleanupHandler_virtualbase_event(VirtualQObjectCleanupHandler* self, QEvent* event);
bool QObjectCleanupHandler_virtualbase_eventFilter(VirtualQObjectCleanupHandler* self, QObject* watched, QEvent* event);
void QObjectCleanupHandler_virtualbase_timerEvent(VirtualQObjectCleanupHandler* self, QTimerEvent* event);
void QObjectCleanupHandler_virtualbase_childEvent(VirtualQObjectCleanupHandler* self, QChildEvent* event);
void QObjectCleanupHandler_virtualbase_customEvent(VirtualQObjectCleanupHandler* self, QEvent* event);
void QObjectCleanupHandler_virtualbase_connectNotify(VirtualQObjectCleanupHandler* self, QMetaMethod* signal);
void QObjectCleanupHandler_virtualbase_disconnectNotify(VirtualQObjectCleanupHandler* self, QMetaMethod* signal);

QObject* QObjectCleanupHandler_protectedbase_sender(const VirtualQObjectCleanupHandler* self);
int QObjectCleanupHandler_protectedbase_senderSignalIndex(const VirtualQObjectCleanupHandler* self);
int QObjectCleanupHandler_protectedbase_receivers(const VirtualQObjectCleanupHandler* self, const char* signal);
bool QObjectCleanupHandler_protectedbase_isSignalConnected(const VirtualQObjectCleanupHandler* self, QMetaMethod* signal);

const QMetaObject* QObjectCleanupHandler_staticMetaObject();
void QObjectCleanupHandler_delete(QObjectCleanupHandler* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
