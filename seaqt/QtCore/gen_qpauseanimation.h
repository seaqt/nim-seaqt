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

struct QPauseAnimation_VTable {
	void (*destructor)(struct QPauseAnimation_VTable* vtbl, QPauseAnimation* self);
	QMetaObject* (*metaObject)(struct QPauseAnimation_VTable* vtbl, const QPauseAnimation* self);
	void* (*metacast)(struct QPauseAnimation_VTable* vtbl, QPauseAnimation* self, const char* param1);
	int (*metacall)(struct QPauseAnimation_VTable* vtbl, QPauseAnimation* self, int param1, int param2, void** param3);
	int (*duration)(struct QPauseAnimation_VTable* vtbl, const QPauseAnimation* self);
	bool (*event)(struct QPauseAnimation_VTable* vtbl, QPauseAnimation* self, QEvent* e);
	void (*updateCurrentTime)(struct QPauseAnimation_VTable* vtbl, QPauseAnimation* self, int param1);
	void (*updateState)(struct QPauseAnimation_VTable* vtbl, QPauseAnimation* self, int newState, int oldState);
	void (*updateDirection)(struct QPauseAnimation_VTable* vtbl, QPauseAnimation* self, int direction);
	bool (*eventFilter)(struct QPauseAnimation_VTable* vtbl, QPauseAnimation* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QPauseAnimation_VTable* vtbl, QPauseAnimation* self, QTimerEvent* event);
	void (*childEvent)(struct QPauseAnimation_VTable* vtbl, QPauseAnimation* self, QChildEvent* event);
	void (*customEvent)(struct QPauseAnimation_VTable* vtbl, QPauseAnimation* self, QEvent* event);
	void (*connectNotify)(struct QPauseAnimation_VTable* vtbl, QPauseAnimation* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QPauseAnimation_VTable* vtbl, QPauseAnimation* self, QMetaMethod* signal);
};
QPauseAnimation* QPauseAnimation_new(struct QPauseAnimation_VTable* vtbl);
QPauseAnimation* QPauseAnimation_new2(struct QPauseAnimation_VTable* vtbl, int msecs);
QPauseAnimation* QPauseAnimation_new3(struct QPauseAnimation_VTable* vtbl, QObject* parent);
QPauseAnimation* QPauseAnimation_new4(struct QPauseAnimation_VTable* vtbl, int msecs, QObject* parent);
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
QMetaObject* QPauseAnimation_virtualbase_metaObject(const void* self);
void* QPauseAnimation_virtualbase_metacast(void* self, const char* param1);
int QPauseAnimation_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QPauseAnimation_virtualbase_duration(const void* self);
bool QPauseAnimation_virtualbase_event(void* self, QEvent* e);
void QPauseAnimation_virtualbase_updateCurrentTime(void* self, int param1);
void QPauseAnimation_virtualbase_updateState(void* self, int newState, int oldState);
void QPauseAnimation_virtualbase_updateDirection(void* self, int direction);
bool QPauseAnimation_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QPauseAnimation_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QPauseAnimation_virtualbase_childEvent(void* self, QChildEvent* event);
void QPauseAnimation_virtualbase_customEvent(void* self, QEvent* event);
void QPauseAnimation_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QPauseAnimation_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QPauseAnimation_protectedbase_sender(const void* self);
int QPauseAnimation_protectedbase_senderSignalIndex(const void* self);
int QPauseAnimation_protectedbase_receivers(const void* self, const char* signal);
bool QPauseAnimation_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QPauseAnimation_staticMetaObject();
void QPauseAnimation_delete(QPauseAnimation* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
