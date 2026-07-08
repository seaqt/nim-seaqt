#pragma once
#ifndef SEAQT_QTCORE_GEN_QTHREAD_H
#define SEAQT_QTCORE_GEN_QTHREAD_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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

typedef struct VirtualQThread VirtualQThread;
typedef struct QThread_VTable{
	void (*destructor)(VirtualQThread* self);
	QMetaObject* (*metaObject)(const VirtualQThread* self);
	void* (*metacast)(VirtualQThread* self, const char* param1);
	int (*metacall)(VirtualQThread* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQThread* self, QEvent* event);
	void (*run)(VirtualQThread* self);
	bool (*eventFilter)(VirtualQThread* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQThread* self, QTimerEvent* event);
	void (*childEvent)(VirtualQThread* self, QChildEvent* event);
	void (*customEvent)(VirtualQThread* self, QEvent* event);
	void (*connectNotify)(VirtualQThread* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQThread* self, QMetaMethod* signal);
}QThread_VTable;

void* QThread_vdata(VirtualQThread* self);
VirtualQThread* vdata_QThread(void* vdata);

VirtualQThread* QThread_new(const QThread_VTable* vtbl, size_t vdata);
VirtualQThread* QThread_new_parent(const QThread_VTable* vtbl, size_t vdata, QObject* parent);

void QThread_virtbase(QThread* src, QObject** outptr_QObject);
QMetaObject* QThread_metaObject(const QThread* self);
void* QThread_metacast(QThread* self, const char* param1);
int QThread_metacall(QThread* self, int param1, int param2, void** param3);
struct seaqt_string QThread_tr_s(const char* s);
void* QThread_currentThreadId();
QThread* QThread_currentThread();
bool QThread_isMainThread();
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
QAbstractEventDispatcher* QThread_eventDispatcher(const QThread* self);
void QThread_setEventDispatcher(QThread* self, QAbstractEventDispatcher* eventDispatcher);
bool QThread_event(QThread* self, QEvent* event);
int QThread_loopLevel(const QThread* self);
bool QThread_isCurrentThread(const QThread* self);
void QThread_setServiceLevel(QThread* self, int serviceLevel);
int QThread_serviceLevel(const QThread* self);
void QThread_start(QThread* self);
void QThread_terminate(QThread* self);
void QThread_exit(QThread* self);
void QThread_quit(QThread* self);
bool QThread_wait(QThread* self);
bool QThread_wait_time(QThread* self, unsigned long time);
void QThread_sleep_unsignedlong(unsigned long param1);
void QThread_msleep(unsigned long param1);
void QThread_usleep(unsigned long param1);
void QThread_run(QThread* self);
struct seaqt_string QThread_tr_s_c(const char* s, const char* c);
struct seaqt_string QThread_tr_s_c_n(const char* s, const char* c, int n);
void QThread_start_QThread_Priority(QThread* self, int param1);
void QThread_exit_retcode(QThread* self, int retcode);
bool QThread_wait_deadline(QThread* self, QDeadlineTimer* deadline);

QMetaObject* QThread_virtualbase_metaObject(const VirtualQThread* self);
void* QThread_virtualbase_metacast(VirtualQThread* self, const char* param1);
int QThread_virtualbase_metacall(VirtualQThread* self, int param1, int param2, void** param3);
bool QThread_virtualbase_event(VirtualQThread* self, QEvent* event);
void QThread_virtualbase_run(VirtualQThread* self);
bool QThread_virtualbase_eventFilter(VirtualQThread* self, QObject* watched, QEvent* event);
void QThread_virtualbase_timerEvent(VirtualQThread* self, QTimerEvent* event);
void QThread_virtualbase_childEvent(VirtualQThread* self, QChildEvent* event);
void QThread_virtualbase_customEvent(VirtualQThread* self, QEvent* event);
void QThread_virtualbase_connectNotify(VirtualQThread* self, QMetaMethod* signal);
void QThread_virtualbase_disconnectNotify(VirtualQThread* self, QMetaMethod* signal);

int QThread_protectedbase_exec(VirtualQThread* self);
QObject* QThread_protectedbase_sender(const VirtualQThread* self);
int QThread_protectedbase_senderSignalIndex(const VirtualQThread* self);
int QThread_protectedbase_receivers(const VirtualQThread* self, const char* signal);
bool QThread_protectedbase_isSignalConnected(const VirtualQThread* self, QMetaMethod* signal);

void QThread_connect_started(QThread* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QThread_connect_finished(QThread* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));

const QMetaObject* QThread_staticMetaObject();
void QThread_delete(QThread* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
