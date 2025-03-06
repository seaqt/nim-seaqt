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

QSGTexture* QSGTexture_new();
void QSGTexture_virtbase(QSGTexture* src, QObject** outptr_QObject);
QMetaObject* QSGTexture_metaObject(const QSGTexture* self);
void* QSGTexture_metacast(QSGTexture* self, const char* param1);
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
bool QSGTexture_override_virtual_textureId(void* self, intptr_t slot);
int QSGTexture_virtualbase_textureId(const void* self);
bool QSGTexture_override_virtual_textureSize(void* self, intptr_t slot);
QSize* QSGTexture_virtualbase_textureSize(const void* self);
bool QSGTexture_override_virtual_hasAlphaChannel(void* self, intptr_t slot);
bool QSGTexture_virtualbase_hasAlphaChannel(const void* self);
bool QSGTexture_override_virtual_hasMipmaps(void* self, intptr_t slot);
bool QSGTexture_virtualbase_hasMipmaps(const void* self);
bool QSGTexture_override_virtual_normalizedTextureSubRect(void* self, intptr_t slot);
QRectF* QSGTexture_virtualbase_normalizedTextureSubRect(const void* self);
bool QSGTexture_override_virtual_isAtlasTexture(void* self, intptr_t slot);
bool QSGTexture_virtualbase_isAtlasTexture(const void* self);
bool QSGTexture_override_virtual_removedFromAtlas(void* self, intptr_t slot);
QSGTexture* QSGTexture_virtualbase_removedFromAtlas(const void* self);
bool QSGTexture_override_virtual_bind(void* self, intptr_t slot);
void QSGTexture_virtualbase_bind(void* self);
bool QSGTexture_override_virtual_event(void* self, intptr_t slot);
bool QSGTexture_virtualbase_event(void* self, QEvent* event);
bool QSGTexture_override_virtual_eventFilter(void* self, intptr_t slot);
bool QSGTexture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QSGTexture_override_virtual_timerEvent(void* self, intptr_t slot);
void QSGTexture_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QSGTexture_override_virtual_childEvent(void* self, intptr_t slot);
void QSGTexture_virtualbase_childEvent(void* self, QChildEvent* event);
bool QSGTexture_override_virtual_customEvent(void* self, intptr_t slot);
void QSGTexture_virtualbase_customEvent(void* self, QEvent* event);
bool QSGTexture_override_virtual_connectNotify(void* self, intptr_t slot);
void QSGTexture_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QSGTexture_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QSGTexture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QSGTexture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QSGTexture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QSGTexture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QSGTexture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QSGTexture_delete(QSGTexture* self);

QSGDynamicTexture* QSGDynamicTexture_new();
void QSGDynamicTexture_virtbase(QSGDynamicTexture* src, QSGTexture** outptr_QSGTexture);
QMetaObject* QSGDynamicTexture_metaObject(const QSGDynamicTexture* self);
void* QSGDynamicTexture_metacast(QSGDynamicTexture* self, const char* param1);
struct miqt_string QSGDynamicTexture_tr(const char* s);
struct miqt_string QSGDynamicTexture_trUtf8(const char* s);
bool QSGDynamicTexture_updateTexture(QSGDynamicTexture* self);
struct miqt_string QSGDynamicTexture_tr2(const char* s, const char* c);
struct miqt_string QSGDynamicTexture_tr3(const char* s, const char* c, int n);
struct miqt_string QSGDynamicTexture_trUtf82(const char* s, const char* c);
struct miqt_string QSGDynamicTexture_trUtf83(const char* s, const char* c, int n);
bool QSGDynamicTexture_override_virtual_updateTexture(void* self, intptr_t slot);
bool QSGDynamicTexture_virtualbase_updateTexture(void* self);
bool QSGDynamicTexture_override_virtual_textureId(void* self, intptr_t slot);
int QSGDynamicTexture_virtualbase_textureId(const void* self);
bool QSGDynamicTexture_override_virtual_textureSize(void* self, intptr_t slot);
QSize* QSGDynamicTexture_virtualbase_textureSize(const void* self);
bool QSGDynamicTexture_override_virtual_hasAlphaChannel(void* self, intptr_t slot);
bool QSGDynamicTexture_virtualbase_hasAlphaChannel(const void* self);
bool QSGDynamicTexture_override_virtual_hasMipmaps(void* self, intptr_t slot);
bool QSGDynamicTexture_virtualbase_hasMipmaps(const void* self);
bool QSGDynamicTexture_override_virtual_normalizedTextureSubRect(void* self, intptr_t slot);
QRectF* QSGDynamicTexture_virtualbase_normalizedTextureSubRect(const void* self);
bool QSGDynamicTexture_override_virtual_isAtlasTexture(void* self, intptr_t slot);
bool QSGDynamicTexture_virtualbase_isAtlasTexture(const void* self);
bool QSGDynamicTexture_override_virtual_removedFromAtlas(void* self, intptr_t slot);
QSGTexture* QSGDynamicTexture_virtualbase_removedFromAtlas(const void* self);
bool QSGDynamicTexture_override_virtual_bind(void* self, intptr_t slot);
void QSGDynamicTexture_virtualbase_bind(void* self);
bool QSGDynamicTexture_override_virtual_event(void* self, intptr_t slot);
bool QSGDynamicTexture_virtualbase_event(void* self, QEvent* event);
bool QSGDynamicTexture_override_virtual_eventFilter(void* self, intptr_t slot);
bool QSGDynamicTexture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QSGDynamicTexture_override_virtual_timerEvent(void* self, intptr_t slot);
void QSGDynamicTexture_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QSGDynamicTexture_override_virtual_childEvent(void* self, intptr_t slot);
void QSGDynamicTexture_virtualbase_childEvent(void* self, QChildEvent* event);
bool QSGDynamicTexture_override_virtual_customEvent(void* self, intptr_t slot);
void QSGDynamicTexture_virtualbase_customEvent(void* self, QEvent* event);
bool QSGDynamicTexture_override_virtual_connectNotify(void* self, intptr_t slot);
void QSGDynamicTexture_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QSGDynamicTexture_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QSGDynamicTexture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QSGDynamicTexture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QSGDynamicTexture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QSGDynamicTexture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QSGDynamicTexture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QSGDynamicTexture_delete(QSGDynamicTexture* self);

void QSGTexture__NativeTexture_delete(QSGTexture__NativeTexture* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
