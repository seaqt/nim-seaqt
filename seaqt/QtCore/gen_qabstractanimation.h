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

struct QAbstractAnimation_VTable {
	void (*destructor)(struct QAbstractAnimation_VTable* vtbl, QAbstractAnimation* self);
	QMetaObject* (*metaObject)(struct QAbstractAnimation_VTable* vtbl, const QAbstractAnimation* self);
	void* (*metacast)(struct QAbstractAnimation_VTable* vtbl, QAbstractAnimation* self, const char* param1);
	int (*metacall)(struct QAbstractAnimation_VTable* vtbl, QAbstractAnimation* self, int param1, int param2, void** param3);
	int (*duration)(struct QAbstractAnimation_VTable* vtbl, const QAbstractAnimation* self);
	bool (*event)(struct QAbstractAnimation_VTable* vtbl, QAbstractAnimation* self, QEvent* event);
	void (*updateCurrentTime)(struct QAbstractAnimation_VTable* vtbl, QAbstractAnimation* self, int currentTime);
	void (*updateState)(struct QAbstractAnimation_VTable* vtbl, QAbstractAnimation* self, int newState, int oldState);
	void (*updateDirection)(struct QAbstractAnimation_VTable* vtbl, QAbstractAnimation* self, int direction);
	bool (*eventFilter)(struct QAbstractAnimation_VTable* vtbl, QAbstractAnimation* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAbstractAnimation_VTable* vtbl, QAbstractAnimation* self, QTimerEvent* event);
	void (*childEvent)(struct QAbstractAnimation_VTable* vtbl, QAbstractAnimation* self, QChildEvent* event);
	void (*customEvent)(struct QAbstractAnimation_VTable* vtbl, QAbstractAnimation* self, QEvent* event);
	void (*connectNotify)(struct QAbstractAnimation_VTable* vtbl, QAbstractAnimation* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAbstractAnimation_VTable* vtbl, QAbstractAnimation* self, QMetaMethod* signal);
};
QAbstractAnimation* QAbstractAnimation_new(struct QAbstractAnimation_VTable* vtbl);
QAbstractAnimation* QAbstractAnimation_new2(struct QAbstractAnimation_VTable* vtbl, QObject* parent);
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
void QAbstractAnimation_connect_finished(QAbstractAnimation* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractAnimation_stateChanged(QAbstractAnimation* self, int newState, int oldState);
void QAbstractAnimation_connect_stateChanged(QAbstractAnimation* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QAbstractAnimation_currentLoopChanged(QAbstractAnimation* self, int currentLoop);
void QAbstractAnimation_connect_currentLoopChanged(QAbstractAnimation* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAbstractAnimation_directionChanged(QAbstractAnimation* self, int param1);
void QAbstractAnimation_connect_directionChanged(QAbstractAnimation* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
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
QMetaObject* QAbstractAnimation_virtualbase_metaObject(const void* self);
void* QAbstractAnimation_virtualbase_metacast(void* self, const char* param1);
int QAbstractAnimation_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QAbstractAnimation_virtualbase_duration(const void* self);
bool QAbstractAnimation_virtualbase_event(void* self, QEvent* event);
void QAbstractAnimation_virtualbase_updateCurrentTime(void* self, int currentTime);
void QAbstractAnimation_virtualbase_updateState(void* self, int newState, int oldState);
void QAbstractAnimation_virtualbase_updateDirection(void* self, int direction);
bool QAbstractAnimation_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAbstractAnimation_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAbstractAnimation_virtualbase_childEvent(void* self, QChildEvent* event);
void QAbstractAnimation_virtualbase_customEvent(void* self, QEvent* event);
void QAbstractAnimation_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAbstractAnimation_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QAbstractAnimation_protectedbase_sender(const void* self);
int QAbstractAnimation_protectedbase_senderSignalIndex(const void* self);
int QAbstractAnimation_protectedbase_receivers(const void* self, const char* signal);
bool QAbstractAnimation_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QAbstractAnimation_staticMetaObject();
void QAbstractAnimation_delete(QAbstractAnimation* self);

struct QAnimationDriver_VTable {
	void (*destructor)(struct QAnimationDriver_VTable* vtbl, QAnimationDriver* self);
	QMetaObject* (*metaObject)(struct QAnimationDriver_VTable* vtbl, const QAnimationDriver* self);
	void* (*metacast)(struct QAnimationDriver_VTable* vtbl, QAnimationDriver* self, const char* param1);
	int (*metacall)(struct QAnimationDriver_VTable* vtbl, QAnimationDriver* self, int param1, int param2, void** param3);
	void (*advance)(struct QAnimationDriver_VTable* vtbl, QAnimationDriver* self);
	long long (*elapsed)(struct QAnimationDriver_VTable* vtbl, const QAnimationDriver* self);
	void (*start)(struct QAnimationDriver_VTable* vtbl, QAnimationDriver* self);
	void (*stop)(struct QAnimationDriver_VTable* vtbl, QAnimationDriver* self);
	bool (*event)(struct QAnimationDriver_VTable* vtbl, QAnimationDriver* self, QEvent* event);
	bool (*eventFilter)(struct QAnimationDriver_VTable* vtbl, QAnimationDriver* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAnimationDriver_VTable* vtbl, QAnimationDriver* self, QTimerEvent* event);
	void (*childEvent)(struct QAnimationDriver_VTable* vtbl, QAnimationDriver* self, QChildEvent* event);
	void (*customEvent)(struct QAnimationDriver_VTable* vtbl, QAnimationDriver* self, QEvent* event);
	void (*connectNotify)(struct QAnimationDriver_VTable* vtbl, QAnimationDriver* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAnimationDriver_VTable* vtbl, QAnimationDriver* self, QMetaMethod* signal);
};
QAnimationDriver* QAnimationDriver_new(struct QAnimationDriver_VTable* vtbl);
QAnimationDriver* QAnimationDriver_new2(struct QAnimationDriver_VTable* vtbl, QObject* parent);
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
void QAnimationDriver_connect_started(QAnimationDriver* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAnimationDriver_stopped(QAnimationDriver* self);
void QAnimationDriver_connect_stopped(QAnimationDriver* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAnimationDriver_start(QAnimationDriver* self);
void QAnimationDriver_stop(QAnimationDriver* self);
struct miqt_string QAnimationDriver_tr2(const char* s, const char* c);
struct miqt_string QAnimationDriver_tr3(const char* s, const char* c, int n);
struct miqt_string QAnimationDriver_trUtf82(const char* s, const char* c);
struct miqt_string QAnimationDriver_trUtf83(const char* s, const char* c, int n);
QMetaObject* QAnimationDriver_virtualbase_metaObject(const void* self);
void* QAnimationDriver_virtualbase_metacast(void* self, const char* param1);
int QAnimationDriver_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QAnimationDriver_virtualbase_advance(void* self);
long long QAnimationDriver_virtualbase_elapsed(const void* self);
void QAnimationDriver_virtualbase_start(void* self);
void QAnimationDriver_virtualbase_stop(void* self);
bool QAnimationDriver_virtualbase_event(void* self, QEvent* event);
bool QAnimationDriver_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAnimationDriver_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAnimationDriver_virtualbase_childEvent(void* self, QChildEvent* event);
void QAnimationDriver_virtualbase_customEvent(void* self, QEvent* event);
void QAnimationDriver_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAnimationDriver_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QAnimationDriver_protectedbase_advanceAnimation(void* self);
void QAnimationDriver_protectedbase_advanceAnimation1(void* self, long long timeStep);
QObject* QAnimationDriver_protectedbase_sender(const void* self);
int QAnimationDriver_protectedbase_senderSignalIndex(const void* self);
int QAnimationDriver_protectedbase_receivers(const void* self, const char* signal);
bool QAnimationDriver_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QAnimationDriver_staticMetaObject();
void QAnimationDriver_delete(QAnimationDriver* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
