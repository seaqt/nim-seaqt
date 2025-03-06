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

struct QEvent_VTable {
	void (*destructor)(struct QEvent_VTable* vtbl, QEvent* self);
	void (*setAccepted)(struct QEvent_VTable* vtbl, QEvent* self, bool accepted);
	QEvent* (*clone)(struct QEvent_VTable* vtbl, const QEvent* self);
};
QEvent* QEvent_new(struct QEvent_VTable* vtbl, int type);
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
void QEvent_virtualbase_setAccepted(void* self, bool accepted);
QEvent* QEvent_virtualbase_clone(const void* self);
const QMetaObject* QEvent_staticMetaObject();
void QEvent_delete(QEvent* self);

struct QTimerEvent_VTable {
	void (*destructor)(struct QTimerEvent_VTable* vtbl, QTimerEvent* self);
	QTimerEvent* (*clone)(struct QTimerEvent_VTable* vtbl, const QTimerEvent* self);
	void (*setAccepted)(struct QTimerEvent_VTable* vtbl, QTimerEvent* self, bool accepted);
};
QTimerEvent* QTimerEvent_new(struct QTimerEvent_VTable* vtbl, int timerId);
void QTimerEvent_virtbase(QTimerEvent* src, QEvent** outptr_QEvent);
QTimerEvent* QTimerEvent_clone(const QTimerEvent* self);
int QTimerEvent_timerId(const QTimerEvent* self);
QTimerEvent* QTimerEvent_virtualbase_clone(const void* self);
void QTimerEvent_virtualbase_setAccepted(void* self, bool accepted);
void QTimerEvent_delete(QTimerEvent* self);

struct QChildEvent_VTable {
	void (*destructor)(struct QChildEvent_VTable* vtbl, QChildEvent* self);
	QChildEvent* (*clone)(struct QChildEvent_VTable* vtbl, const QChildEvent* self);
	void (*setAccepted)(struct QChildEvent_VTable* vtbl, QChildEvent* self, bool accepted);
};
QChildEvent* QChildEvent_new(struct QChildEvent_VTable* vtbl, int type, QObject* child);
void QChildEvent_virtbase(QChildEvent* src, QEvent** outptr_QEvent);
QChildEvent* QChildEvent_clone(const QChildEvent* self);
QObject* QChildEvent_child(const QChildEvent* self);
bool QChildEvent_added(const QChildEvent* self);
bool QChildEvent_polished(const QChildEvent* self);
bool QChildEvent_removed(const QChildEvent* self);
QChildEvent* QChildEvent_virtualbase_clone(const void* self);
void QChildEvent_virtualbase_setAccepted(void* self, bool accepted);
void QChildEvent_delete(QChildEvent* self);

struct QDynamicPropertyChangeEvent_VTable {
	void (*destructor)(struct QDynamicPropertyChangeEvent_VTable* vtbl, QDynamicPropertyChangeEvent* self);
	QDynamicPropertyChangeEvent* (*clone)(struct QDynamicPropertyChangeEvent_VTable* vtbl, const QDynamicPropertyChangeEvent* self);
	void (*setAccepted)(struct QDynamicPropertyChangeEvent_VTable* vtbl, QDynamicPropertyChangeEvent* self, bool accepted);
};
QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_new(struct QDynamicPropertyChangeEvent_VTable* vtbl, struct miqt_string name);
void QDynamicPropertyChangeEvent_virtbase(QDynamicPropertyChangeEvent* src, QEvent** outptr_QEvent);
QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_clone(const QDynamicPropertyChangeEvent* self);
struct miqt_string QDynamicPropertyChangeEvent_propertyName(const QDynamicPropertyChangeEvent* self);
QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_virtualbase_clone(const void* self);
void QDynamicPropertyChangeEvent_virtualbase_setAccepted(void* self, bool accepted);
void QDynamicPropertyChangeEvent_delete(QDynamicPropertyChangeEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
