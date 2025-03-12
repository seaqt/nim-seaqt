#pragma once
#ifndef SEAQT_QTCORE_GEN_QTHREADPOOL_H
#define SEAQT_QTCORE_GEN_QTHREADPOOL_H

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
class QRunnable;
class QThread;
class QThreadPool;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRunnable QRunnable;
typedef struct QThread QThread;
typedef struct QThreadPool QThreadPool;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQThreadPool VirtualQThreadPool;
typedef struct QThreadPool_VTable{
	void (*destructor)(VirtualQThreadPool* self);
	QMetaObject* (*metaObject)(const VirtualQThreadPool* self);
	void* (*metacast)(VirtualQThreadPool* self, const char* param1);
	int (*metacall)(VirtualQThreadPool* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQThreadPool* self, QEvent* event);
	bool (*eventFilter)(VirtualQThreadPool* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQThreadPool* self, QTimerEvent* event);
	void (*childEvent)(VirtualQThreadPool* self, QChildEvent* event);
	void (*customEvent)(VirtualQThreadPool* self, QEvent* event);
	void (*connectNotify)(VirtualQThreadPool* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQThreadPool* self, QMetaMethod* signal);
}QThreadPool_VTable;

const QThreadPool_VTable* QThreadPool_vtbl(const VirtualQThreadPool* self);
void* QThreadPool_vdata(const VirtualQThreadPool* self);
void QThreadPool_setVdata(VirtualQThreadPool* self, void* vdata);

VirtualQThreadPool* QThreadPool_new(const QThreadPool_VTable* vtbl, void* vdata);
VirtualQThreadPool* QThreadPool_new2(const QThreadPool_VTable* vtbl, void* vdata, QObject* parent);

void QThreadPool_virtbase(QThreadPool* src, QObject** outptr_QObject);
QMetaObject* QThreadPool_metaObject(const QThreadPool* self);
void* QThreadPool_metacast(QThreadPool* self, const char* param1);
int QThreadPool_metacall(QThreadPool* self, int param1, int param2, void** param3);
struct miqt_string QThreadPool_tr(const char* s);
struct miqt_string QThreadPool_trUtf8(const char* s);
QThreadPool* QThreadPool_globalInstance();
void QThreadPool_start(QThreadPool* self, QRunnable* runnable);
bool QThreadPool_tryStart(QThreadPool* self, QRunnable* runnable);
int QThreadPool_expiryTimeout(const QThreadPool* self);
void QThreadPool_setExpiryTimeout(QThreadPool* self, int expiryTimeout);
int QThreadPool_maxThreadCount(const QThreadPool* self);
void QThreadPool_setMaxThreadCount(QThreadPool* self, int maxThreadCount);
int QThreadPool_activeThreadCount(const QThreadPool* self);
void QThreadPool_setStackSize(QThreadPool* self, unsigned int stackSize);
unsigned int QThreadPool_stackSize(const QThreadPool* self);
void QThreadPool_reserveThread(QThreadPool* self);
void QThreadPool_releaseThread(QThreadPool* self);
bool QThreadPool_waitForDone(QThreadPool* self);
void QThreadPool_clear(QThreadPool* self);
bool QThreadPool_contains(const QThreadPool* self, QThread* thread);
void QThreadPool_cancel(QThreadPool* self, QRunnable* runnable);
bool QThreadPool_tryTake(QThreadPool* self, QRunnable* runnable);
struct miqt_string QThreadPool_tr2(const char* s, const char* c);
struct miqt_string QThreadPool_tr3(const char* s, const char* c, int n);
struct miqt_string QThreadPool_trUtf82(const char* s, const char* c);
struct miqt_string QThreadPool_trUtf83(const char* s, const char* c, int n);
void QThreadPool_start2(QThreadPool* self, QRunnable* runnable, int priority);
bool QThreadPool_waitForDone1(QThreadPool* self, int msecs);

QMetaObject* QThreadPool_virtualbase_metaObject(const VirtualQThreadPool* self);
void* QThreadPool_virtualbase_metacast(VirtualQThreadPool* self, const char* param1);
int QThreadPool_virtualbase_metacall(VirtualQThreadPool* self, int param1, int param2, void** param3);
bool QThreadPool_virtualbase_event(VirtualQThreadPool* self, QEvent* event);
bool QThreadPool_virtualbase_eventFilter(VirtualQThreadPool* self, QObject* watched, QEvent* event);
void QThreadPool_virtualbase_timerEvent(VirtualQThreadPool* self, QTimerEvent* event);
void QThreadPool_virtualbase_childEvent(VirtualQThreadPool* self, QChildEvent* event);
void QThreadPool_virtualbase_customEvent(VirtualQThreadPool* self, QEvent* event);
void QThreadPool_virtualbase_connectNotify(VirtualQThreadPool* self, QMetaMethod* signal);
void QThreadPool_virtualbase_disconnectNotify(VirtualQThreadPool* self, QMetaMethod* signal);

QObject* QThreadPool_protectedbase_sender(const VirtualQThreadPool* self);
int QThreadPool_protectedbase_senderSignalIndex(const VirtualQThreadPool* self);
int QThreadPool_protectedbase_receivers(const VirtualQThreadPool* self, const char* signal);
bool QThreadPool_protectedbase_isSignalConnected(const VirtualQThreadPool* self, QMetaMethod* signal);

const QMetaObject* QThreadPool_staticMetaObject();
void QThreadPool_delete(QThreadPool* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
