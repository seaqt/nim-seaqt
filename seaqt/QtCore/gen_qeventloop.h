#pragma once
#ifndef SEAQT_QTCORE_GEN_QEVENTLOOP_H
#define SEAQT_QTCORE_GEN_QEVENTLOOP_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QEventLoop;
class QEventLoopLocker;
class QMetaMethod;
class QMetaObject;
class QObject;
class QThread;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QEventLoop QEventLoop;
typedef struct QEventLoopLocker QEventLoopLocker;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQEventLoop VirtualQEventLoop;
typedef struct QEventLoop_VTable{
	void (*destructor)(VirtualQEventLoop* self);
	QMetaObject* (*metaObject)(const VirtualQEventLoop* self);
	void* (*metacast)(VirtualQEventLoop* self, const char* param1);
	int (*metacall)(VirtualQEventLoop* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQEventLoop* self, QEvent* event);
	bool (*eventFilter)(VirtualQEventLoop* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQEventLoop* self, QTimerEvent* event);
	void (*childEvent)(VirtualQEventLoop* self, QChildEvent* event);
	void (*customEvent)(VirtualQEventLoop* self, QEvent* event);
	void (*connectNotify)(VirtualQEventLoop* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQEventLoop* self, QMetaMethod* signal);
}QEventLoop_VTable;

void* QEventLoop_vdata(VirtualQEventLoop* self);
VirtualQEventLoop* vdata_QEventLoop(void* vdata);

VirtualQEventLoop* QEventLoop_new(const QEventLoop_VTable* vtbl, size_t vdata);
VirtualQEventLoop* QEventLoop_new_parent(const QEventLoop_VTable* vtbl, size_t vdata, QObject* parent);

void QEventLoop_virtbase(QEventLoop* src, QObject** outptr_QObject);
QMetaObject* QEventLoop_metaObject(const QEventLoop* self);
void* QEventLoop_metacast(QEventLoop* self, const char* param1);
int QEventLoop_metacall(QEventLoop* self, int param1, int param2, void** param3);
struct seaqt_string QEventLoop_tr_s(const char* s);
struct seaqt_string QEventLoop_trUtf8_s(const char* s);
bool QEventLoop_processEvents(QEventLoop* self);
void QEventLoop_processEvents_flags_maximumTime(QEventLoop* self, int flags, int maximumTime);
int QEventLoop_exec(QEventLoop* self);
void QEventLoop_exit(QEventLoop* self);
bool QEventLoop_isRunning(const QEventLoop* self);
void QEventLoop_wakeUp(QEventLoop* self);
bool QEventLoop_event(QEventLoop* self, QEvent* event);
void QEventLoop_quit(QEventLoop* self);
struct seaqt_string QEventLoop_tr_s_c(const char* s, const char* c);
struct seaqt_string QEventLoop_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QEventLoop_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QEventLoop_trUtf8_s_c_n(const char* s, const char* c, int n);
bool QEventLoop_processEvents_flags(QEventLoop* self, int flags);
int QEventLoop_exec_flags(QEventLoop* self, int flags);
void QEventLoop_exit_returnCode(QEventLoop* self, int returnCode);

QMetaObject* QEventLoop_virtualbase_metaObject(const VirtualQEventLoop* self);
void* QEventLoop_virtualbase_metacast(VirtualQEventLoop* self, const char* param1);
int QEventLoop_virtualbase_metacall(VirtualQEventLoop* self, int param1, int param2, void** param3);
bool QEventLoop_virtualbase_event(VirtualQEventLoop* self, QEvent* event);
bool QEventLoop_virtualbase_eventFilter(VirtualQEventLoop* self, QObject* watched, QEvent* event);
void QEventLoop_virtualbase_timerEvent(VirtualQEventLoop* self, QTimerEvent* event);
void QEventLoop_virtualbase_childEvent(VirtualQEventLoop* self, QChildEvent* event);
void QEventLoop_virtualbase_customEvent(VirtualQEventLoop* self, QEvent* event);
void QEventLoop_virtualbase_connectNotify(VirtualQEventLoop* self, QMetaMethod* signal);
void QEventLoop_virtualbase_disconnectNotify(VirtualQEventLoop* self, QMetaMethod* signal);

QObject* QEventLoop_protectedbase_sender(const VirtualQEventLoop* self);
int QEventLoop_protectedbase_senderSignalIndex(const VirtualQEventLoop* self);
int QEventLoop_protectedbase_receivers(const VirtualQEventLoop* self, const char* signal);
bool QEventLoop_protectedbase_isSignalConnected(const VirtualQEventLoop* self, QMetaMethod* signal);

void QEventLoop_delete(QEventLoop* self);

QEventLoopLocker* QEventLoopLocker_new();
QEventLoopLocker* QEventLoopLocker_new_loop(QEventLoop* loop);
QEventLoopLocker* QEventLoopLocker_new_thread(QThread* thread);

void QEventLoopLocker_delete(QEventLoopLocker* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
