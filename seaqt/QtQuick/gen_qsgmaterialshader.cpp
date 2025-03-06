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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGMaterialShader final : public QSGMaterialShader {
	struct QSGMaterialShader_VTable* vtbl;
public:

	VirtualQSGMaterialShader(struct QSGMaterialShader_VTable* vtbl): QSGMaterialShader(), vtbl(vtbl) {};

	virtual ~VirtualQSGMaterialShader() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void activate() override {
		if (vtbl->activate == 0) {
			QSGMaterialShader::activate();
			return;
		}


		vtbl->activate(vtbl, this);

	}

	friend void QSGMaterialShader_virtualbase_activate(void* self);

	// Subclass to allow providing a Go implementation
	virtual void deactivate() override {
		if (vtbl->deactivate == 0) {
			QSGMaterialShader::deactivate();
			return;
		}


		vtbl->deactivate(vtbl, this);

	}

	friend void QSGMaterialShader_virtualbase_deactivate(void* self);

	// Subclass to allow providing a Go implementation
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

		vtbl->updateState(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QSGMaterialShader_virtualbase_updateState(void* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);

	// Subclass to allow providing a Go implementation
	virtual const char** attributeNames() const override {
		if (vtbl->attributeNames == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}


		const char** callback_return_value = vtbl->attributeNames(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual void compile() override {
		if (vtbl->compile == 0) {
			QSGMaterialShader::compile();
			return;
		}


		vtbl->compile(vtbl, this);

	}

	friend void QSGMaterialShader_virtualbase_compile(void* self);

	// Subclass to allow providing a Go implementation
	virtual void initialize() override {
		if (vtbl->initialize == 0) {
			QSGMaterialShader::initialize();
			return;
		}


		vtbl->initialize(vtbl, this);

	}

	friend void QSGMaterialShader_virtualbase_initialize(void* self);

	// Subclass to allow providing a Go implementation
	virtual const char* vertexShader() const override {
		if (vtbl->vertexShader == 0) {
			return QSGMaterialShader::vertexShader();
		}


		const char* callback_return_value = vtbl->vertexShader(vtbl, this);

		return callback_return_value;
	}

	friend const char* QSGMaterialShader_virtualbase_vertexShader(const void* self);

	// Subclass to allow providing a Go implementation
	virtual const char* fragmentShader() const override {
		if (vtbl->fragmentShader == 0) {
			return QSGMaterialShader::fragmentShader();
		}


		const char* callback_return_value = vtbl->fragmentShader(vtbl, this);

		return callback_return_value;
	}

	friend const char* QSGMaterialShader_virtualbase_fragmentShader(const void* self);

	// Wrappers to allow calling protected methods:
	friend void QSGMaterialShader_protectedbase_setShaderSourceFile(bool* _dynamic_cast_ok, void* self, QOpenGLShader::ShaderType type, struct miqt_string sourceFile);
	friend void QSGMaterialShader_protectedbase_setShaderSourceFiles(bool* _dynamic_cast_ok, void* self, QOpenGLShader::ShaderType type, struct miqt_array /* of struct miqt_string */  sourceFiles);
};

QSGMaterialShader* QSGMaterialShader_new(struct QSGMaterialShader_VTable* vtbl) {
	return new VirtualQSGMaterialShader(vtbl);
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

void QSGMaterialShader_virtualbase_activate(void* self) {

	( (VirtualQSGMaterialShader*)(self) )->QSGMaterialShader::activate();

}

void QSGMaterialShader_virtualbase_deactivate(void* self) {

	( (VirtualQSGMaterialShader*)(self) )->QSGMaterialShader::deactivate();

}

void QSGMaterialShader_virtualbase_updateState(void* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {

	( (VirtualQSGMaterialShader*)(self) )->QSGMaterialShader::updateState(*state, newMaterial, oldMaterial);

}

void QSGMaterialShader_virtualbase_compile(void* self) {

	( (VirtualQSGMaterialShader*)(self) )->QSGMaterialShader::compile();

}

void QSGMaterialShader_virtualbase_initialize(void* self) {

	( (VirtualQSGMaterialShader*)(self) )->QSGMaterialShader::initialize();

}

const char* QSGMaterialShader_virtualbase_vertexShader(const void* self) {

	return (const char*) ( (const VirtualQSGMaterialShader*)(self) )->QSGMaterialShader::vertexShader();

}

const char* QSGMaterialShader_virtualbase_fragmentShader(const void* self) {

	return (const char*) ( (const VirtualQSGMaterialShader*)(self) )->QSGMaterialShader::fragmentShader();

}

void QSGMaterialShader_protectedbase_setShaderSourceFile(bool* _dynamic_cast_ok, void* self, QOpenGLShader::ShaderType type, struct miqt_string sourceFile) {
	VirtualQSGMaterialShader* self_cast = dynamic_cast<VirtualQSGMaterialShader*>( (QSGMaterialShader*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
			QString sourceFile_QString = QString::fromUtf8(sourceFile.data, sourceFile.len);

	self_cast->setShaderSourceFile(type, sourceFile_QString);

}

void QSGMaterialShader_protectedbase_setShaderSourceFiles(bool* _dynamic_cast_ok, void* self, QOpenGLShader::ShaderType type, struct miqt_array /* of struct miqt_string */  sourceFiles) {
	VirtualQSGMaterialShader* self_cast = dynamic_cast<VirtualQSGMaterialShader*>( (QSGMaterialShader*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
			QStringList sourceFiles_QList;
		sourceFiles_QList.reserve(sourceFiles.len);
		struct miqt_string* sourceFiles_arr = static_cast<struct miqt_string*>(sourceFiles.data);
		for(size_t i = 0; i < sourceFiles.len; ++i) {
			QString sourceFiles_arr_i_QString = QString::fromUtf8(sourceFiles_arr[i].data, sourceFiles_arr[i].len);
			sourceFiles_QList.push_back(sourceFiles_arr_i_QString);
		}

	self_cast->setShaderSourceFiles(type, sourceFiles_QList);

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

