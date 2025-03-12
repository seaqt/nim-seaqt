#pragma once
#ifndef SEAQT_QTCORE_GEN_QABSTRACTANIMATION_H
#define SEAQT_QTCORE_GEN_QABSTRACTANIMATION_H

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
class QAnimationDriver;
class QAnimationGroup;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAbstractAnimation QAbstractAnimation;
typedef struct QAnimationDriver QAnimationDriver;
typedef struct QAnimationGroup QAnimationGroup;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQAbstractAnimation VirtualQAbstractAnimation;
typedef struct QAbstractAnimation_VTable{
	void (*destructor)(VirtualQAbstractAnimation* self);
	QMetaObject* (*metaObject)(const VirtualQAbstractAnimation* self);
	void* (*metacast)(VirtualQAbstractAnimation* self, const char* param1);
	int (*metacall)(VirtualQAbstractAnimation* self, int param1, int param2, void** param3);
	int (*duration)(const VirtualQAbstractAnimation* self);
	bool (*event)(VirtualQAbstractAnimation* self, QEvent* event);
	void (*updateCurrentTime)(VirtualQAbstractAnimation* self, int currentTime);
	void (*updateState)(VirtualQAbstractAnimation* self, int newState, int oldState);
	void (*updateDirection)(VirtualQAbstractAnimation* self, int direction);
	bool (*eventFilter)(VirtualQAbstractAnimation* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAbstractAnimation* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAbstractAnimation* self, QChildEvent* event);
	void (*customEvent)(VirtualQAbstractAnimation* self, QEvent* event);
	void (*connectNotify)(VirtualQAbstractAnimation* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAbstractAnimation* self, QMetaMethod* signal);
}QAbstractAnimation_VTable;

const QAbstractAnimation_VTable* QAbstractAnimation_vtbl(const VirtualQAbstractAnimation* self);
void* QAbstractAnimation_vdata(const VirtualQAbstractAnimation* self);
void QAbstractAnimation_setVdata(VirtualQAbstractAnimation* self, void* vdata);

VirtualQAbstractAnimation* QAbstractAnimation_new(const QAbstractAnimation_VTable* vtbl, void* vdata);
VirtualQAbstractAnimation* QAbstractAnimation_new2(const QAbstractAnimation_VTable* vtbl, void* vdata, QObject* parent);

void QAbstractAnimation_virtbase(QAbstractAnimation* src, QObject** outptr_QObject);
QMetaObject* QAbstractAnimation_metaObject(const QAbstractAnimation* self);
void* QAbstractAnimation_metacast(QAbstractAnimation* self, const char* param1);
int QAbstractAnimation_metacall(QAbstractAnimation* self, int param1, int param2, void** param3);
struct miqt_string QAbstractAnimation_tr(const char* s);
struct miqt_string QAbstractAnimation_trUtf8(const char* s);
int QAbstractAnimation_state(const QAbstractAnimation* self);
QAnimationGroup* QAbstractAnimation_group(const QAbstractAnimation* self);
int QAbstractAnimation_direction(const QAbstractAnimation* self);
void QAbstractAnimation_setDirection(QAbstractAnimation* self, int direction);
int QAbstractAnimation_currentTime(const QAbstractAnimation* self);
int QAbstractAnimation_currentLoopTime(const QAbstractAnimation* self);
int QAbstractAnimation_loopCount(const QAbstractAnimation* self);
void QAbstractAnimation_setLoopCount(QAbstractAnimation* self, int loopCount);
int QAbstractAnimation_currentLoop(const QAbstractAnimation* self);
int QAbstractAnimation_duration(const QAbstractAnimation* self);
int QAbstractAnimation_totalDuration(const QAbstractAnimation* self);
void QAbstractAnimation_finished(QAbstractAnimation* self);
void QAbstractAnimation_connect_finished(VirtualQAbstractAnimation* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractAnimation_stateChanged(QAbstractAnimation* self, int newState, int oldState);
void QAbstractAnimation_connect_stateChanged(VirtualQAbstractAnimation* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QAbstractAnimation_currentLoopChanged(QAbstractAnimation* self, int currentLoop);
void QAbstractAnimation_connect_currentLoopChanged(VirtualQAbstractAnimation* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAbstractAnimation_directionChanged(QAbstractAnimation* self, int param1);
void QAbstractAnimation_connect_directionChanged(VirtualQAbstractAnimation* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAbstractAnimation_start(QAbstractAnimation* self);
void QAbstractAnimation_pause(QAbstractAnimation* self);
void QAbstractAnimation_resume(QAbstractAnimation* self);
void QAbstractAnimation_setPaused(QAbstractAnimation* self, bool paused);
void QAbstractAnimation_stop(QAbstractAnimation* self);
void QAbstractAnimation_setCurrentTime(QAbstractAnimation* self, int msecs);
bool QAbstractAnimation_event(QAbstractAnimation* self, QEvent* event);
void QAbstractAnimation_updateCurrentTime(QAbstractAnimation* self, int currentTime);
void QAbstractAnimation_updateState(QAbstractAnimation* self, int newState, int oldState);
void QAbstractAnimation_updateDirection(QAbstractAnimation* self, int direction);
struct miqt_string QAbstractAnimation_tr2(const char* s, const char* c);
struct miqt_string QAbstractAnimation_tr3(const char* s, const char* c, int n);
struct miqt_string QAbstractAnimation_trUtf82(const char* s, const char* c);
struct miqt_string QAbstractAnimation_trUtf83(const char* s, const char* c, int n);
void QAbstractAnimation_start1(QAbstractAnimation* self, int policy);

QMetaObject* QAbstractAnimation_virtualbase_metaObject(const VirtualQAbstractAnimation* self);
void* QAbstractAnimation_virtualbase_metacast(VirtualQAbstractAnimation* self, const char* param1);
int QAbstractAnimation_virtualbase_metacall(VirtualQAbstractAnimation* self, int param1, int param2, void** param3);
int QAbstractAnimation_virtualbase_duration(const VirtualQAbstractAnimation* self);
bool QAbstractAnimation_virtualbase_event(VirtualQAbstractAnimation* self, QEvent* event);
void QAbstractAnimation_virtualbase_updateCurrentTime(VirtualQAbstractAnimation* self, int currentTime);
void QAbstractAnimation_virtualbase_updateState(VirtualQAbstractAnimation* self, int newState, int oldState);
void QAbstractAnimation_virtualbase_updateDirection(VirtualQAbstractAnimation* self, int direction);
bool QAbstractAnimation_virtualbase_eventFilter(VirtualQAbstractAnimation* self, QObject* watched, QEvent* event);
void QAbstractAnimation_virtualbase_timerEvent(VirtualQAbstractAnimation* self, QTimerEvent* event);
void QAbstractAnimation_virtualbase_childEvent(VirtualQAbstractAnimation* self, QChildEvent* event);
void QAbstractAnimation_virtualbase_customEvent(VirtualQAbstractAnimation* self, QEvent* event);
void QAbstractAnimation_virtualbase_connectNotify(VirtualQAbstractAnimation* self, QMetaMethod* signal);
void QAbstractAnimation_virtualbase_disconnectNotify(VirtualQAbstractAnimation* self, QMetaMethod* signal);

QObject* QAbstractAnimation_protectedbase_sender(const VirtualQAbstractAnimation* self);
int QAbstractAnimation_protectedbase_senderSignalIndex(const VirtualQAbstractAnimation* self);
int QAbstractAnimation_protectedbase_receivers(const VirtualQAbstractAnimation* self, const char* signal);
bool QAbstractAnimation_protectedbase_isSignalConnected(const VirtualQAbstractAnimation* self, QMetaMethod* signal);

const QMetaObject* QAbstractAnimation_staticMetaObject();
void QAbstractAnimation_delete(QAbstractAnimation* self);

typedef struct VirtualQAnimationDriver VirtualQAnimationDriver;
typedef struct QAnimationDriver_VTable{
	void (*destructor)(VirtualQAnimationDriver* self);
	QMetaObject* (*metaObject)(const VirtualQAnimationDriver* self);
	void* (*metacast)(VirtualQAnimationDriver* self, const char* param1);
	int (*metacall)(VirtualQAnimationDriver* self, int param1, int param2, void** param3);
	void (*advance)(VirtualQAnimationDriver* self);
	long long (*elapsed)(const VirtualQAnimationDriver* self);
	void (*start)(VirtualQAnimationDriver* self);
	void (*stop)(VirtualQAnimationDriver* self);
	bool (*event)(VirtualQAnimationDriver* self, QEvent* event);
	bool (*eventFilter)(VirtualQAnimationDriver* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAnimationDriver* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAnimationDriver* self, QChildEvent* event);
	void (*customEvent)(VirtualQAnimationDriver* self, QEvent* event);
	void (*connectNotify)(VirtualQAnimationDriver* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAnimationDriver* self, QMetaMethod* signal);
}QAnimationDriver_VTable;

const QAnimationDriver_VTable* QAnimationDriver_vtbl(const VirtualQAnimationDriver* self);
void* QAnimationDriver_vdata(const VirtualQAnimationDriver* self);
void QAnimationDriver_setVdata(VirtualQAnimationDriver* self, void* vdata);

VirtualQAnimationDriver* QAnimationDriver_new(const QAnimationDriver_VTable* vtbl, void* vdata);
VirtualQAnimationDriver* QAnimationDriver_new2(const QAnimationDriver_VTable* vtbl, void* vdata, QObject* parent);

void QAnimationDriver_virtbase(QAnimationDriver* src, QObject** outptr_QObject);
QMetaObject* QAnimationDriver_metaObject(const QAnimationDriver* self);
void* QAnimationDriver_metacast(QAnimationDriver* self, const char* param1);
int QAnimationDriver_metacall(QAnimationDriver* self, int param1, int param2, void** param3);
struct miqt_string QAnimationDriver_tr(const char* s);
struct miqt_string QAnimationDriver_trUtf8(const char* s);
void QAnimationDriver_advance(QAnimationDriver* self);
void QAnimationDriver_install(QAnimationDriver* self);
void QAnimationDriver_uninstall(QAnimationDriver* self);
bool QAnimationDriver_isRunning(const QAnimationDriver* self);
long long QAnimationDriver_elapsed(const QAnimationDriver* self);
void QAnimationDriver_setStartTime(QAnimationDriver* self, long long startTime);
long long QAnimationDriver_startTime(const QAnimationDriver* self);
void QAnimationDriver_started(QAnimationDriver* self);
void QAnimationDriver_connect_started(VirtualQAnimationDriver* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAnimationDriver_stopped(QAnimationDriver* self);
void QAnimationDriver_connect_stopped(VirtualQAnimationDriver* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAnimationDriver_start(QAnimationDriver* self);
void QAnimationDriver_stop(QAnimationDriver* self);
struct miqt_string QAnimationDriver_tr2(const char* s, const char* c);
struct miqt_string QAnimationDriver_tr3(const char* s, const char* c, int n);
struct miqt_string QAnimationDriver_trUtf82(const char* s, const char* c);
struct miqt_string QAnimationDriver_trUtf83(const char* s, const char* c, int n);

QMetaObject* QAnimationDriver_virtualbase_metaObject(const VirtualQAnimationDriver* self);
void* QAnimationDriver_virtualbase_metacast(VirtualQAnimationDriver* self, const char* param1);
int QAnimationDriver_virtualbase_metacall(VirtualQAnimationDriver* self, int param1, int param2, void** param3);
void QAnimationDriver_virtualbase_advance(VirtualQAnimationDriver* self);
long long QAnimationDriver_virtualbase_elapsed(const VirtualQAnimationDriver* self);
void QAnimationDriver_virtualbase_start(VirtualQAnimationDriver* self);
void QAnimationDriver_virtualbase_stop(VirtualQAnimationDriver* self);
bool QAnimationDriver_virtualbase_event(VirtualQAnimationDriver* self, QEvent* event);
bool QAnimationDriver_virtualbase_eventFilter(VirtualQAnimationDriver* self, QObject* watched, QEvent* event);
void QAnimationDriver_virtualbase_timerEvent(VirtualQAnimationDriver* self, QTimerEvent* event);
void QAnimationDriver_virtualbase_childEvent(VirtualQAnimationDriver* self, QChildEvent* event);
void QAnimationDriver_virtualbase_customEvent(VirtualQAnimationDriver* self, QEvent* event);
void QAnimationDriver_virtualbase_connectNotify(VirtualQAnimationDriver* self, QMetaMethod* signal);
void QAnimationDriver_virtualbase_disconnectNotify(VirtualQAnimationDriver* self, QMetaMethod* signal);

void QAnimationDriver_protectedbase_advanceAnimation(VirtualQAnimationDriver* self);
void QAnimationDriver_protectedbase_advanceAnimation1(VirtualQAnimationDriver* self, long long timeStep);
QObject* QAnimationDriver_protectedbase_sender(const VirtualQAnimationDriver* self);
int QAnimationDriver_protectedbase_senderSignalIndex(const VirtualQAnimationDriver* self);
int QAnimationDriver_protectedbase_receivers(const VirtualQAnimationDriver* self, const char* signal);
bool QAnimationDriver_protectedbase_isSignalConnected(const VirtualQAnimationDriver* self, QMetaMethod* signal);

const QMetaObject* QAnimationDriver_staticMetaObject();
void QAnimationDriver_delete(QAnimationDriver* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
