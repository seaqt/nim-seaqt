#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QSOUND_H
#define SEAQT_QTMULTIMEDIA_GEN_QSOUND_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QSound;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSound QSound;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QSound_VTable {
	void (*destructor)(struct QSound_VTable* vtbl, QSound* self);
	QMetaObject* (*metaObject)(struct QSound_VTable* vtbl, const QSound* self);
	void* (*metacast)(struct QSound_VTable* vtbl, QSound* self, const char* param1);
	int (*metacall)(struct QSound_VTable* vtbl, QSound* self, int param1, int param2, void** param3);
	bool (*event)(struct QSound_VTable* vtbl, QSound* self, QEvent* event);
	bool (*eventFilter)(struct QSound_VTable* vtbl, QSound* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSound_VTable* vtbl, QSound* self, QTimerEvent* event);
	void (*childEvent)(struct QSound_VTable* vtbl, QSound* self, QChildEvent* event);
	void (*customEvent)(struct QSound_VTable* vtbl, QSound* self, QEvent* event);
	void (*connectNotify)(struct QSound_VTable* vtbl, QSound* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSound_VTable* vtbl, QSound* self, QMetaMethod* signal);
};
QSound* QSound_new(struct QSound_VTable* vtbl, struct miqt_string filename);
QSound* QSound_new2(struct QSound_VTable* vtbl, struct miqt_string filename, QObject* parent);
void QSound_virtbase(QSound* src, QObject** outptr_QObject);
QMetaObject* QSound_metaObject(const QSound* self);
void* QSound_metacast(QSound* self, const char* param1);
int QSound_metacall(QSound* self, int param1, int param2, void** param3);
struct miqt_string QSound_tr(const char* s);
struct miqt_string QSound_trUtf8(const char* s);
void QSound_play(struct miqt_string filename);
int QSound_loops(const QSound* self);
int QSound_loopsRemaining(const QSound* self);
void QSound_setLoops(QSound* self, int loops);
struct miqt_string QSound_fileName(const QSound* self);
bool QSound_isFinished(const QSound* self);
void QSound_play2(QSound* self);
void QSound_stop(QSound* self);
struct miqt_string QSound_tr2(const char* s, const char* c);
struct miqt_string QSound_tr3(const char* s, const char* c, int n);
struct miqt_string QSound_trUtf82(const char* s, const char* c);
struct miqt_string QSound_trUtf83(const char* s, const char* c, int n);
QMetaObject* QSound_virtualbase_metaObject(const void* self);
void* QSound_virtualbase_metacast(void* self, const char* param1);
int QSound_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QSound_virtualbase_event(void* self, QEvent* event);
bool QSound_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSound_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSound_virtualbase_childEvent(void* self, QChildEvent* event);
void QSound_virtualbase_customEvent(void* self, QEvent* event);
void QSound_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSound_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QSound_protectedbase_sender(const void* self);
int QSound_protectedbase_senderSignalIndex(const void* self);
int QSound_protectedbase_receivers(const void* self, const char* signal);
bool QSound_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QSound_staticMetaObject();
void QSound_delete(QSound* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
