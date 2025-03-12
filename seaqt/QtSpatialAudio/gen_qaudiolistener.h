#pragma once
#ifndef SEAQT_QTSPATIALAUDIO_GEN_QAUDIOLISTENER_H
#define SEAQT_QTSPATIALAUDIO_GEN_QAUDIOLISTENER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioEngine;
class QAudioListener;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QQuaternion;
class QTimerEvent;
class QVector3D;
#else
typedef struct QAudioEngine QAudioEngine;
typedef struct QAudioListener QAudioListener;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQuaternion QQuaternion;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVector3D QVector3D;
#endif

typedef struct VirtualQAudioListener VirtualQAudioListener;
typedef struct QAudioListener_VTable{
	void (*destructor)(VirtualQAudioListener* self);
	QMetaObject* (*metaObject)(const VirtualQAudioListener* self);
	void* (*metacast)(VirtualQAudioListener* self, const char* param1);
	int (*metacall)(VirtualQAudioListener* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAudioListener* self, QEvent* event);
	bool (*eventFilter)(VirtualQAudioListener* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAudioListener* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAudioListener* self, QChildEvent* event);
	void (*customEvent)(VirtualQAudioListener* self, QEvent* event);
	void (*connectNotify)(VirtualQAudioListener* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAudioListener* self, QMetaMethod* signal);
}QAudioListener_VTable;

const QAudioListener_VTable* QAudioListener_vtbl(const VirtualQAudioListener* self);
void* QAudioListener_vdata(const VirtualQAudioListener* self);
void QAudioListener_setVdata(VirtualQAudioListener* self, void* vdata);

VirtualQAudioListener* QAudioListener_new(const QAudioListener_VTable* vtbl, void* vdata, QAudioEngine* engine);

void QAudioListener_virtbase(QAudioListener* src, QObject** outptr_QObject);
void QAudioListener_setPosition(QAudioListener* self, QVector3D* pos);
QVector3D* QAudioListener_position(const QAudioListener* self);
void QAudioListener_setRotation(QAudioListener* self, QQuaternion* q);
QQuaternion* QAudioListener_rotation(const QAudioListener* self);
QAudioEngine* QAudioListener_engine(const QAudioListener* self);

QMetaObject* QAudioListener_virtualbase_metaObject(const VirtualQAudioListener* self);
void* QAudioListener_virtualbase_metacast(VirtualQAudioListener* self, const char* param1);
int QAudioListener_virtualbase_metacall(VirtualQAudioListener* self, int param1, int param2, void** param3);
bool QAudioListener_virtualbase_event(VirtualQAudioListener* self, QEvent* event);
bool QAudioListener_virtualbase_eventFilter(VirtualQAudioListener* self, QObject* watched, QEvent* event);
void QAudioListener_virtualbase_timerEvent(VirtualQAudioListener* self, QTimerEvent* event);
void QAudioListener_virtualbase_childEvent(VirtualQAudioListener* self, QChildEvent* event);
void QAudioListener_virtualbase_customEvent(VirtualQAudioListener* self, QEvent* event);
void QAudioListener_virtualbase_connectNotify(VirtualQAudioListener* self, QMetaMethod* signal);
void QAudioListener_virtualbase_disconnectNotify(VirtualQAudioListener* self, QMetaMethod* signal);

QObject* QAudioListener_protectedbase_sender(const VirtualQAudioListener* self);
int QAudioListener_protectedbase_senderSignalIndex(const VirtualQAudioListener* self);
int QAudioListener_protectedbase_receivers(const VirtualQAudioListener* self, const char* signal);
bool QAudioListener_protectedbase_isSignalConnected(const VirtualQAudioListener* self, QMetaMethod* signal);

void QAudioListener_delete(QAudioListener* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
