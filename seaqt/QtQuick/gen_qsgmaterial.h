#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGMATERIAL_H
#define SEAQT_QTQUICK_GEN_QSGMATERIAL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QSGMaterial;
class QSGMaterialShader;
class QSGMaterialType;
#else
typedef struct QSGMaterial QSGMaterial;
typedef struct QSGMaterialShader QSGMaterialShader;
typedef struct QSGMaterialType QSGMaterialType;
#endif

QSGMaterial* QSGMaterial_new();
QSGMaterialType* QSGMaterial_type(const QSGMaterial* self);
QSGMaterialShader* QSGMaterial_createShader(const QSGMaterial* self);
int QSGMaterial_compare(const QSGMaterial* self, QSGMaterial* other);
int QSGMaterial_flags(const QSGMaterial* self);
void QSGMaterial_setFlag(QSGMaterial* self, int flags);
void QSGMaterial_setFlag2(QSGMaterial* self, int flags, bool on);
bool QSGMaterial_override_virtual_type(void* self, intptr_t slot);
QSGMaterialType* QSGMaterial_virtualbase_type(const void* self);
bool QSGMaterial_override_virtual_createShader(void* self, intptr_t slot);
QSGMaterialShader* QSGMaterial_virtualbase_createShader(const void* self);
bool QSGMaterial_override_virtual_compare(void* self, intptr_t slot);
int QSGMaterial_virtualbase_compare(const void* self, QSGMaterial* other);
void QSGMaterial_delete(QSGMaterial* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
