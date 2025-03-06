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

struct QThreadPool_VTable {
	void (*destructor)(struct QThreadPool_VTable* vtbl, QThreadPool* self);
	QMetaObject* (*metaObject)(struct QThreadPool_VTable* vtbl, const QThreadPool* self);
	void* (*metacast)(struct QThreadPool_VTable* vtbl, QThreadPool* self, const char* param1);
	int (*metacall)(struct QThreadPool_VTable* vtbl, QThreadPool* self, int param1, int param2, void** param3);
	bool (*event)(struct QThreadPool_VTable* vtbl, QThreadPool* self, QEvent* event);
	bool (*eventFilter)(struct QThreadPool_VTable* vtbl, QThreadPool* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QThreadPool_VTable* vtbl, QThreadPool* self, QTimerEvent* event);
	void (*childEvent)(struct QThreadPool_VTable* vtbl, QThreadPool* self, QChildEvent* event);
	void (*customEvent)(struct QThreadPool_VTable* vtbl, QThreadPool* self, QEvent* event);
	void (*connectNotify)(struct QThreadPool_VTable* vtbl, QThreadPool* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QThreadPool_VTable* vtbl, QThreadPool* self, QMetaMethod* signal);
};
QThreadPool* QThreadPool_new(struct QThreadPool_VTable* vtbl);
QThreadPool* QThreadPool_new2(struct QThreadPool_VTable* vtbl, QObject* parent);
void QThreadPool_virtbase(QThreadPool* src, QObject** outptr_QObject);
QMetaObject* QThreadPool_metaObject(const QThreadPool* self);
void* QThreadPool_metacast(QThreadPool* self, const char* param1);
int QThreadPool_metacall(QThreadPool* self, int param1, int param2, void** param3);
struct miqt_string QThreadPool_tr(const char* s);
QThreadPool* QThreadPool_globalInstance();
void QThreadPool_start(QThreadPool* self, QRunnable* runnable);
bool QThreadPool_tryStart(QThreadPool* self, QRunnable* runnable);
void QThreadPool_startOnReservedThread(QThreadPool* self, QRunnable* runnable);
int QThreadPool_expiryTimeout(const QThreadPool* self);
void QThreadPool_setExpiryTimeout(QThreadPool* self, int expiryTimeout);
int QThreadPool_maxThreadCount(const QThreadPool* self);
void QThreadPool_setMaxThreadCount(QThreadPool* self, int maxThreadCount);
int QThreadPool_activeThreadCount(const QThreadPool* self);
void QThreadPool_setStackSize(QThreadPool* self, unsigned int stackSize);
unsigned int QThreadPool_stackSize(const QThreadPool* self);
void QThreadPool_setThreadPriority(QThreadPool* self, int priority);
int QThreadPool_threadPriority(const QThreadPool* self);
void QThreadPool_reserveThread(QThreadPool* self);
void QThreadPool_releaseThread(QThreadPool* self);
bool QThreadPool_waitForDone(QThreadPool* self);
void QThreadPool_clear(QThreadPool* self);
bool QThreadPool_contains(const QThreadPool* self, QThread* thread);
bool QThreadPool_tryTake(QThreadPool* self, QRunnable* runnable);
struct miqt_string QThreadPool_tr2(const char* s, const char* c);
struct miqt_string QThreadPool_tr3(const char* s, const char* c, int n);
void QThreadPool_start2(QThreadPool* self, QRunnable* runnable, int priority);
bool QThreadPool_waitForDone1(QThreadPool* self, int msecs);
QMetaObject* QThreadPool_virtualbase_metaObject(const void* self);
void* QThreadPool_virtualbase_metacast(void* self, const char* param1);
int QThreadPool_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QThreadPool_virtualbase_event(void* self, QEvent* event);
bool QThreadPool_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QThreadPool_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QThreadPool_virtualbase_childEvent(void* self, QChildEvent* event);
void QThreadPool_virtualbase_customEvent(void* self, QEvent* event);
void QThreadPool_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QThreadPool_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QThreadPool_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QThreadPool_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QThreadPool_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QThreadPool_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QThreadPool_staticMetaObject();
void QThreadPool_delete(QThreadPool* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
