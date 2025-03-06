#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGMaterialType>
#include <QSGVertexColorMaterial>
#include <qsgvertexcolormaterial.h>
#include "gen_qsgvertexcolormaterial.h"

#ifdef __cplusplus
extern "C" {
#endif

int miqt_exec_callback_QSGVertexColorMaterial_compare(const QSGVertexColorMaterial*, intptr_t, QSGMaterial*);
QSGMaterialType* miqt_exec_callback_QSGVertexColorMaterial_type(const QSGVertexColorMaterial*, intptr_t);
QSGMaterialShader* miqt_exec_callback_QSGVertexColorMaterial_createShader(const QSGVertexColorMaterial*, intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGVertexColorMaterial final : public QSGVertexColorMaterial {
public:

	VirtualQSGVertexColorMaterial(): QSGVertexColorMaterial() {};

	virtual ~VirtualQSGVertexColorMaterial() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__compare = 0;

	// Subclass to allow providing a Go implementation
	virtual int compare(const QSGMaterial* other) const override {
		if (handle__compare == 0) {
			return QSGVertexColorMaterial::compare(other);
		}
		
		QSGMaterial* sigval1 = (QSGMaterial*) other;

		int callback_return_value = miqt_exec_callback_QSGVertexColorMaterial_compare(this, handle__compare, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSGVertexColorMaterial_virtualbase_compare(const void* self, QSGMaterial* other);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__type = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialType* type() const override {
		if (handle__type == 0) {
			return QSGVertexColorMaterial::type();
		}
		

		QSGMaterialType* callback_return_value = miqt_exec_callback_QSGVertexColorMaterial_type(this, handle__type);

		return callback_return_value;
	}

	friend QSGMaterialType* QSGVertexColorMaterial_virtualbase_type(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__createShader = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialShader* createShader() const override {
		if (handle__createShader == 0) {
			return QSGVertexColorMaterial::createShader();
		}
		

		QSGMaterialShader* callback_return_value = miqt_exec_callback_QSGVertexColorMaterial_createShader(this, handle__createShader);

		return callback_return_value;
	}

	friend QSGMaterialShader* QSGVertexColorMaterial_virtualbase_createShader(const void* self);

};

QSGVertexColorMaterial* QSGVertexColorMaterial_new() {
	return new VirtualQSGVertexColorMaterial();
}

void QSGVertexColorMaterial_virtbase(QSGVertexColorMaterial* src, QSGMaterial** outptr_QSGMaterial) {
	*outptr_QSGMaterial = static_cast<QSGMaterial*>(src);
}

int QSGVertexColorMaterial_compare(const QSGVertexColorMaterial* self, QSGMaterial* other) {
	return self->compare(other);
}

bool QSGVertexColorMaterial_override_virtual_compare(void* self, intptr_t slot) {
	VirtualQSGVertexColorMaterial* self_cast = dynamic_cast<VirtualQSGVertexColorMaterial*>( (QSGVertexColorMaterial*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__compare = slot;
	return true;
}

int QSGVertexColorMaterial_virtualbase_compare(const void* self, QSGMaterial* other) {

	return ( (const VirtualQSGVertexColorMaterial*)(self) )->QSGVertexColorMaterial::compare(other);

}

bool QSGVertexColorMaterial_override_virtual_type(void* self, intptr_t slot) {
	VirtualQSGVertexColorMaterial* self_cast = dynamic_cast<VirtualQSGVertexColorMaterial*>( (QSGVertexColorMaterial*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__type = slot;
	return true;
}

QSGMaterialType* QSGVertexColorMaterial_virtualbase_type(const void* self) {

	return ( (const VirtualQSGVertexColorMaterial*)(self) )->QSGVertexColorMaterial::type();

}

bool QSGVertexColorMaterial_override_virtual_createShader(void* self, intptr_t slot) {
	VirtualQSGVertexColorMaterial* self_cast = dynamic_cast<VirtualQSGVertexColorMaterial*>( (QSGVertexColorMaterial*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__createShader = slot;
	return true;
}

QSGMaterialShader* QSGVertexColorMaterial_virtualbase_createShader(const void* self) {

	return ( (const VirtualQSGVertexColorMaterial*)(self) )->QSGVertexColorMaterial::createShader();

}

void QSGVertexColorMaterial_delete(QSGVertexColorMaterial* self) {
	delete self;
}

