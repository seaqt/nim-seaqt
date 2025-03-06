#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGFLATCOLORMATERIAL_H
#define SEAQT_QTQUICK_GEN_QSGFLATCOLORMATERIAL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QColor;
class QSGFlatColorMaterial;
class QSGMaterial;
class QSGMaterialShader;
class QSGMaterialType;
#else
typedef struct QColor QColor;
typedef struct QSGFlatColorMaterial QSGFlatColorMaterial;
typedef struct QSGMaterial QSGMaterial;
typedef struct QSGMaterialShader QSGMaterialShader;
typedef struct QSGMaterialType QSGMaterialType;
#endif

QSGFlatColorMaterial* QSGFlatColorMaterial_new();
void QSGFlatColorMaterial_virtbase(QSGFlatColorMaterial* src, QSGMaterial** outptr_QSGMaterial);
QSGMaterialType* QSGFlatColorMaterial_type(const QSGFlatColorMaterial* self);
QSGMaterialShader* QSGFlatColorMaterial_createShader(const QSGFlatColorMaterial* self);
void QSGFlatColorMaterial_setColor(QSGFlatColorMaterial* self, QColor* color);
QColor* QSGFlatColorMaterial_color(const QSGFlatColorMaterial* self);
int QSGFlatColorMaterial_compare(const QSGFlatColorMaterial* self, QSGMaterial* other);
bool QSGFlatColorMaterial_override_virtual_type(void* self, intptr_t slot);
QSGMaterialType* QSGFlatColorMaterial_virtualbase_type(const void* self);
bool QSGFlatColorMaterial_override_virtual_createShader(void* self, intptr_t slot);
QSGMaterialShader* QSGFlatColorMaterial_virtualbase_createShader(const void* self);
bool QSGFlatColorMaterial_override_virtual_compare(void* self, intptr_t slot);
int QSGFlatColorMaterial_virtualbase_compare(const void* self, QSGMaterial* other);
void QSGFlatColorMaterial_delete(QSGFlatColorMaterial* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
