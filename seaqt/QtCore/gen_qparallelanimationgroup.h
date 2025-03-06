#pragma once
#ifndef SEAQT_QTCORE_GEN_QPARALLELANIMATIONGROUP_H
#define SEAQT_QTCORE_GEN_QPARALLELANIMATIONGROUP_H

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
class QParallelAnimationGroup;
class QTimerEvent;
#else
typedef struct QAbstractAnimation QAbstractAnimation;
typedef struct QAnimationGroup QAnimationGroup;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QParallelAnimationGroup QParallelAnimationGroup;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QParallelAnimationGroup_VTable {
	void (*destructor)(struct QParallelAnimationGroup_VTable* vtbl, QParallelAnimationGroup* self);
	QMetaObject* (*metaObject)(struct QParallelAnimationGroup_VTable* vtbl, const QParallelAnimationGroup* self);
	void* (*metacast)(struct QParallelAnimationGroup_VTable* vtbl, QParallelAnimationGroup* self, const char* param1);
	int (*metacall)(struct QParallelAnimationGroup_VTable* vtbl, QParallelAnimationGroup* self, int param1, int param2, void** param3);
	int (*duration)(struct QParallelAnimationGroup_VTable* vtbl, const QParallelAnimationGroup* self);
	bool (*event)(struct QParallelAnimationGroup_VTable* vtbl, QParallelAnimationGroup* self, QEvent* event);
	void (*updateCurrentTime)(struct QParallelAnimationGroup_VTable* vtbl, QParallelAnimationGroup* self, int currentTime);
	void (*updateState)(struct QParallelAnimationGroup_VTable* vtbl, QParallelAnimationGroup* self, int newState, int oldState);
	void (*updateDirection)(struct QParallelAnimationGroup_VTable* vtbl, QParallelAnimationGroup* self, int direction);
	bool (*eventFilter)(struct QParallelAnimationGroup_VTable* vtbl, QParallelAnimationGroup* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QParallelAnimationGroup_VTable* vtbl, QParallelAnimationGroup* self, QTimerEvent* event);
	void (*childEvent)(struct QParallelAnimationGroup_VTable* vtbl, QParallelAnimationGroup* self, QChildEvent* event);
	void (*customEvent)(struct QParallelAnimationGroup_VTable* vtbl, QParallelAnimationGroup* self, QEvent* event);
	void (*connectNotify)(struct QParallelAnimationGroup_VTable* vtbl, QParallelAnimationGroup* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QParallelAnimationGroup_VTable* vtbl, QParallelAnimationGroup* self, QMetaMethod* signal);
};
QParallelAnimationGroup* QParallelAnimationGroup_new(struct QParallelAnimationGroup_VTable* vtbl);
QParallelAnimationGroup* QParallelAnimationGroup_new2(struct QParallelAnimationGroup_VTable* vtbl, QObject* parent);
void QParallelAnimationGroup_virtbase(QParallelAnimationGroup* src, QAnimationGroup** outptr_QAnimationGroup);
QMetaObject* QParallelAnimationGroup_metaObject(const QParallelAnimationGroup* self);
void* QParallelAnimationGroup_metacast(QParallelAnimationGroup* self, const char* param1);
int QParallelAnimationGroup_metacall(QParallelAnimationGroup* self, int param1, int param2, void** param3);
struct miqt_string QParallelAnimationGroup_tr(const char* s);
struct miqt_string QParallelAnimationGroup_trUtf8(const char* s);
int QParallelAnimationGroup_duration(const QParallelAnimationGroup* self);
bool QParallelAnimationGroup_event(QParallelAnimationGroup* self, QEvent* event);
void QParallelAnimationGroup_updateCurrentTime(QParallelAnimationGroup* self, int currentTime);
void QParallelAnimationGroup_updateState(QParallelAnimationGroup* self, int newState, int oldState);
void QParallelAnimationGroup_updateDirection(QParallelAnimationGroup* self, int direction);
struct miqt_string QParallelAnimationGroup_tr2(const char* s, const char* c);
struct miqt_string QParallelAnimationGroup_tr3(const char* s, const char* c, int n);
struct miqt_string QParallelAnimationGroup_trUtf82(const char* s, const char* c);
struct miqt_string QParallelAnimationGroup_trUtf83(const char* s, const char* c, int n);
QMetaObject* QParallelAnimationGroup_virtualbase_metaObject(const void* self);
void* QParallelAnimationGroup_virtualbase_metacast(void* self, const char* param1);
int QParallelAnimationGroup_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QParallelAnimationGroup_virtualbase_duration(const void* self);
bool QParallelAnimationGroup_virtualbase_event(void* self, QEvent* event);
void QParallelAnimationGroup_virtualbase_updateCurrentTime(void* self, int currentTime);
void QParallelAnimationGroup_virtualbase_updateState(void* self, int newState, int oldState);
void QParallelAnimationGroup_virtualbase_updateDirection(void* self, int direction);
bool QParallelAnimationGroup_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QParallelAnimationGroup_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QParallelAnimationGroup_virtualbase_childEvent(void* self, QChildEvent* event);
void QParallelAnimationGroup_virtualbase_customEvent(void* self, QEvent* event);
void QParallelAnimationGroup_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QParallelAnimationGroup_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QParallelAnimationGroup_protectedbase_sender(const void* self);
int QParallelAnimationGroup_protectedbase_senderSignalIndex(const void* self);
int QParallelAnimationGroup_protectedbase_receivers(const void* self, const char* signal);
bool QParallelAnimationGroup_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QParallelAnimationGroup_staticMetaObject();
void QParallelAnimationGroup_delete(QParallelAnimationGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
