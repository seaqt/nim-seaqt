#pragma once
#ifndef SEAQT_QTSPATIALAUDIO_GEN_QAMBIENTSOUND_H
#define SEAQT_QTSPATIALAUDIO_GEN_QAMBIENTSOUND_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAmbientSound;
class QAudioEngine;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QUrl;
#else
typedef struct QAmbientSound QAmbientSound;
typedef struct QAudioEngine QAudioEngine;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
#endif

typedef struct VirtualQAmbientSound VirtualQAmbientSound;
typedef struct QAmbientSound_VTable{
	void (*destructor)(VirtualQAmbientSound* self);
	QMetaObject* (*metaObject)(const VirtualQAmbientSound* self);
	void* (*metacast)(VirtualQAmbientSound* self, const char* param1);
	int (*metacall)(VirtualQAmbientSound* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAmbientSound* self, QEvent* event);
	bool (*eventFilter)(VirtualQAmbientSound* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAmbientSound* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAmbientSound* self, QChildEvent* event);
	void (*customEvent)(VirtualQAmbientSound* self, QEvent* event);
	void (*connectNotify)(VirtualQAmbientSound* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAmbientSound* self, QMetaMethod* signal);
}QAmbientSound_VTable;

const QAmbientSound_VTable* QAmbientSound_vtbl(const VirtualQAmbientSound* self);
void* QAmbientSound_vdata(const VirtualQAmbientSound* self);
void QAmbientSound_setVdata(VirtualQAmbientSound* self, void* vdata);

VirtualQAmbientSound* QAmbientSound_new(const QAmbientSound_VTable* vtbl, void* vdata, QAudioEngine* engine);

void QAmbientSound_virtbase(QAmbientSound* src, QObject** outptr_QObject);
QMetaObject* QAmbientSound_metaObject(const QAmbientSound* self);
void* QAmbientSound_metacast(QAmbientSound* self, const char* param1);
int QAmbientSound_metacall(QAmbientSound* self, int param1, int param2, void** param3);
struct miqt_string QAmbientSound_tr(const char* s);
void QAmbientSound_setSource(QAmbientSound* self, QUrl* url);
QUrl* QAmbientSound_source(const QAmbientSound* self);
int QAmbientSound_loops(const QAmbientSound* self);
void QAmbientSound_setLoops(QAmbientSound* self, int loops);
bool QAmbientSound_autoPlay(const QAmbientSound* self);
void QAmbientSound_setAutoPlay(QAmbientSound* self, bool autoPlay);
void QAmbientSound_setVolume(QAmbientSound* self, float volume);
float QAmbientSound_volume(const QAmbientSound* self);
QAudioEngine* QAmbientSound_engine(const QAmbientSound* self);
void QAmbientSound_sourceChanged(QAmbientSound* self);
void QAmbientSound_connect_sourceChanged(VirtualQAmbientSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAmbientSound_loopsChanged(QAmbientSound* self);
void QAmbientSound_connect_loopsChanged(VirtualQAmbientSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAmbientSound_autoPlayChanged(QAmbientSound* self);
void QAmbientSound_connect_autoPlayChanged(VirtualQAmbientSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAmbientSound_volumeChanged(QAmbientSound* self);
void QAmbientSound_connect_volumeChanged(VirtualQAmbientSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAmbientSound_play(QAmbientSound* self);
void QAmbientSound_pause(QAmbientSound* self);
void QAmbientSound_stop(QAmbientSound* self);
struct miqt_string QAmbientSound_tr2(const char* s, const char* c);
struct miqt_string QAmbientSound_tr3(const char* s, const char* c, int n);

QMetaObject* QAmbientSound_virtualbase_metaObject(const VirtualQAmbientSound* self);
void* QAmbientSound_virtualbase_metacast(VirtualQAmbientSound* self, const char* param1);
int QAmbientSound_virtualbase_metacall(VirtualQAmbientSound* self, int param1, int param2, void** param3);
bool QAmbientSound_virtualbase_event(VirtualQAmbientSound* self, QEvent* event);
bool QAmbientSound_virtualbase_eventFilter(VirtualQAmbientSound* self, QObject* watched, QEvent* event);
void QAmbientSound_virtualbase_timerEvent(VirtualQAmbientSound* self, QTimerEvent* event);
void QAmbientSound_virtualbase_childEvent(VirtualQAmbientSound* self, QChildEvent* event);
void QAmbientSound_virtualbase_customEvent(VirtualQAmbientSound* self, QEvent* event);
void QAmbientSound_virtualbase_connectNotify(VirtualQAmbientSound* self, QMetaMethod* signal);
void QAmbientSound_virtualbase_disconnectNotify(VirtualQAmbientSound* self, QMetaMethod* signal);

QObject* QAmbientSound_protectedbase_sender(const VirtualQAmbientSound* self);
int QAmbientSound_protectedbase_senderSignalIndex(const VirtualQAmbientSound* self);
int QAmbientSound_protectedbase_receivers(const VirtualQAmbientSound* self, const char* signal);
bool QAmbientSound_protectedbase_isSignalConnected(const VirtualQAmbientSound* self, QMetaMethod* signal);

const QMetaObject* QAmbientSound_staticMetaObject();
void QAmbientSound_delete(QAmbientSound* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
