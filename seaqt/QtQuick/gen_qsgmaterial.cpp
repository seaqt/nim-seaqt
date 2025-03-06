#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGMaterialType>
#include <qsgmaterial.h>
#include "gen_qsgmaterial.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGMaterial final : public QSGMaterial {
	struct QSGMaterial_VTable* vtbl;
public:

	VirtualQSGMaterial(struct QSGMaterial_VTable* vtbl): QSGMaterial(), vtbl(vtbl) {};

	virtual ~VirtualQSGMaterial() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialType* type() const override {
		if (vtbl->type == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}


		QSGMaterialType* callback_return_value = vtbl->type(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialShader* createShader() const override {
		if (vtbl->createShader == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}


		QSGMaterialShader* callback_return_value = vtbl->createShader(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual int compare(const QSGMaterial* other) const override {
		if (vtbl->compare == 0) {
			return QSGMaterial::compare(other);
		}

		QSGMaterial* sigval1 = (QSGMaterial*) other;

		int callback_return_value = vtbl->compare(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSGMaterial_virtualbase_compare(const void* self, QSGMaterial* other);

};

QSGMaterial* QSGMaterial_new(struct QSGMaterial_VTable* vtbl) {
	return new VirtualQSGMaterial(vtbl);
}

QSGMaterialType* QSGMaterial_type(const QSGMaterial* self) {
	return self->type();
}

QSGMaterialShader* QSGMaterial_createShader(const QSGMaterial* self) {
	return self->createShader();
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

int QSGMaterial_virtualbase_compare(const void* self, QSGMaterial* other) {

	return ( (const VirtualQSGMaterial*)(self) )->QSGMaterial::compare(other);

}

void QSGMaterial_delete(QSGMaterial* self) {
	delete self;
}

