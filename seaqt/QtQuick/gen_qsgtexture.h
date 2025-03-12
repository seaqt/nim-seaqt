#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGTEXTURE_H
#define SEAQT_QTQUICK_GEN_QSGTEXTURE_H

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
class QRectF;
class QSGDynamicTexture;
class QSGTexture;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QSGTexture__NativeTexture)
typedef QSGTexture::NativeTexture QSGTexture__NativeTexture;
#else
class QSGTexture__NativeTexture;
#endif
class QSize;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRectF QRectF;
typedef struct QSGDynamicTexture QSGDynamicTexture;
typedef struct QSGTexture QSGTexture;
typedef struct QSGTexture__NativeTexture QSGTexture__NativeTexture;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQSGTexture VirtualQSGTexture;
typedef struct QSGTexture_VTable{
	void (*destructor)(VirtualQSGTexture* self);
	QMetaObject* (*metaObject)(const VirtualQSGTexture* self);
	void* (*metacast)(VirtualQSGTexture* self, const char* param1);
	int (*metacall)(VirtualQSGTexture* self, int param1, int param2, void** param3);
	int (*textureId)(const VirtualQSGTexture* self);
	QSize* (*textureSize)(const VirtualQSGTexture* self);
	bool (*hasAlphaChannel)(const VirtualQSGTexture* self);
	bool (*hasMipmaps)(const VirtualQSGTexture* self);
	QRectF* (*normalizedTextureSubRect)(const VirtualQSGTexture* self);
	bool (*isAtlasTexture)(const VirtualQSGTexture* self);
	QSGTexture* (*removedFromAtlas)(const VirtualQSGTexture* self);
	void (*bind)(VirtualQSGTexture* self);
	bool (*event)(VirtualQSGTexture* self, QEvent* event);
	bool (*eventFilter)(VirtualQSGTexture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSGTexture* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSGTexture* self, QChildEvent* event);
	void (*customEvent)(VirtualQSGTexture* self, QEvent* event);
	void (*connectNotify)(VirtualQSGTexture* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSGTexture* self, QMetaMethod* signal);
}QSGTexture_VTable;

const QSGTexture_VTable* QSGTexture_vtbl(const VirtualQSGTexture* self);
void* QSGTexture_vdata(const VirtualQSGTexture* self);
void QSGTexture_setVdata(VirtualQSGTexture* self, void* vdata);

VirtualQSGTexture* QSGTexture_new(const QSGTexture_VTable* vtbl, void* vdata);

void QSGTexture_virtbase(QSGTexture* src, QObject** outptr_QObject);
QMetaObject* QSGTexture_metaObject(const QSGTexture* self);
void* QSGTexture_metacast(QSGTexture* self, const char* param1);
int QSGTexture_metacall(QSGTexture* self, int param1, int param2, void** param3);
struct miqt_string QSGTexture_tr(const char* s);
struct miqt_string QSGTexture_trUtf8(const char* s);
int QSGTexture_textureId(const QSGTexture* self);
QSGTexture__NativeTexture* QSGTexture_nativeTexture(const QSGTexture* self);
QSize* QSGTexture_textureSize(const QSGTexture* self);
bool QSGTexture_hasAlphaChannel(const QSGTexture* self);
bool QSGTexture_hasMipmaps(const QSGTexture* self);
QRectF* QSGTexture_normalizedTextureSubRect(const QSGTexture* self);
bool QSGTexture_isAtlasTexture(const QSGTexture* self);
QSGTexture* QSGTexture_removedFromAtlas(const QSGTexture* self);
void QSGTexture_bind(QSGTexture* self);
void QSGTexture_updateBindOptions(QSGTexture* self);
void QSGTexture_setMipmapFiltering(QSGTexture* self, int filter);
int QSGTexture_mipmapFiltering(const QSGTexture* self);
void QSGTexture_setFiltering(QSGTexture* self, int filter);
int QSGTexture_filtering(const QSGTexture* self);
void QSGTexture_setAnisotropyLevel(QSGTexture* self, int level);
int QSGTexture_anisotropyLevel(const QSGTexture* self);
void QSGTexture_setHorizontalWrapMode(QSGTexture* self, int hwrap);
int QSGTexture_horizontalWrapMode(const QSGTexture* self);
void QSGTexture_setVerticalWrapMode(QSGTexture* self, int vwrap);
int QSGTexture_verticalWrapMode(const QSGTexture* self);
QRectF* QSGTexture_convertToNormalizedSourceRect(const QSGTexture* self, QRectF* rect);
int QSGTexture_comparisonKey(const QSGTexture* self);
struct miqt_string QSGTexture_tr2(const char* s, const char* c);
struct miqt_string QSGTexture_tr3(const char* s, const char* c, int n);
struct miqt_string QSGTexture_trUtf82(const char* s, const char* c);
struct miqt_string QSGTexture_trUtf83(const char* s, const char* c, int n);
void QSGTexture_updateBindOptions1(QSGTexture* self, bool force);

QMetaObject* QSGTexture_virtualbase_metaObject(const VirtualQSGTexture* self);
void* QSGTexture_virtualbase_metacast(VirtualQSGTexture* self, const char* param1);
int QSGTexture_virtualbase_metacall(VirtualQSGTexture* self, int param1, int param2, void** param3);
int QSGTexture_virtualbase_textureId(const VirtualQSGTexture* self);
QSize* QSGTexture_virtualbase_textureSize(const VirtualQSGTexture* self);
bool QSGTexture_virtualbase_hasAlphaChannel(const VirtualQSGTexture* self);
bool QSGTexture_virtualbase_hasMipmaps(const VirtualQSGTexture* self);
QRectF* QSGTexture_virtualbase_normalizedTextureSubRect(const VirtualQSGTexture* self);
bool QSGTexture_virtualbase_isAtlasTexture(const VirtualQSGTexture* self);
QSGTexture* QSGTexture_virtualbase_removedFromAtlas(const VirtualQSGTexture* self);
void QSGTexture_virtualbase_bind(VirtualQSGTexture* self);
bool QSGTexture_virtualbase_event(VirtualQSGTexture* self, QEvent* event);
bool QSGTexture_virtualbase_eventFilter(VirtualQSGTexture* self, QObject* watched, QEvent* event);
void QSGTexture_virtualbase_timerEvent(VirtualQSGTexture* self, QTimerEvent* event);
void QSGTexture_virtualbase_childEvent(VirtualQSGTexture* self, QChildEvent* event);
void QSGTexture_virtualbase_customEvent(VirtualQSGTexture* self, QEvent* event);
void QSGTexture_virtualbase_connectNotify(VirtualQSGTexture* self, QMetaMethod* signal);
void QSGTexture_virtualbase_disconnectNotify(VirtualQSGTexture* self, QMetaMethod* signal);

QObject* QSGTexture_protectedbase_sender(const VirtualQSGTexture* self);
int QSGTexture_protectedbase_senderSignalIndex(const VirtualQSGTexture* self);
int QSGTexture_protectedbase_receivers(const VirtualQSGTexture* self, const char* signal);
bool QSGTexture_protectedbase_isSignalConnected(const VirtualQSGTexture* self, QMetaMethod* signal);

const QMetaObject* QSGTexture_staticMetaObject();
void QSGTexture_delete(QSGTexture* self);

typedef struct VirtualQSGDynamicTexture VirtualQSGDynamicTexture;
typedef struct QSGDynamicTexture_VTable{
	void (*destructor)(VirtualQSGDynamicTexture* self);
	QMetaObject* (*metaObject)(const VirtualQSGDynamicTexture* self);
	void* (*metacast)(VirtualQSGDynamicTexture* self, const char* param1);
	int (*metacall)(VirtualQSGDynamicTexture* self, int param1, int param2, void** param3);
	bool (*updateTexture)(VirtualQSGDynamicTexture* self);
	int (*textureId)(const VirtualQSGDynamicTexture* self);
	QSize* (*textureSize)(const VirtualQSGDynamicTexture* self);
	bool (*hasAlphaChannel)(const VirtualQSGDynamicTexture* self);
	bool (*hasMipmaps)(const VirtualQSGDynamicTexture* self);
	QRectF* (*normalizedTextureSubRect)(const VirtualQSGDynamicTexture* self);
	bool (*isAtlasTexture)(const VirtualQSGDynamicTexture* self);
	QSGTexture* (*removedFromAtlas)(const VirtualQSGDynamicTexture* self);
	void (*bind)(VirtualQSGDynamicTexture* self);
	bool (*event)(VirtualQSGDynamicTexture* self, QEvent* event);
	bool (*eventFilter)(VirtualQSGDynamicTexture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSGDynamicTexture* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSGDynamicTexture* self, QChildEvent* event);
	void (*customEvent)(VirtualQSGDynamicTexture* self, QEvent* event);
	void (*connectNotify)(VirtualQSGDynamicTexture* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSGDynamicTexture* self, QMetaMethod* signal);
}QSGDynamicTexture_VTable;

const QSGDynamicTexture_VTable* QSGDynamicTexture_vtbl(const VirtualQSGDynamicTexture* self);
void* QSGDynamicTexture_vdata(const VirtualQSGDynamicTexture* self);
void QSGDynamicTexture_setVdata(VirtualQSGDynamicTexture* self, void* vdata);

VirtualQSGDynamicTexture* QSGDynamicTexture_new(const QSGDynamicTexture_VTable* vtbl, void* vdata);

void QSGDynamicTexture_virtbase(QSGDynamicTexture* src, QSGTexture** outptr_QSGTexture);
QMetaObject* QSGDynamicTexture_metaObject(const QSGDynamicTexture* self);
void* QSGDynamicTexture_metacast(QSGDynamicTexture* self, const char* param1);
int QSGDynamicTexture_metacall(QSGDynamicTexture* self, int param1, int param2, void** param3);
struct miqt_string QSGDynamicTexture_tr(const char* s);
struct miqt_string QSGDynamicTexture_trUtf8(const char* s);
bool QSGDynamicTexture_updateTexture(QSGDynamicTexture* self);
struct miqt_string QSGDynamicTexture_tr2(const char* s, const char* c);
struct miqt_string QSGDynamicTexture_tr3(const char* s, const char* c, int n);
struct miqt_string QSGDynamicTexture_trUtf82(const char* s, const char* c);
struct miqt_string QSGDynamicTexture_trUtf83(const char* s, const char* c, int n);

QMetaObject* QSGDynamicTexture_virtualbase_metaObject(const VirtualQSGDynamicTexture* self);
void* QSGDynamicTexture_virtualbase_metacast(VirtualQSGDynamicTexture* self, const char* param1);
int QSGDynamicTexture_virtualbase_metacall(VirtualQSGDynamicTexture* self, int param1, int param2, void** param3);
bool QSGDynamicTexture_virtualbase_updateTexture(VirtualQSGDynamicTexture* self);
int QSGDynamicTexture_virtualbase_textureId(const VirtualQSGDynamicTexture* self);
QSize* QSGDynamicTexture_virtualbase_textureSize(const VirtualQSGDynamicTexture* self);
bool QSGDynamicTexture_virtualbase_hasAlphaChannel(const VirtualQSGDynamicTexture* self);
bool QSGDynamicTexture_virtualbase_hasMipmaps(const VirtualQSGDynamicTexture* self);
QRectF* QSGDynamicTexture_virtualbase_normalizedTextureSubRect(const VirtualQSGDynamicTexture* self);
bool QSGDynamicTexture_virtualbase_isAtlasTexture(const VirtualQSGDynamicTexture* self);
QSGTexture* QSGDynamicTexture_virtualbase_removedFromAtlas(const VirtualQSGDynamicTexture* self);
void QSGDynamicTexture_virtualbase_bind(VirtualQSGDynamicTexture* self);
bool QSGDynamicTexture_virtualbase_event(VirtualQSGDynamicTexture* self, QEvent* event);
bool QSGDynamicTexture_virtualbase_eventFilter(VirtualQSGDynamicTexture* self, QObject* watched, QEvent* event);
void QSGDynamicTexture_virtualbase_timerEvent(VirtualQSGDynamicTexture* self, QTimerEvent* event);
void QSGDynamicTexture_virtualbase_childEvent(VirtualQSGDynamicTexture* self, QChildEvent* event);
void QSGDynamicTexture_virtualbase_customEvent(VirtualQSGDynamicTexture* self, QEvent* event);
void QSGDynamicTexture_virtualbase_connectNotify(VirtualQSGDynamicTexture* self, QMetaMethod* signal);
void QSGDynamicTexture_virtualbase_disconnectNotify(VirtualQSGDynamicTexture* self, QMetaMethod* signal);

QObject* QSGDynamicTexture_protectedbase_sender(const VirtualQSGDynamicTexture* self);
int QSGDynamicTexture_protectedbase_senderSignalIndex(const VirtualQSGDynamicTexture* self);
int QSGDynamicTexture_protectedbase_receivers(const VirtualQSGDynamicTexture* self, const char* signal);
bool QSGDynamicTexture_protectedbase_isSignalConnected(const VirtualQSGDynamicTexture* self, QMetaMethod* signal);

const QMetaObject* QSGDynamicTexture_staticMetaObject();
void QSGDynamicTexture_delete(QSGDynamicTexture* self);

void QSGTexture__NativeTexture_delete(QSGTexture__NativeTexture* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
