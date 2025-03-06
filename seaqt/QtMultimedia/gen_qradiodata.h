#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QRADIODATA_H
#define SEAQT_QTMULTIMEDIA_GEN_QRADIODATA_H

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
class QMediaBindableInterface;
class QMediaObject;
class QMetaMethod;
class QMetaObject;
class QObject;
class QRadioData;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaBindableInterface QMediaBindableInterface;
typedef struct QMediaObject QMediaObject;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRadioData QRadioData;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QRadioData_VTable {
	void (*destructor)(struct QRadioData_VTable* vtbl, QRadioData* self);
	QMetaObject* (*metaObject)(struct QRadioData_VTable* vtbl, const QRadioData* self);
	void* (*metacast)(struct QRadioData_VTable* vtbl, QRadioData* self, const char* param1);
	int (*metacall)(struct QRadioData_VTable* vtbl, QRadioData* self, int param1, int param2, void** param3);
	QMediaObject* (*mediaObject)(struct QRadioData_VTable* vtbl, const QRadioData* self);
	bool (*setMediaObject)(struct QRadioData_VTable* vtbl, QRadioData* self, QMediaObject* mediaObject);
	bool (*event)(struct QRadioData_VTable* vtbl, QRadioData* self, QEvent* event);
	bool (*eventFilter)(struct QRadioData_VTable* vtbl, QRadioData* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QRadioData_VTable* vtbl, QRadioData* self, QTimerEvent* event);
	void (*childEvent)(struct QRadioData_VTable* vtbl, QRadioData* self, QChildEvent* event);
	void (*customEvent)(struct QRadioData_VTable* vtbl, QRadioData* self, QEvent* event);
	void (*connectNotify)(struct QRadioData_VTable* vtbl, QRadioData* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QRadioData_VTable* vtbl, QRadioData* self, QMetaMethod* signal);
};
QRadioData* QRadioData_new(struct QRadioData_VTable* vtbl, QMediaObject* mediaObject);
QRadioData* QRadioData_new2(struct QRadioData_VTable* vtbl, QMediaObject* mediaObject, QObject* parent);
void QRadioData_virtbase(QRadioData* src, QObject** outptr_QObject, QMediaBindableInterface** outptr_QMediaBindableInterface);
QMetaObject* QRadioData_metaObject(const QRadioData* self);
void* QRadioData_metacast(QRadioData* self, const char* param1);
int QRadioData_metacall(QRadioData* self, int param1, int param2, void** param3);
struct miqt_string QRadioData_tr(const char* s);
struct miqt_string QRadioData_trUtf8(const char* s);
int QRadioData_availability(const QRadioData* self);
QMediaObject* QRadioData_mediaObject(const QRadioData* self);
struct miqt_string QRadioData_stationId(const QRadioData* self);
int QRadioData_programType(const QRadioData* self);
struct miqt_string QRadioData_programTypeName(const QRadioData* self);
struct miqt_string QRadioData_stationName(const QRadioData* self);
struct miqt_string QRadioData_radioText(const QRadioData* self);
bool QRadioData_isAlternativeFrequenciesEnabled(const QRadioData* self);
int QRadioData_error(const QRadioData* self);
struct miqt_string QRadioData_errorString(const QRadioData* self);
void QRadioData_setAlternativeFrequenciesEnabled(QRadioData* self, bool enabled);
void QRadioData_stationIdChanged(QRadioData* self, struct miqt_string stationId);
void QRadioData_connect_stationIdChanged(QRadioData* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QRadioData_programTypeChanged(QRadioData* self, int programType);
void QRadioData_connect_programTypeChanged(QRadioData* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QRadioData_programTypeNameChanged(QRadioData* self, struct miqt_string programTypeName);
void QRadioData_connect_programTypeNameChanged(QRadioData* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QRadioData_stationNameChanged(QRadioData* self, struct miqt_string stationName);
void QRadioData_connect_stationNameChanged(QRadioData* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QRadioData_radioTextChanged(QRadioData* self, struct miqt_string radioText);
void QRadioData_connect_radioTextChanged(QRadioData* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QRadioData_alternativeFrequenciesEnabledChanged(QRadioData* self, bool enabled);
void QRadioData_connect_alternativeFrequenciesEnabledChanged(QRadioData* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QRadioData_errorWithError(QRadioData* self, int error);
void QRadioData_connect_errorWithError(QRadioData* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
bool QRadioData_setMediaObject(QRadioData* self, QMediaObject* mediaObject);
struct miqt_string QRadioData_tr2(const char* s, const char* c);
struct miqt_string QRadioData_tr3(const char* s, const char* c, int n);
struct miqt_string QRadioData_trUtf82(const char* s, const char* c);
struct miqt_string QRadioData_trUtf83(const char* s, const char* c, int n);
QMetaObject* QRadioData_virtualbase_metaObject(const void* self);
void* QRadioData_virtualbase_metacast(void* self, const char* param1);
int QRadioData_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QMediaObject* QRadioData_virtualbase_mediaObject(const void* self);
bool QRadioData_virtualbase_setMediaObject(void* self, QMediaObject* mediaObject);
bool QRadioData_virtualbase_event(void* self, QEvent* event);
bool QRadioData_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QRadioData_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QRadioData_virtualbase_childEvent(void* self, QChildEvent* event);
void QRadioData_virtualbase_customEvent(void* self, QEvent* event);
void QRadioData_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QRadioData_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QRadioData_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QRadioData_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QRadioData_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QRadioData_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QRadioData_staticMetaObject();
void QRadioData_delete(QRadioData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
