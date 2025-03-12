#pragma once
#ifndef SEAQT_QTCORE_GEN_QSEQUENTIALANIMATIONGROUP_H
#define SEAQT_QTCORE_GEN_QSEQUENTIALANIMATIONGROUP_H

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
class QAnimationGroup;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPauseAnimation;
class QSequentialAnimationGroup;
class QTimerEvent;
#else
typedef struct QAbstractAnimation QAbstractAnimation;
typedef struct QAnimationGroup QAnimationGroup;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPauseAnimation QPauseAnimation;
typedef struct QSequentialAnimationGroup QSequentialAnimationGroup;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQSequentialAnimationGroup VirtualQSequentialAnimationGroup;
typedef struct QSequentialAnimationGroup_VTable{
	void (*destructor)(VirtualQSequentialAnimationGroup* self);
	QMetaObject* (*metaObject)(const VirtualQSequentialAnimationGroup* self);
	void* (*metacast)(VirtualQSequentialAnimationGroup* self, const char* param1);
	int (*metacall)(VirtualQSequentialAnimationGroup* self, int param1, int param2, void** param3);
	int (*duration)(const VirtualQSequentialAnimationGroup* self);
	bool (*event)(VirtualQSequentialAnimationGroup* self, QEvent* event);
	void (*updateCurrentTime)(VirtualQSequentialAnimationGroup* self, int param1);
	void (*updateState)(VirtualQSequentialAnimationGroup* self, int newState, int oldState);
	void (*updateDirection)(VirtualQSequentialAnimationGroup* self, int direction);
	bool (*eventFilter)(VirtualQSequentialAnimationGroup* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSequentialAnimationGroup* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSequentialAnimationGroup* self, QChildEvent* event);
	void (*customEvent)(VirtualQSequentialAnimationGroup* self, QEvent* event);
	void (*connectNotify)(VirtualQSequentialAnimationGroup* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSequentialAnimationGroup* self, QMetaMethod* signal);
}QSequentialAnimationGroup_VTable;

const QSequentialAnimationGroup_VTable* QSequentialAnimationGroup_vtbl(const VirtualQSequentialAnimationGroup* self);
void* QSequentialAnimationGroup_vdata(const VirtualQSequentialAnimationGroup* self);
void QSequentialAnimationGroup_setVdata(VirtualQSequentialAnimationGroup* self, void* vdata);

VirtualQSequentialAnimationGroup* QSequentialAnimationGroup_new(const QSequentialAnimationGroup_VTable* vtbl, void* vdata);
VirtualQSequentialAnimationGroup* QSequentialAnimationGroup_new2(const QSequentialAnimationGroup_VTable* vtbl, void* vdata, QObject* parent);

void QSequentialAnimationGroup_virtbase(QSequentialAnimationGroup* src, QAnimationGroup** outptr_QAnimationGroup);
QMetaObject* QSequentialAnimationGroup_metaObject(const QSequentialAnimationGroup* self);
void* QSequentialAnimationGroup_metacast(QSequentialAnimationGroup* self, const char* param1);
int QSequentialAnimationGroup_metacall(QSequentialAnimationGroup* self, int param1, int param2, void** param3);
struct miqt_string QSequentialAnimationGroup_tr(const char* s);
QPauseAnimation* QSequentialAnimationGroup_addPause(QSequentialAnimationGroup* self, int msecs);
QPauseAnimation* QSequentialAnimationGroup_insertPause(QSequentialAnimationGroup* self, int index, int msecs);
QAbstractAnimation* QSequentialAnimationGroup_currentAnimation(const QSequentialAnimationGroup* self);
int QSequentialAnimationGroup_duration(const QSequentialAnimationGroup* self);
void QSequentialAnimationGroup_currentAnimationChanged(QSequentialAnimationGroup* self, QAbstractAnimation* current);
void QSequentialAnimationGroup_connect_currentAnimationChanged(VirtualQSequentialAnimationGroup* self, intptr_t slot, void (*callback)(intptr_t, QAbstractAnimation*), void (*release)(intptr_t));
bool QSequentialAnimationGroup_event(QSequentialAnimationGroup* self, QEvent* event);
void QSequentialAnimationGroup_updateCurrentTime(QSequentialAnimationGroup* self, int param1);
void QSequentialAnimationGroup_updateState(QSequentialAnimationGroup* self, int newState, int oldState);
void QSequentialAnimationGroup_updateDirection(QSequentialAnimationGroup* self, int direction);
struct miqt_string QSequentialAnimationGroup_tr2(const char* s, const char* c);
struct miqt_string QSequentialAnimationGroup_tr3(const char* s, const char* c, int n);

QMetaObject* QSequentialAnimationGroup_virtualbase_metaObject(const VirtualQSequentialAnimationGroup* self);
void* QSequentialAnimationGroup_virtualbase_metacast(VirtualQSequentialAnimationGroup* self, const char* param1);
int QSequentialAnimationGroup_virtualbase_metacall(VirtualQSequentialAnimationGroup* self, int param1, int param2, void** param3);
int QSequentialAnimationGroup_virtualbase_duration(const VirtualQSequentialAnimationGroup* self);
bool QSequentialAnimationGroup_virtualbase_event(VirtualQSequentialAnimationGroup* self, QEvent* event);
void QSequentialAnimationGroup_virtualbase_updateCurrentTime(VirtualQSequentialAnimationGroup* self, int param1);
void QSequentialAnimationGroup_virtualbase_updateState(VirtualQSequentialAnimationGroup* self, int newState, int oldState);
void QSequentialAnimationGroup_virtualbase_updateDirection(VirtualQSequentialAnimationGroup* self, int direction);
bool QSequentialAnimationGroup_virtualbase_eventFilter(VirtualQSequentialAnimationGroup* self, QObject* watched, QEvent* event);
void QSequentialAnimationGroup_virtualbase_timerEvent(VirtualQSequentialAnimationGroup* self, QTimerEvent* event);
void QSequentialAnimationGroup_virtualbase_childEvent(VirtualQSequentialAnimationGroup* self, QChildEvent* event);
void QSequentialAnimationGroup_virtualbase_customEvent(VirtualQSequentialAnimationGroup* self, QEvent* event);
void QSequentialAnimationGroup_virtualbase_connectNotify(VirtualQSequentialAnimationGroup* self, QMetaMethod* signal);
void QSequentialAnimationGroup_virtualbase_disconnectNotify(VirtualQSequentialAnimationGroup* self, QMetaMethod* signal);

QObject* QSequentialAnimationGroup_protectedbase_sender(const VirtualQSequentialAnimationGroup* self);
int QSequentialAnimationGroup_protectedbase_senderSignalIndex(const VirtualQSequentialAnimationGroup* self);
int QSequentialAnimationGroup_protectedbase_receivers(const VirtualQSequentialAnimationGroup* self, const char* signal);
bool QSequentialAnimationGroup_protectedbase_isSignalConnected(const VirtualQSequentialAnimationGroup* self, QMetaMethod* signal);

const QMetaObject* QSequentialAnimationGroup_staticMetaObject();
void QSequentialAnimationGroup_delete(QSequentialAnimationGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
