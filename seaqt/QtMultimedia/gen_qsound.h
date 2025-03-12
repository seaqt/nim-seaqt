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

typedef struct VirtualQSound VirtualQSound;
typedef struct QSound_VTable{
	void (*destructor)(VirtualQSound* self);
	QMetaObject* (*metaObject)(const VirtualQSound* self);
	void* (*metacast)(VirtualQSound* self, const char* param1);
	int (*metacall)(VirtualQSound* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQSound* self, QEvent* event);
	bool (*eventFilter)(VirtualQSound* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSound* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSound* self, QChildEvent* event);
	void (*customEvent)(VirtualQSound* self, QEvent* event);
	void (*connectNotify)(VirtualQSound* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSound* self, QMetaMethod* signal);
}QSound_VTable;

const QSound_VTable* QSound_vtbl(const VirtualQSound* self);
void* QSound_vdata(const VirtualQSound* self);
void QSound_setVdata(VirtualQSound* self, void* vdata);

VirtualQSound* QSound_new(const QSound_VTable* vtbl, void* vdata, struct miqt_string filename);
VirtualQSound* QSound_new2(const QSound_VTable* vtbl, void* vdata, struct miqt_string filename, QObject* parent);

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

QMetaObject* QSound_virtualbase_metaObject(const VirtualQSound* self);
void* QSound_virtualbase_metacast(VirtualQSound* self, const char* param1);
int QSound_virtualbase_metacall(VirtualQSound* self, int param1, int param2, void** param3);
bool QSound_virtualbase_event(VirtualQSound* self, QEvent* event);
bool QSound_virtualbase_eventFilter(VirtualQSound* self, QObject* watched, QEvent* event);
void QSound_virtualbase_timerEvent(VirtualQSound* self, QTimerEvent* event);
void QSound_virtualbase_childEvent(VirtualQSound* self, QChildEvent* event);
void QSound_virtualbase_customEvent(VirtualQSound* self, QEvent* event);
void QSound_virtualbase_connectNotify(VirtualQSound* self, QMetaMethod* signal);
void QSound_virtualbase_disconnectNotify(VirtualQSound* self, QMetaMethod* signal);

QObject* QSound_protectedbase_sender(const VirtualQSound* self);
int QSound_protectedbase_senderSignalIndex(const VirtualQSound* self);
int QSound_protectedbase_receivers(const VirtualQSound* self, const char* signal);
bool QSound_protectedbase_isSignalConnected(const VirtualQSound* self, QMetaMethod* signal);

const QMetaObject* QSound_staticMetaObject();
void QSound_delete(QSound* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
