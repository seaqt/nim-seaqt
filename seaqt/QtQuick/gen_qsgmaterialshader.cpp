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

void miqt_exec_callback_QSGMaterialShader_activate(QSGMaterialShader*, intptr_t);
void miqt_exec_callback_QSGMaterialShader_deactivate(QSGMaterialShader*, intptr_t);
void miqt_exec_callback_QSGMaterialShader_updateState(QSGMaterialShader*, intptr_t, QSGMaterialShader__RenderState*, QSGMaterial*, QSGMaterial*);
const char** miqt_exec_callback_QSGMaterialShader_attributeNames(const QSGMaterialShader*, intptr_t);
void miqt_exec_callback_QSGMaterialShader_compile(QSGMaterialShader*, intptr_t);
void miqt_exec_callback_QSGMaterialShader_initialize(QSGMaterialShader*, intptr_t);
const char* miqt_exec_callback_QSGMaterialShader_vertexShader(const QSGMaterialShader*, intptr_t);
const char* miqt_exec_callback_QSGMaterialShader_fragmentShader(const QSGMaterialShader*, intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGMaterialShader final : public QSGMaterialShader {
public:

	VirtualQSGMaterialShader(): QSGMaterialShader() {};

	virtual ~VirtualQSGMaterialShader() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__activate = 0;

	// Subclass to allow providing a Go implementation
	virtual void activate() override {
		if (handle__activate == 0) {
			QSGMaterialShader::activate();
			return;
		}
		

		miqt_exec_callback_QSGMaterialShader_activate(this, handle__activate);

		
	}

	friend void QSGMaterialShader_virtualbase_activate(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__deactivate = 0;

	// Subclass to allow providing a Go implementation
	virtual void deactivate() override {
		if (handle__deactivate == 0) {
			QSGMaterialShader::deactivate();
			return;
		}
		

		miqt_exec_callback_QSGMaterialShader_deactivate(this, handle__deactivate);

		
	}

	friend void QSGMaterialShader_virtualbase_deactivate(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__updateState = 0;

	// Subclass to allow providing a Go implementation
	virtual void updateState(const QSGMaterialShader::RenderState& state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) override {
		if (handle__updateState == 0) {
			QSGMaterialShader::updateState(state, newMaterial, oldMaterial);
			return;
		}
		
		const QSGMaterialShader::RenderState& state_ret = state;
		// Cast returned reference into pointer
		QSGMaterialShader__RenderState* sigval1 = const_cast<QSGMaterialShader::RenderState*>(&state_ret);
		QSGMaterial* sigval2 = newMaterial;
		QSGMaterial* sigval3 = oldMaterial;

		miqt_exec_callback_QSGMaterialShader_updateState(this, handle__updateState, sigval1, sigval2, sigval3);

		
	}

	friend void QSGMaterialShader_virtualbase_updateState(void* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__attributeNames = 0;

	// Subclass to allow providing a Go implementation
	virtual const char** attributeNames() const override {
		if (handle__attributeNames == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}
		

		const char** callback_return_value = miqt_exec_callback_QSGMaterialShader_attributeNames(this, handle__attributeNames);

		return callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__compile = 0;

	// Subclass to allow providing a Go implementation
	virtual void compile() override {
		if (handle__compile == 0) {
			QSGMaterialShader::compile();
			return;
		}
		

		miqt_exec_callback_QSGMaterialShader_compile(this, handle__compile);

		
	}

	friend void QSGMaterialShader_virtualbase_compile(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__initialize = 0;

	// Subclass to allow providing a Go implementation
	virtual void initialize() override {
		if (handle__initialize == 0) {
			QSGMaterialShader::initialize();
			return;
		}
		

		miqt_exec_callback_QSGMaterialShader_initialize(this, handle__initialize);

		
	}

	friend void QSGMaterialShader_virtualbase_initialize(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__vertexShader = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* vertexShader() const override {
		if (handle__vertexShader == 0) {
			return QSGMaterialShader::vertexShader();
		}
		

		const char* callback_return_value = miqt_exec_callback_QSGMaterialShader_vertexShader(this, handle__vertexShader);

		return callback_return_value;
	}

	friend const char* QSGMaterialShader_virtualbase_vertexShader(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__fragmentShader = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* fragmentShader() const override {
		if (handle__fragmentShader == 0) {
			return QSGMaterialShader::fragmentShader();
		}
		

		const char* callback_return_value = miqt_exec_callback_QSGMaterialShader_fragmentShader(this, handle__fragmentShader);

		return callback_return_value;
	}

	friend const char* QSGMaterialShader_virtualbase_fragmentShader(const void* self);

	// Wrappers to allow calling protected methods:
	friend void QSGMaterialShader_protectedbase_setShaderSourceFile(bool* _dynamic_cast_ok, void* self, QOpenGLShader::ShaderType type, struct miqt_string sourceFile);
	friend void QSGMaterialShader_protectedbase_setShaderSourceFiles(bool* _dynamic_cast_ok, void* self, QOpenGLShader::ShaderType type, struct miqt_array /* of struct miqt_string */  sourceFiles);
};

QSGMaterialShader* QSGMaterialShader_new() {
	return new VirtualQSGMaterialShader();
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

bool QSGMaterialShader_override_virtual_activate(void* self, intptr_t slot) {
	VirtualQSGMaterialShader* self_cast = dynamic_cast<VirtualQSGMaterialShader*>( (QSGMaterialShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__activate = slot;
	return true;
}

void QSGMaterialShader_virtualbase_activate(void* self) {

	( (VirtualQSGMaterialShader*)(self) )->QSGMaterialShader::activate();

}

bool QSGMaterialShader_override_virtual_deactivate(void* self, intptr_t slot) {
	VirtualQSGMaterialShader* self_cast = dynamic_cast<VirtualQSGMaterialShader*>( (QSGMaterialShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__deactivate = slot;
	return true;
}

void QSGMaterialShader_virtualbase_deactivate(void* self) {

	( (VirtualQSGMaterialShader*)(self) )->QSGMaterialShader::deactivate();

}

bool QSGMaterialShader_override_virtual_updateState(void* self, intptr_t slot) {
	VirtualQSGMaterialShader* self_cast = dynamic_cast<VirtualQSGMaterialShader*>( (QSGMaterialShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__updateState = slot;
	return true;
}

void QSGMaterialShader_virtualbase_updateState(void* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {

	( (VirtualQSGMaterialShader*)(self) )->QSGMaterialShader::updateState(*state, newMaterial, oldMaterial);

}

bool QSGMaterialShader_override_virtual_attributeNames(void* self, intptr_t slot) {
	VirtualQSGMaterialShader* self_cast = dynamic_cast<VirtualQSGMaterialShader*>( (QSGMaterialShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__attributeNames = slot;
	return true;
}

bool QSGMaterialShader_override_virtual_compile(void* self, intptr_t slot) {
	VirtualQSGMaterialShader* self_cast = dynamic_cast<VirtualQSGMaterialShader*>( (QSGMaterialShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__compile = slot;
	return true;
}

void QSGMaterialShader_virtualbase_compile(void* self) {

	( (VirtualQSGMaterialShader*)(self) )->QSGMaterialShader::compile();

}

bool QSGMaterialShader_override_virtual_initialize(void* self, intptr_t slot) {
	VirtualQSGMaterialShader* self_cast = dynamic_cast<VirtualQSGMaterialShader*>( (QSGMaterialShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__initialize = slot;
	return true;
}

void QSGMaterialShader_virtualbase_initialize(void* self) {

	( (VirtualQSGMaterialShader*)(self) )->QSGMaterialShader::initialize();

}

bool QSGMaterialShader_override_virtual_vertexShader(void* self, intptr_t slot) {
	VirtualQSGMaterialShader* self_cast = dynamic_cast<VirtualQSGMaterialShader*>( (QSGMaterialShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__vertexShader = slot;
	return true;
}

const char* QSGMaterialShader_virtualbase_vertexShader(const void* self) {

	return (const char*) ( (const VirtualQSGMaterialShader*)(self) )->QSGMaterialShader::vertexShader();

}

bool QSGMaterialShader_override_virtual_fragmentShader(void* self, intptr_t slot) {
	VirtualQSGMaterialShader* self_cast = dynamic_cast<VirtualQSGMaterialShader*>( (QSGMaterialShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__fragmentShader = slot;
	return true;
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

