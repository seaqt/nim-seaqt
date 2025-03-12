#include <QByteArray>
#include <QList>
#include <QMatrix4x4>
#include <QRect>
#include <QSGMaterial>
#include <QSGMaterialRhiShader>
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialRhiShader__GraphicsPipelineState
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialRhiShader__RenderState
#include <QSGMaterialShader>
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialShader__RenderState
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qsgmaterialrhishader.h>
#include "gen_qsgmaterialrhishader.h"
class VirtualQSGMaterialRhiShader final : public QSGMaterialRhiShader {
	const QSGMaterialRhiShader_VTable* vtbl;
	void* vdata;
public:
	friend const QSGMaterialRhiShader_VTable* QSGMaterialRhiShader_vtbl(const VirtualQSGMaterialRhiShader* self);
	friend void* QSGMaterialRhiShader_vdata(const VirtualQSGMaterialRhiShader* self);
	friend void QSGMaterialRhiShader_setVdata(VirtualQSGMaterialRhiShader* self, void* vdata);

	VirtualQSGMaterialRhiShader(const QSGMaterialRhiShader_VTable* vtbl, void* vdata): QSGMaterialRhiShader(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSGMaterialRhiShader() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual bool updateUniformData(QSGMaterialRhiShader::RenderState& state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) override {
		if (vtbl->updateUniformData == 0) {
			return QSGMaterialRhiShader::updateUniformData(state, newMaterial, oldMaterial);
		}

		QSGMaterialRhiShader::RenderState& state_ret = state;
		// Cast returned reference into pointer
		QSGMaterialRhiShader__RenderState* sigval1 = &state_ret;
		QSGMaterial* sigval2 = newMaterial;
		QSGMaterial* sigval3 = oldMaterial;

		bool callback_return_value = vtbl->updateUniformData(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QSGMaterialRhiShader_virtualbase_updateUniformData(VirtualQSGMaterialRhiShader* self, QSGMaterialRhiShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);

	virtual bool updateGraphicsPipelineState(QSGMaterialRhiShader::RenderState& state, QSGMaterialRhiShader::GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) override {
		if (vtbl->updateGraphicsPipelineState == 0) {
			return QSGMaterialRhiShader::updateGraphicsPipelineState(state, ps, newMaterial, oldMaterial);
		}

		QSGMaterialRhiShader::RenderState& state_ret = state;
		// Cast returned reference into pointer
		QSGMaterialRhiShader__RenderState* sigval1 = &state_ret;
		QSGMaterialRhiShader__GraphicsPipelineState* sigval2 = ps;
		QSGMaterial* sigval3 = newMaterial;
		QSGMaterial* sigval4 = oldMaterial;

		bool callback_return_value = vtbl->updateGraphicsPipelineState(this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	friend bool QSGMaterialRhiShader_virtualbase_updateGraphicsPipelineState(VirtualQSGMaterialRhiShader* self, QSGMaterialRhiShader__RenderState* state, QSGMaterialRhiShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);

	virtual const char** attributeNames() const override {
		if (vtbl->attributeNames == 0) {
			return QSGMaterialRhiShader::attributeNames();
		}


		const char** callback_return_value = vtbl->attributeNames(this);

		return callback_return_value;
	}

	friend const char** QSGMaterialRhiShader_virtualbase_attributeNames(const VirtualQSGMaterialRhiShader* self);

	virtual void activate() override {
		if (vtbl->activate == 0) {
			QSGMaterialRhiShader::activate();
			return;
		}


		vtbl->activate(this);

	}

	friend void QSGMaterialRhiShader_virtualbase_activate(VirtualQSGMaterialRhiShader* self);

	virtual void deactivate() override {
		if (vtbl->deactivate == 0) {
			QSGMaterialRhiShader::deactivate();
			return;
		}


		vtbl->deactivate(this);

	}

	friend void QSGMaterialRhiShader_virtualbase_deactivate(VirtualQSGMaterialRhiShader* self);

	virtual void updateState(const QSGMaterialShader::RenderState& state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) override {
		if (vtbl->updateState == 0) {
			QSGMaterialRhiShader::updateState(state, newMaterial, oldMaterial);
			return;
		}

		const QSGMaterialShader::RenderState& state_ret = state;
		// Cast returned reference into pointer
		QSGMaterialShader__RenderState* sigval1 = const_cast<QSGMaterialShader::RenderState*>(&state_ret);
		QSGMaterial* sigval2 = newMaterial;
		QSGMaterial* sigval3 = oldMaterial;

		vtbl->updateState(this, sigval1, sigval2, sigval3);

	}

	friend void QSGMaterialRhiShader_virtualbase_updateState(VirtualQSGMaterialRhiShader* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);

	virtual void compile() override {
		if (vtbl->compile == 0) {
			QSGMaterialRhiShader::compile();
			return;
		}


		vtbl->compile(this);

	}

	friend void QSGMaterialRhiShader_virtualbase_compile(VirtualQSGMaterialRhiShader* self);

	virtual void initialize() override {
		if (vtbl->initialize == 0) {
			QSGMaterialRhiShader::initialize();
			return;
		}


		vtbl->initialize(this);

	}

	friend void QSGMaterialRhiShader_virtualbase_initialize(VirtualQSGMaterialRhiShader* self);

	virtual const char* vertexShader() const override {
		if (vtbl->vertexShader == 0) {
			return QSGMaterialRhiShader::vertexShader();
		}


		const char* callback_return_value = vtbl->vertexShader(this);

		return callback_return_value;
	}

	friend const char* QSGMaterialRhiShader_virtualbase_vertexShader(const VirtualQSGMaterialRhiShader* self);

	virtual const char* fragmentShader() const override {
		if (vtbl->fragmentShader == 0) {
			return QSGMaterialRhiShader::fragmentShader();
		}


		const char* callback_return_value = vtbl->fragmentShader(this);

		return callback_return_value;
	}

	friend const char* QSGMaterialRhiShader_virtualbase_fragmentShader(const VirtualQSGMaterialRhiShader* self);

	// Wrappers to allow calling protected methods:
	friend void QSGMaterialRhiShader_protectedbase_setShaderFileName(VirtualQSGMaterialRhiShader* self, int stage, struct miqt_string filename);
	friend void QSGMaterialRhiShader_protectedbase_setShader(VirtualQSGMaterialRhiShader* self, int stage, const QShader* shader);
	friend void QSGMaterialRhiShader_protectedbase_setShaderSourceFile(VirtualQSGMaterialRhiShader* self, QOpenGLShader::ShaderType type, struct miqt_string sourceFile);
	friend void QSGMaterialRhiShader_protectedbase_setShaderSourceFiles(VirtualQSGMaterialRhiShader* self, QOpenGLShader::ShaderType type, struct miqt_array /* of struct miqt_string */  sourceFiles);
};

VirtualQSGMaterialRhiShader* QSGMaterialRhiShader_new(const QSGMaterialRhiShader_VTable* vtbl, void* vdata) {
	return new VirtualQSGMaterialRhiShader(vtbl, vdata);
}

void QSGMaterialRhiShader_virtbase(QSGMaterialRhiShader* src, QSGMaterialShader** outptr_QSGMaterialShader) {
	*outptr_QSGMaterialShader = static_cast<QSGMaterialShader*>(src);
}

bool QSGMaterialRhiShader_updateUniformData(QSGMaterialRhiShader* self, QSGMaterialRhiShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {
	return self->updateUniformData(*state, newMaterial, oldMaterial);
}

bool QSGMaterialRhiShader_updateGraphicsPipelineState(QSGMaterialRhiShader* self, QSGMaterialRhiShader__RenderState* state, QSGMaterialRhiShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {
	return self->updateGraphicsPipelineState(*state, ps, newMaterial, oldMaterial);
}

int QSGMaterialRhiShader_flags(const QSGMaterialRhiShader* self) {
	QSGMaterialRhiShader::Flags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QSGMaterialRhiShader_setFlag(QSGMaterialRhiShader* self, int flags) {
	self->setFlag(static_cast<QSGMaterialRhiShader::Flags>(flags));
}

const char** QSGMaterialRhiShader_attributeNames(const QSGMaterialRhiShader* self) {
	return (const char**) self->attributeNames();
}

void QSGMaterialRhiShader_setFlag2(QSGMaterialRhiShader* self, int flags, bool on) {
	self->setFlag(static_cast<QSGMaterialRhiShader::Flags>(flags), on);
}

bool QSGMaterialRhiShader_virtualbase_updateUniformData(VirtualQSGMaterialRhiShader* self, QSGMaterialRhiShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {

	return self->QSGMaterialRhiShader::updateUniformData(*state, newMaterial, oldMaterial);
}

bool QSGMaterialRhiShader_virtualbase_updateGraphicsPipelineState(VirtualQSGMaterialRhiShader* self, QSGMaterialRhiShader__RenderState* state, QSGMaterialRhiShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {

	return self->QSGMaterialRhiShader::updateGraphicsPipelineState(*state, ps, newMaterial, oldMaterial);
}

const char** QSGMaterialRhiShader_virtualbase_attributeNames(const VirtualQSGMaterialRhiShader* self) {

	return (const char**) self->QSGMaterialRhiShader::attributeNames();
}

void QSGMaterialRhiShader_virtualbase_activate(VirtualQSGMaterialRhiShader* self) {

	self->QSGMaterialRhiShader::activate();
}

void QSGMaterialRhiShader_virtualbase_deactivate(VirtualQSGMaterialRhiShader* self) {

	self->QSGMaterialRhiShader::deactivate();
}

void QSGMaterialRhiShader_virtualbase_updateState(VirtualQSGMaterialRhiShader* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {

	self->QSGMaterialRhiShader::updateState(*state, newMaterial, oldMaterial);
}

void QSGMaterialRhiShader_virtualbase_compile(VirtualQSGMaterialRhiShader* self) {

	self->QSGMaterialRhiShader::compile();
}

void QSGMaterialRhiShader_virtualbase_initialize(VirtualQSGMaterialRhiShader* self) {

	self->QSGMaterialRhiShader::initialize();
}

const char* QSGMaterialRhiShader_virtualbase_vertexShader(const VirtualQSGMaterialRhiShader* self) {

	return (const char*) self->QSGMaterialRhiShader::vertexShader();
}

const char* QSGMaterialRhiShader_virtualbase_fragmentShader(const VirtualQSGMaterialRhiShader* self) {

	return (const char*) self->QSGMaterialRhiShader::fragmentShader();
}

const QSGMaterialRhiShader_VTable* QSGMaterialRhiShader_vtbl(const VirtualQSGMaterialRhiShader* self) { return self->vtbl; }
void* QSGMaterialRhiShader_vdata(const VirtualQSGMaterialRhiShader* self) { return self->vdata; }
void QSGMaterialRhiShader_setVdata(VirtualQSGMaterialRhiShader* self, void* vdata) { self->vdata = vdata; }

void QSGMaterialRhiShader_protectedbase_setShaderFileName(VirtualQSGMaterialRhiShader* self, int stage, struct miqt_string filename) {
		QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	self->setShaderFileName(static_cast<VirtualQSGMaterialRhiShader::Stage>(stage), filename_QString);
}

void QSGMaterialRhiShader_protectedbase_setShader(VirtualQSGMaterialRhiShader* self, int stage, const QShader* shader) {
	self->setShader(static_cast<VirtualQSGMaterialRhiShader::Stage>(stage), *shader);
}

void QSGMaterialRhiShader_protectedbase_setShaderSourceFile(VirtualQSGMaterialRhiShader* self, QOpenGLShader::ShaderType type, struct miqt_string sourceFile) {
		QString sourceFile_QString = QString::fromUtf8(sourceFile.data, sourceFile.len);
	self->setShaderSourceFile(type, sourceFile_QString);
}

void QSGMaterialRhiShader_protectedbase_setShaderSourceFiles(VirtualQSGMaterialRhiShader* self, QOpenGLShader::ShaderType type, struct miqt_array /* of struct miqt_string */  sourceFiles) {
		QStringList sourceFiles_QList;
		sourceFiles_QList.reserve(sourceFiles.len);
		struct miqt_string* sourceFiles_arr = static_cast<struct miqt_string*>(sourceFiles.data);
		for(size_t i = 0; i < sourceFiles.len; ++i) {
			QString sourceFiles_arr_i_QString = QString::fromUtf8(sourceFiles_arr[i].data, sourceFiles_arr[i].len);
			sourceFiles_QList.push_back(sourceFiles_arr_i_QString);
		}
	self->setShaderSourceFiles(type, sourceFiles_QList);
}

void QSGMaterialRhiShader_delete(QSGMaterialRhiShader* self) {
	delete self;
}

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

struct miqt_string QSGMaterialRhiShader__RenderState_uniformData(QSGMaterialRhiShader__RenderState* self) {
	QByteArray _qb = self->uniformData();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QSGMaterialRhiShader__RenderState_delete(QSGMaterialRhiShader__RenderState* self) {
	delete self;
}

QSGMaterialRhiShader__GraphicsPipelineState* QSGMaterialRhiShader__GraphicsPipelineState_new(QSGMaterialRhiShader__GraphicsPipelineState* param1) {
	return new QSGMaterialRhiShader__GraphicsPipelineState(*param1);
}

void QSGMaterialRhiShader__GraphicsPipelineState_operatorAssign(QSGMaterialRhiShader__GraphicsPipelineState* self, QSGMaterialRhiShader__GraphicsPipelineState* param1) {
	self->operator=(*param1);
}

void QSGMaterialRhiShader__GraphicsPipelineState_delete(QSGMaterialRhiShader__GraphicsPipelineState* self) {
	delete self;
}

