#pragma once
#ifndef SEAQT_QTCORE_GEN_QPAUSEANIMATION_H
#define SEAQT_QTCORE_GEN_QPAUSEANIMATION_H

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
class QPauseAnimation;
class QTimerEvent;
#else
typedef struct QAbstractAnimation QAbstractAnimation;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPauseAnimation QPauseAnimation;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQPauseAnimation VirtualQPauseAnimation;
typedef struct QPauseAnimation_VTable{
	void (*destructor)(VirtualQPauseAnimation* self);
	QMetaObject* (*metaObject)(const VirtualQPauseAnimation* self);
	void* (*metacast)(VirtualQPauseAnimation* self, const char* param1);
	int (*metacall)(VirtualQPauseAnimation* self, int param1, int param2, void** param3);
	int (*duration)(const VirtualQPauseAnimation* self);
	bool (*event)(VirtualQPauseAnimation* self, QEvent* e);
	void (*updateCurrentTime)(VirtualQPauseAnimation* self, int param1);
	void (*updateState)(VirtualQPauseAnimation* self, int newState, int oldState);
	void (*updateDirection)(VirtualQPauseAnimation* self, int direction);
	bool (*eventFilter)(VirtualQPauseAnimation* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQPauseAnimation* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPauseAnimation* self, QChildEvent* event);
	void (*customEvent)(VirtualQPauseAnimation* self, QEvent* event);
	void (*connectNotify)(VirtualQPauseAnimation* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPauseAnimation* self, QMetaMethod* signal);
}QPauseAnimation_VTable;

const QPauseAnimation_VTable* QPauseAnimation_vtbl(const VirtualQPauseAnimation* self);
void* QPauseAnimation_vdata(const VirtualQPauseAnimation* self);
void QPauseAnimation_setVdata(VirtualQPauseAnimation* self, void* vdata);

VirtualQPauseAnimation* QPauseAnimation_new(const QPauseAnimation_VTable* vtbl, void* vdata);
VirtualQPauseAnimation* QPauseAnimation_new2(const QPauseAnimation_VTable* vtbl, void* vdata, int msecs);
VirtualQPauseAnimation* QPauseAnimation_new3(const QPauseAnimation_VTable* vtbl, void* vdata, QObject* parent);
VirtualQPauseAnimation* QPauseAnimation_new4(const QPauseAnimation_VTable* vtbl, void* vdata, int msecs, QObject* parent);

void QPauseAnimation_virtbase(QPauseAnimation* src, QAbstractAnimation** outptr_QAbstractAnimation);
QMetaObject* QPauseAnimation_metaObject(const QPauseAnimation* self);
void* QPauseAnimation_metacast(QPauseAnimation* self, const char* param1);
int QPauseAnimation_metacall(QPauseAnimation* self, int param1, int param2, void** param3);
struct miqt_string QPauseAnimation_tr(const char* s);
struct miqt_string QPauseAnimation_trUtf8(const char* s);
int QPauseAnimation_duration(const QPauseAnimation* self);
void QPauseAnimation_setDuration(QPauseAnimation* self, int msecs);
bool QPauseAnimation_event(QPauseAnimation* self, QEvent* e);
void QPauseAnimation_updateCurrentTime(QPauseAnimation* self, int param1);
struct miqt_string QPauseAnimation_tr2(const char* s, const char* c);
struct miqt_string QPauseAnimation_tr3(const char* s, const char* c, int n);
struct miqt_string QPauseAnimation_trUtf82(const char* s, const char* c);
struct miqt_string QPauseAnimation_trUtf83(const char* s, const char* c, int n);

QMetaObject* QPauseAnimation_virtualbase_metaObject(const VirtualQPauseAnimation* self);
void* QPauseAnimation_virtualbase_metacast(VirtualQPauseAnimation* self, const char* param1);
int QPauseAnimation_virtualbase_metacall(VirtualQPauseAnimation* self, int param1, int param2, void** param3);
int QPauseAnimation_virtualbase_duration(const VirtualQPauseAnimation* self);
bool QPauseAnimation_virtualbase_event(VirtualQPauseAnimation* self, QEvent* e);
void QPauseAnimation_virtualbase_updateCurrentTime(VirtualQPauseAnimation* self, int param1);
void QPauseAnimation_virtualbase_updateState(VirtualQPauseAnimation* self, int newState, int oldState);
void QPauseAnimation_virtualbase_updateDirection(VirtualQPauseAnimation* self, int direction);
bool QPauseAnimation_virtualbase_eventFilter(VirtualQPauseAnimation* self, QObject* watched, QEvent* event);
void QPauseAnimation_virtualbase_timerEvent(VirtualQPauseAnimation* self, QTimerEvent* event);
void QPauseAnimation_virtualbase_childEvent(VirtualQPauseAnimation* self, QChildEvent* event);
void QPauseAnimation_virtualbase_customEvent(VirtualQPauseAnimation* self, QEvent* event);
void QPauseAnimation_virtualbase_connectNotify(VirtualQPauseAnimation* self, QMetaMethod* signal);
void QPauseAnimation_virtualbase_disconnectNotify(VirtualQPauseAnimation* self, QMetaMethod* signal);

QObject* QPauseAnimation_protectedbase_sender(const VirtualQPauseAnimation* self);
int QPauseAnimation_protectedbase_senderSignalIndex(const VirtualQPauseAnimation* self);
int QPauseAnimation_protectedbase_receivers(const VirtualQPauseAnimation* self, const char* signal);
bool QPauseAnimation_protectedbase_isSignalConnected(const VirtualQPauseAnimation* self, QMetaMethod* signal);

const QMetaObject* QPauseAnimation_staticMetaObject();
void QPauseAnimation_delete(QPauseAnimation* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
