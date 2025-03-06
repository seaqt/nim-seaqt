#pragma once
#ifndef SEAQT_QTCORE_GEN_QPROPERTYANIMATION_H
#define SEAQT_QTCORE_GEN_QPROPERTYANIMATION_H

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
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPropertyAnimation;
class QTimerEvent;
class QVariant;
class QVariantAnimation;
#else
typedef struct QAbstractAnimation QAbstractAnimation;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPropertyAnimation QPropertyAnimation;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QVariantAnimation QVariantAnimation;
#endif

struct QPropertyAnimation_VTable {
	void (*destructor)(struct QPropertyAnimation_VTable* vtbl, QPropertyAnimation* self);
	QMetaObject* (*metaObject)(struct QPropertyAnimation_VTable* vtbl, const QPropertyAnimation* self);
	void* (*metacast)(struct QPropertyAnimation_VTable* vtbl, QPropertyAnimation* self, const char* param1);
	int (*metacall)(struct QPropertyAnimation_VTable* vtbl, QPropertyAnimation* self, int param1, int param2, void** param3);
	bool (*event)(struct QPropertyAnimation_VTable* vtbl, QPropertyAnimation* self, QEvent* event);
	void (*updateCurrentValue)(struct QPropertyAnimation_VTable* vtbl, QPropertyAnimation* self, QVariant* value);
	void (*updateState)(struct QPropertyAnimation_VTable* vtbl, QPropertyAnimation* self, int newState, int oldState);
	int (*duration)(struct QPropertyAnimation_VTable* vtbl, const QPropertyAnimation* self);
	void (*updateCurrentTime)(struct QPropertyAnimation_VTable* vtbl, QPropertyAnimation* self, int param1);
	QVariant* (*interpolated)(struct QPropertyAnimation_VTable* vtbl, const QPropertyAnimation* self, QVariant* from, QVariant* to, double progress);
	void (*updateDirection)(struct QPropertyAnimation_VTable* vtbl, QPropertyAnimation* self, int direction);
	bool (*eventFilter)(struct QPropertyAnimation_VTable* vtbl, QPropertyAnimation* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QPropertyAnimation_VTable* vtbl, QPropertyAnimation* self, QTimerEvent* event);
	void (*childEvent)(struct QPropertyAnimation_VTable* vtbl, QPropertyAnimation* self, QChildEvent* event);
	void (*customEvent)(struct QPropertyAnimation_VTable* vtbl, QPropertyAnimation* self, QEvent* event);
	void (*connectNotify)(struct QPropertyAnimation_VTable* vtbl, QPropertyAnimation* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QPropertyAnimation_VTable* vtbl, QPropertyAnimation* self, QMetaMethod* signal);
};
QPropertyAnimation* QPropertyAnimation_new(struct QPropertyAnimation_VTable* vtbl);
QPropertyAnimation* QPropertyAnimation_new2(struct QPropertyAnimation_VTable* vtbl, QObject* target, struct miqt_string propertyName);
QPropertyAnimation* QPropertyAnimation_new3(struct QPropertyAnimation_VTable* vtbl, QObject* parent);
QPropertyAnimation* QPropertyAnimation_new4(struct QPropertyAnimation_VTable* vtbl, QObject* target, struct miqt_string propertyName, QObject* parent);
void QPropertyAnimation_virtbase(QPropertyAnimation* src, QVariantAnimation** outptr_QVariantAnimation);
QMetaObject* QPropertyAnimation_metaObject(const QPropertyAnimation* self);
void* QPropertyAnimation_metacast(QPropertyAnimation* self, const char* param1);
int QPropertyAnimation_metacall(QPropertyAnimation* self, int param1, int param2, void** param3);
struct miqt_string QPropertyAnimation_tr(const char* s);
struct miqt_string QPropertyAnimation_trUtf8(const char* s);
QObject* QPropertyAnimation_targetObject(const QPropertyAnimation* self);
void QPropertyAnimation_setTargetObject(QPropertyAnimation* self, QObject* target);
struct miqt_string QPropertyAnimation_propertyName(const QPropertyAnimation* self);
void QPropertyAnimation_setPropertyName(QPropertyAnimation* self, struct miqt_string propertyName);
bool QPropertyAnimation_event(QPropertyAnimation* self, QEvent* event);
void QPropertyAnimation_updateCurrentValue(QPropertyAnimation* self, QVariant* value);
void QPropertyAnimation_updateState(QPropertyAnimation* self, int newState, int oldState);
struct miqt_string QPropertyAnimation_tr2(const char* s, const char* c);
struct miqt_string QPropertyAnimation_tr3(const char* s, const char* c, int n);
struct miqt_string QPropertyAnimation_trUtf82(const char* s, const char* c);
struct miqt_string QPropertyAnimation_trUtf83(const char* s, const char* c, int n);
QMetaObject* QPropertyAnimation_virtualbase_metaObject(const void* self);
void* QPropertyAnimation_virtualbase_metacast(void* self, const char* param1);
int QPropertyAnimation_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QPropertyAnimation_virtualbase_event(void* self, QEvent* event);
void QPropertyAnimation_virtualbase_updateCurrentValue(void* self, QVariant* value);
void QPropertyAnimation_virtualbase_updateState(void* self, int newState, int oldState);
int QPropertyAnimation_virtualbase_duration(const void* self);
void QPropertyAnimation_virtualbase_updateCurrentTime(void* self, int param1);
QVariant* QPropertyAnimation_virtualbase_interpolated(const void* self, QVariant* from, QVariant* to, double progress);
void QPropertyAnimation_virtualbase_updateDirection(void* self, int direction);
bool QPropertyAnimation_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QPropertyAnimation_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QPropertyAnimation_virtualbase_childEvent(void* self, QChildEvent* event);
void QPropertyAnimation_virtualbase_customEvent(void* self, QEvent* event);
void QPropertyAnimation_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QPropertyAnimation_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QPropertyAnimation_protectedbase_sender(const void* self);
int QPropertyAnimation_protectedbase_senderSignalIndex(const void* self);
int QPropertyAnimation_protectedbase_receivers(const void* self, const char* signal);
bool QPropertyAnimation_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QPropertyAnimation_staticMetaObject();
void QPropertyAnimation_delete(QPropertyAnimation* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
