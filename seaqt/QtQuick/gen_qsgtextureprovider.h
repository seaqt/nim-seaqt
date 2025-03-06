#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGTEXTUREPROVIDER_H
#define SEAQT_QTQUICK_GEN_QSGTEXTUREPROVIDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaMethod;
class QMetaObject;
class QObject;
class QSGTexture;
class QSGTextureProvider;
#else
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSGTexture QSGTexture;
typedef struct QSGTextureProvider QSGTextureProvider;
#endif

void QSGTextureProvider_virtbase(QSGTextureProvider* src, QObject** outptr_QObject);
QMetaObject* QSGTextureProvider_metaObject(const QSGTextureProvider* self);
void* QSGTextureProvider_metacast(QSGTextureProvider* self, const char* param1);
int QSGTextureProvider_metacall(QSGTextureProvider* self, int param1, int param2, void** param3);
struct miqt_string QSGTextureProvider_tr(const char* s);
struct miqt_string QSGTextureProvider_trUtf8(const char* s);
QSGTexture* QSGTextureProvider_texture(const QSGTextureProvider* self);
void QSGTextureProvider_textureChanged(QSGTextureProvider* self);
void QSGTextureProvider_connect_textureChanged(QSGTextureProvider* self, intptr_t slot);
struct miqt_string QSGTextureProvider_tr2(const char* s, const char* c);
struct miqt_string QSGTextureProvider_tr3(const char* s, const char* c, int n);
struct miqt_string QSGTextureProvider_trUtf82(const char* s, const char* c);
struct miqt_string QSGTextureProvider_trUtf83(const char* s, const char* c, int n);
const QMetaObject* QSGTextureProvider_staticMetaObject();
void QSGTextureProvider_delete(QSGTextureProvider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
