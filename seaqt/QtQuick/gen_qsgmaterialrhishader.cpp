#include <QByteArray>
#include <QColor>
#include <QMatrix4x4>
#include <QRect>
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialRhiShader__GraphicsPipelineState
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialRhiShader__RenderState
#include <qsgmaterialrhishader.h>
#include "gen_qsgmaterialrhishader.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

int QSGMaterialRhiShader__RenderState_dirtyStates(const QSGMaterialRhiShader__RenderState* self) {
	QSGMaterialRhiShader::RenderState::DirtyStates _ret = self->dirtyStates();
	return static_cast<int>(_ret);
}

bool QSGMaterialRhiShader__RenderState_isMatrixDirty(const QSGMaterialRhiShader__RenderState* self) {
	return self->isMatrixDirty();
}

bool QSGMaterialRhiShader__RenderState_isOpacityDirty(const QSGMaterialRhiShader__RenderState* self) {
	return self->isOpacityDirty();
}

float QSGMaterialRhiShader__RenderState_opacity(const QSGMaterialRhiShader__RenderState* self) {
	return self->opacity();
}

QMatrix4x4* QSGMaterialRhiShader__RenderState_combinedMatrix(const QSGMaterialRhiShader__RenderState* self) {
	return new QMatrix4x4(self->combinedMatrix());
}

QMatrix4x4* QSGMaterialRhiShader__RenderState_modelViewMatrix(const QSGMaterialRhiShader__RenderState* self) {
	return new QMatrix4x4(self->modelViewMatrix());
}

QMatrix4x4* QSGMaterialRhiShader__RenderState_projectionMatrix(const QSGMaterialRhiShader__RenderState* self) {
	return new QMatrix4x4(self->projectionMatrix());
}

QRect* QSGMaterialRhiShader__RenderState_viewportRect(const QSGMaterialRhiShader__RenderState* self) {
	return new QRect(self->viewportRect());
}

QRect* QSGMaterialRhiShader__RenderState_deviceRect(const QSGMaterialRhiShader__RenderState* self) {
	return new QRect(self->deviceRect());
}

float QSGMaterialRhiShader__RenderState_determinant(const QSGMaterialRhiShader__RenderState* self) {
	return self->determinant();
}

float QSGMaterialRhiShader__RenderState_devicePixelRatio(const QSGMaterialRhiShader__RenderState* self) {
	return self->devicePixelRatio();
}

struct seaqt_string QSGMaterialRhiShader__RenderState_uniformData(QSGMaterialRhiShader__RenderState* self) {
	QByteArray& _qb = *self->uniformData();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QSGMaterialRhiShader__RenderState_delete(QSGMaterialRhiShader__RenderState* self) {
	delete self;
}

QSGMaterialRhiShader__GraphicsPipelineState* QSGMaterialRhiShader__GraphicsPipelineState_new(QSGMaterialRhiShader__GraphicsPipelineState* from) {
	return new (std::nothrow) QSGMaterialRhiShader__GraphicsPipelineState(*from);
}

bool QSGMaterialRhiShader__GraphicsPipelineState_blendEnable(const QSGMaterialRhiShader__GraphicsPipelineState* self) {
	return self->blendEnable;
}

void QSGMaterialRhiShader__GraphicsPipelineState_setBlendEnable(QSGMaterialRhiShader__GraphicsPipelineState* self, bool blendEnable) {
	self->blendEnable = blendEnable;
}

int QSGMaterialRhiShader__GraphicsPipelineState_srcColor(const QSGMaterialRhiShader__GraphicsPipelineState* self) {
	QSGMaterialRhiShader::GraphicsPipelineState::BlendFactor srcColor_ret = self->srcColor;
	return static_cast<int>(srcColor_ret);
}

void QSGMaterialRhiShader__GraphicsPipelineState_setSrcColor(QSGMaterialRhiShader__GraphicsPipelineState* self, int srcColor) {
	self->srcColor = static_cast<QSGMaterialRhiShader::GraphicsPipelineState::BlendFactor>(srcColor);
}

int QSGMaterialRhiShader__GraphicsPipelineState_dstColor(const QSGMaterialRhiShader__GraphicsPipelineState* self) {
	QSGMaterialRhiShader::GraphicsPipelineState::BlendFactor dstColor_ret = self->dstColor;
	return static_cast<int>(dstColor_ret);
}

void QSGMaterialRhiShader__GraphicsPipelineState_setDstColor(QSGMaterialRhiShader__GraphicsPipelineState* self, int dstColor) {
	self->dstColor = static_cast<QSGMaterialRhiShader::GraphicsPipelineState::BlendFactor>(dstColor);
}

int QSGMaterialRhiShader__GraphicsPipelineState_colorWrite(const QSGMaterialRhiShader__GraphicsPipelineState* self) {
	QSGMaterialRhiShader::GraphicsPipelineState::ColorMask colorWrite_ret = self->colorWrite;
	return static_cast<int>(colorWrite_ret);
}

void QSGMaterialRhiShader__GraphicsPipelineState_setColorWrite(QSGMaterialRhiShader__GraphicsPipelineState* self, int colorWrite) {
	self->colorWrite = static_cast<QSGMaterialRhiShader::GraphicsPipelineState::ColorMask>(colorWrite);
}

QColor* QSGMaterialRhiShader__GraphicsPipelineState_blendConstant(const QSGMaterialRhiShader__GraphicsPipelineState* self) {
	return new QColor(self->blendConstant);
}

void QSGMaterialRhiShader__GraphicsPipelineState_setBlendConstant(QSGMaterialRhiShader__GraphicsPipelineState* self, QColor* blendConstant) {
	self->blendConstant = *blendConstant;
}

int QSGMaterialRhiShader__GraphicsPipelineState_cullMode(const QSGMaterialRhiShader__GraphicsPipelineState* self) {
	QSGMaterialRhiShader::GraphicsPipelineState::CullMode cullMode_ret = self->cullMode;
	return static_cast<int>(cullMode_ret);
}

void QSGMaterialRhiShader__GraphicsPipelineState_setCullMode(QSGMaterialRhiShader__GraphicsPipelineState* self, int cullMode) {
	self->cullMode = static_cast<QSGMaterialRhiShader::GraphicsPipelineState::CullMode>(cullMode);
}

void QSGMaterialRhiShader__GraphicsPipelineState_operatorAssign(QSGMaterialRhiShader__GraphicsPipelineState* self, QSGMaterialRhiShader__GraphicsPipelineState* from) {
	self->operator=(*from);
}

void QSGMaterialRhiShader__GraphicsPipelineState_delete(QSGMaterialRhiShader__GraphicsPipelineState* self) {
	delete self;
}

