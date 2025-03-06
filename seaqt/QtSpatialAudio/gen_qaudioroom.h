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

struct QAudioRoom_VTable {
	void (*destructor)(struct QAudioRoom_VTable* vtbl, QAudioRoom* self);
	QMetaObject* (*metaObject)(struct QAudioRoom_VTable* vtbl, const QAudioRoom* self);
	void* (*metacast)(struct QAudioRoom_VTable* vtbl, QAudioRoom* self, const char* param1);
	int (*metacall)(struct QAudioRoom_VTable* vtbl, QAudioRoom* self, int param1, int param2, void** param3);
	bool (*event)(struct QAudioRoom_VTable* vtbl, QAudioRoom* self, QEvent* event);
	bool (*eventFilter)(struct QAudioRoom_VTable* vtbl, QAudioRoom* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAudioRoom_VTable* vtbl, QAudioRoom* self, QTimerEvent* event);
	void (*childEvent)(struct QAudioRoom_VTable* vtbl, QAudioRoom* self, QChildEvent* event);
	void (*customEvent)(struct QAudioRoom_VTable* vtbl, QAudioRoom* self, QEvent* event);
	void (*connectNotify)(struct QAudioRoom_VTable* vtbl, QAudioRoom* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAudioRoom_VTable* vtbl, QAudioRoom* self, QMetaMethod* signal);
};
QAudioRoom* QAudioRoom_new(struct QAudioRoom_VTable* vtbl, QAudioEngine* engine);
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
void QAudioRoom_connect_positionChanged(QAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioRoom_dimensionsChanged(QAudioRoom* self);
void QAudioRoom_connect_dimensionsChanged(QAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioRoom_rotationChanged(QAudioRoom* self);
void QAudioRoom_connect_rotationChanged(QAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioRoom_wallsChanged(QAudioRoom* self);
void QAudioRoom_connect_wallsChanged(QAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioRoom_reflectionGainChanged(QAudioRoom* self);
void QAudioRoom_connect_reflectionGainChanged(QAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioRoom_reverbGainChanged(QAudioRoom* self);
void QAudioRoom_connect_reverbGainChanged(QAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioRoom_reverbTimeChanged(QAudioRoom* self);
void QAudioRoom_connect_reverbTimeChanged(QAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioRoom_reverbBrightnessChanged(QAudioRoom* self);
void QAudioRoom_connect_reverbBrightnessChanged(QAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QAudioRoom_tr2(const char* s, const char* c);
struct miqt_string QAudioRoom_tr3(const char* s, const char* c, int n);
QMetaObject* QAudioRoom_virtualbase_metaObject(const void* self);
void* QAudioRoom_virtualbase_metacast(void* self, const char* param1);
int QAudioRoom_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QAudioRoom_virtualbase_event(void* self, QEvent* event);
bool QAudioRoom_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAudioRoom_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAudioRoom_virtualbase_childEvent(void* self, QChildEvent* event);
void QAudioRoom_virtualbase_customEvent(void* self, QEvent* event);
void QAudioRoom_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAudioRoom_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QAudioRoom_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAudioRoom_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAudioRoom_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAudioRoom_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAudioRoom_staticMetaObject();
void QAudioRoom_delete(QAudioRoom* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
