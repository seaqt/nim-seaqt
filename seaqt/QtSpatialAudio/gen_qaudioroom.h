#pragma once
#ifndef SEAQT_QTSPATIALAUDIO_GEN_QAUDIOROOM_H
#define SEAQT_QTSPATIALAUDIO_GEN_QAUDIOROOM_H

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
class QAudioRoom;
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
typedef struct QAudioRoom QAudioRoom;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQuaternion QQuaternion;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVector3D QVector3D;
#endif

typedef struct VirtualQAudioRoom VirtualQAudioRoom;
typedef struct QAudioRoom_VTable{
	void (*destructor)(VirtualQAudioRoom* self);
	QMetaObject* (*metaObject)(const VirtualQAudioRoom* self);
	void* (*metacast)(VirtualQAudioRoom* self, const char* param1);
	int (*metacall)(VirtualQAudioRoom* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAudioRoom* self, QEvent* event);
	bool (*eventFilter)(VirtualQAudioRoom* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAudioRoom* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAudioRoom* self, QChildEvent* event);
	void (*customEvent)(VirtualQAudioRoom* self, QEvent* event);
	void (*connectNotify)(VirtualQAudioRoom* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAudioRoom* self, QMetaMethod* signal);
}QAudioRoom_VTable;

const QAudioRoom_VTable* QAudioRoom_vtbl(const VirtualQAudioRoom* self);
void* QAudioRoom_vdata(const VirtualQAudioRoom* self);
void QAudioRoom_setVdata(VirtualQAudioRoom* self, void* vdata);

VirtualQAudioRoom* QAudioRoom_new(const QAudioRoom_VTable* vtbl, void* vdata, QAudioEngine* engine);

void QAudioRoom_virtbase(QAudioRoom* src, QObject** outptr_QObject);
QMetaObject* QAudioRoom_metaObject(const QAudioRoom* self);
void* QAudioRoom_metacast(QAudioRoom* self, const char* param1);
int QAudioRoom_metacall(QAudioRoom* self, int param1, int param2, void** param3);
struct miqt_string QAudioRoom_tr(const char* s);
void QAudioRoom_setPosition(QAudioRoom* self, QVector3D* pos);
QVector3D* QAudioRoom_position(const QAudioRoom* self);
void QAudioRoom_setDimensions(QAudioRoom* self, QVector3D* dim);
QVector3D* QAudioRoom_dimensions(const QAudioRoom* self);
void QAudioRoom_setRotation(QAudioRoom* self, QQuaternion* q);
QQuaternion* QAudioRoom_rotation(const QAudioRoom* self);
void QAudioRoom_setWallMaterial(QAudioRoom* self, int wall, int material);
int QAudioRoom_wallMaterial(const QAudioRoom* self, int wall);
void QAudioRoom_setReflectionGain(QAudioRoom* self, float factor);
float QAudioRoom_reflectionGain(const QAudioRoom* self);
void QAudioRoom_setReverbGain(QAudioRoom* self, float factor);
float QAudioRoom_reverbGain(const QAudioRoom* self);
void QAudioRoom_setReverbTime(QAudioRoom* self, float factor);
float QAudioRoom_reverbTime(const QAudioRoom* self);
void QAudioRoom_setReverbBrightness(QAudioRoom* self, float factor);
float QAudioRoom_reverbBrightness(const QAudioRoom* self);
void QAudioRoom_positionChanged(QAudioRoom* self);
void QAudioRoom_connect_positionChanged(VirtualQAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioRoom_dimensionsChanged(QAudioRoom* self);
void QAudioRoom_connect_dimensionsChanged(VirtualQAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioRoom_rotationChanged(QAudioRoom* self);
void QAudioRoom_connect_rotationChanged(VirtualQAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioRoom_wallsChanged(QAudioRoom* self);
void QAudioRoom_connect_wallsChanged(VirtualQAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioRoom_reflectionGainChanged(QAudioRoom* self);
void QAudioRoom_connect_reflectionGainChanged(VirtualQAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioRoom_reverbGainChanged(QAudioRoom* self);
void QAudioRoom_connect_reverbGainChanged(VirtualQAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioRoom_reverbTimeChanged(QAudioRoom* self);
void QAudioRoom_connect_reverbTimeChanged(VirtualQAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioRoom_reverbBrightnessChanged(QAudioRoom* self);
void QAudioRoom_connect_reverbBrightnessChanged(VirtualQAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QAudioRoom_tr2(const char* s, const char* c);
struct miqt_string QAudioRoom_tr3(const char* s, const char* c, int n);

QMetaObject* QAudioRoom_virtualbase_metaObject(const VirtualQAudioRoom* self);
void* QAudioRoom_virtualbase_metacast(VirtualQAudioRoom* self, const char* param1);
int QAudioRoom_virtualbase_metacall(VirtualQAudioRoom* self, int param1, int param2, void** param3);
bool QAudioRoom_virtualbase_event(VirtualQAudioRoom* self, QEvent* event);
bool QAudioRoom_virtualbase_eventFilter(VirtualQAudioRoom* self, QObject* watched, QEvent* event);
void QAudioRoom_virtualbase_timerEvent(VirtualQAudioRoom* self, QTimerEvent* event);
void QAudioRoom_virtualbase_childEvent(VirtualQAudioRoom* self, QChildEvent* event);
void QAudioRoom_virtualbase_customEvent(VirtualQAudioRoom* self, QEvent* event);
void QAudioRoom_virtualbase_connectNotify(VirtualQAudioRoom* self, QMetaMethod* signal);
void QAudioRoom_virtualbase_disconnectNotify(VirtualQAudioRoom* self, QMetaMethod* signal);

QObject* QAudioRoom_protectedbase_sender(const VirtualQAudioRoom* self);
int QAudioRoom_protectedbase_senderSignalIndex(const VirtualQAudioRoom* self);
int QAudioRoom_protectedbase_receivers(const VirtualQAudioRoom* self, const char* signal);
bool QAudioRoom_protectedbase_isSignalConnected(const VirtualQAudioRoom* self, QMetaMethod* signal);

const QMetaObject* QAudioRoom_staticMetaObject();
void QAudioRoom_delete(QAudioRoom* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
