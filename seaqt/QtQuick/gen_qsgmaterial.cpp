#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGMaterialType>
#include <qsgmaterial.h>
#include "gen_qsgmaterial.h"

#ifdef __cplusplus
extern "C" {
#endif

QSGMaterialType* miqt_exec_callback_QSGMaterial_type(const QSGMaterial*, intptr_t);
QSGMaterialShader* miqt_exec_callback_QSGMaterial_createShader(const QSGMaterial*, intptr_t, int);
int miqt_exec_callback_QSGMaterial_compare(const QSGMaterial*, intptr_t, QSGMaterial*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGMaterial final : public QSGMaterial {
public:

	VirtualQSGMaterial(): QSGMaterial() {};

	virtual ~VirtualQSGMaterial() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__type = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialType* type() const override {
		if (handle__type == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}
		

		QSGMaterialType* callback_return_value = miqt_exec_callback_QSGMaterial_type(this, handle__type);

		return callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__createShader = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialShader* createShader(QSGRendererInterface::RenderMode renderMode) const override {
		if (handle__createShader == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}
		
		QSGRendererInterface::RenderMode renderMode_ret = renderMode;
		int sigval1 = static_cast<int>(renderMode_ret);

		QSGMaterialShader* callback_return_value = miqt_exec_callback_QSGMaterial_createShader(this, handle__createShader, sigval1);

		return callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__compare = 0;

	// Subclass to allow providing a Go implementation
	virtual int compare(const QSGMaterial* other) const override {
		if (handle__compare == 0) {
			return QSGMaterial::compare(other);
		}
		
		QSGMaterial* sigval1 = (QSGMaterial*) other;

		int callback_return_value = miqt_exec_callback_QSGMaterial_compare(this, handle__compare, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSGMaterial_virtualbase_compare(const void* self, QSGMaterial* other);

};

QSGMaterial* QSGMaterial_new() {
	return new VirtualQSGMaterial();
}

QSGMaterialType* QSGMaterial_type(const QSGMaterial* self) {
	return self->type();
}

QSGMaterialShader* QSGMaterial_createShader(const QSGMaterial* self, int renderMode) {
	return self->createShader(static_cast<QSGRendererInterface::RenderMode>(renderMode));
}

int QSGMaterial_compare(const QSGMaterial* self, QSGMaterial* other) {
	return self->compare(other);
}

int QSGMaterial_flags(const QSGMaterial* self) {
	QSGMaterial::Flags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QSGMaterial_setFlag(QSGMaterial* self, int flags) {
	self->setFlag(static_cast<QSGMaterial::Flags>(flags));
}

void QSGMaterial_setFlag2(QSGMaterial* self, int flags, bool on) {
	self->setFlag(static_cast<QSGMaterial::Flags>(flags), on);
}

bool QSGMaterial_override_virtual_type(void* self, intptr_t slot) {
	VirtualQSGMaterial* self_cast = dynamic_cast<VirtualQSGMaterial*>( (QSGMaterial*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__type = slot;
	return true;
}

bool QSGMaterial_override_virtual_createShader(void* self, intptr_t slot) {
	VirtualQSGMaterial* self_cast = dynamic_cast<VirtualQSGMaterial*>( (QSGMaterial*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__createShader = slot;
	return true;
}

bool QSGMaterial_override_virtual_compare(void* self, intptr_t slot) {
	VirtualQSGMaterial* self_cast = dynamic_cast<VirtualQSGMaterial*>( (QSGMaterial*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__compare = slot;
	return true;
}

int QSGMaterial_virtualbase_compare(const void* self, QSGMaterial* other) {

	return ( (const VirtualQSGMaterial*)(self) )->QSGMaterial::compare(other);

}

void QSGMaterial_delete(QSGMaterial* self) {
	delete self;
}

