#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGMaterialType>
#include <qsgmaterial.h>
#include "gen_qsgmaterial.h"
class VirtualQSGMaterial final : public QSGMaterial {
	const QSGMaterial_VTable* vtbl;
	void* vdata;
public:
	friend const QSGMaterial_VTable* QSGMaterial_vtbl(const VirtualQSGMaterial* self);
	friend void* QSGMaterial_vdata(const VirtualQSGMaterial* self);
	friend void QSGMaterial_setVdata(VirtualQSGMaterial* self, void* vdata);

	VirtualQSGMaterial(const QSGMaterial_VTable* vtbl, void* vdata): QSGMaterial(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSGMaterial() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QSGMaterialType* type() const override {
		if (vtbl->type == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}


		QSGMaterialType* callback_return_value = vtbl->type(this);

		return callback_return_value;
	}

	virtual QSGMaterialShader* createShader(QSGRendererInterface::RenderMode renderMode) const override {
		if (vtbl->createShader == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QSGRendererInterface::RenderMode renderMode_ret = renderMode;
		int sigval1 = static_cast<int>(renderMode_ret);

		QSGMaterialShader* callback_return_value = vtbl->createShader(this, sigval1);

		return callback_return_value;
	}

	virtual int compare(const QSGMaterial* other) const override {
		if (vtbl->compare == 0) {
			return QSGMaterial::compare(other);
		}

		QSGMaterial* sigval1 = (QSGMaterial*) other;

		int callback_return_value = vtbl->compare(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSGMaterial_virtualbase_compare(const VirtualQSGMaterial* self, QSGMaterial* other);

};

VirtualQSGMaterial* QSGMaterial_new(const QSGMaterial_VTable* vtbl, void* vdata) {
	return new VirtualQSGMaterial(vtbl, vdata);
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

int QSGMaterial_virtualbase_compare(const VirtualQSGMaterial* self, QSGMaterial* other) {

	return self->QSGMaterial::compare(other);
}

const QSGMaterial_VTable* QSGMaterial_vtbl(const VirtualQSGMaterial* self) { return self->vtbl; }
void* QSGMaterial_vdata(const VirtualQSGMaterial* self) { return self->vdata; }
void QSGMaterial_setVdata(VirtualQSGMaterial* self, void* vdata) { self->vdata = vdata; }

void QSGMaterial_delete(QSGMaterial* self) {
	delete self;
}

