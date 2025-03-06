#pragma once
#ifndef SEAQT_QTCORE_GEN_QEVENTLOOP_H
#define SEAQT_QTCORE_GEN_QEVENTLOOP_H

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

struct QEventLoop_VTable {
	void (*destructor)(struct QEventLoop_VTable* vtbl, QEventLoop* self);
	QMetaObject* (*metaObject)(struct QEventLoop_VTable* vtbl, const QEventLoop* self);
	void* (*metacast)(struct QEventLoop_VTable* vtbl, QEventLoop* self, const char* param1);
	int (*metacall)(struct QEventLoop_VTable* vtbl, QEventLoop* self, int param1, int param2, void** param3);
	bool (*event)(struct QEventLoop_VTable* vtbl, QEventLoop* self, QEvent* event);
	bool (*eventFilter)(struct QEventLoop_VTable* vtbl, QEventLoop* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QEventLoop_VTable* vtbl, QEventLoop* self, QTimerEvent* event);
	void (*childEvent)(struct QEventLoop_VTable* vtbl, QEventLoop* self, QChildEvent* event);
	void (*customEvent)(struct QEventLoop_VTable* vtbl, QEventLoop* self, QEvent* event);
	void (*connectNotify)(struct QEventLoop_VTable* vtbl, QEventLoop* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QEventLoop_VTable* vtbl, QEventLoop* self, QMetaMethod* signal);
};
QEventLoop* QEventLoop_new(struct QEventLoop_VTable* vtbl);
QEventLoop* QEventLoop_new2(struct QEventLoop_VTable* vtbl, QObject* parent);
void QEventLoop_virtbase(QEventLoop* src, QObject** outptr_QObject);
QMetaObject* QEventLoop_metaObject(const QEventLoop* self);
void* QEventLoop_metacast(QEventLoop* self, const char* param1);
int QEventLoop_metacall(QEventLoop* self, int param1, int param2, void** param3);
struct miqt_string QEventLoop_tr(const char* s);
bool QEventLoop_processEvents(QEventLoop* self);
void QEventLoop_processEvents2(QEventLoop* self, int flags, int maximumTime);
int QEventLoop_exec(QEventLoop* self);
bool QEventLoop_isRunning(const QEventLoop* self);
void QEventLoop_wakeUp(QEventLoop* self);
bool QEventLoop_event(QEventLoop* self, QEvent* event);
void QEventLoop_exit(QEventLoop* self);
void QEventLoop_quit(QEventLoop* self);
struct miqt_string QEventLoop_tr2(const char* s, const char* c);
struct miqt_string QEventLoop_tr3(const char* s, const char* c, int n);
bool QEventLoop_processEvents1(QEventLoop* self, int flags);
int QEventLoop_exec1(QEventLoop* self, int flags);
void QEventLoop_exit1(QEventLoop* self, int returnCode);
QMetaObject* QEventLoop_virtualbase_metaObject(const void* self);
void* QEventLoop_virtualbase_metacast(void* self, const char* param1);
int QEventLoop_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QEventLoop_virtualbase_event(void* self, QEvent* event);
bool QEventLoop_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QEventLoop_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QEventLoop_virtualbase_childEvent(void* self, QChildEvent* event);
void QEventLoop_virtualbase_customEvent(void* self, QEvent* event);
void QEventLoop_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QEventLoop_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QEventLoop_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QEventLoop_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QEventLoop_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QEventLoop_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QEventLoop_staticMetaObject();
void QEventLoop_delete(QEventLoop* self);

QEventLoopLocker* QEventLoopLocker_new();
QEventLoopLocker* QEventLoopLocker_new2(QEventLoop* loop);
QEventLoopLocker* QEventLoopLocker_new3(QThread* thread);
void QEventLoopLocker_delete(QEventLoopLocker* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
