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

#ifdef __cplusplus
extern "C" {
#endif

bool miqt_exec_callback_QSGMaterialRhiShader_updateUniformData(QSGMaterialRhiShader*, intptr_t, QSGMaterialRhiShader__RenderState*, QSGMaterial*, QSGMaterial*);
bool miqt_exec_callback_QSGMaterialRhiShader_updateGraphicsPipelineState(QSGMaterialRhiShader*, intptr_t, QSGMaterialRhiShader__RenderState*, QSGMaterialRhiShader__GraphicsPipelineState*, QSGMaterial*, QSGMaterial*);
const char** miqt_exec_callback_QSGMaterialRhiShader_attributeNames(const QSGMaterialRhiShader*, intptr_t);
void miqt_exec_callback_QSGMaterialRhiShader_activate(QSGMaterialRhiShader*, intptr_t);
void miqt_exec_callback_QSGMaterialRhiShader_deactivate(QSGMaterialRhiShader*, intptr_t);
void miqt_exec_callback_QSGMaterialRhiShader_updateState(QSGMaterialRhiShader*, intptr_t, QSGMaterialShader__RenderState*, QSGMaterial*, QSGMaterial*);
void miqt_exec_callback_QSGMaterialRhiShader_compile(QSGMaterialRhiShader*, intptr_t);
void miqt_exec_callback_QSGMaterialRhiShader_initialize(QSGMaterialRhiShader*, intptr_t);
const char* miqt_exec_callback_QSGMaterialRhiShader_vertexShader(const QSGMaterialRhiShader*, intptr_t);
const char* miqt_exec_callback_QSGMaterialRhiShader_fragmentShader(const QSGMaterialRhiShader*, intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGMaterialRhiShader final : public QSGMaterialRhiShader {
public:

	VirtualQSGMaterialRhiShader(): QSGMaterialRhiShader() {};

	virtual ~VirtualQSGMaterialRhiShader() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__updateUniformData = 0;

	// Subclass to allow providing a Go implementation
	virtual bool updateUniformData(QSGMaterialRhiShader::RenderState& state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) override {
		if (handle__updateUniformData == 0) {
			return QSGMaterialRhiShader::updateUniformData(state, newMaterial, oldMaterial);
		}
		
		QSGMaterialRhiShader::RenderState& state_ret = state;
		// Cast returned reference into pointer
		QSGMaterialRhiShader__RenderState* sigval1 = &state_ret;
		QSGMaterial* sigval2 = newMaterial;
		QSGMaterial* sigval3 = oldMaterial;

		bool callback_return_value = miqt_exec_callback_QSGMaterialRhiShader_updateUniformData(this, handle__updateUniformData, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QSGMaterialRhiShader_virtualbase_updateUniformData(void* self, QSGMaterialRhiShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__updateGraphicsPipelineState = 0;

	// Subclass to allow providing a Go implementation
	virtual bool updateGraphicsPipelineState(QSGMaterialRhiShader::RenderState& state, QSGMaterialRhiShader::GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) override {
		if (handle__updateGraphicsPipelineState == 0) {
			return QSGMaterialRhiShader::updateGraphicsPipelineState(state, ps, newMaterial, oldMaterial);
		}
		
		QSGMaterialRhiShader::RenderState& state_ret = state;
		// Cast returned reference into pointer
		QSGMaterialRhiShader__RenderState* sigval1 = &state_ret;
		QSGMaterialRhiShader__GraphicsPipelineState* sigval2 = ps;
		QSGMaterial* sigval3 = newMaterial;
		QSGMaterial* sigval4 = oldMaterial;

		bool callback_return_value = miqt_exec_callback_QSGMaterialRhiShader_updateGraphicsPipelineState(this, handle__updateGraphicsPipelineState, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	friend bool QSGMaterialRhiShader_virtualbase_updateGraphicsPipelineState(void* self, QSGMaterialRhiShader__RenderState* state, QSGMaterialRhiShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__attributeNames = 0;

	// Subclass to allow providing a Go implementation
	virtual const char** attributeNames() const override {
		if (handle__attributeNames == 0) {
			return QSGMaterialRhiShader::attributeNames();
		}
		

		const char** callback_return_value = miqt_exec_callback_QSGMaterialRhiShader_attributeNames(this, handle__attributeNames);

		return callback_return_value;
	}

	friend const char** QSGMaterialRhiShader_virtualbase_attributeNames(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__activate = 0;

	// Subclass to allow providing a Go implementation
	virtual void activate() override {
		if (handle__activate == 0) {
			QSGMaterialRhiShader::activate();
			return;
		}
		

		miqt_exec_callback_QSGMaterialRhiShader_activate(this, handle__activate);

		
	}

	friend void QSGMaterialRhiShader_virtualbase_activate(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__deactivate = 0;

	// Subclass to allow providing a Go implementation
	virtual void deactivate() override {
		if (handle__deactivate == 0) {
			QSGMaterialRhiShader::deactivate();
			return;
		}
		

		miqt_exec_callback_QSGMaterialRhiShader_deactivate(this, handle__deactivate);

		
	}

	friend void QSGMaterialRhiShader_virtualbase_deactivate(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__updateState = 0;

	// Subclass to allow providing a Go implementation
	virtual void updateState(const QSGMaterialShader::RenderState& state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) override {
		if (handle__updateState == 0) {
			QSGMaterialRhiShader::updateState(state, newMaterial, oldMaterial);
			return;
		}
		
		const QSGMaterialShader::RenderState& state_ret = state;
		// Cast returned reference into pointer
		QSGMaterialShader__RenderState* sigval1 = const_cast<QSGMaterialShader::RenderState*>(&state_ret);
		QSGMaterial* sigval2 = newMaterial;
		QSGMaterial* sigval3 = oldMaterial;

		miqt_exec_callback_QSGMaterialRhiShader_updateState(this, handle__updateState, sigval1, sigval2, sigval3);

		
	}

	friend void QSGMaterialRhiShader_virtualbase_updateState(void* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__compile = 0;

	// Subclass to allow providing a Go implementation
	virtual void compile() override {
		if (handle__compile == 0) {
			QSGMaterialRhiShader::compile();
			return;
		}
		

		miqt_exec_callback_QSGMaterialRhiShader_compile(this, handle__compile);

		
	}

	friend void QSGMaterialRhiShader_virtualbase_compile(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__initialize = 0;

	// Subclass to allow providing a Go implementation
	virtual void initialize() override {
		if (handle__initialize == 0) {
			QSGMaterialRhiShader::initialize();
			return;
		}
		

		miqt_exec_callback_QSGMaterialRhiShader_initialize(this, handle__initialize);

		
	}

	friend void QSGMaterialRhiShader_virtualbase_initialize(void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__vertexShader = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* vertexShader() const override {
		if (handle__vertexShader == 0) {
			return QSGMaterialRhiShader::vertexShader();
		}
		

		const char* callback_return_value = miqt_exec_callback_QSGMaterialRhiShader_vertexShader(this, handle__vertexShader);

		return callback_return_value;
	}

	friend const char* QSGMaterialRhiShader_virtualbase_vertexShader(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__fragmentShader = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* fragmentShader() const override {
		if (handle__fragmentShader == 0) {
			return QSGMaterialRhiShader::fragmentShader();
		}
		

		const char* callback_return_value = miqt_exec_callback_QSGMaterialRhiShader_fragmentShader(this, handle__fragmentShader);

		return callback_return_value;
	}

	friend const char* QSGMaterialRhiShader_virtualbase_fragmentShader(const void* self);

	// Wrappers to allow calling protected methods:
	friend void QSGMaterialRhiShader_protectedbase_setShaderFileName(bool* _dynamic_cast_ok, void* self, int stage, struct miqt_string filename);
	friend void QSGMaterialRhiShader_protectedbase_setShader(bool* _dynamic_cast_ok, void* self, int stage, const QShader* shader);
	friend void QSGMaterialRhiShader_protectedbase_setShaderSourceFile(bool* _dynamic_cast_ok, void* self, QOpenGLShader::ShaderType type, struct miqt_string sourceFile);
	friend void QSGMaterialRhiShader_protectedbase_setShaderSourceFiles(bool* _dynamic_cast_ok, void* self, QOpenGLShader::ShaderType type, struct miqt_array /* of struct miqt_string */  sourceFiles);
};

QSGMaterialRhiShader* QSGMaterialRhiShader_new() {
	return new VirtualQSGMaterialRhiShader();
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

bool QSGMaterialRhiShader_override_virtual_updateUniformData(void* self, intptr_t slot) {
	VirtualQSGMaterialRhiShader* self_cast = dynamic_cast<VirtualQSGMaterialRhiShader*>( (QSGMaterialRhiShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__updateUniformData = slot;
	return true;
}

bool QSGMaterialRhiShader_virtualbase_updateUniformData(void* self, QSGMaterialRhiShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {

	return ( (VirtualQSGMaterialRhiShader*)(self) )->QSGMaterialRhiShader::updateUniformData(*state, newMaterial, oldMaterial);

}

bool QSGMaterialRhiShader_override_virtual_updateGraphicsPipelineState(void* self, intptr_t slot) {
	VirtualQSGMaterialRhiShader* self_cast = dynamic_cast<VirtualQSGMaterialRhiShader*>( (QSGMaterialRhiShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__updateGraphicsPipelineState = slot;
	return true;
}

bool QSGMaterialRhiShader_virtualbase_updateGraphicsPipelineState(void* self, QSGMaterialRhiShader__RenderState* state, QSGMaterialRhiShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {

	return ( (VirtualQSGMaterialRhiShader*)(self) )->QSGMaterialRhiShader::updateGraphicsPipelineState(*state, ps, newMaterial, oldMaterial);

}

bool QSGMaterialRhiShader_override_virtual_attributeNames(void* self, intptr_t slot) {
	VirtualQSGMaterialRhiShader* self_cast = dynamic_cast<VirtualQSGMaterialRhiShader*>( (QSGMaterialRhiShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__attributeNames = slot;
	return true;
}

const char** QSGMaterialRhiShader_virtualbase_attributeNames(const void* self) {

	return (const char**) ( (const VirtualQSGMaterialRhiShader*)(self) )->QSGMaterialRhiShader::attributeNames();

}

bool QSGMaterialRhiShader_override_virtual_activate(void* self, intptr_t slot) {
	VirtualQSGMaterialRhiShader* self_cast = dynamic_cast<VirtualQSGMaterialRhiShader*>( (QSGMaterialRhiShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__activate = slot;
	return true;
}

void QSGMaterialRhiShader_virtualbase_activate(void* self) {

	( (VirtualQSGMaterialRhiShader*)(self) )->QSGMaterialRhiShader::activate();

}

bool QSGMaterialRhiShader_override_virtual_deactivate(void* self, intptr_t slot) {
	VirtualQSGMaterialRhiShader* self_cast = dynamic_cast<VirtualQSGMaterialRhiShader*>( (QSGMaterialRhiShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__deactivate = slot;
	return true;
}

void QSGMaterialRhiShader_virtualbase_deactivate(void* self) {

	( (VirtualQSGMaterialRhiShader*)(self) )->QSGMaterialRhiShader::deactivate();

}

bool QSGMaterialRhiShader_override_virtual_updateState(void* self, intptr_t slot) {
	VirtualQSGMaterialRhiShader* self_cast = dynamic_cast<VirtualQSGMaterialRhiShader*>( (QSGMaterialRhiShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__updateState = slot;
	return true;
}

void QSGMaterialRhiShader_virtualbase_updateState(void* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {

	( (VirtualQSGMaterialRhiShader*)(self) )->QSGMaterialRhiShader::updateState(*state, newMaterial, oldMaterial);

}

bool QSGMaterialRhiShader_override_virtual_compile(void* self, intptr_t slot) {
	VirtualQSGMaterialRhiShader* self_cast = dynamic_cast<VirtualQSGMaterialRhiShader*>( (QSGMaterialRhiShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__compile = slot;
	return true;
}

void QSGMaterialRhiShader_virtualbase_compile(void* self) {

	( (VirtualQSGMaterialRhiShader*)(self) )->QSGMaterialRhiShader::compile();

}

bool QSGMaterialRhiShader_override_virtual_initialize(void* self, intptr_t slot) {
	VirtualQSGMaterialRhiShader* self_cast = dynamic_cast<VirtualQSGMaterialRhiShader*>( (QSGMaterialRhiShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__initialize = slot;
	return true;
}

void QSGMaterialRhiShader_virtualbase_initialize(void* self) {

	( (VirtualQSGMaterialRhiShader*)(self) )->QSGMaterialRhiShader::initialize();

}

bool QSGMaterialRhiShader_override_virtual_vertexShader(void* self, intptr_t slot) {
	VirtualQSGMaterialRhiShader* self_cast = dynamic_cast<VirtualQSGMaterialRhiShader*>( (QSGMaterialRhiShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__vertexShader = slot;
	return true;
}

const char* QSGMaterialRhiShader_virtualbase_vertexShader(const void* self) {

	return (const char*) ( (const VirtualQSGMaterialRhiShader*)(self) )->QSGMaterialRhiShader::vertexShader();

}

bool QSGMaterialRhiShader_override_virtual_fragmentShader(void* self, intptr_t slot) {
	VirtualQSGMaterialRhiShader* self_cast = dynamic_cast<VirtualQSGMaterialRhiShader*>( (QSGMaterialRhiShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__fragmentShader = slot;
	return true;
}

const char* QSGMaterialRhiShader_virtualbase_fragmentShader(const void* self) {

	return (const char*) ( (const VirtualQSGMaterialRhiShader*)(self) )->QSGMaterialRhiShader::fragmentShader();

}

void QSGMaterialRhiShader_protectedbase_setShaderFileName(bool* _dynamic_cast_ok, void* self, int stage, struct miqt_string filename) {
	VirtualQSGMaterialRhiShader* self_cast = dynamic_cast<VirtualQSGMaterialRhiShader*>( (QSGMaterialRhiShader*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
			QString filename_QString = QString::fromUtf8(filename.data, filename.len);

	self_cast->setShaderFileName(static_cast<VirtualQSGMaterialRhiShader::Stage>(stage), filename_QString);

}

void QSGMaterialRhiShader_protectedbase_setShader(bool* _dynamic_cast_ok, void* self, int stage, const QShader* shader) {
	VirtualQSGMaterialRhiShader* self_cast = dynamic_cast<VirtualQSGMaterialRhiShader*>( (QSGMaterialRhiShader*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setShader(static_cast<VirtualQSGMaterialRhiShader::Stage>(stage), *shader);

}

void QSGMaterialRhiShader_protectedbase_setShaderSourceFile(bool* _dynamic_cast_ok, void* self, QOpenGLShader::ShaderType type, struct miqt_string sourceFile) {
	VirtualQSGMaterialRhiShader* self_cast = dynamic_cast<VirtualQSGMaterialRhiShader*>( (QSGMaterialRhiShader*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
			QString sourceFile_QString = QString::fromUtf8(sourceFile.data, sourceFile.len);

	self_cast->setShaderSourceFile(type, sourceFile_QString);

}

void QSGMaterialRhiShader_protectedbase_setShaderSourceFiles(bool* _dynamic_cast_ok, void* self, QOpenGLShader::ShaderType type, struct miqt_array /* of struct miqt_string */  sourceFiles) {
	VirtualQSGMaterialRhiShader* self_cast = dynamic_cast<VirtualQSGMaterialRhiShader*>( (QSGMaterialRhiShader*)(self) );
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
	return new QSGMaterialRhiShader::GraphicsPipelineState(*param1);
}

void QSGMaterialRhiShader__GraphicsPipelineState_operatorAssign(QSGMaterialRhiShader__GraphicsPipelineState* self, QSGMaterialRhiShader__GraphicsPipelineState* param1) {
	self->operator=(*param1);
}

void QSGMaterialRhiShader__GraphicsPipelineState_delete(QSGMaterialRhiShader__GraphicsPipelineState* self) {
	delete self;
}

