#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGMaterialType>
#include <QSGOpaqueTextureMaterial>
#include <QSGTexture>
#include <QSGTextureMaterial>
#include <qsgtexturematerial.h>
#include "gen_qsgtexturematerial.h"

#ifdef __cplusplus
extern "C" {
#endif

QSGMaterialType* miqt_exec_callback_QSGOpaqueTextureMaterial_type(const QSGOpaqueTextureMaterial*, intptr_t);
QSGMaterialShader* miqt_exec_callback_QSGOpaqueTextureMaterial_createShader(const QSGOpaqueTextureMaterial*, intptr_t);
int miqt_exec_callback_QSGOpaqueTextureMaterial_compare(const QSGOpaqueTextureMaterial*, intptr_t, QSGMaterial*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGOpaqueTextureMaterial final : public QSGOpaqueTextureMaterial {
public:

	VirtualQSGOpaqueTextureMaterial(): QSGOpaqueTextureMaterial() {};

	virtual ~VirtualQSGOpaqueTextureMaterial() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__type = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialType* type() const override {
		if (handle__type == 0) {
			return QSGOpaqueTextureMaterial::type();
		}
		

		QSGMaterialType* callback_return_value = miqt_exec_callback_QSGOpaqueTextureMaterial_type(this, handle__type);

		return callback_return_value;
	}

	friend QSGMaterialType* QSGOpaqueTextureMaterial_virtualbase_type(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__createShader = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialShader* createShader() const override {
		if (handle__createShader == 0) {
			return QSGOpaqueTextureMaterial::createShader();
		}
		

		QSGMaterialShader* callback_return_value = miqt_exec_callback_QSGOpaqueTextureMaterial_createShader(this, handle__createShader);

		return callback_return_value;
	}

	friend QSGMaterialShader* QSGOpaqueTextureMaterial_virtualbase_createShader(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__compare = 0;

	// Subclass to allow providing a Go implementation
	virtual int compare(const QSGMaterial* other) const override {
		if (handle__compare == 0) {
			return QSGOpaqueTextureMaterial::compare(other);
		}
		
		QSGMaterial* sigval1 = (QSGMaterial*) other;

		int callback_return_value = miqt_exec_callback_QSGOpaqueTextureMaterial_compare(this, handle__compare, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSGOpaqueTextureMaterial_virtualbase_compare(const void* self, QSGMaterial* other);

};

QSGOpaqueTextureMaterial* QSGOpaqueTextureMaterial_new() {
	return new VirtualQSGOpaqueTextureMaterial();
}

void QSGOpaqueTextureMaterial_virtbase(QSGOpaqueTextureMaterial* src, QSGMaterial** outptr_QSGMaterial) {
	*outptr_QSGMaterial = static_cast<QSGMaterial*>(src);
}

QSGMaterialType* QSGOpaqueTextureMaterial_type(const QSGOpaqueTextureMaterial* self) {
	return self->type();
}

QSGMaterialShader* QSGOpaqueTextureMaterial_createShader(const QSGOpaqueTextureMaterial* self) {
	return self->createShader();
}

int QSGOpaqueTextureMaterial_compare(const QSGOpaqueTextureMaterial* self, QSGMaterial* other) {
	return self->compare(other);
}

void QSGOpaqueTextureMaterial_setTexture(QSGOpaqueTextureMaterial* self, QSGTexture* texture) {
	self->setTexture(texture);
}

QSGTexture* QSGOpaqueTextureMaterial_texture(const QSGOpaqueTextureMaterial* self) {
	return self->texture();
}

void QSGOpaqueTextureMaterial_setMipmapFiltering(QSGOpaqueTextureMaterial* self, int filteringType) {
	self->setMipmapFiltering(static_cast<QSGTexture::Filtering>(filteringType));
}

int QSGOpaqueTextureMaterial_mipmapFiltering(const QSGOpaqueTextureMaterial* self) {
	QSGTexture::Filtering _ret = self->mipmapFiltering();
	return static_cast<int>(_ret);
}

void QSGOpaqueTextureMaterial_setFiltering(QSGOpaqueTextureMaterial* self, int filteringType) {
	self->setFiltering(static_cast<QSGTexture::Filtering>(filteringType));
}

int QSGOpaqueTextureMaterial_filtering(const QSGOpaqueTextureMaterial* self) {
	QSGTexture::Filtering _ret = self->filtering();
	return static_cast<int>(_ret);
}

void QSGOpaqueTextureMaterial_setHorizontalWrapMode(QSGOpaqueTextureMaterial* self, int mode) {
	self->setHorizontalWrapMode(static_cast<QSGTexture::WrapMode>(mode));
}

int QSGOpaqueTextureMaterial_horizontalWrapMode(const QSGOpaqueTextureMaterial* self) {
	QSGTexture::WrapMode _ret = self->horizontalWrapMode();
	return static_cast<int>(_ret);
}

void QSGOpaqueTextureMaterial_setVerticalWrapMode(QSGOpaqueTextureMaterial* self, int mode) {
	self->setVerticalWrapMode(static_cast<QSGTexture::WrapMode>(mode));
}

int QSGOpaqueTextureMaterial_verticalWrapMode(const QSGOpaqueTextureMaterial* self) {
	QSGTexture::WrapMode _ret = self->verticalWrapMode();
	return static_cast<int>(_ret);
}

void QSGOpaqueTextureMaterial_setAnisotropyLevel(QSGOpaqueTextureMaterial* self, int level) {
	self->setAnisotropyLevel(static_cast<QSGTexture::AnisotropyLevel>(level));
}

int QSGOpaqueTextureMaterial_anisotropyLevel(const QSGOpaqueTextureMaterial* self) {
	QSGTexture::AnisotropyLevel _ret = self->anisotropyLevel();
	return static_cast<int>(_ret);
}

bool QSGOpaqueTextureMaterial_override_virtual_type(void* self, intptr_t slot) {
	VirtualQSGOpaqueTextureMaterial* self_cast = dynamic_cast<VirtualQSGOpaqueTextureMaterial*>( (QSGOpaqueTextureMaterial*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__type = slot;
	return true;
}

QSGMaterialType* QSGOpaqueTextureMaterial_virtualbase_type(const void* self) {

	return ( (const VirtualQSGOpaqueTextureMaterial*)(self) )->QSGOpaqueTextureMaterial::type();

}

bool QSGOpaqueTextureMaterial_override_virtual_createShader(void* self, intptr_t slot) {
	VirtualQSGOpaqueTextureMaterial* self_cast = dynamic_cast<VirtualQSGOpaqueTextureMaterial*>( (QSGOpaqueTextureMaterial*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__createShader = slot;
	return true;
}

QSGMaterialShader* QSGOpaqueTextureMaterial_virtualbase_createShader(const void* self) {

	return ( (const VirtualQSGOpaqueTextureMaterial*)(self) )->QSGOpaqueTextureMaterial::createShader();

}

bool QSGOpaqueTextureMaterial_override_virtual_compare(void* self, intptr_t slot) {
	VirtualQSGOpaqueTextureMaterial* self_cast = dynamic_cast<VirtualQSGOpaqueTextureMaterial*>( (QSGOpaqueTextureMaterial*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__compare = slot;
	return true;
}

int QSGOpaqueTextureMaterial_virtualbase_compare(const void* self, QSGMaterial* other) {

	return ( (const VirtualQSGOpaqueTextureMaterial*)(self) )->QSGOpaqueTextureMaterial::compare(other);

}

void QSGOpaqueTextureMaterial_delete(QSGOpaqueTextureMaterial* self) {
	delete self;
}

void QSGTextureMaterial_virtbase(QSGTextureMaterial* src, QSGOpaqueTextureMaterial** outptr_QSGOpaqueTextureMaterial) {
	*outptr_QSGOpaqueTextureMaterial = static_cast<QSGOpaqueTextureMaterial*>(src);
}

QSGMaterialType* QSGTextureMaterial_type(const QSGTextureMaterial* self) {
	return self->type();
}

QSGMaterialShader* QSGTextureMaterial_createShader(const QSGTextureMaterial* self) {
	return self->createShader();
}

void QSGTextureMaterial_delete(QSGTextureMaterial* self) {
	delete self;
}

