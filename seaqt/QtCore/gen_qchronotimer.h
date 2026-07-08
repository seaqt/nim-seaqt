#pragma once
#ifndef SEAQT_QTCORE_GEN_QCHRONOTIMER_H
#define SEAQT_QTCORE_GEN_QCHRONOTIMER_H

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
class QChronoTimer;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QChronoTimer QChronoTimer;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQChronoTimer VirtualQChronoTimer;
typedef struct QChronoTimer_VTable{
	void (*destructor)(VirtualQChronoTimer* self);
	QMetaObject* (*metaObject)(const VirtualQChronoTimer* self);
	void* (*metacast)(VirtualQChronoTimer* self, const char* param1);
	int (*metacall)(VirtualQChronoTimer* self, int param1, int param2, void** param3);
	void (*timerEvent)(VirtualQChronoTimer* self, QTimerEvent* param1);
	bool (*event)(VirtualQChronoTimer* self, QEvent* event);
	bool (*eventFilter)(VirtualQChronoTimer* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQChronoTimer* self, QChildEvent* event);
	void (*customEvent)(VirtualQChronoTimer* self, QEvent* event);
	void (*connectNotify)(VirtualQChronoTimer* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQChronoTimer* self, QMetaMethod* signal);
}QChronoTimer_VTable;

void* QChronoTimer_vdata(VirtualQChronoTimer* self);
VirtualQChronoTimer* vdata_QChronoTimer(void* vdata);

VirtualQChronoTimer* QChronoTimer_new(const QChronoTimer_VTable* vtbl, size_t vdata);
VirtualQChronoTimer* QChronoTimer_new_parent(const QChronoTimer_VTable* vtbl, size_t vdata, QObject* parent);

void QChronoTimer_virtbase(QChronoTimer* src, QObject** outptr_QObject);
QMetaObject* QChronoTimer_metaObject(const QChronoTimer* self);
void* QChronoTimer_metacast(QChronoTimer* self, const char* param1);
int QChronoTimer_metacall(QChronoTimer* self, int param1, int param2, void** param3);
struct seaqt_string QChronoTimer_tr_s(const char* s);
bool QChronoTimer_isActive(const QChronoTimer* self);
int QChronoTimer_id(const QChronoTimer* self);
void QChronoTimer_setTimerType(QChronoTimer* self, int atype);
int QChronoTimer_timerType(const QChronoTimer* self);
void QChronoTimer_setSingleShot(QChronoTimer* self, bool singleShot);
bool QChronoTimer_isSingleShot(const QChronoTimer* self);
void QChronoTimer_start(QChronoTimer* self);
void QChronoTimer_stop(QChronoTimer* self);
void QChronoTimer_timerEvent(QChronoTimer* self, QTimerEvent* param1);
struct seaqt_string QChronoTimer_tr_s_c(const char* s, const char* c);
struct seaqt_string QChronoTimer_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QChronoTimer_virtualbase_metaObject(const VirtualQChronoTimer* self);
void* QChronoTimer_virtualbase_metacast(VirtualQChronoTimer* self, const char* param1);
int QChronoTimer_virtualbase_metacall(VirtualQChronoTimer* self, int param1, int param2, void** param3);
void QChronoTimer_virtualbase_timerEvent(VirtualQChronoTimer* self, QTimerEvent* param1);
bool QChronoTimer_virtualbase_event(VirtualQChronoTimer* self, QEvent* event);
bool QChronoTimer_virtualbase_eventFilter(VirtualQChronoTimer* self, QObject* watched, QEvent* event);
void QChronoTimer_virtualbase_childEvent(VirtualQChronoTimer* self, QChildEvent* event);
void QChronoTimer_virtualbase_customEvent(VirtualQChronoTimer* self, QEvent* event);
void QChronoTimer_virtualbase_connectNotify(VirtualQChronoTimer* self, QMetaMethod* signal);
void QChronoTimer_virtualbase_disconnectNotify(VirtualQChronoTimer* self, QMetaMethod* signal);

QObject* QChronoTimer_protectedbase_sender(const VirtualQChronoTimer* self);
int QChronoTimer_protectedbase_senderSignalIndex(const VirtualQChronoTimer* self);
int QChronoTimer_protectedbase_receivers(const VirtualQChronoTimer* self, const char* signal);
bool QChronoTimer_protectedbase_isSignalConnected(const VirtualQChronoTimer* self, QMetaMethod* signal);

void QChronoTimer_connect_timeout(QChronoTimer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));

const QMetaObject* QChronoTimer_staticMetaObject();
void QChronoTimer_delete(QChronoTimer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
