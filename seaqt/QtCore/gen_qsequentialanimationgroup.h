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

struct QSequentialAnimationGroup_VTable {
	void (*destructor)(struct QSequentialAnimationGroup_VTable* vtbl, QSequentialAnimationGroup* self);
	QMetaObject* (*metaObject)(struct QSequentialAnimationGroup_VTable* vtbl, const QSequentialAnimationGroup* self);
	void* (*metacast)(struct QSequentialAnimationGroup_VTable* vtbl, QSequentialAnimationGroup* self, const char* param1);
	int (*metacall)(struct QSequentialAnimationGroup_VTable* vtbl, QSequentialAnimationGroup* self, int param1, int param2, void** param3);
	int (*duration)(struct QSequentialAnimationGroup_VTable* vtbl, const QSequentialAnimationGroup* self);
	bool (*event)(struct QSequentialAnimationGroup_VTable* vtbl, QSequentialAnimationGroup* self, QEvent* event);
	void (*updateCurrentTime)(struct QSequentialAnimationGroup_VTable* vtbl, QSequentialAnimationGroup* self, int param1);
	void (*updateState)(struct QSequentialAnimationGroup_VTable* vtbl, QSequentialAnimationGroup* self, int newState, int oldState);
	void (*updateDirection)(struct QSequentialAnimationGroup_VTable* vtbl, QSequentialAnimationGroup* self, int direction);
	bool (*eventFilter)(struct QSequentialAnimationGroup_VTable* vtbl, QSequentialAnimationGroup* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSequentialAnimationGroup_VTable* vtbl, QSequentialAnimationGroup* self, QTimerEvent* event);
	void (*childEvent)(struct QSequentialAnimationGroup_VTable* vtbl, QSequentialAnimationGroup* self, QChildEvent* event);
	void (*customEvent)(struct QSequentialAnimationGroup_VTable* vtbl, QSequentialAnimationGroup* self, QEvent* event);
	void (*connectNotify)(struct QSequentialAnimationGroup_VTable* vtbl, QSequentialAnimationGroup* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSequentialAnimationGroup_VTable* vtbl, QSequentialAnimationGroup* self, QMetaMethod* signal);
};
QSequentialAnimationGroup* QSequentialAnimationGroup_new(struct QSequentialAnimationGroup_VTable* vtbl);
QSequentialAnimationGroup* QSequentialAnimationGroup_new2(struct QSequentialAnimationGroup_VTable* vtbl, QObject* parent);
void QSequentialAnimationGroup_virtbase(QSequentialAnimationGroup* src, QAnimationGroup** outptr_QAnimationGroup);
QMetaObject* QSequentialAnimationGroup_metaObject(const QSequentialAnimationGroup* self);
void* QSequentialAnimationGroup_metacast(QSequentialAnimationGroup* self, const char* param1);
int QSequentialAnimationGroup_metacall(QSequentialAnimationGroup* self, int param1, int param2, void** param3);
struct miqt_string QSequentialAnimationGroup_tr(const char* s);
struct miqt_string QSequentialAnimationGroup_trUtf8(const char* s);
QPauseAnimation* QSequentialAnimationGroup_addPause(QSequentialAnimationGroup* self, int msecs);
QPauseAnimation* QSequentialAnimationGroup_insertPause(QSequentialAnimationGroup* self, int index, int msecs);
QAbstractAnimation* QSequentialAnimationGroup_currentAnimation(const QSequentialAnimationGroup* self);
int QSequentialAnimationGroup_duration(const QSequentialAnimationGroup* self);
void QSequentialAnimationGroup_currentAnimationChanged(QSequentialAnimationGroup* self, QAbstractAnimation* current);
void QSequentialAnimationGroup_connect_currentAnimationChanged(QSequentialAnimationGroup* self, intptr_t slot);
bool QSequentialAnimationGroup_event(QSequentialAnimationGroup* self, QEvent* event);
void QSequentialAnimationGroup_updateCurrentTime(QSequentialAnimationGroup* self, int param1);
void QSequentialAnimationGroup_updateState(QSequentialAnimationGroup* self, int newState, int oldState);
void QSequentialAnimationGroup_updateDirection(QSequentialAnimationGroup* self, int direction);
struct miqt_string QSequentialAnimationGroup_tr2(const char* s, const char* c);
struct miqt_string QSequentialAnimationGroup_tr3(const char* s, const char* c, int n);
struct miqt_string QSequentialAnimationGroup_trUtf82(const char* s, const char* c);
struct miqt_string QSequentialAnimationGroup_trUtf83(const char* s, const char* c, int n);
QMetaObject* QSequentialAnimationGroup_virtualbase_metaObject(const void* self);
void* QSequentialAnimationGroup_virtualbase_metacast(void* self, const char* param1);
int QSequentialAnimationGroup_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QSequentialAnimationGroup_virtualbase_duration(const void* self);
bool QSequentialAnimationGroup_virtualbase_event(void* self, QEvent* event);
void QSequentialAnimationGroup_virtualbase_updateCurrentTime(void* self, int param1);
void QSequentialAnimationGroup_virtualbase_updateState(void* self, int newState, int oldState);
void QSequentialAnimationGroup_virtualbase_updateDirection(void* self, int direction);
bool QSequentialAnimationGroup_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSequentialAnimationGroup_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSequentialAnimationGroup_virtualbase_childEvent(void* self, QChildEvent* event);
void QSequentialAnimationGroup_virtualbase_customEvent(void* self, QEvent* event);
void QSequentialAnimationGroup_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSequentialAnimationGroup_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QSequentialAnimationGroup_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QSequentialAnimationGroup_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QSequentialAnimationGroup_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QSequentialAnimationGroup_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QSequentialAnimationGroup_staticMetaObject();
void QSequentialAnimationGroup_delete(QSequentialAnimationGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
