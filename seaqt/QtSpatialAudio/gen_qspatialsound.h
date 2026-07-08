#pragma once
#ifndef SEAQT_QTSPATIALAUDIO_GEN_QSPATIALSOUND_H
#define SEAQT_QTSPATIALAUDIO_GEN_QSPATIALSOUND_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioEngine;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QQuaternion;
class QSpatialSound;
class QTimerEvent;
class QUrl;
class QVector3D;
#else
typedef struct QAudioEngine QAudioEngine;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQuaternion QQuaternion;
typedef struct QSpatialSound QSpatialSound;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVector3D QVector3D;
#endif

typedef struct VirtualQSpatialSound VirtualQSpatialSound;
typedef struct QSpatialSound_VTable{
	void (*destructor)(VirtualQSpatialSound* self);
	QMetaObject* (*metaObject)(const VirtualQSpatialSound* self);
	void* (*metacast)(VirtualQSpatialSound* self, const char* param1);
	int (*metacall)(VirtualQSpatialSound* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQSpatialSound* self, QEvent* event);
	bool (*eventFilter)(VirtualQSpatialSound* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSpatialSound* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSpatialSound* self, QChildEvent* event);
	void (*customEvent)(VirtualQSpatialSound* self, QEvent* event);
	void (*connectNotify)(VirtualQSpatialSound* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSpatialSound* self, QMetaMethod* signal);
}QSpatialSound_VTable;

void* QSpatialSound_vdata(VirtualQSpatialSound* self);
VirtualQSpatialSound* vdata_QSpatialSound(void* vdata);

VirtualQSpatialSound* QSpatialSound_new(const QSpatialSound_VTable* vtbl, size_t vdata, QAudioEngine* engine);

void QSpatialSound_virtbase(QSpatialSound* src, QObject** outptr_QObject);
QMetaObject* QSpatialSound_metaObject(const QSpatialSound* self);
void* QSpatialSound_metacast(QSpatialSound* self, const char* param1);
int QSpatialSound_metacall(QSpatialSound* self, int param1, int param2, void** param3);
struct seaqt_string QSpatialSound_tr_s(const char* s);
void QSpatialSound_setSource(QSpatialSound* self, QUrl* url);
QUrl* QSpatialSound_source(const QSpatialSound* self);
int QSpatialSound_loops(const QSpatialSound* self);
void QSpatialSound_setLoops(QSpatialSound* self, int loops);
bool QSpatialSound_autoPlay(const QSpatialSound* self);
void QSpatialSound_setAutoPlay(QSpatialSound* self, bool autoPlay);
void QSpatialSound_setPosition(QSpatialSound* self, QVector3D* pos);
QVector3D* QSpatialSound_position(const QSpatialSound* self);
void QSpatialSound_setRotation(QSpatialSound* self, QQuaternion* q);
QQuaternion* QSpatialSound_rotation(const QSpatialSound* self);
void QSpatialSound_setVolume(QSpatialSound* self, float volume);
float QSpatialSound_volume(const QSpatialSound* self);
void QSpatialSound_setDistanceModel(QSpatialSound* self, int model);
int QSpatialSound_distanceModel(const QSpatialSound* self);
void QSpatialSound_setSize(QSpatialSound* self, float size);
float QSpatialSound_size(const QSpatialSound* self);
void QSpatialSound_setDistanceCutoff(QSpatialSound* self, float cutoff);
float QSpatialSound_distanceCutoff(const QSpatialSound* self);
void QSpatialSound_setManualAttenuation(QSpatialSound* self, float attenuation);
float QSpatialSound_manualAttenuation(const QSpatialSound* self);
void QSpatialSound_setOcclusionIntensity(QSpatialSound* self, float occlusion);
float QSpatialSound_occlusionIntensity(const QSpatialSound* self);
void QSpatialSound_setDirectivity(QSpatialSound* self, float alpha);
float QSpatialSound_directivity(const QSpatialSound* self);
void QSpatialSound_setDirectivityOrder(QSpatialSound* self, float alpha);
float QSpatialSound_directivityOrder(const QSpatialSound* self);
void QSpatialSound_setNearFieldGain(QSpatialSound* self, float gain);
float QSpatialSound_nearFieldGain(const QSpatialSound* self);
QAudioEngine* QSpatialSound_engine(const QSpatialSound* self);
void QSpatialSound_sourceChanged(QSpatialSound* self);
void QSpatialSound_connect_sourceChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSpatialSound_loopsChanged(QSpatialSound* self);
void QSpatialSound_connect_loopsChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSpatialSound_autoPlayChanged(QSpatialSound* self);
void QSpatialSound_connect_autoPlayChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSpatialSound_positionChanged(QSpatialSound* self);
void QSpatialSound_connect_positionChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSpatialSound_rotationChanged(QSpatialSound* self);
void QSpatialSound_connect_rotationChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSpatialSound_volumeChanged(QSpatialSound* self);
void QSpatialSound_connect_volumeChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSpatialSound_distanceModelChanged(QSpatialSound* self);
void QSpatialSound_connect_distanceModelChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSpatialSound_sizeChanged(QSpatialSound* self);
void QSpatialSound_connect_sizeChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSpatialSound_distanceCutoffChanged(QSpatialSound* self);
void QSpatialSound_connect_distanceCutoffChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSpatialSound_manualAttenuationChanged(QSpatialSound* self);
void QSpatialSound_connect_manualAttenuationChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSpatialSound_occlusionIntensityChanged(QSpatialSound* self);
void QSpatialSound_connect_occlusionIntensityChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSpatialSound_directivityChanged(QSpatialSound* self);
void QSpatialSound_connect_directivityChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSpatialSound_directivityOrderChanged(QSpatialSound* self);
void QSpatialSound_connect_directivityOrderChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSpatialSound_nearFieldGainChanged(QSpatialSound* self);
void QSpatialSound_connect_nearFieldGainChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QSpatialSound_play(QSpatialSound* self);
void QSpatialSound_pause(QSpatialSound* self);
void QSpatialSound_stop(QSpatialSound* self);
struct seaqt_string QSpatialSound_tr_s_c(const char* s, const char* c);
struct seaqt_string QSpatialSound_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QSpatialSound_virtualbase_metaObject(const VirtualQSpatialSound* self);
void* QSpatialSound_virtualbase_metacast(VirtualQSpatialSound* self, const char* param1);
int QSpatialSound_virtualbase_metacall(VirtualQSpatialSound* self, int param1, int param2, void** param3);
bool QSpatialSound_virtualbase_event(VirtualQSpatialSound* self, QEvent* event);
bool QSpatialSound_virtualbase_eventFilter(VirtualQSpatialSound* self, QObject* watched, QEvent* event);
void QSpatialSound_virtualbase_timerEvent(VirtualQSpatialSound* self, QTimerEvent* event);
void QSpatialSound_virtualbase_childEvent(VirtualQSpatialSound* self, QChildEvent* event);
void QSpatialSound_virtualbase_customEvent(VirtualQSpatialSound* self, QEvent* event);
void QSpatialSound_virtualbase_connectNotify(VirtualQSpatialSound* self, QMetaMethod* signal);
void QSpatialSound_virtualbase_disconnectNotify(VirtualQSpatialSound* self, QMetaMethod* signal);

QObject* QSpatialSound_protectedbase_sender(const VirtualQSpatialSound* self);
int QSpatialSound_protectedbase_senderSignalIndex(const VirtualQSpatialSound* self);
int QSpatialSound_protectedbase_receivers(const VirtualQSpatialSound* self, const char* signal);
bool QSpatialSound_protectedbase_isSignalConnected(const VirtualQSpatialSound* self, QMetaMethod* signal);

void QSpatialSound_delete(QSpatialSound* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
