#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGMATERIALSHADER_H
#define SEAQT_QTQUICK_GEN_QSGMATERIALSHADER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMatrix4x4;
class QRect;
class QSGMaterial;
class QSGMaterialShader;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialShader__GraphicsPipelineState)
typedef QSGMaterialShader::GraphicsPipelineState QSGMaterialShader__GraphicsPipelineState;
#else
class QSGMaterialShader__GraphicsPipelineState;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialShader__RenderState)
typedef QSGMaterialShader::RenderState QSGMaterialShader__RenderState;
#else
class QSGMaterialShader__RenderState;
#endif
#else
typedef struct QMatrix4x4 QMatrix4x4;
typedef struct QRect QRect;
typedef struct QSGMaterial QSGMaterial;
typedef struct QSGMaterialShader QSGMaterialShader;
typedef struct QSGMaterialShader__GraphicsPipelineState QSGMaterialShader__GraphicsPipelineState;
typedef struct QSGMaterialShader__RenderState QSGMaterialShader__RenderState;
#endif

QSGMaterialShader* QSGMaterialShader_new();
bool QSGMaterialShader_updateUniformData(QSGMaterialShader* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);
bool QSGMaterialShader_updateGraphicsPipelineState(QSGMaterialShader* self, QSGMaterialShader__RenderState* state, QSGMaterialShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);
int QSGMaterialShader_flags(const QSGMaterialShader* self);
void QSGMaterialShader_setFlag(QSGMaterialShader* self, int flags);
void QSGMaterialShader_setFlags(QSGMaterialShader* self, int flags);
int QSGMaterialShader_combinedImageSamplerCount(const QSGMaterialShader* self, int binding);
void QSGMaterialShader_setFlag2(QSGMaterialShader* self, int flags, bool on);
bool QSGMaterialShader_override_virtual_updateUniformData(void* self, intptr_t slot);
bool QSGMaterialShader_virtualbase_updateUniformData(void* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);
bool QSGMaterialShader_override_virtual_updateGraphicsPipelineState(void* self, intptr_t slot);
bool QSGMaterialShader_virtualbase_updateGraphicsPipelineState(void* self, QSGMaterialShader__RenderState* state, QSGMaterialShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);
void QSGMaterialShader_protectedbase_setShaderFileName(bool* _dynamic_cast_ok, void* self, int stage, struct miqt_string filename);
void QSGMaterialShader_protectedbase_setShader(bool* _dynamic_cast_ok, void* self, int stage, const QShader* shader);
void QSGMaterialShader_delete(QSGMaterialShader* self);

int QSGMaterialShader__RenderState_dirtyStates(const QSGMaterialShader__RenderState* self);
bool QSGMaterialShader__RenderState_isMatrixDirty(const QSGMaterialShader__RenderState* self);
bool QSGMaterialShader__RenderState_isOpacityDirty(const QSGMaterialShader__RenderState* self);
float QSGMaterialShader__RenderState_opacity(const QSGMaterialShader__RenderState* self);
QMatrix4x4* QSGMaterialShader__RenderState_combinedMatrix(const QSGMaterialShader__RenderState* self);
QMatrix4x4* QSGMaterialShader__RenderState_modelViewMatrix(const QSGMaterialShader__RenderState* self);
QMatrix4x4* QSGMaterialShader__RenderState_projectionMatrix(const QSGMaterialShader__RenderState* self);
QRect* QSGMaterialShader__RenderState_viewportRect(const QSGMaterialShader__RenderState* self);
QRect* QSGMaterialShader__RenderState_deviceRect(const QSGMaterialShader__RenderState* self);
float QSGMaterialShader__RenderState_determinant(const QSGMaterialShader__RenderState* self);
float QSGMaterialShader__RenderState_devicePixelRatio(const QSGMaterialShader__RenderState* self);
struct miqt_string QSGMaterialShader__RenderState_uniformData(QSGMaterialShader__RenderState* self);
void QSGMaterialShader__RenderState_delete(QSGMaterialShader__RenderState* self);

void QSGMaterialShader__GraphicsPipelineState_delete(QSGMaterialShader__GraphicsPipelineState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
