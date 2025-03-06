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
typedef struct QSGMaterialShader__RenderState QSGMaterialShader__RenderState;
#endif

QSGMaterialShader* QSGMaterialShader_new();
void QSGMaterialShader_activate(QSGMaterialShader* self);
void QSGMaterialShader_deactivate(QSGMaterialShader* self);
void QSGMaterialShader_updateState(QSGMaterialShader* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);
const char** QSGMaterialShader_attributeNames(const QSGMaterialShader* self);
void QSGMaterialShader_compile(QSGMaterialShader* self);
void QSGMaterialShader_initialize(QSGMaterialShader* self);
const char* QSGMaterialShader_vertexShader(const QSGMaterialShader* self);
const char* QSGMaterialShader_fragmentShader(const QSGMaterialShader* self);
bool QSGMaterialShader_override_virtual_activate(void* self, intptr_t slot);
void QSGMaterialShader_virtualbase_activate(void* self);
bool QSGMaterialShader_override_virtual_deactivate(void* self, intptr_t slot);
void QSGMaterialShader_virtualbase_deactivate(void* self);
bool QSGMaterialShader_override_virtual_updateState(void* self, intptr_t slot);
void QSGMaterialShader_virtualbase_updateState(void* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);
bool QSGMaterialShader_override_virtual_attributeNames(void* self, intptr_t slot);
const char** QSGMaterialShader_virtualbase_attributeNames(const void* self);
bool QSGMaterialShader_override_virtual_compile(void* self, intptr_t slot);
void QSGMaterialShader_virtualbase_compile(void* self);
bool QSGMaterialShader_override_virtual_initialize(void* self, intptr_t slot);
void QSGMaterialShader_virtualbase_initialize(void* self);
bool QSGMaterialShader_override_virtual_vertexShader(void* self, intptr_t slot);
const char* QSGMaterialShader_virtualbase_vertexShader(const void* self);
bool QSGMaterialShader_override_virtual_fragmentShader(void* self, intptr_t slot);
const char* QSGMaterialShader_virtualbase_fragmentShader(const void* self);
void QSGMaterialShader_protectedbase_setShaderSourceFile(bool* _dynamic_cast_ok, void* self, QOpenGLShader::ShaderType type, struct miqt_string sourceFile);
void QSGMaterialShader_protectedbase_setShaderSourceFiles(bool* _dynamic_cast_ok, void* self, QOpenGLShader::ShaderType type, struct miqt_array /* of struct miqt_string */  sourceFiles);
void QSGMaterialShader_delete(QSGMaterialShader* self);

int QSGMaterialShader__RenderState_dirtyStates(const QSGMaterialShader__RenderState* self);
bool QSGMaterialShader__RenderState_isMatrixDirty(const QSGMaterialShader__RenderState* self);
bool QSGMaterialShader__RenderState_isOpacityDirty(const QSGMaterialShader__RenderState* self);
bool QSGMaterialShader__RenderState_isCachedMaterialDataDirty(const QSGMaterialShader__RenderState* self);
float QSGMaterialShader__RenderState_opacity(const QSGMaterialShader__RenderState* self);
QMatrix4x4* QSGMaterialShader__RenderState_combinedMatrix(const QSGMaterialShader__RenderState* self);
QMatrix4x4* QSGMaterialShader__RenderState_modelViewMatrix(const QSGMaterialShader__RenderState* self);
QMatrix4x4* QSGMaterialShader__RenderState_projectionMatrix(const QSGMaterialShader__RenderState* self);
QRect* QSGMaterialShader__RenderState_viewportRect(const QSGMaterialShader__RenderState* self);
QRect* QSGMaterialShader__RenderState_deviceRect(const QSGMaterialShader__RenderState* self);
float QSGMaterialShader__RenderState_determinant(const QSGMaterialShader__RenderState* self);
float QSGMaterialShader__RenderState_devicePixelRatio(const QSGMaterialShader__RenderState* self);
void QSGMaterialShader__RenderState_delete(QSGMaterialShader__RenderState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
