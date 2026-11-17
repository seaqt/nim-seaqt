#pragma once
#ifndef SEAQT_QTCORE_GEN_QCOREEVENT_H
#define SEAQT_QTCORE_GEN_QCOREEVENT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBasicTimer;
class QChildEvent;
class QDynamicPropertyChangeEvent;
class QEvent;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QBasicTimer QBasicTimer;
typedef struct QChildEvent QChildEvent;
typedef struct QDynamicPropertyChangeEvent QDynamicPropertyChangeEvent;
typedef struct QEvent QEvent;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQEvent VirtualQEvent;
typedef struct QEvent_VTable{
	void (*destructor)(VirtualQEvent* self);
	void (*setAccepted)(VirtualQEvent* self, bool accepted);
	QEvent* (*clone)(const VirtualQEvent* self);
}QEvent_VTable;

void* QEvent_vdata(VirtualQEvent* self);
VirtualQEvent* vdata_QEvent(void* vdata);

VirtualQEvent* QEvent_new(const QEvent_VTable* vtbl, size_t vdata, int type);

int QEvent_type(const QEvent* self);
bool QEvent_spontaneous(const QEvent* self);
void QEvent_setAccepted(QEvent* self, bool accepted);
bool QEvent_isAccepted(const QEvent* self);
void QEvent_accept(QEvent* self);
void QEvent_ignore(QEvent* self);
bool QEvent_isInputEvent(const QEvent* self);
bool QEvent_isPointerEvent(const QEvent* self);
bool QEvent_isSinglePointEvent(const QEvent* self);
int QEvent_registerEventType();
QEvent* QEvent_clone(const QEvent* self);
int QEvent_registerEventType_hint(int hint);

void QEvent_virtualbase_setAccepted(VirtualQEvent* self, bool accepted);
QEvent* QEvent_virtualbase_clone(const VirtualQEvent* self);

const QMetaObject* QEvent_staticMetaObject();
void QEvent_delete(QEvent* self);

typedef struct VirtualQTimerEvent VirtualQTimerEvent;
typedef struct QTimerEvent_VTable{
	void (*destructor)(VirtualQTimerEvent* self);
	QTimerEvent* (*clone)(const VirtualQTimerEvent* self);
	void (*setAccepted)(VirtualQTimerEvent* self, bool accepted);
}QTimerEvent_VTable;

void* QTimerEvent_vdata(VirtualQTimerEvent* self);
VirtualQTimerEvent* vdata_QTimerEvent(void* vdata);

VirtualQTimerEvent* QTimerEvent_new_int(const QTimerEvent_VTable* vtbl, size_t vdata, int timerId);
VirtualQTimerEvent* QTimerEvent_new_Qt_TimerId(const QTimerEvent_VTable* vtbl, size_t vdata, int timerId);

void QTimerEvent_virtbase(QTimerEvent* src, QEvent** outptr_QEvent);
QTimerEvent* QTimerEvent_clone(const QTimerEvent* self);
int QTimerEvent_timerId(const QTimerEvent* self);
int QTimerEvent_id(const QTimerEvent* self);
bool QTimerEvent_matches(const QTimerEvent* self, QBasicTimer* timer);

QTimerEvent* QTimerEvent_virtualbase_clone(const VirtualQTimerEvent* self);
void QTimerEvent_virtualbase_setAccepted(VirtualQTimerEvent* self, bool accepted);

void QTimerEvent_delete(QTimerEvent* self);

typedef struct VirtualQChildEvent VirtualQChildEvent;
typedef struct QChildEvent_VTable{
	void (*destructor)(VirtualQChildEvent* self);
	QChildEvent* (*clone)(const VirtualQChildEvent* self);
	void (*setAccepted)(VirtualQChildEvent* self, bool accepted);
}QChildEvent_VTable;

void* QChildEvent_vdata(VirtualQChildEvent* self);
VirtualQChildEvent* vdata_QChildEvent(void* vdata);

VirtualQChildEvent* QChildEvent_new(const QChildEvent_VTable* vtbl, size_t vdata, int type, QObject* child);

void QChildEvent_virtbase(QChildEvent* src, QEvent** outptr_QEvent);
QChildEvent* QChildEvent_clone(const QChildEvent* self);
QObject* QChildEvent_child(const QChildEvent* self);
bool QChildEvent_added(const QChildEvent* self);
bool QChildEvent_polished(const QChildEvent* self);
bool QChildEvent_removed(const QChildEvent* self);

QChildEvent* QChildEvent_virtualbase_clone(const VirtualQChildEvent* self);
void QChildEvent_virtualbase_setAccepted(VirtualQChildEvent* self, bool accepted);

void QChildEvent_delete(QChildEvent* self);

typedef struct VirtualQDynamicPropertyChangeEvent VirtualQDynamicPropertyChangeEvent;
typedef struct QDynamicPropertyChangeEvent_VTable{
	void (*destructor)(VirtualQDynamicPropertyChangeEvent* self);
	QDynamicPropertyChangeEvent* (*clone)(const VirtualQDynamicPropertyChangeEvent* self);
	void (*setAccepted)(VirtualQDynamicPropertyChangeEvent* self, bool accepted);
}QDynamicPropertyChangeEvent_VTable;

void* QDynamicPropertyChangeEvent_vdata(VirtualQDynamicPropertyChangeEvent* self);
VirtualQDynamicPropertyChangeEvent* vdata_QDynamicPropertyChangeEvent(void* vdata);

VirtualQDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_new(const QDynamicPropertyChangeEvent_VTable* vtbl, size_t vdata, struct seaqt_string name);

void QDynamicPropertyChangeEvent_virtbase(QDynamicPropertyChangeEvent* src, QEvent** outptr_QEvent);
QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_clone(const QDynamicPropertyChangeEvent* self);
struct seaqt_string QDynamicPropertyChangeEvent_propertyName(const QDynamicPropertyChangeEvent* self);

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_virtualbase_clone(const VirtualQDynamicPropertyChangeEvent* self);
void QDynamicPropertyChangeEvent_virtualbase_setAccepted(VirtualQDynamicPropertyChangeEvent* self, bool accepted);

void QDynamicPropertyChangeEvent_delete(QDynamicPropertyChangeEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
