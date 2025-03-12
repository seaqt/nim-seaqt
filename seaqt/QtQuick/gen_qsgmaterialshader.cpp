#include <QList>
#include <QMatrix4x4>
#include <QRect>
#include <QSGMaterial>
#include <QSGMaterialShader>
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialShader__RenderState
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qsgmaterialshader.h>
#include "gen_qsgmaterialshader.h"
class VirtualQSGMaterialShader final : public QSGMaterialShader {
	const QSGMaterialShader_VTable* vtbl;
	void* vdata;
public:
	friend const QSGMaterialShader_VTable* QSGMaterialShader_vtbl(const VirtualQSGMaterialShader* self);
	friend void* QSGMaterialShader_vdata(const VirtualQSGMaterialShader* self);
	friend void QSGMaterialShader_setVdata(VirtualQSGMaterialShader* self, void* vdata);

	VirtualQSGMaterialShader(const QSGMaterialShader_VTable* vtbl, void* vdata): QSGMaterialShader(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSGMaterialShader() override { if(vtbl->destructor) vtbl->destructor(this); }

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

	virtual void updateState(const QSGMaterialShader::RenderState& state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) override {
		if (vtbl->updateState == 0) {
			QSGMaterialShader::updateState(state, newMaterial, oldMaterial);
			return;
		}

		const QSGMaterialShader::RenderState& state_ret = state;
		// Cast returned reference into pointer
		QSGMaterialShader__RenderState* sigval1 = const_cast<QSGMaterialShader::RenderState*>(&state_ret);
		QSGMaterial* sigval2 = newMaterial;
		QSGMaterial* sigval3 = oldMaterial;

		vtbl->updateState(this, sigval1, sigval2, sigval3);

	}

	friend void QSGMaterialShader_virtualbase_updateState(VirtualQSGMaterialShader* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);

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

	// Wrappers to allow calling protected methods:
	friend void QSGMaterialShader_protectedbase_setShaderSourceFile(VirtualQSGMaterialShader* self, QOpenGLShader::ShaderType type, struct miqt_string sourceFile);
	friend void QSGMaterialShader_protectedbase_setShaderSourceFiles(VirtualQSGMaterialShader* self, QOpenGLShader::ShaderType type, struct miqt_array /* of struct miqt_string */  sourceFiles);
};

VirtualQSGMaterialShader* QSGMaterialShader_new(const QSGMaterialShader_VTable* vtbl, void* vdata) {
	return new VirtualQSGMaterialShader(vtbl, vdata);
}

void QSGMaterialShader_activate(QSGMaterialShader* self) {
	self->activate();
}

void QSGMaterialShader_deactivate(QSGMaterialShader* self) {
	self->deactivate();
}

void QSGMaterialShader_updateState(QSGMaterialShader* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {
	self->updateState(*state, newMaterial, oldMaterial);
}

const char** QSGMaterialShader_attributeNames(const QSGMaterialShader* self) {
	return (const char**) self->attributeNames();
}

void QSGMaterialShader_virtualbase_activate(VirtualQSGMaterialShader* self) {

	self->QSGMaterialShader::activate();
}

void QSGMaterialShader_virtualbase_deactivate(VirtualQSGMaterialShader* self) {

	self->QSGMaterialShader::deactivate();
}

void QSGMaterialShader_virtualbase_updateState(VirtualQSGMaterialShader* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {

	self->QSGMaterialShader::updateState(*state, newMaterial, oldMaterial);
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

const QSGMaterialShader_VTable* QSGMaterialShader_vtbl(const VirtualQSGMaterialShader* self) { return self->vtbl; }
void* QSGMaterialShader_vdata(const VirtualQSGMaterialShader* self) { return self->vdata; }
void QSGMaterialShader_setVdata(VirtualQSGMaterialShader* self, void* vdata) { self->vdata = vdata; }

void QSGMaterialShader_protectedbase_setShaderSourceFile(VirtualQSGMaterialShader* self, QOpenGLShader::ShaderType type, struct miqt_string sourceFile) {
		QString sourceFile_QString = QString::fromUtf8(sourceFile.data, sourceFile.len);
	self->setShaderSourceFile(type, sourceFile_QString);
}

void QSGMaterialShader_protectedbase_setShaderSourceFiles(VirtualQSGMaterialShader* self, QOpenGLShader::ShaderType type, struct miqt_array /* of struct miqt_string */  sourceFiles) {
		QStringList sourceFiles_QList;
		sourceFiles_QList.reserve(sourceFiles.len);
		struct miqt_string* sourceFiles_arr = static_cast<struct miqt_string*>(sourceFiles.data);
		for(size_t i = 0; i < sourceFiles.len; ++i) {
			QString sourceFiles_arr_i_QString = QString::fromUtf8(sourceFiles_arr[i].data, sourceFiles_arr[i].len);
			sourceFiles_QList.push_back(sourceFiles_arr_i_QString);
		}
	self->setShaderSourceFiles(type, sourceFiles_QList);
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

