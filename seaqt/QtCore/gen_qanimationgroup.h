#pragma once
#ifndef SEAQT_QTCORE_GEN_QANIMATIONGROUP_H
#define SEAQT_QTCORE_GEN_QANIMATIONGROUP_H

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
class QTimerEvent;
#else
typedef struct QAbstractAnimation QAbstractAnimation;
typedef struct QAnimationGroup QAnimationGroup;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QAnimationGroup_VTable {
	void (*destructor)(struct QAnimationGroup_VTable* vtbl, QAnimationGroup* self);
	QMetaObject* (*metaObject)(struct QAnimationGroup_VTable* vtbl, const QAnimationGroup* self);
	void* (*metacast)(struct QAnimationGroup_VTable* vtbl, QAnimationGroup* self, const char* param1);
	int (*metacall)(struct QAnimationGroup_VTable* vtbl, QAnimationGroup* self, int param1, int param2, void** param3);
	bool (*event)(struct QAnimationGroup_VTable* vtbl, QAnimationGroup* self, QEvent* event);
	int (*duration)(struct QAnimationGroup_VTable* vtbl, const QAnimationGroup* self);
	void (*updateCurrentTime)(struct QAnimationGroup_VTable* vtbl, QAnimationGroup* self, int currentTime);
	void (*updateState)(struct QAnimationGroup_VTable* vtbl, QAnimationGroup* self, int newState, int oldState);
	void (*updateDirection)(struct QAnimationGroup_VTable* vtbl, QAnimationGroup* self, int direction);
	bool (*eventFilter)(struct QAnimationGroup_VTable* vtbl, QAnimationGroup* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAnimationGroup_VTable* vtbl, QAnimationGroup* self, QTimerEvent* event);
	void (*childEvent)(struct QAnimationGroup_VTable* vtbl, QAnimationGroup* self, QChildEvent* event);
	void (*customEvent)(struct QAnimationGroup_VTable* vtbl, QAnimationGroup* self, QEvent* event);
	void (*connectNotify)(struct QAnimationGroup_VTable* vtbl, QAnimationGroup* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAnimationGroup_VTable* vtbl, QAnimationGroup* self, QMetaMethod* signal);
};
QAnimationGroup* QAnimationGroup_new(struct QAnimationGroup_VTable* vtbl);
QAnimationGroup* QAnimationGroup_new2(struct QAnimationGroup_VTable* vtbl, QObject* parent);
void QAnimationGroup_virtbase(QAnimationGroup* src, QAbstractAnimation** outptr_QAbstractAnimation);
QMetaObject* QAnimationGroup_metaObject(const QAnimationGroup* self);
void* QAnimationGroup_metacast(QAnimationGroup* self, const char* param1);
int QAnimationGroup_metacall(QAnimationGroup* self, int param1, int param2, void** param3);
struct miqt_string QAnimationGroup_tr(const char* s);
QAbstractAnimation* QAnimationGroup_animationAt(const QAnimationGroup* self, int index);
int QAnimationGroup_animationCount(const QAnimationGroup* self);
int QAnimationGroup_indexOfAnimation(const QAnimationGroup* self, QAbstractAnimation* animation);
void QAnimationGroup_addAnimation(QAnimationGroup* self, QAbstractAnimation* animation);
void QAnimationGroup_insertAnimation(QAnimationGroup* self, int index, QAbstractAnimation* animation);
void QAnimationGroup_removeAnimation(QAnimationGroup* self, QAbstractAnimation* animation);
QAbstractAnimation* QAnimationGroup_takeAnimation(QAnimationGroup* self, int index);
void QAnimationGroup_clear(QAnimationGroup* self);
bool QAnimationGroup_event(QAnimationGroup* self, QEvent* event);
struct miqt_string QAnimationGroup_tr2(const char* s, const char* c);
struct miqt_string QAnimationGroup_tr3(const char* s, const char* c, int n);
QMetaObject* QAnimationGroup_virtualbase_metaObject(const void* self);
void* QAnimationGroup_virtualbase_metacast(void* self, const char* param1);
int QAnimationGroup_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QAnimationGroup_virtualbase_event(void* self, QEvent* event);
int QAnimationGroup_virtualbase_duration(const void* self);
void QAnimationGroup_virtualbase_updateCurrentTime(void* self, int currentTime);
void QAnimationGroup_virtualbase_updateState(void* self, int newState, int oldState);
void QAnimationGroup_virtualbase_updateDirection(void* self, int direction);
bool QAnimationGroup_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAnimationGroup_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAnimationGroup_virtualbase_childEvent(void* self, QChildEvent* event);
void QAnimationGroup_virtualbase_customEvent(void* self, QEvent* event);
void QAnimationGroup_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAnimationGroup_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QAnimationGroup_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAnimationGroup_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAnimationGroup_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAnimationGroup_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAnimationGroup_staticMetaObject();
void QAnimationGroup_delete(QAnimationGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
