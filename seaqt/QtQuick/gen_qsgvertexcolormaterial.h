#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGVERTEXCOLORMATERIAL_H
#define SEAQT_QTQUICK_GEN_QSGVERTEXCOLORMATERIAL_H

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
class QSGVertexColorMaterial;
#else
typedef struct QSGMaterial QSGMaterial;
typedef struct QSGMaterialShader QSGMaterialShader;
typedef struct QSGVertexColorMaterial QSGVertexColorMaterial;
#endif

QSGVertexColorMaterial* QSGVertexColorMaterial_new();

void QSGVertexColorMaterial_virtbase(QSGVertexColorMaterial* src, QSGMaterial** outptr_QSGMaterial);
QSGMaterialShader* QSGVertexColorMaterial_createShader(const QSGVertexColorMaterial* self);

void QSGVertexColorMaterial_delete(QSGVertexColorMaterial* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
