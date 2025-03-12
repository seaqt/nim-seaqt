#pragma once
#ifndef SEAQT_QTCORE_GEN_QVARIANTANIMATION_H
#define SEAQT_QTCORE_GEN_QVARIANTANIMATION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractAnimation;
class QChildEvent;
class QEasingCurve;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QVariant;
class QVariantAnimation;
#else
typedef struct QAbstractAnimation QAbstractAnimation;
typedef struct QChildEvent QChildEvent;
typedef struct QEasingCurve QEasingCurve;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVariantAnimation QVariantAnimation;
#endif

typedef struct VirtualQVariantAnimation VirtualQVariantAnimation;
typedef struct QVariantAnimation_VTable{
	void (*destructor)(VirtualQVariantAnimation* self);
	QMetaObject* (*metaObject)(const VirtualQVariantAnimation* self);
	void* (*metacast)(VirtualQVariantAnimation* self, const char* param1);
	int (*metacall)(VirtualQVariantAnimation* self, int param1, int param2, void** param3);
	int (*duration)(const VirtualQVariantAnimation* self);
	bool (*event)(VirtualQVariantAnimation* self, QEvent* event);
	void (*updateCurrentTime)(VirtualQVariantAnimation* self, int param1);
	void (*updateState)(VirtualQVariantAnimation* self, int newState, int oldState);
	void (*updateCurrentValue)(VirtualQVariantAnimation* self, QVariant* value);
	QVariant* (*interpolated)(const VirtualQVariantAnimation* self, QVariant* from, QVariant* to, double progress);
	void (*updateDirection)(VirtualQVariantAnimation* self, int direction);
	bool (*eventFilter)(VirtualQVariantAnimation* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQVariantAnimation* self, QTimerEvent* event);
	void (*childEvent)(VirtualQVariantAnimation* self, QChildEvent* event);
	void (*customEvent)(VirtualQVariantAnimation* self, QEvent* event);
	void (*connectNotify)(VirtualQVariantAnimation* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQVariantAnimation* self, QMetaMethod* signal);
}QVariantAnimation_VTable;

const QVariantAnimation_VTable* QVariantAnimation_vtbl(const VirtualQVariantAnimation* self);
void* QVariantAnimation_vdata(const VirtualQVariantAnimation* self);
void QVariantAnimation_setVdata(VirtualQVariantAnimation* self, void* vdata);

VirtualQVariantAnimation* QVariantAnimation_new(const QVariantAnimation_VTable* vtbl, void* vdata);
VirtualQVariantAnimation* QVariantAnimation_new2(const QVariantAnimation_VTable* vtbl, void* vdata, QObject* parent);

void QVariantAnimation_virtbase(QVariantAnimation* src, QAbstractAnimation** outptr_QAbstractAnimation);
QMetaObject* QVariantAnimation_metaObject(const QVariantAnimation* self);
void* QVariantAnimation_metacast(QVariantAnimation* self, const char* param1);
int QVariantAnimation_metacall(QVariantAnimation* self, int param1, int param2, void** param3);
struct miqt_string QVariantAnimation_tr(const char* s);
struct miqt_string QVariantAnimation_trUtf8(const char* s);
QVariant* QVariantAnimation_startValue(const QVariantAnimation* self);
void QVariantAnimation_setStartValue(QVariantAnimation* self, QVariant* value);
QVariant* QVariantAnimation_endValue(const QVariantAnimation* self);
void QVariantAnimation_setEndValue(QVariantAnimation* self, QVariant* value);
QVariant* QVariantAnimation_keyValueAt(const QVariantAnimation* self, double step);
void QVariantAnimation_setKeyValueAt(QVariantAnimation* self, double step, QVariant* value);
struct miqt_array /* of struct miqt_map  tuple of double and QVariant*   */  QVariantAnimation_keyValues(const QVariantAnimation* self);
void QVariantAnimation_setKeyValues(QVariantAnimation* self, struct miqt_array /* of struct miqt_map  tuple of double and QVariant*   */  values);
QVariant* QVariantAnimation_currentValue(const QVariantAnimation* self);
int QVariantAnimation_duration(const QVariantAnimation* self);
void QVariantAnimation_setDuration(QVariantAnimation* self, int msecs);
QEasingCurve* QVariantAnimation_easingCurve(const QVariantAnimation* self);
void QVariantAnimation_setEasingCurve(QVariantAnimation* self, QEasingCurve* easing);
void QVariantAnimation_valueChanged(QVariantAnimation* self, QVariant* value);
void QVariantAnimation_connect_valueChanged(VirtualQVariantAnimation* self, intptr_t slot, void (*callback)(intptr_t, QVariant*), void (*release)(intptr_t));
bool QVariantAnimation_event(QVariantAnimation* self, QEvent* event);
void QVariantAnimation_updateCurrentTime(QVariantAnimation* self, int param1);
void QVariantAnimation_updateState(QVariantAnimation* self, int newState, int oldState);
void QVariantAnimation_updateCurrentValue(QVariantAnimation* self, QVariant* value);
QVariant* QVariantAnimation_interpolated(const QVariantAnimation* self, QVariant* from, QVariant* to, double progress);
struct miqt_string QVariantAnimation_tr2(const char* s, const char* c);
struct miqt_string QVariantAnimation_tr3(const char* s, const char* c, int n);
struct miqt_string QVariantAnimation_trUtf82(const char* s, const char* c);
struct miqt_string QVariantAnimation_trUtf83(const char* s, const char* c, int n);

QMetaObject* QVariantAnimation_virtualbase_metaObject(const VirtualQVariantAnimation* self);
void* QVariantAnimation_virtualbase_metacast(VirtualQVariantAnimation* self, const char* param1);
int QVariantAnimation_virtualbase_metacall(VirtualQVariantAnimation* self, int param1, int param2, void** param3);
int QVariantAnimation_virtualbase_duration(const VirtualQVariantAnimation* self);
bool QVariantAnimation_virtualbase_event(VirtualQVariantAnimation* self, QEvent* event);
void QVariantAnimation_virtualbase_updateCurrentTime(VirtualQVariantAnimation* self, int param1);
void QVariantAnimation_virtualbase_updateState(VirtualQVariantAnimation* self, int newState, int oldState);
void QVariantAnimation_virtualbase_updateCurrentValue(VirtualQVariantAnimation* self, QVariant* value);
QVariant* QVariantAnimation_virtualbase_interpolated(const VirtualQVariantAnimation* self, QVariant* from, QVariant* to, double progress);
void QVariantAnimation_virtualbase_updateDirection(VirtualQVariantAnimation* self, int direction);
bool QVariantAnimation_virtualbase_eventFilter(VirtualQVariantAnimation* self, QObject* watched, QEvent* event);
void QVariantAnimation_virtualbase_timerEvent(VirtualQVariantAnimation* self, QTimerEvent* event);
void QVariantAnimation_virtualbase_childEvent(VirtualQVariantAnimation* self, QChildEvent* event);
void QVariantAnimation_virtualbase_customEvent(VirtualQVariantAnimation* self, QEvent* event);
void QVariantAnimation_virtualbase_connectNotify(VirtualQVariantAnimation* self, QMetaMethod* signal);
void QVariantAnimation_virtualbase_disconnectNotify(VirtualQVariantAnimation* self, QMetaMethod* signal);

QObject* QVariantAnimation_protectedbase_sender(const VirtualQVariantAnimation* self);
int QVariantAnimation_protectedbase_senderSignalIndex(const VirtualQVariantAnimation* self);
int QVariantAnimation_protectedbase_receivers(const VirtualQVariantAnimation* self, const char* signal);
bool QVariantAnimation_protectedbase_isSignalConnected(const VirtualQVariantAnimation* self, QMetaMethod* signal);

const QMetaObject* QVariantAnimation_staticMetaObject();
void QVariantAnimation_delete(QVariantAnimation* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
