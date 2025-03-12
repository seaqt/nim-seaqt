#include <QColor>
#include <QSGFlatColorMaterial>
#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGMaterialType>
#include <qsgflatcolormaterial.h>
#include "gen_qsgflatcolormaterial.h"
class VirtualQSGFlatColorMaterial final : public QSGFlatColorMaterial {
	const QSGFlatColorMaterial_VTable* vtbl;
	void* vdata;
public:
	friend const QSGFlatColorMaterial_VTable* QSGFlatColorMaterial_vtbl(const VirtualQSGFlatColorMaterial* self);
	friend void* QSGFlatColorMaterial_vdata(const VirtualQSGFlatColorMaterial* self);
	friend void QSGFlatColorMaterial_setVdata(VirtualQSGFlatColorMaterial* self, void* vdata);

	VirtualQSGFlatColorMaterial(const QSGFlatColorMaterial_VTable* vtbl, void* vdata): QSGFlatColorMaterial(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSGFlatColorMaterial() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QSGMaterialType* type() const override {
		if (vtbl->type == 0) {
			return QSGFlatColorMaterial::type();
		}


		QSGMaterialType* callback_return_value = vtbl->type(this);

		return callback_return_value;
	}

	friend QSGMaterialType* QSGFlatColorMaterial_virtualbase_type(const VirtualQSGFlatColorMaterial* self);

	virtual QSGMaterialShader* createShader() const override {
		if (vtbl->createShader == 0) {
			return QSGFlatColorMaterial::createShader();
		}


		QSGMaterialShader* callback_return_value = vtbl->createShader(this);

		return callback_return_value;
	}

	friend QSGMaterialShader* QSGFlatColorMaterial_virtualbase_createShader(const VirtualQSGFlatColorMaterial* self);

	virtual int compare(const QSGMaterial* other) const override {
		if (vtbl->compare == 0) {
			return QSGFlatColorMaterial::compare(other);
		}

		QSGMaterial* sigval1 = (QSGMaterial*) other;

		int callback_return_value = vtbl->compare(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSGFlatColorMaterial_virtualbase_compare(const VirtualQSGFlatColorMaterial* self, QSGMaterial* other);

};

VirtualQSGFlatColorMaterial* QSGFlatColorMaterial_new(const QSGFlatColorMaterial_VTable* vtbl, void* vdata) {
	return new VirtualQSGFlatColorMaterial(vtbl, vdata);
}

void QSGFlatColorMaterial_virtbase(QSGFlatColorMaterial* src, QSGMaterial** outptr_QSGMaterial) {
	*outptr_QSGMaterial = static_cast<QSGMaterial*>(src);
}

QSGMaterialType* QSGFlatColorMaterial_type(const QSGFlatColorMaterial* self) {
	return self->type();
}

QSGMaterialShader* QSGFlatColorMaterial_createShader(const QSGFlatColorMaterial* self) {
	return self->createShader();
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

QSGMaterialType* QSGFlatColorMaterial_virtualbase_type(const VirtualQSGFlatColorMaterial* self) {

	return self->QSGFlatColorMaterial::type();
}

QSGMaterialShader* QSGFlatColorMaterial_virtualbase_createShader(const VirtualQSGFlatColorMaterial* self) {

	return self->QSGFlatColorMaterial::createShader();
}

int QSGFlatColorMaterial_virtualbase_compare(const VirtualQSGFlatColorMaterial* self, QSGMaterial* other) {

	return self->QSGFlatColorMaterial::compare(other);
}

const QSGFlatColorMaterial_VTable* QSGFlatColorMaterial_vtbl(const VirtualQSGFlatColorMaterial* self) { return self->vtbl; }
void* QSGFlatColorMaterial_vdata(const VirtualQSGFlatColorMaterial* self) { return self->vdata; }
void QSGFlatColorMaterial_setVdata(VirtualQSGFlatColorMaterial* self, void* vdata) { self->vdata = vdata; }

void QSGFlatColorMaterial_delete(QSGFlatColorMaterial* self) {
	delete self;
}

