#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGTEXTUREMATERIAL_H
#define SEAQT_QTQUICK_GEN_QSGTEXTUREMATERIAL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QSGMaterial;
class QSGMaterialShader;
class QSGOpaqueTextureMaterial;
class QSGTexture;
class QSGTextureMaterial;
#else
typedef struct QSGMaterial QSGMaterial;
typedef struct QSGMaterialShader QSGMaterialShader;
typedef struct QSGOpaqueTextureMaterial QSGOpaqueTextureMaterial;
typedef struct QSGTexture QSGTexture;
typedef struct QSGTextureMaterial QSGTextureMaterial;
#endif

QSGOpaqueTextureMaterial* QSGOpaqueTextureMaterial_new();

void QSGOpaqueTextureMaterial_virtbase(QSGOpaqueTextureMaterial* src, QSGMaterial** outptr_QSGMaterial);
QSGMaterialShader* QSGOpaqueTextureMaterial_createShader(const QSGOpaqueTextureMaterial* self, int renderMode);
void QSGOpaqueTextureMaterial_setTexture(QSGOpaqueTextureMaterial* self, QSGTexture* texture);
QSGTexture* QSGOpaqueTextureMaterial_texture(const QSGOpaqueTextureMaterial* self);
void QSGOpaqueTextureMaterial_setMipmapFiltering(QSGOpaqueTextureMaterial* self, int filteringType);
int QSGOpaqueTextureMaterial_mipmapFiltering(const QSGOpaqueTextureMaterial* self);
void QSGOpaqueTextureMaterial_setFiltering(QSGOpaqueTextureMaterial* self, int filteringType);
int QSGOpaqueTextureMaterial_filtering(const QSGOpaqueTextureMaterial* self);
void QSGOpaqueTextureMaterial_setHorizontalWrapMode(QSGOpaqueTextureMaterial* self, int mode);
int QSGOpaqueTextureMaterial_horizontalWrapMode(const QSGOpaqueTextureMaterial* self);
void QSGOpaqueTextureMaterial_setVerticalWrapMode(QSGOpaqueTextureMaterial* self, int mode);
int QSGOpaqueTextureMaterial_verticalWrapMode(const QSGOpaqueTextureMaterial* self);
void QSGOpaqueTextureMaterial_setAnisotropyLevel(QSGOpaqueTextureMaterial* self, int level);
int QSGOpaqueTextureMaterial_anisotropyLevel(const QSGOpaqueTextureMaterial* self);

void QSGOpaqueTextureMaterial_delete(QSGOpaqueTextureMaterial* self);

void QSGTextureMaterial_virtbase(QSGTextureMaterial* src, QSGOpaqueTextureMaterial** outptr_QSGOpaqueTextureMaterial);
QSGMaterialShader* QSGTextureMaterial_createShader(const QSGTextureMaterial* self, int renderMode);

void QSGTextureMaterial_delete(QSGTextureMaterial* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
