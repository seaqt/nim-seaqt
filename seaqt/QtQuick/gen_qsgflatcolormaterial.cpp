#include <QColor>
#include <QSGFlatColorMaterial>
#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGMaterialType>
#include <qsgflatcolormaterial.h>
#include "gen_qsgflatcolormaterial.h"

#ifdef __cplusplus
extern "C" {
#endif

QSGMaterialType* miqt_exec_callback_QSGFlatColorMaterial_type(const QSGFlatColorMaterial*, intptr_t);
QSGMaterialShader* miqt_exec_callback_QSGFlatColorMaterial_createShader(const QSGFlatColorMaterial*, intptr_t, int);
int miqt_exec_callback_QSGFlatColorMaterial_compare(const QSGFlatColorMaterial*, intptr_t, QSGMaterial*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGFlatColorMaterial final : public QSGFlatColorMaterial {
public:

	VirtualQSGFlatColorMaterial(): QSGFlatColorMaterial() {};

	virtual ~VirtualQSGFlatColorMaterial() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__type = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialType* type() const override {
		if (handle__type == 0) {
			return QSGFlatColorMaterial::type();
		}
		

		QSGMaterialType* callback_return_value = miqt_exec_callback_QSGFlatColorMaterial_type(this, handle__type);

		return callback_return_value;
	}

	friend QSGMaterialType* QSGFlatColorMaterial_virtualbase_type(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__createShader = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialShader* createShader(QSGRendererInterface::RenderMode renderMode) const override {
		if (handle__createShader == 0) {
			return QSGFlatColorMaterial::createShader(renderMode);
		}
		
		QSGRendererInterface::RenderMode renderMode_ret = renderMode;
		int sigval1 = static_cast<int>(renderMode_ret);

		QSGMaterialShader* callback_return_value = miqt_exec_callback_QSGFlatColorMaterial_createShader(this, handle__createShader, sigval1);

		return callback_return_value;
	}

	friend QSGMaterialShader* QSGFlatColorMaterial_virtualbase_createShader(const void* self, int renderMode);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__compare = 0;

	// Subclass to allow providing a Go implementation
	virtual int compare(const QSGMaterial* other) const override {
		if (handle__compare == 0) {
			return QSGFlatColorMaterial::compare(other);
		}
		
		QSGMaterial* sigval1 = (QSGMaterial*) other;

		int callback_return_value = miqt_exec_callback_QSGFlatColorMaterial_compare(this, handle__compare, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSGFlatColorMaterial_virtualbase_compare(const void* self, QSGMaterial* other);

};

QSGFlatColorMaterial* QSGFlatColorMaterial_new() {
	return new VirtualQSGFlatColorMaterial();
}

void QSGFlatColorMaterial_virtbase(QSGFlatColorMaterial* src, QSGMaterial** outptr_QSGMaterial) {
	*outptr_QSGMaterial = static_cast<QSGMaterial*>(src);
}

QSGMaterialType* QSGFlatColorMaterial_type(const QSGFlatColorMaterial* self) {
	return self->type();
}

QSGMaterialShader* QSGFlatColorMaterial_createShader(const QSGFlatColorMaterial* self, int renderMode) {
	return self->createShader(static_cast<QSGRendererInterface::RenderMode>(renderMode));
}

void QSGFlatColorMaterial_setColor(QSGFlatColorMaterial* self, QColor* color) {
	self->setColor(*color);
}

QColor* QSGFlatColorMaterial_color(const QSGFlatColorMaterial* self) {
	const QColor& _ret = self->color();
	// Cast returned reference into pointer
	return const_cast<QColor*>(&_ret);
}

int QSGFlatColorMaterial_compare(const QSGFlatColorMaterial* self, QSGMaterial* other) {
	return self->compare(other);
}

bool QSGFlatColorMaterial_override_virtual_type(void* self, intptr_t slot) {
	VirtualQSGFlatColorMaterial* self_cast = dynamic_cast<VirtualQSGFlatColorMaterial*>( (QSGFlatColorMaterial*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__type = slot;
	return true;
}

QSGMaterialType* QSGFlatColorMaterial_virtualbase_type(const void* self) {

	return ( (const VirtualQSGFlatColorMaterial*)(self) )->QSGFlatColorMaterial::type();

}

bool QSGFlatColorMaterial_override_virtual_createShader(void* self, intptr_t slot) {
	VirtualQSGFlatColorMaterial* self_cast = dynamic_cast<VirtualQSGFlatColorMaterial*>( (QSGFlatColorMaterial*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__createShader = slot;
	return true;
}

QSGMaterialShader* QSGFlatColorMaterial_virtualbase_createShader(const void* self, int renderMode) {

	return ( (const VirtualQSGFlatColorMaterial*)(self) )->QSGFlatColorMaterial::createShader(static_cast<QSGRendererInterface::RenderMode>(renderMode));

}

bool QSGFlatColorMaterial_override_virtual_compare(void* self, intptr_t slot) {
	VirtualQSGFlatColorMaterial* self_cast = dynamic_cast<VirtualQSGFlatColorMaterial*>( (QSGFlatColorMaterial*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__compare = slot;
	return true;
}

int QSGFlatColorMaterial_virtualbase_compare(const void* self, QSGMaterial* other) {

	return ( (const VirtualQSGFlatColorMaterial*)(self) )->QSGFlatColorMaterial::compare(other);

}

void QSGFlatColorMaterial_delete(QSGFlatColorMaterial* self) {
	delete self;
}

