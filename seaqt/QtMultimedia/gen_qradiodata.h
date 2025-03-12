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

typedef struct VirtualQRadioData VirtualQRadioData;
typedef struct QRadioData_VTable{
	void (*destructor)(VirtualQRadioData* self);
	QMetaObject* (*metaObject)(const VirtualQRadioData* self);
	void* (*metacast)(VirtualQRadioData* self, const char* param1);
	int (*metacall)(VirtualQRadioData* self, int param1, int param2, void** param3);
	QMediaObject* (*mediaObject)(const VirtualQRadioData* self);
	bool (*setMediaObject)(VirtualQRadioData* self, QMediaObject* mediaObject);
	bool (*event)(VirtualQRadioData* self, QEvent* event);
	bool (*eventFilter)(VirtualQRadioData* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQRadioData* self, QTimerEvent* event);
	void (*childEvent)(VirtualQRadioData* self, QChildEvent* event);
	void (*customEvent)(VirtualQRadioData* self, QEvent* event);
	void (*connectNotify)(VirtualQRadioData* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQRadioData* self, QMetaMethod* signal);
}QRadioData_VTable;

const QRadioData_VTable* QRadioData_vtbl(const VirtualQRadioData* self);
void* QRadioData_vdata(const VirtualQRadioData* self);
void QRadioData_setVdata(VirtualQRadioData* self, void* vdata);

VirtualQRadioData* QRadioData_new(const QRadioData_VTable* vtbl, void* vdata, QMediaObject* mediaObject);
VirtualQRadioData* QRadioData_new2(const QRadioData_VTable* vtbl, void* vdata, QMediaObject* mediaObject, QObject* parent);

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
void QRadioData_connect_stationIdChanged(VirtualQRadioData* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QRadioData_programTypeChanged(QRadioData* self, int programType);
void QRadioData_connect_programTypeChanged(VirtualQRadioData* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QRadioData_programTypeNameChanged(QRadioData* self, struct miqt_string programTypeName);
void QRadioData_connect_programTypeNameChanged(VirtualQRadioData* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QRadioData_stationNameChanged(QRadioData* self, struct miqt_string stationName);
void QRadioData_connect_stationNameChanged(VirtualQRadioData* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QRadioData_radioTextChanged(QRadioData* self, struct miqt_string radioText);
void QRadioData_connect_radioTextChanged(VirtualQRadioData* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QRadioData_alternativeFrequenciesEnabledChanged(QRadioData* self, bool enabled);
void QRadioData_connect_alternativeFrequenciesEnabledChanged(VirtualQRadioData* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QRadioData_errorWithError(QRadioData* self, int error);
void QRadioData_connect_errorWithError(VirtualQRadioData* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
bool QRadioData_setMediaObject(QRadioData* self, QMediaObject* mediaObject);
struct miqt_string QRadioData_tr2(const char* s, const char* c);
struct miqt_string QRadioData_tr3(const char* s, const char* c, int n);
struct miqt_string QRadioData_trUtf82(const char* s, const char* c);
struct miqt_string QRadioData_trUtf83(const char* s, const char* c, int n);

QMetaObject* QRadioData_virtualbase_metaObject(const VirtualQRadioData* self);
void* QRadioData_virtualbase_metacast(VirtualQRadioData* self, const char* param1);
int QRadioData_virtualbase_metacall(VirtualQRadioData* self, int param1, int param2, void** param3);
QMediaObject* QRadioData_virtualbase_mediaObject(const VirtualQRadioData* self);
bool QRadioData_virtualbase_setMediaObject(VirtualQRadioData* self, QMediaObject* mediaObject);
bool QRadioData_virtualbase_event(VirtualQRadioData* self, QEvent* event);
bool QRadioData_virtualbase_eventFilter(VirtualQRadioData* self, QObject* watched, QEvent* event);
void QRadioData_virtualbase_timerEvent(VirtualQRadioData* self, QTimerEvent* event);
void QRadioData_virtualbase_childEvent(VirtualQRadioData* self, QChildEvent* event);
void QRadioData_virtualbase_customEvent(VirtualQRadioData* self, QEvent* event);
void QRadioData_virtualbase_connectNotify(VirtualQRadioData* self, QMetaMethod* signal);
void QRadioData_virtualbase_disconnectNotify(VirtualQRadioData* self, QMetaMethod* signal);

QObject* QRadioData_protectedbase_sender(const VirtualQRadioData* self);
int QRadioData_protectedbase_senderSignalIndex(const VirtualQRadioData* self);
int QRadioData_protectedbase_receivers(const VirtualQRadioData* self, const char* signal);
bool QRadioData_protectedbase_isSignalConnected(const VirtualQRadioData* self, QMetaMethod* signal);

const QMetaObject* QRadioData_staticMetaObject();
void QRadioData_delete(QRadioData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
