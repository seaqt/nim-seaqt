#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIARECORDER_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIARECORDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioEncoderSettings;
class QChildEvent;
class QEvent;
class QMediaBindableInterface;
class QMediaObject;
class QMediaRecorder;
class QMetaMethod;
class QMetaObject;
class QObject;
class QSize;
class QTimerEvent;
class QUrl;
class QVariant;
class QVideoEncoderSettings;
#else
typedef struct QAudioEncoderSettings QAudioEncoderSettings;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaBindableInterface QMediaBindableInterface;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaRecorder QMediaRecorder;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QVideoEncoderSettings QVideoEncoderSettings;
#endif

typedef struct VirtualQMediaRecorder VirtualQMediaRecorder;
typedef struct QMediaRecorder_VTable{
	void (*destructor)(VirtualQMediaRecorder* self);
	QMetaObject* (*metaObject)(const VirtualQMediaRecorder* self);
	void* (*metacast)(VirtualQMediaRecorder* self, const char* param1);
	int (*metacall)(VirtualQMediaRecorder* self, int param1, int param2, void** param3);
	QMediaObject* (*mediaObject)(const VirtualQMediaRecorder* self);
	bool (*setMediaObject)(VirtualQMediaRecorder* self, QMediaObject* object);
	bool (*event)(VirtualQMediaRecorder* self, QEvent* event);
	bool (*eventFilter)(VirtualQMediaRecorder* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQMediaRecorder* self, QTimerEvent* event);
	void (*childEvent)(VirtualQMediaRecorder* self, QChildEvent* event);
	void (*customEvent)(VirtualQMediaRecorder* self, QEvent* event);
	void (*connectNotify)(VirtualQMediaRecorder* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQMediaRecorder* self, QMetaMethod* signal);
}QMediaRecorder_VTable;

const QMediaRecorder_VTable* QMediaRecorder_vtbl(const VirtualQMediaRecorder* self);
void* QMediaRecorder_vdata(const VirtualQMediaRecorder* self);
void QMediaRecorder_setVdata(VirtualQMediaRecorder* self, void* vdata);

VirtualQMediaRecorder* QMediaRecorder_new(const QMediaRecorder_VTable* vtbl, void* vdata, QMediaObject* mediaObject);
VirtualQMediaRecorder* QMediaRecorder_new2(const QMediaRecorder_VTable* vtbl, void* vdata, QMediaObject* mediaObject, QObject* parent);

void QMediaRecorder_virtbase(QMediaRecorder* src, QObject** outptr_QObject, QMediaBindableInterface** outptr_QMediaBindableInterface);
QMetaObject* QMediaRecorder_metaObject(const QMediaRecorder* self);
void* QMediaRecorder_metacast(QMediaRecorder* self, const char* param1);
int QMediaRecorder_metacall(QMediaRecorder* self, int param1, int param2, void** param3);
struct miqt_string QMediaRecorder_tr(const char* s);
struct miqt_string QMediaRecorder_trUtf8(const char* s);
QMediaObject* QMediaRecorder_mediaObject(const QMediaRecorder* self);
bool QMediaRecorder_isAvailable(const QMediaRecorder* self);
int QMediaRecorder_availability(const QMediaRecorder* self);
QUrl* QMediaRecorder_outputLocation(const QMediaRecorder* self);
bool QMediaRecorder_setOutputLocation(QMediaRecorder* self, QUrl* location);
QUrl* QMediaRecorder_actualLocation(const QMediaRecorder* self);
int QMediaRecorder_state(const QMediaRecorder* self);
int QMediaRecorder_status(const QMediaRecorder* self);
int QMediaRecorder_error(const QMediaRecorder* self);
struct miqt_string QMediaRecorder_errorString(const QMediaRecorder* self);
long long QMediaRecorder_duration(const QMediaRecorder* self);
bool QMediaRecorder_isMuted(const QMediaRecorder* self);
double QMediaRecorder_volume(const QMediaRecorder* self);
struct miqt_array /* of struct miqt_string */  QMediaRecorder_supportedContainers(const QMediaRecorder* self);
struct miqt_string QMediaRecorder_containerDescription(const QMediaRecorder* self, struct miqt_string format);
struct miqt_array /* of struct miqt_string */  QMediaRecorder_supportedAudioCodecs(const QMediaRecorder* self);
struct miqt_string QMediaRecorder_audioCodecDescription(const QMediaRecorder* self, struct miqt_string codecName);
struct miqt_array /* of int */  QMediaRecorder_supportedAudioSampleRates(const QMediaRecorder* self);
struct miqt_array /* of struct miqt_string */  QMediaRecorder_supportedVideoCodecs(const QMediaRecorder* self);
struct miqt_string QMediaRecorder_videoCodecDescription(const QMediaRecorder* self, struct miqt_string codecName);
struct miqt_array /* of QSize* */  QMediaRecorder_supportedResolutions(const QMediaRecorder* self);
struct miqt_array /* of double */  QMediaRecorder_supportedFrameRates(const QMediaRecorder* self);
QAudioEncoderSettings* QMediaRecorder_audioSettings(const QMediaRecorder* self);
QVideoEncoderSettings* QMediaRecorder_videoSettings(const QMediaRecorder* self);
struct miqt_string QMediaRecorder_containerFormat(const QMediaRecorder* self);
void QMediaRecorder_setAudioSettings(QMediaRecorder* self, QAudioEncoderSettings* audioSettings);
void QMediaRecorder_setVideoSettings(QMediaRecorder* self, QVideoEncoderSettings* videoSettings);
void QMediaRecorder_setContainerFormat(QMediaRecorder* self, struct miqt_string container);
void QMediaRecorder_setEncodingSettings(QMediaRecorder* self, QAudioEncoderSettings* audioSettings);
bool QMediaRecorder_isMetaDataAvailable(const QMediaRecorder* self);
bool QMediaRecorder_isMetaDataWritable(const QMediaRecorder* self);
QVariant* QMediaRecorder_metaData(const QMediaRecorder* self, struct miqt_string key);
void QMediaRecorder_setMetaData(QMediaRecorder* self, struct miqt_string key, QVariant* value);
struct miqt_array /* of struct miqt_string */  QMediaRecorder_availableMetaData(const QMediaRecorder* self);
void QMediaRecorder_record(QMediaRecorder* self);
void QMediaRecorder_pause(QMediaRecorder* self);
void QMediaRecorder_stop(QMediaRecorder* self);
void QMediaRecorder_setMuted(QMediaRecorder* self, bool muted);
void QMediaRecorder_setVolume(QMediaRecorder* self, double volume);
void QMediaRecorder_stateChanged(QMediaRecorder* self, int state);
void QMediaRecorder_connect_stateChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QMediaRecorder_statusChanged(QMediaRecorder* self, int status);
void QMediaRecorder_connect_statusChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QMediaRecorder_durationChanged(QMediaRecorder* self, long long duration);
void QMediaRecorder_connect_durationChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t));
void QMediaRecorder_mutedChanged(QMediaRecorder* self, bool muted);
void QMediaRecorder_connect_mutedChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QMediaRecorder_volumeChanged(QMediaRecorder* self, double volume);
void QMediaRecorder_connect_volumeChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
void QMediaRecorder_actualLocationChanged(QMediaRecorder* self, QUrl* location);
void QMediaRecorder_connect_actualLocationChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t));
void QMediaRecorder_errorWithError(QMediaRecorder* self, int error);
void QMediaRecorder_connect_errorWithError(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QMediaRecorder_metaDataAvailableChanged(QMediaRecorder* self, bool available);
void QMediaRecorder_connect_metaDataAvailableChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QMediaRecorder_metaDataWritableChanged(QMediaRecorder* self, bool writable);
void QMediaRecorder_connect_metaDataWritableChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QMediaRecorder_metaDataChanged(QMediaRecorder* self);
void QMediaRecorder_connect_metaDataChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QMediaRecorder_metaDataChanged2(QMediaRecorder* self, struct miqt_string key, QVariant* value);
void QMediaRecorder_connect_metaDataChanged2(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string, QVariant*), void (*release)(intptr_t));
void QMediaRecorder_availabilityChanged(QMediaRecorder* self, bool available);
void QMediaRecorder_connect_availabilityChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QMediaRecorder_availabilityChangedWithAvailability(QMediaRecorder* self, int availability);
void QMediaRecorder_connect_availabilityChangedWithAvailability(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
bool QMediaRecorder_setMediaObject(QMediaRecorder* self, QMediaObject* object);
struct miqt_string QMediaRecorder_tr2(const char* s, const char* c);
struct miqt_string QMediaRecorder_tr3(const char* s, const char* c, int n);
struct miqt_string QMediaRecorder_trUtf82(const char* s, const char* c);
struct miqt_string QMediaRecorder_trUtf83(const char* s, const char* c, int n);
struct miqt_array /* of int */  QMediaRecorder_supportedAudioSampleRates1(const QMediaRecorder* self, QAudioEncoderSettings* settings);
struct miqt_array /* of int */  QMediaRecorder_supportedAudioSampleRates2(const QMediaRecorder* self, QAudioEncoderSettings* settings, bool* continuous);
struct miqt_array /* of QSize* */  QMediaRecorder_supportedResolutions1(const QMediaRecorder* self, QVideoEncoderSettings* settings);
struct miqt_array /* of QSize* */  QMediaRecorder_supportedResolutions2(const QMediaRecorder* self, QVideoEncoderSettings* settings, bool* continuous);
struct miqt_array /* of double */  QMediaRecorder_supportedFrameRates1(const QMediaRecorder* self, QVideoEncoderSettings* settings);
struct miqt_array /* of double */  QMediaRecorder_supportedFrameRates2(const QMediaRecorder* self, QVideoEncoderSettings* settings, bool* continuous);
void QMediaRecorder_setEncodingSettings2(QMediaRecorder* self, QAudioEncoderSettings* audioSettings, QVideoEncoderSettings* videoSettings);
void QMediaRecorder_setEncodingSettings3(QMediaRecorder* self, QAudioEncoderSettings* audioSettings, QVideoEncoderSettings* videoSettings, struct miqt_string containerMimeType);

QMetaObject* QMediaRecorder_virtualbase_metaObject(const VirtualQMediaRecorder* self);
void* QMediaRecorder_virtualbase_metacast(VirtualQMediaRecorder* self, const char* param1);
int QMediaRecorder_virtualbase_metacall(VirtualQMediaRecorder* self, int param1, int param2, void** param3);
QMediaObject* QMediaRecorder_virtualbase_mediaObject(const VirtualQMediaRecorder* self);
bool QMediaRecorder_virtualbase_setMediaObject(VirtualQMediaRecorder* self, QMediaObject* object);
bool QMediaRecorder_virtualbase_event(VirtualQMediaRecorder* self, QEvent* event);
bool QMediaRecorder_virtualbase_eventFilter(VirtualQMediaRecorder* self, QObject* watched, QEvent* event);
void QMediaRecorder_virtualbase_timerEvent(VirtualQMediaRecorder* self, QTimerEvent* event);
void QMediaRecorder_virtualbase_childEvent(VirtualQMediaRecorder* self, QChildEvent* event);
void QMediaRecorder_virtualbase_customEvent(VirtualQMediaRecorder* self, QEvent* event);
void QMediaRecorder_virtualbase_connectNotify(VirtualQMediaRecorder* self, QMetaMethod* signal);
void QMediaRecorder_virtualbase_disconnectNotify(VirtualQMediaRecorder* self, QMetaMethod* signal);

QObject* QMediaRecorder_protectedbase_sender(const VirtualQMediaRecorder* self);
int QMediaRecorder_protectedbase_senderSignalIndex(const VirtualQMediaRecorder* self);
int QMediaRecorder_protectedbase_receivers(const VirtualQMediaRecorder* self, const char* signal);
bool QMediaRecorder_protectedbase_isSignalConnected(const VirtualQMediaRecorder* self, QMetaMethod* signal);

const QMetaObject* QMediaRecorder_staticMetaObject();
void QMediaRecorder_delete(QMediaRecorder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
