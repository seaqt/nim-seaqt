#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGMATERIALRHISHADER_H
#define SEAQT_QTQUICK_GEN_QSGMATERIALRHISHADER_H

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
class QSGMaterialRhiShader;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialRhiShader__GraphicsPipelineState)
typedef QSGMaterialRhiShader::GraphicsPipelineState QSGMaterialRhiShader__GraphicsPipelineState;
#else
class QSGMaterialRhiShader__GraphicsPipelineState;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialRhiShader__RenderState)
typedef QSGMaterialRhiShader::RenderState QSGMaterialRhiShader__RenderState;
#else
class QSGMaterialRhiShader__RenderState;
#endif
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
typedef struct QSGMaterialRhiShader QSGMaterialRhiShader;
typedef struct QSGMaterialRhiShader__GraphicsPipelineState QSGMaterialRhiShader__GraphicsPipelineState;
typedef struct QSGMaterialRhiShader__RenderState QSGMaterialRhiShader__RenderState;
typedef struct QSGMaterialShader QSGMaterialShader;
typedef struct QSGMaterialShader__RenderState QSGMaterialShader__RenderState;
#endif

typedef struct VirtualQSGMaterialRhiShader VirtualQSGMaterialRhiShader;
typedef struct QSGMaterialRhiShader_VTable{
	void (*destructor)(VirtualQSGMaterialRhiShader* self);
	bool (*updateUniformData)(VirtualQSGMaterialRhiShader* self, QSGMaterialRhiShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);
	bool (*updateGraphicsPipelineState)(VirtualQSGMaterialRhiShader* self, QSGMaterialRhiShader__RenderState* state, QSGMaterialRhiShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);
	const char** (*attributeNames)(const VirtualQSGMaterialRhiShader* self);
	void (*activate)(VirtualQSGMaterialRhiShader* self);
	void (*deactivate)(VirtualQSGMaterialRhiShader* self);
	void (*updateState)(VirtualQSGMaterialRhiShader* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);
	void (*compile)(VirtualQSGMaterialRhiShader* self);
	void (*initialize)(VirtualQSGMaterialRhiShader* self);
	const char* (*vertexShader)(const VirtualQSGMaterialRhiShader* self);
	const char* (*fragmentShader)(const VirtualQSGMaterialRhiShader* self);
}QSGMaterialRhiShader_VTable;

const QSGMaterialRhiShader_VTable* QSGMaterialRhiShader_vtbl(const VirtualQSGMaterialRhiShader* self);
void* QSGMaterialRhiShader_vdata(const VirtualQSGMaterialRhiShader* self);
void QSGMaterialRhiShader_setVdata(VirtualQSGMaterialRhiShader* self, void* vdata);

VirtualQSGMaterialRhiShader* QSGMaterialRhiShader_new(const QSGMaterialRhiShader_VTable* vtbl, void* vdata);

void QSGMaterialRhiShader_virtbase(QSGMaterialRhiShader* src, QSGMaterialShader** outptr_QSGMaterialShader);
bool QSGMaterialRhiShader_updateUniformData(QSGMaterialRhiShader* self, QSGMaterialRhiShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);
bool QSGMaterialRhiShader_updateGraphicsPipelineState(QSGMaterialRhiShader* self, QSGMaterialRhiShader__RenderState* state, QSGMaterialRhiShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);
int QSGMaterialRhiShader_flags(const QSGMaterialRhiShader* self);
void QSGMaterialRhiShader_setFlag(QSGMaterialRhiShader* self, int flags);
const char** QSGMaterialRhiShader_attributeNames(const QSGMaterialRhiShader* self);
void QSGMaterialRhiShader_setFlag2(QSGMaterialRhiShader* self, int flags, bool on);

bool QSGMaterialRhiShader_virtualbase_updateUniformData(VirtualQSGMaterialRhiShader* self, QSGMaterialRhiShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);
bool QSGMaterialRhiShader_virtualbase_updateGraphicsPipelineState(VirtualQSGMaterialRhiShader* self, QSGMaterialRhiShader__RenderState* state, QSGMaterialRhiShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);
const char** QSGMaterialRhiShader_virtualbase_attributeNames(const VirtualQSGMaterialRhiShader* self);
void QSGMaterialRhiShader_virtualbase_activate(VirtualQSGMaterialRhiShader* self);
void QSGMaterialRhiShader_virtualbase_deactivate(VirtualQSGMaterialRhiShader* self);
void QSGMaterialRhiShader_virtualbase_updateState(VirtualQSGMaterialRhiShader* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);
void QSGMaterialRhiShader_virtualbase_compile(VirtualQSGMaterialRhiShader* self);
void QSGMaterialRhiShader_virtualbase_initialize(VirtualQSGMaterialRhiShader* self);
const char* QSGMaterialRhiShader_virtualbase_vertexShader(const VirtualQSGMaterialRhiShader* self);
const char* QSGMaterialRhiShader_virtualbase_fragmentShader(const VirtualQSGMaterialRhiShader* self);

void QSGMaterialRhiShader_protectedbase_setShaderFileName(VirtualQSGMaterialRhiShader* self, int stage, struct miqt_string filename);
void QSGMaterialRhiShader_protectedbase_setShader(VirtualQSGMaterialRhiShader* self, int stage, const QShader* shader);
void QSGMaterialRhiShader_protectedbase_setShaderSourceFile(VirtualQSGMaterialRhiShader* self, QOpenGLShader::ShaderType type, struct miqt_string sourceFile);
void QSGMaterialRhiShader_protectedbase_setShaderSourceFiles(VirtualQSGMaterialRhiShader* self, QOpenGLShader::ShaderType type, struct miqt_array /* of struct miqt_string */  sourceFiles);

void QSGMaterialRhiShader_delete(QSGMaterialRhiShader* self);

int QSGMaterialRhiShader__RenderState_dirtyStates(const QSGMaterialRhiShader__RenderState* self);
bool QSGMaterialRhiShader__RenderState_isMatrixDirty(const QSGMaterialRhiShader__RenderState* self);
bool QSGMaterialRhiShader__RenderState_isOpacityDirty(const QSGMaterialRhiShader__RenderState* self);
float QSGMaterialRhiShader__RenderState_opacity(const QSGMaterialRhiShader__RenderState* self);
QMatrix4x4* QSGMaterialRhiShader__RenderState_combinedMatrix(const QSGMaterialRhiShader__RenderState* self);
QMatrix4x4* QSGMaterialRhiShader__RenderState_modelViewMatrix(const QSGMaterialRhiShader__RenderState* self);
QMatrix4x4* QSGMaterialRhiShader__RenderState_projectionMatrix(const QSGMaterialRhiShader__RenderState* self);
QRect* QSGMaterialRhiShader__RenderState_viewportRect(const QSGMaterialRhiShader__RenderState* self);
QRect* QSGMaterialRhiShader__RenderState_deviceRect(const QSGMaterialRhiShader__RenderState* self);
float QSGMaterialRhiShader__RenderState_determinant(const QSGMaterialRhiShader__RenderState* self);
float QSGMaterialRhiShader__RenderState_devicePixelRatio(const QSGMaterialRhiShader__RenderState* self);
struct miqt_string QSGMaterialRhiShader__RenderState_uniformData(QSGMaterialRhiShader__RenderState* self);

void QSGMaterialRhiShader__RenderState_delete(QSGMaterialRhiShader__RenderState* self);

QSGMaterialRhiShader__GraphicsPipelineState* QSGMaterialRhiShader__GraphicsPipelineState_new(QSGMaterialRhiShader__GraphicsPipelineState* param1);

void QSGMaterialRhiShader__GraphicsPipelineState_operatorAssign(QSGMaterialRhiShader__GraphicsPipelineState* self, QSGMaterialRhiShader__GraphicsPipelineState* param1);

void QSGMaterialRhiShader__GraphicsPipelineState_delete(QSGMaterialRhiShader__GraphicsPipelineState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
