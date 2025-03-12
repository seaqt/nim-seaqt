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

typedef struct VirtualQPropertyAnimation VirtualQPropertyAnimation;
typedef struct QPropertyAnimation_VTable{
	void (*destructor)(VirtualQPropertyAnimation* self);
	QMetaObject* (*metaObject)(const VirtualQPropertyAnimation* self);
	void* (*metacast)(VirtualQPropertyAnimation* self, const char* param1);
	int (*metacall)(VirtualQPropertyAnimation* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQPropertyAnimation* self, QEvent* event);
	void (*updateCurrentValue)(VirtualQPropertyAnimation* self, QVariant* value);
	void (*updateState)(VirtualQPropertyAnimation* self, int newState, int oldState);
	int (*duration)(const VirtualQPropertyAnimation* self);
	void (*updateCurrentTime)(VirtualQPropertyAnimation* self, int param1);
	QVariant* (*interpolated)(const VirtualQPropertyAnimation* self, QVariant* from, QVariant* to, double progress);
	void (*updateDirection)(VirtualQPropertyAnimation* self, int direction);
	bool (*eventFilter)(VirtualQPropertyAnimation* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQPropertyAnimation* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPropertyAnimation* self, QChildEvent* event);
	void (*customEvent)(VirtualQPropertyAnimation* self, QEvent* event);
	void (*connectNotify)(VirtualQPropertyAnimation* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPropertyAnimation* self, QMetaMethod* signal);
}QPropertyAnimation_VTable;

const QPropertyAnimation_VTable* QPropertyAnimation_vtbl(const VirtualQPropertyAnimation* self);
void* QPropertyAnimation_vdata(const VirtualQPropertyAnimation* self);
void QPropertyAnimation_setVdata(VirtualQPropertyAnimation* self, void* vdata);

VirtualQPropertyAnimation* QPropertyAnimation_new(const QPropertyAnimation_VTable* vtbl, void* vdata);
VirtualQPropertyAnimation* QPropertyAnimation_new2(const QPropertyAnimation_VTable* vtbl, void* vdata, QObject* target, struct miqt_string propertyName);
VirtualQPropertyAnimation* QPropertyAnimation_new3(const QPropertyAnimation_VTable* vtbl, void* vdata, QObject* parent);
VirtualQPropertyAnimation* QPropertyAnimation_new4(const QPropertyAnimation_VTable* vtbl, void* vdata, QObject* target, struct miqt_string propertyName, QObject* parent);

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

QMetaObject* QPropertyAnimation_virtualbase_metaObject(const VirtualQPropertyAnimation* self);
void* QPropertyAnimation_virtualbase_metacast(VirtualQPropertyAnimation* self, const char* param1);
int QPropertyAnimation_virtualbase_metacall(VirtualQPropertyAnimation* self, int param1, int param2, void** param3);
bool QPropertyAnimation_virtualbase_event(VirtualQPropertyAnimation* self, QEvent* event);
void QPropertyAnimation_virtualbase_updateCurrentValue(VirtualQPropertyAnimation* self, QVariant* value);
void QPropertyAnimation_virtualbase_updateState(VirtualQPropertyAnimation* self, int newState, int oldState);
int QPropertyAnimation_virtualbase_duration(const VirtualQPropertyAnimation* self);
void QPropertyAnimation_virtualbase_updateCurrentTime(VirtualQPropertyAnimation* self, int param1);
QVariant* QPropertyAnimation_virtualbase_interpolated(const VirtualQPropertyAnimation* self, QVariant* from, QVariant* to, double progress);
void QPropertyAnimation_virtualbase_updateDirection(VirtualQPropertyAnimation* self, int direction);
bool QPropertyAnimation_virtualbase_eventFilter(VirtualQPropertyAnimation* self, QObject* watched, QEvent* event);
void QPropertyAnimation_virtualbase_timerEvent(VirtualQPropertyAnimation* self, QTimerEvent* event);
void QPropertyAnimation_virtualbase_childEvent(VirtualQPropertyAnimation* self, QChildEvent* event);
void QPropertyAnimation_virtualbase_customEvent(VirtualQPropertyAnimation* self, QEvent* event);
void QPropertyAnimation_virtualbase_connectNotify(VirtualQPropertyAnimation* self, QMetaMethod* signal);
void QPropertyAnimation_virtualbase_disconnectNotify(VirtualQPropertyAnimation* self, QMetaMethod* signal);

QObject* QPropertyAnimation_protectedbase_sender(const VirtualQPropertyAnimation* self);
int QPropertyAnimation_protectedbase_senderSignalIndex(const VirtualQPropertyAnimation* self);
int QPropertyAnimation_protectedbase_receivers(const VirtualQPropertyAnimation* self, const char* signal);
bool QPropertyAnimation_protectedbase_isSignalConnected(const VirtualQPropertyAnimation* self, QMetaMethod* signal);

const QMetaObject* QPropertyAnimation_staticMetaObject();
void QPropertyAnimation_delete(QPropertyAnimation* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
