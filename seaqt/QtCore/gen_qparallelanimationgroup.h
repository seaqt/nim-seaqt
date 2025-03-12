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

typedef struct VirtualQParallelAnimationGroup VirtualQParallelAnimationGroup;
typedef struct QParallelAnimationGroup_VTable{
	void (*destructor)(VirtualQParallelAnimationGroup* self);
	QMetaObject* (*metaObject)(const VirtualQParallelAnimationGroup* self);
	void* (*metacast)(VirtualQParallelAnimationGroup* self, const char* param1);
	int (*metacall)(VirtualQParallelAnimationGroup* self, int param1, int param2, void** param3);
	int (*duration)(const VirtualQParallelAnimationGroup* self);
	bool (*event)(VirtualQParallelAnimationGroup* self, QEvent* event);
	void (*updateCurrentTime)(VirtualQParallelAnimationGroup* self, int currentTime);
	void (*updateState)(VirtualQParallelAnimationGroup* self, int newState, int oldState);
	void (*updateDirection)(VirtualQParallelAnimationGroup* self, int direction);
	bool (*eventFilter)(VirtualQParallelAnimationGroup* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQParallelAnimationGroup* self, QTimerEvent* event);
	void (*childEvent)(VirtualQParallelAnimationGroup* self, QChildEvent* event);
	void (*customEvent)(VirtualQParallelAnimationGroup* self, QEvent* event);
	void (*connectNotify)(VirtualQParallelAnimationGroup* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQParallelAnimationGroup* self, QMetaMethod* signal);
}QParallelAnimationGroup_VTable;

const QParallelAnimationGroup_VTable* QParallelAnimationGroup_vtbl(const VirtualQParallelAnimationGroup* self);
void* QParallelAnimationGroup_vdata(const VirtualQParallelAnimationGroup* self);
void QParallelAnimationGroup_setVdata(VirtualQParallelAnimationGroup* self, void* vdata);

VirtualQParallelAnimationGroup* QParallelAnimationGroup_new(const QParallelAnimationGroup_VTable* vtbl, void* vdata);
VirtualQParallelAnimationGroup* QParallelAnimationGroup_new2(const QParallelAnimationGroup_VTable* vtbl, void* vdata, QObject* parent);

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

QMetaObject* QParallelAnimationGroup_virtualbase_metaObject(const VirtualQParallelAnimationGroup* self);
void* QParallelAnimationGroup_virtualbase_metacast(VirtualQParallelAnimationGroup* self, const char* param1);
int QParallelAnimationGroup_virtualbase_metacall(VirtualQParallelAnimationGroup* self, int param1, int param2, void** param3);
int QParallelAnimationGroup_virtualbase_duration(const VirtualQParallelAnimationGroup* self);
bool QParallelAnimationGroup_virtualbase_event(VirtualQParallelAnimationGroup* self, QEvent* event);
void QParallelAnimationGroup_virtualbase_updateCurrentTime(VirtualQParallelAnimationGroup* self, int currentTime);
void QParallelAnimationGroup_virtualbase_updateState(VirtualQParallelAnimationGroup* self, int newState, int oldState);
void QParallelAnimationGroup_virtualbase_updateDirection(VirtualQParallelAnimationGroup* self, int direction);
bool QParallelAnimationGroup_virtualbase_eventFilter(VirtualQParallelAnimationGroup* self, QObject* watched, QEvent* event);
void QParallelAnimationGroup_virtualbase_timerEvent(VirtualQParallelAnimationGroup* self, QTimerEvent* event);
void QParallelAnimationGroup_virtualbase_childEvent(VirtualQParallelAnimationGroup* self, QChildEvent* event);
void QParallelAnimationGroup_virtualbase_customEvent(VirtualQParallelAnimationGroup* self, QEvent* event);
void QParallelAnimationGroup_virtualbase_connectNotify(VirtualQParallelAnimationGroup* self, QMetaMethod* signal);
void QParallelAnimationGroup_virtualbase_disconnectNotify(VirtualQParallelAnimationGroup* self, QMetaMethod* signal);

QObject* QParallelAnimationGroup_protectedbase_sender(const VirtualQParallelAnimationGroup* self);
int QParallelAnimationGroup_protectedbase_senderSignalIndex(const VirtualQParallelAnimationGroup* self);
int QParallelAnimationGroup_protectedbase_receivers(const VirtualQParallelAnimationGroup* self, const char* signal);
bool QParallelAnimationGroup_protectedbase_isSignalConnected(const VirtualQParallelAnimationGroup* self, QMetaMethod* signal);

const QMetaObject* QParallelAnimationGroup_staticMetaObject();
void QParallelAnimationGroup_delete(QParallelAnimationGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
