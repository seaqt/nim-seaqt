#pragma once
#ifndef SEAQT_QTCORE_GEN_QTIMER_H
#define SEAQT_QTCORE_GEN_QTIMER_H

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
class QTimer;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimer QTimer;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQTimer VirtualQTimer;
typedef struct QTimer_VTable{
	void (*destructor)(VirtualQTimer* self);
	QMetaObject* (*metaObject)(const VirtualQTimer* self);
	void* (*metacast)(VirtualQTimer* self, const char* param1);
	int (*metacall)(VirtualQTimer* self, int param1, int param2, void** param3);
	void (*timerEvent)(VirtualQTimer* self, QTimerEvent* param1);
	bool (*event)(VirtualQTimer* self, QEvent* event);
	bool (*eventFilter)(VirtualQTimer* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQTimer* self, QChildEvent* event);
	void (*customEvent)(VirtualQTimer* self, QEvent* event);
	void (*connectNotify)(VirtualQTimer* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQTimer* self, QMetaMethod* signal);
}QTimer_VTable;

const QTimer_VTable* QTimer_vtbl(const VirtualQTimer* self);
void* QTimer_vdata(const VirtualQTimer* self);
void QTimer_setVdata(VirtualQTimer* self, void* vdata);

VirtualQTimer* QTimer_new(const QTimer_VTable* vtbl, void* vdata);
VirtualQTimer* QTimer_new2(const QTimer_VTable* vtbl, void* vdata, QObject* parent);

void QTimer_virtbase(QTimer* src, QObject** outptr_QObject);
QMetaObject* QTimer_metaObject(const QTimer* self);
void* QTimer_metacast(QTimer* self, const char* param1);
int QTimer_metacall(QTimer* self, int param1, int param2, void** param3);
struct miqt_string QTimer_tr(const char* s);
struct miqt_string QTimer_trUtf8(const char* s);
bool QTimer_isActive(const QTimer* self);
int QTimer_timerId(const QTimer* self);
void QTimer_setInterval(QTimer* self, int msec);
int QTimer_interval(const QTimer* self);
int QTimer_remainingTime(const QTimer* self);
void QTimer_setTimerType(QTimer* self, int atype);
int QTimer_timerType(const QTimer* self);
void QTimer_setSingleShot(QTimer* self, bool singleShot);
bool QTimer_isSingleShot(const QTimer* self);
void QTimer_start(QTimer* self, int msec);
void QTimer_start2(QTimer* self);
void QTimer_stop(QTimer* self);
void QTimer_timerEvent(QTimer* self, QTimerEvent* param1);
struct miqt_string QTimer_tr2(const char* s, const char* c);
struct miqt_string QTimer_tr3(const char* s, const char* c, int n);
struct miqt_string QTimer_trUtf82(const char* s, const char* c);
struct miqt_string QTimer_trUtf83(const char* s, const char* c, int n);

QMetaObject* QTimer_virtualbase_metaObject(const VirtualQTimer* self);
void* QTimer_virtualbase_metacast(VirtualQTimer* self, const char* param1);
int QTimer_virtualbase_metacall(VirtualQTimer* self, int param1, int param2, void** param3);
void QTimer_virtualbase_timerEvent(VirtualQTimer* self, QTimerEvent* param1);
bool QTimer_virtualbase_event(VirtualQTimer* self, QEvent* event);
bool QTimer_virtualbase_eventFilter(VirtualQTimer* self, QObject* watched, QEvent* event);
void QTimer_virtualbase_childEvent(VirtualQTimer* self, QChildEvent* event);
void QTimer_virtualbase_customEvent(VirtualQTimer* self, QEvent* event);
void QTimer_virtualbase_connectNotify(VirtualQTimer* self, QMetaMethod* signal);
void QTimer_virtualbase_disconnectNotify(VirtualQTimer* self, QMetaMethod* signal);

QObject* QTimer_protectedbase_sender(const VirtualQTimer* self);
int QTimer_protectedbase_senderSignalIndex(const VirtualQTimer* self);
int QTimer_protectedbase_receivers(const VirtualQTimer* self, const char* signal);
bool QTimer_protectedbase_isSignalConnected(const VirtualQTimer* self, QMetaMethod* signal);

const QMetaObject* QTimer_staticMetaObject();
void QTimer_delete(QTimer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
