#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QMEDIADEVICES_H
#define SEAQT_QTMULTIMEDIA_GEN_QMEDIADEVICES_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioDevice;
class QCameraDevice;
class QChildEvent;
class QEvent;
class QMediaDevices;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAudioDevice QAudioDevice;
typedef struct QCameraDevice QCameraDevice;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaDevices QMediaDevices;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QMediaDevices_VTable {
	void (*destructor)(struct QMediaDevices_VTable* vtbl, QMediaDevices* self);
	QMetaObject* (*metaObject)(struct QMediaDevices_VTable* vtbl, const QMediaDevices* self);
	void* (*metacast)(struct QMediaDevices_VTable* vtbl, QMediaDevices* self, const char* param1);
	int (*metacall)(struct QMediaDevices_VTable* vtbl, QMediaDevices* self, int param1, int param2, void** param3);
	bool (*event)(struct QMediaDevices_VTable* vtbl, QMediaDevices* self, QEvent* event);
	bool (*eventFilter)(struct QMediaDevices_VTable* vtbl, QMediaDevices* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QMediaDevices_VTable* vtbl, QMediaDevices* self, QTimerEvent* event);
	void (*childEvent)(struct QMediaDevices_VTable* vtbl, QMediaDevices* self, QChildEvent* event);
	void (*customEvent)(struct QMediaDevices_VTable* vtbl, QMediaDevices* self, QEvent* event);
	void (*connectNotify)(struct QMediaDevices_VTable* vtbl, QMediaDevices* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QMediaDevices_VTable* vtbl, QMediaDevices* self, QMetaMethod* signal);
};
QMediaDevices* QMediaDevices_new(struct QMediaDevices_VTable* vtbl);
QMediaDevices* QMediaDevices_new2(struct QMediaDevices_VTable* vtbl, QObject* parent);
void QMediaDevices_virtbase(QMediaDevices* src, QObject** outptr_QObject);
QMetaObject* QMediaDevices_metaObject(const QMediaDevices* self);
void* QMediaDevices_metacast(QMediaDevices* self, const char* param1);
int QMediaDevices_metacall(QMediaDevices* self, int param1, int param2, void** param3);
struct miqt_string QMediaDevices_tr(const char* s);
struct miqt_array /* of QAudioDevice* */  QMediaDevices_audioInputs();
struct miqt_array /* of QAudioDevice* */  QMediaDevices_audioOutputs();
struct miqt_array /* of QCameraDevice* */  QMediaDevices_videoInputs();
QAudioDevice* QMediaDevices_defaultAudioInput();
QAudioDevice* QMediaDevices_defaultAudioOutput();
QCameraDevice* QMediaDevices_defaultVideoInput();
void QMediaDevices_audioInputsChanged(QMediaDevices* self);
void QMediaDevices_connect_audioInputsChanged(QMediaDevices* self, intptr_t slot);
void QMediaDevices_audioOutputsChanged(QMediaDevices* self);
void QMediaDevices_connect_audioOutputsChanged(QMediaDevices* self, intptr_t slot);
void QMediaDevices_videoInputsChanged(QMediaDevices* self);
void QMediaDevices_connect_videoInputsChanged(QMediaDevices* self, intptr_t slot);
struct miqt_string QMediaDevices_tr2(const char* s, const char* c);
struct miqt_string QMediaDevices_tr3(const char* s, const char* c, int n);
QMetaObject* QMediaDevices_virtualbase_metaObject(const void* self);
void* QMediaDevices_virtualbase_metacast(void* self, const char* param1);
int QMediaDevices_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QMediaDevices_virtualbase_event(void* self, QEvent* event);
bool QMediaDevices_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QMediaDevices_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QMediaDevices_virtualbase_childEvent(void* self, QChildEvent* event);
void QMediaDevices_virtualbase_customEvent(void* self, QEvent* event);
void QMediaDevices_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QMediaDevices_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QMediaDevices_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QMediaDevices_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QMediaDevices_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QMediaDevices_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QMediaDevices_staticMetaObject();
void QMediaDevices_delete(QMediaDevices* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
