#pragma once
#ifndef SEAQT_QTREMOTEOBJECTS_GEN_QREMOTEOBJECTPENDINGCALL_H
#define SEAQT_QTREMOTEOBJECTS_GEN_QREMOTEOBJECTPENDINGCALL_H

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
class QMetaMethod;
class QMetaObject;
class QObject;
class QRemoteObjectPendingCall;
class QRemoteObjectPendingCallWatcher;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRemoteObjectPendingCall QRemoteObjectPendingCall;
typedef struct QRemoteObjectPendingCallWatcher QRemoteObjectPendingCallWatcher;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QRemoteObjectPendingCall* QRemoteObjectPendingCall_new();
QRemoteObjectPendingCall* QRemoteObjectPendingCall_new_from(QRemoteObjectPendingCall* from);

void QRemoteObjectPendingCall_operatorAssign(QRemoteObjectPendingCall* self, QRemoteObjectPendingCall* from);
QVariant* QRemoteObjectPendingCall_returnValue(const QRemoteObjectPendingCall* self);
int QRemoteObjectPendingCall_error(const QRemoteObjectPendingCall* self);
bool QRemoteObjectPendingCall_isFinished(const QRemoteObjectPendingCall* self);
bool QRemoteObjectPendingCall_waitForFinished(QRemoteObjectPendingCall* self);
QRemoteObjectPendingCall* QRemoteObjectPendingCall_fromCompletedCall(QVariant* returnValue);
bool QRemoteObjectPendingCall_waitForFinished_timeout(QRemoteObjectPendingCall* self, int timeout);

void QRemoteObjectPendingCall_delete(QRemoteObjectPendingCall* self);

typedef struct VirtualQRemoteObjectPendingCallWatcher VirtualQRemoteObjectPendingCallWatcher;
typedef struct QRemoteObjectPendingCallWatcher_VTable{
	void (*destructor)(VirtualQRemoteObjectPendingCallWatcher* self);
	QMetaObject* (*metaObject)(const VirtualQRemoteObjectPendingCallWatcher* self);
	void* (*metacast)(VirtualQRemoteObjectPendingCallWatcher* self, const char* param1);
	int (*metacall)(VirtualQRemoteObjectPendingCallWatcher* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQRemoteObjectPendingCallWatcher* self, QEvent* event);
	bool (*eventFilter)(VirtualQRemoteObjectPendingCallWatcher* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQRemoteObjectPendingCallWatcher* self, QTimerEvent* event);
	void (*childEvent)(VirtualQRemoteObjectPendingCallWatcher* self, QChildEvent* event);
	void (*customEvent)(VirtualQRemoteObjectPendingCallWatcher* self, QEvent* event);
	void (*connectNotify)(VirtualQRemoteObjectPendingCallWatcher* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQRemoteObjectPendingCallWatcher* self, QMetaMethod* signal);
}QRemoteObjectPendingCallWatcher_VTable;

void* QRemoteObjectPendingCallWatcher_vdata(VirtualQRemoteObjectPendingCallWatcher* self);
VirtualQRemoteObjectPendingCallWatcher* vdata_QRemoteObjectPendingCallWatcher(void* vdata);

VirtualQRemoteObjectPendingCallWatcher* QRemoteObjectPendingCallWatcher_new_call(const QRemoteObjectPendingCallWatcher_VTable* vtbl, size_t vdata, QRemoteObjectPendingCall* call);
VirtualQRemoteObjectPendingCallWatcher* QRemoteObjectPendingCallWatcher_new_call_parent(const QRemoteObjectPendingCallWatcher_VTable* vtbl, size_t vdata, QRemoteObjectPendingCall* call, QObject* parent);

void QRemoteObjectPendingCallWatcher_virtbase(QRemoteObjectPendingCallWatcher* src, QObject** outptr_QObject, QRemoteObjectPendingCall** outptr_QRemoteObjectPendingCall);
QMetaObject* QRemoteObjectPendingCallWatcher_metaObject(const QRemoteObjectPendingCallWatcher* self);
void* QRemoteObjectPendingCallWatcher_metacast(QRemoteObjectPendingCallWatcher* self, const char* param1);
int QRemoteObjectPendingCallWatcher_metacall(QRemoteObjectPendingCallWatcher* self, int param1, int param2, void** param3);
struct seaqt_string QRemoteObjectPendingCallWatcher_tr_s(const char* s);
bool QRemoteObjectPendingCallWatcher_isFinished(const QRemoteObjectPendingCallWatcher* self);
void QRemoteObjectPendingCallWatcher_waitForFinished(QRemoteObjectPendingCallWatcher* self);
void QRemoteObjectPendingCallWatcher_finished(QRemoteObjectPendingCallWatcher* self, QRemoteObjectPendingCallWatcher* selfVal);
void QRemoteObjectPendingCallWatcher_connect_finished(QRemoteObjectPendingCallWatcher* self, intptr_t slot, void (*callback)(intptr_t, QRemoteObjectPendingCallWatcher*), void (*release)(intptr_t));
struct seaqt_string QRemoteObjectPendingCallWatcher_tr_s_c(const char* s, const char* c);
struct seaqt_string QRemoteObjectPendingCallWatcher_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QRemoteObjectPendingCallWatcher_virtualbase_metaObject(const VirtualQRemoteObjectPendingCallWatcher* self);
void* QRemoteObjectPendingCallWatcher_virtualbase_metacast(VirtualQRemoteObjectPendingCallWatcher* self, const char* param1);
int QRemoteObjectPendingCallWatcher_virtualbase_metacall(VirtualQRemoteObjectPendingCallWatcher* self, int param1, int param2, void** param3);
bool QRemoteObjectPendingCallWatcher_virtualbase_event(VirtualQRemoteObjectPendingCallWatcher* self, QEvent* event);
bool QRemoteObjectPendingCallWatcher_virtualbase_eventFilter(VirtualQRemoteObjectPendingCallWatcher* self, QObject* watched, QEvent* event);
void QRemoteObjectPendingCallWatcher_virtualbase_timerEvent(VirtualQRemoteObjectPendingCallWatcher* self, QTimerEvent* event);
void QRemoteObjectPendingCallWatcher_virtualbase_childEvent(VirtualQRemoteObjectPendingCallWatcher* self, QChildEvent* event);
void QRemoteObjectPendingCallWatcher_virtualbase_customEvent(VirtualQRemoteObjectPendingCallWatcher* self, QEvent* event);
void QRemoteObjectPendingCallWatcher_virtualbase_connectNotify(VirtualQRemoteObjectPendingCallWatcher* self, QMetaMethod* signal);
void QRemoteObjectPendingCallWatcher_virtualbase_disconnectNotify(VirtualQRemoteObjectPendingCallWatcher* self, QMetaMethod* signal);

QObject* QRemoteObjectPendingCallWatcher_protectedbase_sender(const VirtualQRemoteObjectPendingCallWatcher* self);
int QRemoteObjectPendingCallWatcher_protectedbase_senderSignalIndex(const VirtualQRemoteObjectPendingCallWatcher* self);
int QRemoteObjectPendingCallWatcher_protectedbase_receivers(const VirtualQRemoteObjectPendingCallWatcher* self, const char* signal);
bool QRemoteObjectPendingCallWatcher_protectedbase_isSignalConnected(const VirtualQRemoteObjectPendingCallWatcher* self, QMetaMethod* signal);

const QMetaObject* QRemoteObjectPendingCallWatcher_staticMetaObject();
void QRemoteObjectPendingCallWatcher_delete(QRemoteObjectPendingCallWatcher* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
