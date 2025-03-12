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

typedef struct VirtualQAnimationGroup VirtualQAnimationGroup;
typedef struct QAnimationGroup_VTable{
	void (*destructor)(VirtualQAnimationGroup* self);
	QMetaObject* (*metaObject)(const VirtualQAnimationGroup* self);
	void* (*metacast)(VirtualQAnimationGroup* self, const char* param1);
	int (*metacall)(VirtualQAnimationGroup* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAnimationGroup* self, QEvent* event);
	int (*duration)(const VirtualQAnimationGroup* self);
	void (*updateCurrentTime)(VirtualQAnimationGroup* self, int currentTime);
	void (*updateState)(VirtualQAnimationGroup* self, int newState, int oldState);
	void (*updateDirection)(VirtualQAnimationGroup* self, int direction);
	bool (*eventFilter)(VirtualQAnimationGroup* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAnimationGroup* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAnimationGroup* self, QChildEvent* event);
	void (*customEvent)(VirtualQAnimationGroup* self, QEvent* event);
	void (*connectNotify)(VirtualQAnimationGroup* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAnimationGroup* self, QMetaMethod* signal);
}QAnimationGroup_VTable;

const QAnimationGroup_VTable* QAnimationGroup_vtbl(const VirtualQAnimationGroup* self);
void* QAnimationGroup_vdata(const VirtualQAnimationGroup* self);
void QAnimationGroup_setVdata(VirtualQAnimationGroup* self, void* vdata);

VirtualQAnimationGroup* QAnimationGroup_new(const QAnimationGroup_VTable* vtbl, void* vdata);
VirtualQAnimationGroup* QAnimationGroup_new2(const QAnimationGroup_VTable* vtbl, void* vdata, QObject* parent);

void QAnimationGroup_virtbase(QAnimationGroup* src, QAbstractAnimation** outptr_QAbstractAnimation);
QMetaObject* QAnimationGroup_metaObject(const QAnimationGroup* self);
void* QAnimationGroup_metacast(QAnimationGroup* self, const char* param1);
int QAnimationGroup_metacall(QAnimationGroup* self, int param1, int param2, void** param3);
struct miqt_string QAnimationGroup_tr(const char* s);
struct miqt_string QAnimationGroup_trUtf8(const char* s);
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
struct miqt_string QAnimationGroup_trUtf82(const char* s, const char* c);
struct miqt_string QAnimationGroup_trUtf83(const char* s, const char* c, int n);

QMetaObject* QAnimationGroup_virtualbase_metaObject(const VirtualQAnimationGroup* self);
void* QAnimationGroup_virtualbase_metacast(VirtualQAnimationGroup* self, const char* param1);
int QAnimationGroup_virtualbase_metacall(VirtualQAnimationGroup* self, int param1, int param2, void** param3);
bool QAnimationGroup_virtualbase_event(VirtualQAnimationGroup* self, QEvent* event);
int QAnimationGroup_virtualbase_duration(const VirtualQAnimationGroup* self);
void QAnimationGroup_virtualbase_updateCurrentTime(VirtualQAnimationGroup* self, int currentTime);
void QAnimationGroup_virtualbase_updateState(VirtualQAnimationGroup* self, int newState, int oldState);
void QAnimationGroup_virtualbase_updateDirection(VirtualQAnimationGroup* self, int direction);
bool QAnimationGroup_virtualbase_eventFilter(VirtualQAnimationGroup* self, QObject* watched, QEvent* event);
void QAnimationGroup_virtualbase_timerEvent(VirtualQAnimationGroup* self, QTimerEvent* event);
void QAnimationGroup_virtualbase_childEvent(VirtualQAnimationGroup* self, QChildEvent* event);
void QAnimationGroup_virtualbase_customEvent(VirtualQAnimationGroup* self, QEvent* event);
void QAnimationGroup_virtualbase_connectNotify(VirtualQAnimationGroup* self, QMetaMethod* signal);
void QAnimationGroup_virtualbase_disconnectNotify(VirtualQAnimationGroup* self, QMetaMethod* signal);

QObject* QAnimationGroup_protectedbase_sender(const VirtualQAnimationGroup* self);
int QAnimationGroup_protectedbase_senderSignalIndex(const VirtualQAnimationGroup* self);
int QAnimationGroup_protectedbase_receivers(const VirtualQAnimationGroup* self, const char* signal);
bool QAnimationGroup_protectedbase_isSignalConnected(const VirtualQAnimationGroup* self, QMetaMethod* signal);

const QMetaObject* QAnimationGroup_staticMetaObject();
void QAnimationGroup_delete(QAnimationGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
