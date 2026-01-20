#include <QByteArray>
#include <QColor>
#include <QMatrix4x4>
#include <QRect>
#include <QSGMaterial>
#include <QSGMaterialShader>
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialShader__GraphicsPipelineState
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialShader__RenderState
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qsgmaterialshader.h>
#include "gen_qsgmaterialshader.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQSGMaterialShader final : public QSGMaterialShader {
	const QSGMaterialShader_VTable* vtbl;
public:
	friend void* QSGMaterialShader_vdata(VirtualQSGMaterialShader* self);
	friend VirtualQSGMaterialShader* vdata_QSGMaterialShader(void* vdata);

	VirtualQSGMaterialShader(const QSGMaterialShader_VTable* vtbl): QSGMaterialShader(), vtbl(vtbl) {}

	virtual ~VirtualQSGMaterialShader() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual bool updateUniformData(QSGMaterialShader::RenderState& state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) override {
		if (vtbl->updateUniformData == 0) {
			return QSGMaterialShader::updateUniformData(state, newMaterial, oldMaterial);
		}

		QSGMaterialShader::RenderState& state_ret = state;
		// Cast returned reference into pointer
		QSGMaterialShader__RenderState* sigval1 = &state_ret;
		QSGMaterial* sigval2 = newMaterial;
		QSGMaterial* sigval3 = oldMaterial;
		bool callback_return_value = vtbl->updateUniformData(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QSGMaterialShader_virtualbase_updateUniformData(VirtualQSGMaterialShader* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);

	virtual bool updateGraphicsPipelineState(QSGMaterialShader::RenderState& state, QSGMaterialShader::GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) override {
		if (vtbl->updateGraphicsPipelineState == 0) {
			return QSGMaterialShader::updateGraphicsPipelineState(state, ps, newMaterial, oldMaterial);
		}

		QSGMaterialShader::RenderState& state_ret = state;
		// Cast returned reference into pointer
		QSGMaterialShader__RenderState* sigval1 = &state_ret;
		QSGMaterialShader__GraphicsPipelineState* sigval2 = ps;
		QSGMaterial* sigval3 = newMaterial;
		QSGMaterial* sigval4 = oldMaterial;
		bool callback_return_value = vtbl->updateGraphicsPipelineState(this, sigval1, sigval2, sigval3, sigval4);
		return callback_return_value;
	}

	friend bool QSGMaterialShader_virtualbase_updateGraphicsPipelineState(VirtualQSGMaterialShader* self, QSGMaterialShader__RenderState* state, QSGMaterialShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);

	// Wrappers to allow calling protected methods:
	friend void QSGMaterialShader_protectedbase_setShaderFileName(VirtualQSGMaterialShader* self, int stage, struct seaqt_string filename);
};

VirtualQSGMaterialShader* QSGMaterialShader_new(const QSGMaterialShader_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSGMaterialShader>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSGMaterialShader(vtbl) : nullptr;
}

bool QSGMaterialShader_updateUniformData(QSGMaterialShader* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {
	return self->updateUniformData(*state, newMaterial, oldMaterial);
}

bool QSGMaterialShader_updateGraphicsPipelineState(QSGMaterialShader* self, QSGMaterialShader__RenderState* state, QSGMaterialShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {
	return self->updateGraphicsPipelineState(*state, ps, newMaterial, oldMaterial);
}

int QSGMaterialShader_flags(const QSGMaterialShader* self) {
	QSGMaterialShader::Flags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QSGMaterialShader_setFlag(QSGMaterialShader* self, int flags) {
	self->setFlag(static_cast<QSGMaterialShader::Flags>(flags));
}

void QSGMaterialShader_setFlags(QSGMaterialShader* self, int flags) {
	self->setFlags(static_cast<QSGMaterialShader::Flags>(flags));
}

int QSGMaterialShader_combinedImageSamplerCount(const QSGMaterialShader* self, int binding) {
	return self->combinedImageSamplerCount(static_cast<int>(binding));
}

void QSGMaterialShader_setFlag2(QSGMaterialShader* self, int flags, bool on) {
	self->setFlag(static_cast<QSGMaterialShader::Flags>(flags), on);
}

void* QSGMaterialShader_vdata(VirtualQSGMaterialShader* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQSGMaterialShader>()); }
VirtualQSGMaterialShader* vdata_QSGMaterialShader(void* vdata) { return reinterpret_cast<VirtualQSGMaterialShader*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQSGMaterialShader>()); }

bool QSGMaterialShader_virtualbase_updateUniformData(VirtualQSGMaterialShader* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {

	return self->QSGMaterialShader::updateUniformData(*state, newMaterial, oldMaterial);
}

bool QSGMaterialShader_virtualbase_updateGraphicsPipelineState(VirtualQSGMaterialShader* self, QSGMaterialShader__RenderState* state, QSGMaterialShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {

	return self->QSGMaterialShader::updateGraphicsPipelineState(*state, ps, newMaterial, oldMaterial);
}

void QSGMaterialShader_protectedbase_setShaderFileName(VirtualQSGMaterialShader* self, int stage, struct seaqt_string filename) {
		QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	self->setShaderFileName(static_cast<VirtualQSGMaterialShader::Stage>(stage), filename_QString);
}

void QSGMaterialShader_delete(QSGMaterialShader* self) {
	delete self;
}

int QSGMaterialShader__RenderState_dirtyStates(const QSGMaterialShader__RenderState* self) {
	QSGMaterialShader::RenderState::DirtyStates _ret = self->dirtyStates();
	return static_cast<int>(_ret);
}

bool QSGMaterialShader__RenderState_isMatrixDirty(const QSGMaterialShader__RenderState* self) {
	return self->isMatrixDirty();
}

bool QSGMaterialShader__RenderState_isOpacityDirty(const QSGMaterialShader__RenderState* self) {
	return self->isOpacityDirty();
}

float QSGMaterialShader__RenderState_opacity(const QSGMaterialShader__RenderState* self) {
	return self->opacity();
}

QMatrix4x4* QSGMaterialShader__RenderState_combinedMatrix(const QSGMaterialShader__RenderState* self) {
	return new QMatrix4x4(self->combinedMatrix());
}

QMatrix4x4* QSGMaterialShader__RenderState_modelViewMatrix(const QSGMaterialShader__RenderState* self) {
	return new QMatrix4x4(self->modelViewMatrix());
}

QMatrix4x4* QSGMaterialShader__RenderState_projectionMatrix(const QSGMaterialShader__RenderState* self) {
	return new QMatrix4x4(self->projectionMatrix());
}

QRect* QSGMaterialShader__RenderState_viewportRect(const QSGMaterialShader__RenderState* self) {
	return new QRect(self->viewportRect());
}

QRect* QSGMaterialShader__RenderState_deviceRect(const QSGMaterialShader__RenderState* self) {
	return new QRect(self->deviceRect());
}

float QSGMaterialShader__RenderState_determinant(const QSGMaterialShader__RenderState* self) {
	return self->determinant();
}

float QSGMaterialShader__RenderState_devicePixelRatio(const QSGMaterialShader__RenderState* self) {
	return self->devicePixelRatio();
}

struct seaqt_string QSGMaterialShader__RenderState_uniformData(QSGMaterialShader__RenderState* self) {
	QByteArray& _qb = *self->uniformData();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QSGMaterialShader__RenderState_delete(QSGMaterialShader__RenderState* self) {
	delete self;
}

bool QSGMaterialShader__GraphicsPipelineState_blendEnable(const QSGMaterialShader__GraphicsPipelineState* self) {
	return self->blendEnable;
}

void QSGMaterialShader__GraphicsPipelineState_setBlendEnable(QSGMaterialShader__GraphicsPipelineState* self, bool blendEnable) {
	self->blendEnable = blendEnable;
}

int QSGMaterialShader__GraphicsPipelineState_srcColor(const QSGMaterialShader__GraphicsPipelineState* self) {
	QSGMaterialShader::GraphicsPipelineState::BlendFactor srcColor_ret = self->srcColor;
	return static_cast<int>(srcColor_ret);
}

void QSGMaterialShader__GraphicsPipelineState_setSrcColor(QSGMaterialShader__GraphicsPipelineState* self, int srcColor) {
	self->srcColor = static_cast<QSGMaterialShader::GraphicsPipelineState::BlendFactor>(srcColor);
}

int QSGMaterialShader__GraphicsPipelineState_dstColor(const QSGMaterialShader__GraphicsPipelineState* self) {
	QSGMaterialShader::GraphicsPipelineState::BlendFactor dstColor_ret = self->dstColor;
	return static_cast<int>(dstColor_ret);
}

void QSGMaterialShader__GraphicsPipelineState_setDstColor(QSGMaterialShader__GraphicsPipelineState* self, int dstColor) {
	self->dstColor = static_cast<QSGMaterialShader::GraphicsPipelineState::BlendFactor>(dstColor);
}

int QSGMaterialShader__GraphicsPipelineState_colorWrite(const QSGMaterialShader__GraphicsPipelineState* self) {
	QSGMaterialShader::GraphicsPipelineState::ColorMask colorWrite_ret = self->colorWrite;
	return static_cast<int>(colorWrite_ret);
}

void QSGMaterialShader__GraphicsPipelineState_setColorWrite(QSGMaterialShader__GraphicsPipelineState* self, int colorWrite) {
	self->colorWrite = static_cast<QSGMaterialShader::GraphicsPipelineState::ColorMask>(colorWrite);
}

QColor* QSGMaterialShader__GraphicsPipelineState_blendConstant(const QSGMaterialShader__GraphicsPipelineState* self) {
	return new QColor(self->blendConstant);
}

void QSGMaterialShader__GraphicsPipelineState_setBlendConstant(QSGMaterialShader__GraphicsPipelineState* self, QColor* blendConstant) {
	self->blendConstant = *blendConstant;
}

int QSGMaterialShader__GraphicsPipelineState_cullMode(const QSGMaterialShader__GraphicsPipelineState* self) {
	QSGMaterialShader::GraphicsPipelineState::CullMode cullMode_ret = self->cullMode;
	return static_cast<int>(cullMode_ret);
}

void QSGMaterialShader__GraphicsPipelineState_setCullMode(QSGMaterialShader__GraphicsPipelineState* self, int cullMode) {
	self->cullMode = static_cast<QSGMaterialShader::GraphicsPipelineState::CullMode>(cullMode);
}

int QSGMaterialShader__GraphicsPipelineState_polygonMode(const QSGMaterialShader__GraphicsPipelineState* self) {
	QSGMaterialShader::GraphicsPipelineState::PolygonMode polygonMode_ret = self->polygonMode;
	return static_cast<int>(polygonMode_ret);
}

void QSGMaterialShader__GraphicsPipelineState_setPolygonMode(QSGMaterialShader__GraphicsPipelineState* self, int polygonMode) {
	self->polygonMode = static_cast<QSGMaterialShader::GraphicsPipelineState::PolygonMode>(polygonMode);
}

void QSGMaterialShader__GraphicsPipelineState_delete(QSGMaterialShader__GraphicsPipelineState* self) {
	delete self;
}

