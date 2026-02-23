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
class QChildEvent;
class QDynamicPropertyChangeEvent;
class QEvent;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QDynamicPropertyChangeEvent QDynamicPropertyChangeEvent;
typedef struct QEvent QEvent;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

QEvent* QEvent_new_type(int type);
QEvent* QEvent_new_from(QEvent* from);

void QEvent_operatorAssign(QEvent* self, QEvent* from);
int QEvent_type(const QEvent* self);
bool QEvent_spontaneous(const QEvent* self);
void QEvent_setAccepted(QEvent* self, bool accepted);
bool QEvent_isAccepted(const QEvent* self);
void QEvent_accept(QEvent* self);
void QEvent_ignore(QEvent* self);
int QEvent_registerEventType();
int QEvent_registerEventType_hint(int hint);

void QEvent_delete(QEvent* self);

QTimerEvent* QTimerEvent_new_timerId(int timerId);
QTimerEvent* QTimerEvent_new_from(QTimerEvent* from);

void QTimerEvent_virtbase(QTimerEvent* src, QEvent** outptr_QEvent);
int QTimerEvent_timerId(const QTimerEvent* self);
void QTimerEvent_operatorAssign(QTimerEvent* self, QTimerEvent* from);

void QTimerEvent_delete(QTimerEvent* self);

QChildEvent* QChildEvent_new_type_child(int type, QObject* child);
QChildEvent* QChildEvent_new_from(QChildEvent* from);

void QChildEvent_virtbase(QChildEvent* src, QEvent** outptr_QEvent);
QObject* QChildEvent_child(const QChildEvent* self);
bool QChildEvent_added(const QChildEvent* self);
bool QChildEvent_polished(const QChildEvent* self);
bool QChildEvent_removed(const QChildEvent* self);
void QChildEvent_operatorAssign(QChildEvent* self, QChildEvent* from);

void QChildEvent_delete(QChildEvent* self);

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_new_name(struct seaqt_string name);
QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_new_from(QDynamicPropertyChangeEvent* from);

void QDynamicPropertyChangeEvent_virtbase(QDynamicPropertyChangeEvent* src, QEvent** outptr_QEvent);
struct seaqt_string QDynamicPropertyChangeEvent_propertyName(const QDynamicPropertyChangeEvent* self);
void QDynamicPropertyChangeEvent_operatorAssign(QDynamicPropertyChangeEvent* self, QDynamicPropertyChangeEvent* from);

void QDynamicPropertyChangeEvent_delete(QDynamicPropertyChangeEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
