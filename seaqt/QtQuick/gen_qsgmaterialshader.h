#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGMATERIALSHADER_H
#define SEAQT_QTQUICK_GEN_QSGMATERIALSHADER_H

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
class QMatrix4x4;
class QRect;
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
typedef struct QColor QColor;
typedef struct QMatrix4x4 QMatrix4x4;
typedef struct QRect QRect;
typedef struct QSGMaterialShader QSGMaterialShader;
typedef struct QSGMaterialShader__GraphicsPipelineState QSGMaterialShader__GraphicsPipelineState;
typedef struct QSGMaterialShader__RenderState QSGMaterialShader__RenderState;
#endif

QSGMaterialShader* QSGMaterialShader_new();

int QSGMaterialShader_flags(const QSGMaterialShader* self);
void QSGMaterialShader_setFlag_flags(QSGMaterialShader* self, int flags);
void QSGMaterialShader_setFlags(QSGMaterialShader* self, int flags);
int QSGMaterialShader_combinedImageSamplerCount(const QSGMaterialShader* self, int binding);
void QSGMaterialShader_setFlag_flags_on(QSGMaterialShader* self, int flags, bool on);

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
struct seaqt_string QSGMaterialShader__RenderState_uniformData(QSGMaterialShader__RenderState* self);

void QSGMaterialShader__RenderState_delete(QSGMaterialShader__RenderState* self);

bool QSGMaterialShader__GraphicsPipelineState_blendEnable(const QSGMaterialShader__GraphicsPipelineState* self);
void QSGMaterialShader__GraphicsPipelineState_setBlendEnable(QSGMaterialShader__GraphicsPipelineState* self, bool blendEnable);
int QSGMaterialShader__GraphicsPipelineState_srcColor(const QSGMaterialShader__GraphicsPipelineState* self);
void QSGMaterialShader__GraphicsPipelineState_setSrcColor(QSGMaterialShader__GraphicsPipelineState* self, int srcColor);
int QSGMaterialShader__GraphicsPipelineState_dstColor(const QSGMaterialShader__GraphicsPipelineState* self);
void QSGMaterialShader__GraphicsPipelineState_setDstColor(QSGMaterialShader__GraphicsPipelineState* self, int dstColor);
int QSGMaterialShader__GraphicsPipelineState_colorWrite(const QSGMaterialShader__GraphicsPipelineState* self);
void QSGMaterialShader__GraphicsPipelineState_setColorWrite(QSGMaterialShader__GraphicsPipelineState* self, int colorWrite);
QColor* QSGMaterialShader__GraphicsPipelineState_blendConstant(const QSGMaterialShader__GraphicsPipelineState* self);
void QSGMaterialShader__GraphicsPipelineState_setBlendConstant(QSGMaterialShader__GraphicsPipelineState* self, QColor* blendConstant);
int QSGMaterialShader__GraphicsPipelineState_cullMode(const QSGMaterialShader__GraphicsPipelineState* self);
void QSGMaterialShader__GraphicsPipelineState_setCullMode(QSGMaterialShader__GraphicsPipelineState* self, int cullMode);
int QSGMaterialShader__GraphicsPipelineState_polygonMode(const QSGMaterialShader__GraphicsPipelineState* self);
void QSGMaterialShader__GraphicsPipelineState_setPolygonMode(QSGMaterialShader__GraphicsPipelineState* self, int polygonMode);

void QSGMaterialShader__GraphicsPipelineState_delete(QSGMaterialShader__GraphicsPipelineState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
