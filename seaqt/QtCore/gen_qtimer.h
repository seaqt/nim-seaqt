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

struct QTimer_VTable {
	void (*destructor)(struct QTimer_VTable* vtbl, QTimer* self);
	QMetaObject* (*metaObject)(struct QTimer_VTable* vtbl, const QTimer* self);
	void* (*metacast)(struct QTimer_VTable* vtbl, QTimer* self, const char* param1);
	int (*metacall)(struct QTimer_VTable* vtbl, QTimer* self, int param1, int param2, void** param3);
	void (*timerEvent)(struct QTimer_VTable* vtbl, QTimer* self, QTimerEvent* param1);
	bool (*event)(struct QTimer_VTable* vtbl, QTimer* self, QEvent* event);
	bool (*eventFilter)(struct QTimer_VTable* vtbl, QTimer* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QTimer_VTable* vtbl, QTimer* self, QChildEvent* event);
	void (*customEvent)(struct QTimer_VTable* vtbl, QTimer* self, QEvent* event);
	void (*connectNotify)(struct QTimer_VTable* vtbl, QTimer* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QTimer_VTable* vtbl, QTimer* self, QMetaMethod* signal);
};
QTimer* QTimer_new(struct QTimer_VTable* vtbl);
QTimer* QTimer_new2(struct QTimer_VTable* vtbl, QObject* parent);
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
QMetaObject* QTimer_virtualbase_metaObject(const void* self);
void* QTimer_virtualbase_metacast(void* self, const char* param1);
int QTimer_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QTimer_virtualbase_timerEvent(void* self, QTimerEvent* param1);
bool QTimer_virtualbase_event(void* self, QEvent* event);
bool QTimer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QTimer_virtualbase_childEvent(void* self, QChildEvent* event);
void QTimer_virtualbase_customEvent(void* self, QEvent* event);
void QTimer_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QTimer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QTimer_protectedbase_sender(const void* self);
int QTimer_protectedbase_senderSignalIndex(const void* self);
int QTimer_protectedbase_receivers(const void* self, const char* signal);
bool QTimer_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QTimer_staticMetaObject();
void QTimer_delete(QTimer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
