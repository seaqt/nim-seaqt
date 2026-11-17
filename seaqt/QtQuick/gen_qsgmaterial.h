#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGMATERIAL_H
#define SEAQT_QTQUICK_GEN_QSGMATERIAL_H

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
#else
typedef struct QSGMaterial QSGMaterial;
typedef struct QSGMaterialShader QSGMaterialShader;
#endif

QSGMaterialShader* QSGMaterial_createShader(const QSGMaterial* self);
int QSGMaterial_flags(const QSGMaterial* self);
void QSGMaterial_setFlag_flags(QSGMaterial* self, int flags);
void QSGMaterial_setFlag_flags_on(QSGMaterial* self, int flags, bool on);

void QSGMaterial_delete(QSGMaterial* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
