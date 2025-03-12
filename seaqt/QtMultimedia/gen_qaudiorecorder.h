#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIORECORDER_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIORECORDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioRecorder;
class QChildEvent;
class QEvent;
class QMediaBindableInterface;
class QMediaObject;
class QMediaRecorder;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAudioRecorder QAudioRecorder;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaBindableInterface QMediaBindableInterface;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaRecorder QMediaRecorder;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQAudioRecorder VirtualQAudioRecorder;
typedef struct QAudioRecorder_VTable{
	void (*destructor)(VirtualQAudioRecorder* self);
	QMetaObject* (*metaObject)(const VirtualQAudioRecorder* self);
	void* (*metacast)(VirtualQAudioRecorder* self, const char* param1);
	int (*metacall)(VirtualQAudioRecorder* self, int param1, int param2, void** param3);
	QMediaObject* (*mediaObject)(const VirtualQAudioRecorder* self);
	bool (*setMediaObject)(VirtualQAudioRecorder* self, QMediaObject* object);
	bool (*event)(VirtualQAudioRecorder* self, QEvent* event);
	bool (*eventFilter)(VirtualQAudioRecorder* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAudioRecorder* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAudioRecorder* self, QChildEvent* event);
	void (*customEvent)(VirtualQAudioRecorder* self, QEvent* event);
	void (*connectNotify)(VirtualQAudioRecorder* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAudioRecorder* self, QMetaMethod* signal);
}QAudioRecorder_VTable;

const QAudioRecorder_VTable* QAudioRecorder_vtbl(const VirtualQAudioRecorder* self);
void* QAudioRecorder_vdata(const VirtualQAudioRecorder* self);
void QAudioRecorder_setVdata(VirtualQAudioRecorder* self, void* vdata);

VirtualQAudioRecorder* QAudioRecorder_new(const QAudioRecorder_VTable* vtbl, void* vdata);
VirtualQAudioRecorder* QAudioRecorder_new2(const QAudioRecorder_VTable* vtbl, void* vdata, QObject* parent);

void QAudioRecorder_virtbase(QAudioRecorder* src, QMediaRecorder** outptr_QMediaRecorder);
QMetaObject* QAudioRecorder_metaObject(const QAudioRecorder* self);
void* QAudioRecorder_metacast(QAudioRecorder* self, const char* param1);
int QAudioRecorder_metacall(QAudioRecorder* self, int param1, int param2, void** param3);
struct miqt_string QAudioRecorder_tr(const char* s);
struct miqt_string QAudioRecorder_trUtf8(const char* s);
struct miqt_array /* of struct miqt_string */  QAudioRecorder_audioInputs(const QAudioRecorder* self);
struct miqt_string QAudioRecorder_defaultAudioInput(const QAudioRecorder* self);
struct miqt_string QAudioRecorder_audioInputDescription(const QAudioRecorder* self, struct miqt_string name);
struct miqt_string QAudioRecorder_audioInput(const QAudioRecorder* self);
void QAudioRecorder_setAudioInput(QAudioRecorder* self, struct miqt_string name);
void QAudioRecorder_audioInputChanged(QAudioRecorder* self, struct miqt_string name);
void QAudioRecorder_connect_audioInputChanged(VirtualQAudioRecorder* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QAudioRecorder_availableAudioInputsChanged(QAudioRecorder* self);
void QAudioRecorder_connect_availableAudioInputsChanged(VirtualQAudioRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QAudioRecorder_tr2(const char* s, const char* c);
struct miqt_string QAudioRecorder_tr3(const char* s, const char* c, int n);
struct miqt_string QAudioRecorder_trUtf82(const char* s, const char* c);
struct miqt_string QAudioRecorder_trUtf83(const char* s, const char* c, int n);

QMetaObject* QAudioRecorder_virtualbase_metaObject(const VirtualQAudioRecorder* self);
void* QAudioRecorder_virtualbase_metacast(VirtualQAudioRecorder* self, const char* param1);
int QAudioRecorder_virtualbase_metacall(VirtualQAudioRecorder* self, int param1, int param2, void** param3);
QMediaObject* QAudioRecorder_virtualbase_mediaObject(const VirtualQAudioRecorder* self);
bool QAudioRecorder_virtualbase_setMediaObject(VirtualQAudioRecorder* self, QMediaObject* object);
bool QAudioRecorder_virtualbase_event(VirtualQAudioRecorder* self, QEvent* event);
bool QAudioRecorder_virtualbase_eventFilter(VirtualQAudioRecorder* self, QObject* watched, QEvent* event);
void QAudioRecorder_virtualbase_timerEvent(VirtualQAudioRecorder* self, QTimerEvent* event);
void QAudioRecorder_virtualbase_childEvent(VirtualQAudioRecorder* self, QChildEvent* event);
void QAudioRecorder_virtualbase_customEvent(VirtualQAudioRecorder* self, QEvent* event);
void QAudioRecorder_virtualbase_connectNotify(VirtualQAudioRecorder* self, QMetaMethod* signal);
void QAudioRecorder_virtualbase_disconnectNotify(VirtualQAudioRecorder* self, QMetaMethod* signal);

QObject* QAudioRecorder_protectedbase_sender(const VirtualQAudioRecorder* self);
int QAudioRecorder_protectedbase_senderSignalIndex(const VirtualQAudioRecorder* self);
int QAudioRecorder_protectedbase_receivers(const VirtualQAudioRecorder* self, const char* signal);
bool QAudioRecorder_protectedbase_isSignalConnected(const VirtualQAudioRecorder* self, QMetaMethod* signal);

const QMetaObject* QAudioRecorder_staticMetaObject();
void QAudioRecorder_delete(QAudioRecorder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
