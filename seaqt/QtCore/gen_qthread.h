#pragma once
#ifndef SEAQT_QTCORE_GEN_QTHREAD_H
#define SEAQT_QTCORE_GEN_QTHREAD_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractEventDispatcher;
class QChildEvent;
class QDeadlineTimer;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QThread;
class QTimerEvent;
#else
typedef struct QAbstractEventDispatcher QAbstractEventDispatcher;
typedef struct QChildEvent QChildEvent;
typedef struct QDeadlineTimer QDeadlineTimer;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QThread_VTable {
	void (*destructor)(struct QThread_VTable* vtbl, QThread* self);
	QMetaObject* (*metaObject)(struct QThread_VTable* vtbl, const QThread* self);
	void* (*metacast)(struct QThread_VTable* vtbl, QThread* self, const char* param1);
	int (*metacall)(struct QThread_VTable* vtbl, QThread* self, int param1, int param2, void** param3);
	bool (*event)(struct QThread_VTable* vtbl, QThread* self, QEvent* event);
	void (*run)(struct QThread_VTable* vtbl, QThread* self);
	bool (*eventFilter)(struct QThread_VTable* vtbl, QThread* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QThread_VTable* vtbl, QThread* self, QTimerEvent* event);
	void (*childEvent)(struct QThread_VTable* vtbl, QThread* self, QChildEvent* event);
	void (*customEvent)(struct QThread_VTable* vtbl, QThread* self, QEvent* event);
	void (*connectNotify)(struct QThread_VTable* vtbl, QThread* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QThread_VTable* vtbl, QThread* self, QMetaMethod* signal);
};
QThread* QThread_new(struct QThread_VTable* vtbl);
QThread* QThread_new2(struct QThread_VTable* vtbl, QObject* parent);
void QThread_virtbase(QThread* src, QObject** outptr_QObject);
QMetaObject* QThread_metaObject(const QThread* self);
void* QThread_metacast(QThread* self, const char* param1);
int QThread_metacall(QThread* self, int param1, int param2, void** param3);
struct miqt_string QThread_tr(const char* s);
struct miqt_string QThread_trUtf8(const char* s);
void* QThread_currentThreadId();
QThread* QThread_currentThread();
int QThread_idealThreadCount();
void QThread_yieldCurrentThread();
void QThread_setPriority(QThread* self, int priority);
int QThread_priority(const QThread* self);
bool QThread_isFinished(const QThread* self);
bool QThread_isRunning(const QThread* self);
void QThread_requestInterruption(QThread* self);
bool QThread_isInterruptionRequested(const QThread* self);
void QThread_setStackSize(QThread* self, unsigned int stackSize);
unsigned int QThread_stackSize(const QThread* self);
void QThread_exit(QThread* self);
QAbstractEventDispatcher* QThread_eventDispatcher(const QThread* self);
void QThread_setEventDispatcher(QThread* self, QAbstractEventDispatcher* eventDispatcher);
bool QThread_event(QThread* self, QEvent* event);
int QThread_loopLevel(const QThread* self);
void QThread_start(QThread* self);
void QThread_terminate(QThread* self);
void QThread_quit(QThread* self);
bool QThread_wait(QThread* self);
bool QThread_waitWithTime(QThread* self, unsigned long time);
void QThread_sleep(unsigned long param1);
void QThread_msleep(unsigned long param1);
void QThread_usleep(unsigned long param1);
void QThread_run(QThread* self);
struct miqt_string QThread_tr2(const char* s, const char* c);
struct miqt_string QThread_tr3(const char* s, const char* c, int n);
struct miqt_string QThread_trUtf82(const char* s, const char* c);
struct miqt_string QThread_trUtf83(const char* s, const char* c, int n);
void QThread_exit1(QThread* self, int retcode);
void QThread_start1(QThread* self, int param1);
bool QThread_wait1(QThread* self, QDeadlineTimer* deadline);
QMetaObject* QThread_virtualbase_metaObject(const void* self);
void* QThread_virtualbase_metacast(void* self, const char* param1);
int QThread_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QThread_virtualbase_event(void* self, QEvent* event);
void QThread_virtualbase_run(void* self);
bool QThread_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QThread_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QThread_virtualbase_childEvent(void* self, QChildEvent* event);
void QThread_virtualbase_customEvent(void* self, QEvent* event);
void QThread_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QThread_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
int QThread_protectedbase_exec(void* self);
QObject* QThread_protectedbase_sender(const void* self);
int QThread_protectedbase_senderSignalIndex(const void* self);
int QThread_protectedbase_receivers(const void* self, const char* signal);
bool QThread_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QThread_staticMetaObject();
void QThread_delete(QThread* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
