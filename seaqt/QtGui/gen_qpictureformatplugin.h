#pragma once
#ifndef SEAQT_QTGUI_GEN_QPICTUREFORMATPLUGIN_H
#define SEAQT_QTGUI_GEN_QPICTUREFORMATPLUGIN_H

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
class QMetaMethod;
class QMetaObject;
class QObject;
class QPicture;
class QPictureFormatPlugin;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPicture QPicture;
typedef struct QPictureFormatPlugin QPictureFormatPlugin;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQPictureFormatPlugin VirtualQPictureFormatPlugin;
typedef struct QPictureFormatPlugin_VTable{
	void (*destructor)(VirtualQPictureFormatPlugin* self);
	QMetaObject* (*metaObject)(const VirtualQPictureFormatPlugin* self);
	void* (*metacast)(VirtualQPictureFormatPlugin* self, const char* param1);
	int (*metacall)(VirtualQPictureFormatPlugin* self, int param1, int param2, void** param3);
	bool (*loadPicture)(VirtualQPictureFormatPlugin* self, struct miqt_string format, struct miqt_string filename, QPicture* pic);
	bool (*savePicture)(VirtualQPictureFormatPlugin* self, struct miqt_string format, struct miqt_string filename, QPicture* pic);
	bool (*installIOHandler)(VirtualQPictureFormatPlugin* self, struct miqt_string format);
	bool (*event)(VirtualQPictureFormatPlugin* self, QEvent* event);
	bool (*eventFilter)(VirtualQPictureFormatPlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQPictureFormatPlugin* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPictureFormatPlugin* self, QChildEvent* event);
	void (*customEvent)(VirtualQPictureFormatPlugin* self, QEvent* event);
	void (*connectNotify)(VirtualQPictureFormatPlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPictureFormatPlugin* self, QMetaMethod* signal);
}QPictureFormatPlugin_VTable;

const QPictureFormatPlugin_VTable* QPictureFormatPlugin_vtbl(const VirtualQPictureFormatPlugin* self);
void* QPictureFormatPlugin_vdata(const VirtualQPictureFormatPlugin* self);
void QPictureFormatPlugin_setVdata(VirtualQPictureFormatPlugin* self, void* vdata);

VirtualQPictureFormatPlugin* QPictureFormatPlugin_new(const QPictureFormatPlugin_VTable* vtbl, void* vdata);
VirtualQPictureFormatPlugin* QPictureFormatPlugin_new2(const QPictureFormatPlugin_VTable* vtbl, void* vdata, QObject* parent);

void QPictureFormatPlugin_virtbase(QPictureFormatPlugin* src, QObject** outptr_QObject);
QMetaObject* QPictureFormatPlugin_metaObject(const QPictureFormatPlugin* self);
void* QPictureFormatPlugin_metacast(QPictureFormatPlugin* self, const char* param1);
int QPictureFormatPlugin_metacall(QPictureFormatPlugin* self, int param1, int param2, void** param3);
struct miqt_string QPictureFormatPlugin_tr(const char* s);
struct miqt_string QPictureFormatPlugin_trUtf8(const char* s);
bool QPictureFormatPlugin_loadPicture(QPictureFormatPlugin* self, struct miqt_string format, struct miqt_string filename, QPicture* pic);
bool QPictureFormatPlugin_savePicture(QPictureFormatPlugin* self, struct miqt_string format, struct miqt_string filename, QPicture* pic);
bool QPictureFormatPlugin_installIOHandler(QPictureFormatPlugin* self, struct miqt_string format);
struct miqt_string QPictureFormatPlugin_tr2(const char* s, const char* c);
struct miqt_string QPictureFormatPlugin_tr3(const char* s, const char* c, int n);
struct miqt_string QPictureFormatPlugin_trUtf82(const char* s, const char* c);
struct miqt_string QPictureFormatPlugin_trUtf83(const char* s, const char* c, int n);

QMetaObject* QPictureFormatPlugin_virtualbase_metaObject(const VirtualQPictureFormatPlugin* self);
void* QPictureFormatPlugin_virtualbase_metacast(VirtualQPictureFormatPlugin* self, const char* param1);
int QPictureFormatPlugin_virtualbase_metacall(VirtualQPictureFormatPlugin* self, int param1, int param2, void** param3);
bool QPictureFormatPlugin_virtualbase_loadPicture(VirtualQPictureFormatPlugin* self, struct miqt_string format, struct miqt_string filename, QPicture* pic);
bool QPictureFormatPlugin_virtualbase_savePicture(VirtualQPictureFormatPlugin* self, struct miqt_string format, struct miqt_string filename, QPicture* pic);
bool QPictureFormatPlugin_virtualbase_installIOHandler(VirtualQPictureFormatPlugin* self, struct miqt_string format);
bool QPictureFormatPlugin_virtualbase_event(VirtualQPictureFormatPlugin* self, QEvent* event);
bool QPictureFormatPlugin_virtualbase_eventFilter(VirtualQPictureFormatPlugin* self, QObject* watched, QEvent* event);
void QPictureFormatPlugin_virtualbase_timerEvent(VirtualQPictureFormatPlugin* self, QTimerEvent* event);
void QPictureFormatPlugin_virtualbase_childEvent(VirtualQPictureFormatPlugin* self, QChildEvent* event);
void QPictureFormatPlugin_virtualbase_customEvent(VirtualQPictureFormatPlugin* self, QEvent* event);
void QPictureFormatPlugin_virtualbase_connectNotify(VirtualQPictureFormatPlugin* self, QMetaMethod* signal);
void QPictureFormatPlugin_virtualbase_disconnectNotify(VirtualQPictureFormatPlugin* self, QMetaMethod* signal);

QObject* QPictureFormatPlugin_protectedbase_sender(const VirtualQPictureFormatPlugin* self);
int QPictureFormatPlugin_protectedbase_senderSignalIndex(const VirtualQPictureFormatPlugin* self);
int QPictureFormatPlugin_protectedbase_receivers(const VirtualQPictureFormatPlugin* self, const char* signal);
bool QPictureFormatPlugin_protectedbase_isSignalConnected(const VirtualQPictureFormatPlugin* self, QMetaMethod* signal);

const QMetaObject* QPictureFormatPlugin_staticMetaObject();
void QPictureFormatPlugin_delete(QPictureFormatPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
