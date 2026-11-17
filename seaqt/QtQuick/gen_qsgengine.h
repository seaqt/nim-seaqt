#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGENGINE_H
#define SEAQT_QTQUICK_GEN_QSGENGINE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QImage;
class QMetaMethod;
class QMetaObject;
class QObject;
class QSGAbstractRenderer;
class QSGEngine;
class QSGImageNode;
class QSGNinePatchNode;
class QSGRectangleNode;
class QSGRendererInterface;
class QSGTexture;
class QSize;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QImage QImage;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSGAbstractRenderer QSGAbstractRenderer;
typedef struct QSGEngine QSGEngine;
typedef struct QSGImageNode QSGImageNode;
typedef struct QSGNinePatchNode QSGNinePatchNode;
typedef struct QSGRectangleNode QSGRectangleNode;
typedef struct QSGRendererInterface QSGRendererInterface;
typedef struct QSGTexture QSGTexture;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQSGEngine VirtualQSGEngine;
typedef struct QSGEngine_VTable{
	void (*destructor)(VirtualQSGEngine* self);
	QMetaObject* (*metaObject)(const VirtualQSGEngine* self);
	void* (*metacast)(VirtualQSGEngine* self, const char* param1);
	int (*metacall)(VirtualQSGEngine* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQSGEngine* self, QEvent* event);
	bool (*eventFilter)(VirtualQSGEngine* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSGEngine* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSGEngine* self, QChildEvent* event);
	void (*customEvent)(VirtualQSGEngine* self, QEvent* event);
	void (*connectNotify)(VirtualQSGEngine* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSGEngine* self, QMetaMethod* signal);
}QSGEngine_VTable;

void* QSGEngine_vdata(VirtualQSGEngine* self);
VirtualQSGEngine* vdata_QSGEngine(void* vdata);

VirtualQSGEngine* QSGEngine_new(const QSGEngine_VTable* vtbl, size_t vdata);
VirtualQSGEngine* QSGEngine_new_parent(const QSGEngine_VTable* vtbl, size_t vdata, QObject* parent);

void QSGEngine_virtbase(QSGEngine* src, QObject** outptr_QObject);
QMetaObject* QSGEngine_metaObject(const QSGEngine* self);
void* QSGEngine_metacast(QSGEngine* self, const char* param1);
int QSGEngine_metacall(QSGEngine* self, int param1, int param2, void** param3);
struct seaqt_string QSGEngine_tr_s(const char* s);
struct seaqt_string QSGEngine_trUtf8_s(const char* s);
void QSGEngine_invalidate(QSGEngine* self);
QSGAbstractRenderer* QSGEngine_createRenderer(const QSGEngine* self);
QSGTexture* QSGEngine_createTextureFromImage_image(const QSGEngine* self, QImage* image);
QSGTexture* QSGEngine_createTextureFromId_id_size(const QSGEngine* self, unsigned int id, QSize* size);
QSGRendererInterface* QSGEngine_rendererInterface(const QSGEngine* self);
QSGRectangleNode* QSGEngine_createRectangleNode(const QSGEngine* self);
QSGImageNode* QSGEngine_createImageNode(const QSGEngine* self);
QSGNinePatchNode* QSGEngine_createNinePatchNode(const QSGEngine* self);
struct seaqt_string QSGEngine_tr_s_c(const char* s, const char* c);
struct seaqt_string QSGEngine_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QSGEngine_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QSGEngine_trUtf8_s_c_n(const char* s, const char* c, int n);
QSGTexture* QSGEngine_createTextureFromImage_image_options(const QSGEngine* self, QImage* image, int options);
QSGTexture* QSGEngine_createTextureFromId_id_size_options(const QSGEngine* self, unsigned int id, QSize* size, int options);

QMetaObject* QSGEngine_virtualbase_metaObject(const VirtualQSGEngine* self);
void* QSGEngine_virtualbase_metacast(VirtualQSGEngine* self, const char* param1);
int QSGEngine_virtualbase_metacall(VirtualQSGEngine* self, int param1, int param2, void** param3);
bool QSGEngine_virtualbase_event(VirtualQSGEngine* self, QEvent* event);
bool QSGEngine_virtualbase_eventFilter(VirtualQSGEngine* self, QObject* watched, QEvent* event);
void QSGEngine_virtualbase_timerEvent(VirtualQSGEngine* self, QTimerEvent* event);
void QSGEngine_virtualbase_childEvent(VirtualQSGEngine* self, QChildEvent* event);
void QSGEngine_virtualbase_customEvent(VirtualQSGEngine* self, QEvent* event);
void QSGEngine_virtualbase_connectNotify(VirtualQSGEngine* self, QMetaMethod* signal);
void QSGEngine_virtualbase_disconnectNotify(VirtualQSGEngine* self, QMetaMethod* signal);

QObject* QSGEngine_protectedbase_sender(const VirtualQSGEngine* self);
int QSGEngine_protectedbase_senderSignalIndex(const VirtualQSGEngine* self);
int QSGEngine_protectedbase_receivers(const VirtualQSGEngine* self, const char* signal);
bool QSGEngine_protectedbase_isSignalConnected(const VirtualQSGEngine* self, QMetaMethod* signal);

const QMetaObject* QSGEngine_staticMetaObject();
void QSGEngine_delete(QSGEngine* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
