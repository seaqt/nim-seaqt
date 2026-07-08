#include <QMatrix4x4>
#include <QRect>
#include <QSGMaterialShader>
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialShader__RenderState
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
	virtual void activate() override {
		if (vtbl->activate == 0) {
			QSGMaterialShader::activate();
			return;
		}

		vtbl->activate(this);
	}

	friend void QSGMaterialShader_virtualbase_activate(VirtualQSGMaterialShader* self);

	virtual void deactivate() override {
		if (vtbl->deactivate == 0) {
			QSGMaterialShader::deactivate();
			return;
		}

		vtbl->deactivate(this);
	}

	friend void QSGMaterialShader_virtualbase_deactivate(VirtualQSGMaterialShader* self);

	virtual const char** attributeNames() const override {
		if (vtbl->attributeNames == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		const char** callback_return_value = vtbl->attributeNames(this);
		return callback_return_value;
	}

	virtual void compile() override {
		if (vtbl->compile == 0) {
			QSGMaterialShader::compile();
			return;
		}

		vtbl->compile(this);
	}

	friend void QSGMaterialShader_virtualbase_compile(VirtualQSGMaterialShader* self);

	virtual void initialize() override {
		if (vtbl->initialize == 0) {
			QSGMaterialShader::initialize();
			return;
		}

		vtbl->initialize(this);
	}

	friend void QSGMaterialShader_virtualbase_initialize(VirtualQSGMaterialShader* self);

	virtual const char* vertexShader() const override {
		if (vtbl->vertexShader == 0) {
			return QSGMaterialShader::vertexShader();
		}

		const char* callback_return_value = vtbl->vertexShader(this);
		return callback_return_value;
	}

	friend const char* QSGMaterialShader_virtualbase_vertexShader(const VirtualQSGMaterialShader* self);

	virtual const char* fragmentShader() const override {
		if (vtbl->fragmentShader == 0) {
			return QSGMaterialShader::fragmentShader();
		}

		const char* callback_return_value = vtbl->fragmentShader(this);
		return callback_return_value;
	}

	friend const char* QSGMaterialShader_virtualbase_fragmentShader(const VirtualQSGMaterialShader* self);

};

VirtualQSGMaterialShader* QSGMaterialShader_new(const QSGMaterialShader_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSGMaterialShader>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSGMaterialShader(vtbl) : nullptr;
}

void QSGMaterialShader_activate(QSGMaterialShader* self) {
	self->activate();
}

void QSGMaterialShader_deactivate(QSGMaterialShader* self) {
	self->deactivate();
}

const char** QSGMaterialShader_attributeNames(const QSGMaterialShader* self) {
	return (const char**) self->attributeNames();
}

void* QSGMaterialShader_vdata(VirtualQSGMaterialShader* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQSGMaterialShader>()); }
VirtualQSGMaterialShader* vdata_QSGMaterialShader(void* vdata) { return reinterpret_cast<VirtualQSGMaterialShader*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQSGMaterialShader>()); }

void QSGMaterialShader_virtualbase_activate(VirtualQSGMaterialShader* self) {

	self->QSGMaterialShader::activate();
}

void QSGMaterialShader_virtualbase_deactivate(VirtualQSGMaterialShader* self) {

	self->QSGMaterialShader::deactivate();
}

void QSGMaterialShader_virtualbase_compile(VirtualQSGMaterialShader* self) {

	self->QSGMaterialShader::compile();
}

void QSGMaterialShader_virtualbase_initialize(VirtualQSGMaterialShader* self) {

	self->QSGMaterialShader::initialize();
}

const char* QSGMaterialShader_virtualbase_vertexShader(const VirtualQSGMaterialShader* self) {

	return (const char*) self->QSGMaterialShader::vertexShader();
}

const char* QSGMaterialShader_virtualbase_fragmentShader(const VirtualQSGMaterialShader* self) {

	return (const char*) self->QSGMaterialShader::fragmentShader();
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

bool QSGMaterialShader__RenderState_isCachedMaterialDataDirty(const QSGMaterialShader__RenderState* self) {
	return self->isCachedMaterialDataDirty();
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

void QSGMaterialShader__RenderState_delete(QSGMaterialShader__RenderState* self) {
	delete self;
}

