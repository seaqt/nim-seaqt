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

struct QPictureFormatPlugin_VTable {
	void (*destructor)(struct QPictureFormatPlugin_VTable* vtbl, QPictureFormatPlugin* self);
	QMetaObject* (*metaObject)(struct QPictureFormatPlugin_VTable* vtbl, const QPictureFormatPlugin* self);
	void* (*metacast)(struct QPictureFormatPlugin_VTable* vtbl, QPictureFormatPlugin* self, const char* param1);
	int (*metacall)(struct QPictureFormatPlugin_VTable* vtbl, QPictureFormatPlugin* self, int param1, int param2, void** param3);
	bool (*loadPicture)(struct QPictureFormatPlugin_VTable* vtbl, QPictureFormatPlugin* self, struct miqt_string format, struct miqt_string filename, QPicture* pic);
	bool (*savePicture)(struct QPictureFormatPlugin_VTable* vtbl, QPictureFormatPlugin* self, struct miqt_string format, struct miqt_string filename, QPicture* pic);
	bool (*installIOHandler)(struct QPictureFormatPlugin_VTable* vtbl, QPictureFormatPlugin* self, struct miqt_string format);
	bool (*event)(struct QPictureFormatPlugin_VTable* vtbl, QPictureFormatPlugin* self, QEvent* event);
	bool (*eventFilter)(struct QPictureFormatPlugin_VTable* vtbl, QPictureFormatPlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QPictureFormatPlugin_VTable* vtbl, QPictureFormatPlugin* self, QTimerEvent* event);
	void (*childEvent)(struct QPictureFormatPlugin_VTable* vtbl, QPictureFormatPlugin* self, QChildEvent* event);
	void (*customEvent)(struct QPictureFormatPlugin_VTable* vtbl, QPictureFormatPlugin* self, QEvent* event);
	void (*connectNotify)(struct QPictureFormatPlugin_VTable* vtbl, QPictureFormatPlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QPictureFormatPlugin_VTable* vtbl, QPictureFormatPlugin* self, QMetaMethod* signal);
};
QPictureFormatPlugin* QPictureFormatPlugin_new(struct QPictureFormatPlugin_VTable* vtbl);
QPictureFormatPlugin* QPictureFormatPlugin_new2(struct QPictureFormatPlugin_VTable* vtbl, QObject* parent);
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
QMetaObject* QPictureFormatPlugin_virtualbase_metaObject(const void* self);
void* QPictureFormatPlugin_virtualbase_metacast(void* self, const char* param1);
int QPictureFormatPlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QPictureFormatPlugin_virtualbase_loadPicture(void* self, struct miqt_string format, struct miqt_string filename, QPicture* pic);
bool QPictureFormatPlugin_virtualbase_savePicture(void* self, struct miqt_string format, struct miqt_string filename, QPicture* pic);
bool QPictureFormatPlugin_virtualbase_installIOHandler(void* self, struct miqt_string format);
bool QPictureFormatPlugin_virtualbase_event(void* self, QEvent* event);
bool QPictureFormatPlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QPictureFormatPlugin_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QPictureFormatPlugin_virtualbase_childEvent(void* self, QChildEvent* event);
void QPictureFormatPlugin_virtualbase_customEvent(void* self, QEvent* event);
void QPictureFormatPlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QPictureFormatPlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QPictureFormatPlugin_protectedbase_sender(const void* self);
int QPictureFormatPlugin_protectedbase_senderSignalIndex(const void* self);
int QPictureFormatPlugin_protectedbase_receivers(const void* self, const char* signal);
bool QPictureFormatPlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QPictureFormatPlugin_staticMetaObject();
void QPictureFormatPlugin_delete(QPictureFormatPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
