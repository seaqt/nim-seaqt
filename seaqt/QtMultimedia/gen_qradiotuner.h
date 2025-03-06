#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QRADIOTUNER_H
#define SEAQT_QTMULTIMEDIA_GEN_QRADIOTUNER_H

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
class QMediaObject;
class QMediaService;
class QMetaMethod;
class QMetaObject;
class QObject;
class QRadioData;
class QRadioTuner;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaService QMediaService;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRadioData QRadioData;
typedef struct QRadioTuner QRadioTuner;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QRadioTuner_VTable {
	void (*destructor)(struct QRadioTuner_VTable* vtbl, QRadioTuner* self);
	QMetaObject* (*metaObject)(struct QRadioTuner_VTable* vtbl, const QRadioTuner* self);
	void* (*metacast)(struct QRadioTuner_VTable* vtbl, QRadioTuner* self, const char* param1);
	int (*metacall)(struct QRadioTuner_VTable* vtbl, QRadioTuner* self, int param1, int param2, void** param3);
	int (*availability)(struct QRadioTuner_VTable* vtbl, const QRadioTuner* self);
	bool (*isAvailable)(struct QRadioTuner_VTable* vtbl, const QRadioTuner* self);
	QMediaService* (*service)(struct QRadioTuner_VTable* vtbl, const QRadioTuner* self);
	bool (*bind)(struct QRadioTuner_VTable* vtbl, QRadioTuner* self, QObject* param1);
	void (*unbind)(struct QRadioTuner_VTable* vtbl, QRadioTuner* self, QObject* param1);
	bool (*event)(struct QRadioTuner_VTable* vtbl, QRadioTuner* self, QEvent* event);
	bool (*eventFilter)(struct QRadioTuner_VTable* vtbl, QRadioTuner* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QRadioTuner_VTable* vtbl, QRadioTuner* self, QTimerEvent* event);
	void (*childEvent)(struct QRadioTuner_VTable* vtbl, QRadioTuner* self, QChildEvent* event);
	void (*customEvent)(struct QRadioTuner_VTable* vtbl, QRadioTuner* self, QEvent* event);
	void (*connectNotify)(struct QRadioTuner_VTable* vtbl, QRadioTuner* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QRadioTuner_VTable* vtbl, QRadioTuner* self, QMetaMethod* signal);
};
QRadioTuner* QRadioTuner_new(struct QRadioTuner_VTable* vtbl);
QRadioTuner* QRadioTuner_new2(struct QRadioTuner_VTable* vtbl, QObject* parent);
void QRadioTuner_virtbase(QRadioTuner* src, QMediaObject** outptr_QMediaObject);
QMetaObject* QRadioTuner_metaObject(const QRadioTuner* self);
void* QRadioTuner_metacast(QRadioTuner* self, const char* param1);
int QRadioTuner_metacall(QRadioTuner* self, int param1, int param2, void** param3);
struct miqt_string QRadioTuner_tr(const char* s);
struct miqt_string QRadioTuner_trUtf8(const char* s);
int QRadioTuner_availability(const QRadioTuner* self);
int QRadioTuner_state(const QRadioTuner* self);
int QRadioTuner_band(const QRadioTuner* self);
bool QRadioTuner_isBandSupported(const QRadioTuner* self, int b);
int QRadioTuner_frequency(const QRadioTuner* self);
int QRadioTuner_frequencyStep(const QRadioTuner* self, int band);
struct miqt_map /* tuple of int and int */  QRadioTuner_frequencyRange(const QRadioTuner* self, int band);
bool QRadioTuner_isStereo(const QRadioTuner* self);
void QRadioTuner_setStereoMode(QRadioTuner* self, int mode);
int QRadioTuner_stereoMode(const QRadioTuner* self);
int QRadioTuner_signalStrength(const QRadioTuner* self);
int QRadioTuner_volume(const QRadioTuner* self);
bool QRadioTuner_isMuted(const QRadioTuner* self);
bool QRadioTuner_isSearching(const QRadioTuner* self);
bool QRadioTuner_isAntennaConnected(const QRadioTuner* self);
int QRadioTuner_error(const QRadioTuner* self);
struct miqt_string QRadioTuner_errorString(const QRadioTuner* self);
QRadioData* QRadioTuner_radioData(const QRadioTuner* self);
void QRadioTuner_searchForward(QRadioTuner* self);
void QRadioTuner_searchBackward(QRadioTuner* self);
void QRadioTuner_searchAllStations(QRadioTuner* self);
void QRadioTuner_cancelSearch(QRadioTuner* self);
void QRadioTuner_setBand(QRadioTuner* self, int band);
void QRadioTuner_setFrequency(QRadioTuner* self, int frequency);
void QRadioTuner_setVolume(QRadioTuner* self, int volume);
void QRadioTuner_setMuted(QRadioTuner* self, bool muted);
void QRadioTuner_start(QRadioTuner* self);
void QRadioTuner_stop(QRadioTuner* self);
void QRadioTuner_stateChanged(QRadioTuner* self, int state);
void QRadioTuner_connect_stateChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QRadioTuner_bandChanged(QRadioTuner* self, int band);
void QRadioTuner_connect_bandChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QRadioTuner_frequencyChanged(QRadioTuner* self, int frequency);
void QRadioTuner_connect_frequencyChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QRadioTuner_stereoStatusChanged(QRadioTuner* self, bool stereo);
void QRadioTuner_connect_stereoStatusChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QRadioTuner_searchingChanged(QRadioTuner* self, bool searching);
void QRadioTuner_connect_searchingChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QRadioTuner_signalStrengthChanged(QRadioTuner* self, int signalStrength);
void QRadioTuner_connect_signalStrengthChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QRadioTuner_volumeChanged(QRadioTuner* self, int volume);
void QRadioTuner_connect_volumeChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QRadioTuner_mutedChanged(QRadioTuner* self, bool muted);
void QRadioTuner_connect_mutedChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QRadioTuner_stationFound(QRadioTuner* self, int frequency, struct miqt_string stationId);
void QRadioTuner_connect_stationFound(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, int, struct miqt_string), void (*release)(intptr_t));
void QRadioTuner_antennaConnectedChanged(QRadioTuner* self, bool connectionStatus);
void QRadioTuner_connect_antennaConnectedChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QRadioTuner_errorWithError(QRadioTuner* self, int error);
void QRadioTuner_connect_errorWithError(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct miqt_string QRadioTuner_tr2(const char* s, const char* c);
struct miqt_string QRadioTuner_tr3(const char* s, const char* c, int n);
struct miqt_string QRadioTuner_trUtf82(const char* s, const char* c);
struct miqt_string QRadioTuner_trUtf83(const char* s, const char* c, int n);
void QRadioTuner_searchAllStations1(QRadioTuner* self, int searchMode);
QMetaObject* QRadioTuner_virtualbase_metaObject(const void* self);
void* QRadioTuner_virtualbase_metacast(void* self, const char* param1);
int QRadioTuner_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QRadioTuner_virtualbase_availability(const void* self);
bool QRadioTuner_virtualbase_isAvailable(const void* self);
QMediaService* QRadioTuner_virtualbase_service(const void* self);
bool QRadioTuner_virtualbase_bind(void* self, QObject* param1);
void QRadioTuner_virtualbase_unbind(void* self, QObject* param1);
bool QRadioTuner_virtualbase_event(void* self, QEvent* event);
bool QRadioTuner_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QRadioTuner_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QRadioTuner_virtualbase_childEvent(void* self, QChildEvent* event);
void QRadioTuner_virtualbase_customEvent(void* self, QEvent* event);
void QRadioTuner_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QRadioTuner_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QRadioTuner_protectedbase_addPropertyWatch(void* self, struct miqt_string name);
void QRadioTuner_protectedbase_removePropertyWatch(void* self, struct miqt_string name);
QObject* QRadioTuner_protectedbase_sender(const void* self);
int QRadioTuner_protectedbase_senderSignalIndex(const void* self);
int QRadioTuner_protectedbase_receivers(const void* self, const char* signal);
bool QRadioTuner_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QRadioTuner_staticMetaObject();
void QRadioTuner_delete(QRadioTuner* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
