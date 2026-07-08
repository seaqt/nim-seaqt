#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGFLATCOLORMATERIAL_H
#define SEAQT_QTQUICK_GEN_QSGFLATCOLORMATERIAL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QColor;
class QSGFlatColorMaterial;
class QSGMaterial;
class QSGMaterialShader;
#else
typedef struct QColor QColor;
typedef struct QSGFlatColorMaterial QSGFlatColorMaterial;
typedef struct QSGMaterial QSGMaterial;
typedef struct QSGMaterialShader QSGMaterialShader;
#endif

QSGFlatColorMaterial* QSGFlatColorMaterial_new();

void QSGFlatColorMaterial_virtbase(QSGFlatColorMaterial* src, QSGMaterial** outptr_QSGMaterial);
QSGMaterialShader* QSGFlatColorMaterial_createShader(const QSGFlatColorMaterial* self);
void QSGFlatColorMaterial_setColor(QSGFlatColorMaterial* self, QColor* color);
QColor* QSGFlatColorMaterial_color(const QSGFlatColorMaterial* self);

void QSGFlatColorMaterial_delete(QSGFlatColorMaterial* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
