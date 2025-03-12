#pragma once
#ifndef SEAQT_QTCORE_GEN_QCOREEVENT_H
#define SEAQT_QTCORE_GEN_QCOREEVENT_H

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
class QDynamicPropertyChangeEvent;
class QEvent;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QDynamicPropertyChangeEvent QDynamicPropertyChangeEvent;
typedef struct QEvent QEvent;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQEvent VirtualQEvent;
typedef struct QEvent_VTable{
	void (*destructor)(VirtualQEvent* self);
	void (*setAccepted)(VirtualQEvent* self, bool accepted);
	QEvent* (*clone)(const VirtualQEvent* self);
}QEvent_VTable;

const QEvent_VTable* QEvent_vtbl(const VirtualQEvent* self);
void* QEvent_vdata(const VirtualQEvent* self);
void QEvent_setVdata(VirtualQEvent* self, void* vdata);

VirtualQEvent* QEvent_new(const QEvent_VTable* vtbl, void* vdata, int type);

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
int QEvent_registerEventType1(int hint);

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

const QTimerEvent_VTable* QTimerEvent_vtbl(const VirtualQTimerEvent* self);
void* QTimerEvent_vdata(const VirtualQTimerEvent* self);
void QTimerEvent_setVdata(VirtualQTimerEvent* self, void* vdata);

VirtualQTimerEvent* QTimerEvent_new(const QTimerEvent_VTable* vtbl, void* vdata, int timerId);

void QTimerEvent_virtbase(QTimerEvent* src, QEvent** outptr_QEvent);
QTimerEvent* QTimerEvent_clone(const QTimerEvent* self);
int QTimerEvent_timerId(const QTimerEvent* self);

QTimerEvent* QTimerEvent_virtualbase_clone(const VirtualQTimerEvent* self);
void QTimerEvent_virtualbase_setAccepted(VirtualQTimerEvent* self, bool accepted);

void QTimerEvent_delete(QTimerEvent* self);

typedef struct VirtualQChildEvent VirtualQChildEvent;
typedef struct QChildEvent_VTable{
	void (*destructor)(VirtualQChildEvent* self);
	QChildEvent* (*clone)(const VirtualQChildEvent* self);
	void (*setAccepted)(VirtualQChildEvent* self, bool accepted);
}QChildEvent_VTable;

const QChildEvent_VTable* QChildEvent_vtbl(const VirtualQChildEvent* self);
void* QChildEvent_vdata(const VirtualQChildEvent* self);
void QChildEvent_setVdata(VirtualQChildEvent* self, void* vdata);

VirtualQChildEvent* QChildEvent_new(const QChildEvent_VTable* vtbl, void* vdata, int type, QObject* child);

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

const QDynamicPropertyChangeEvent_VTable* QDynamicPropertyChangeEvent_vtbl(const VirtualQDynamicPropertyChangeEvent* self);
void* QDynamicPropertyChangeEvent_vdata(const VirtualQDynamicPropertyChangeEvent* self);
void QDynamicPropertyChangeEvent_setVdata(VirtualQDynamicPropertyChangeEvent* self, void* vdata);

VirtualQDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_new(const QDynamicPropertyChangeEvent_VTable* vtbl, void* vdata, struct miqt_string name);

void QDynamicPropertyChangeEvent_virtbase(QDynamicPropertyChangeEvent* src, QEvent** outptr_QEvent);
QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_clone(const QDynamicPropertyChangeEvent* self);
struct miqt_string QDynamicPropertyChangeEvent_propertyName(const QDynamicPropertyChangeEvent* self);

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_virtualbase_clone(const VirtualQDynamicPropertyChangeEvent* self);
void QDynamicPropertyChangeEvent_virtualbase_setAccepted(VirtualQDynamicPropertyChangeEvent* self, bool accepted);

void QDynamicPropertyChangeEvent_delete(QDynamicPropertyChangeEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
