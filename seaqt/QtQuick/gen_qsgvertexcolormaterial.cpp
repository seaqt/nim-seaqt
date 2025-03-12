#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGMaterialType>
#include <QSGVertexColorMaterial>
#include <qsgvertexcolormaterial.h>
#include "gen_qsgvertexcolormaterial.h"
class VirtualQSGVertexColorMaterial final : public QSGVertexColorMaterial {
	const QSGVertexColorMaterial_VTable* vtbl;
	void* vdata;
public:
	friend const QSGVertexColorMaterial_VTable* QSGVertexColorMaterial_vtbl(const VirtualQSGVertexColorMaterial* self);
	friend void* QSGVertexColorMaterial_vdata(const VirtualQSGVertexColorMaterial* self);
	friend void QSGVertexColorMaterial_setVdata(VirtualQSGVertexColorMaterial* self, void* vdata);

	VirtualQSGVertexColorMaterial(const QSGVertexColorMaterial_VTable* vtbl, void* vdata): QSGVertexColorMaterial(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSGVertexColorMaterial() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual int compare(const QSGMaterial* other) const override {
		if (vtbl->compare == 0) {
			return QSGVertexColorMaterial::compare(other);
		}

		QSGMaterial* sigval1 = (QSGMaterial*) other;

		int callback_return_value = vtbl->compare(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSGVertexColorMaterial_virtualbase_compare(const VirtualQSGVertexColorMaterial* self, QSGMaterial* other);

	virtual QSGMaterialType* type() const override {
		if (vtbl->type == 0) {
			return QSGVertexColorMaterial::type();
		}


		QSGMaterialType* callback_return_value = vtbl->type(this);

		return callback_return_value;
	}

	friend QSGMaterialType* QSGVertexColorMaterial_virtualbase_type(const VirtualQSGVertexColorMaterial* self);

	virtual QSGMaterialShader* createShader(QSGRendererInterface::RenderMode renderMode) const override {
		if (vtbl->createShader == 0) {
			return QSGVertexColorMaterial::createShader(renderMode);
		}

		QSGRendererInterface::RenderMode renderMode_ret = renderMode;
		int sigval1 = static_cast<int>(renderMode_ret);

		QSGMaterialShader* callback_return_value = vtbl->createShader(this, sigval1);

		return callback_return_value;
	}

	friend QSGMaterialShader* QSGVertexColorMaterial_virtualbase_createShader(const VirtualQSGVertexColorMaterial* self, int renderMode);

};

VirtualQSGVertexColorMaterial* QSGVertexColorMaterial_new(const QSGVertexColorMaterial_VTable* vtbl, void* vdata) {
	return new VirtualQSGVertexColorMaterial(vtbl, vdata);
}

void QSGVertexColorMaterial_virtbase(QSGVertexColorMaterial* src, QSGMaterial** outptr_QSGMaterial) {
	*outptr_QSGMaterial = static_cast<QSGMaterial*>(src);
}

int QSGVertexColorMaterial_compare(const QSGVertexColorMaterial* self, QSGMaterial* other) {
	return self->compare(other);
}

int QSGVertexColorMaterial_virtualbase_compare(const VirtualQSGVertexColorMaterial* self, QSGMaterial* other) {

	return self->QSGVertexColorMaterial::compare(other);
}

QSGMaterialType* QSGVertexColorMaterial_virtualbase_type(const VirtualQSGVertexColorMaterial* self) {

	return self->QSGVertexColorMaterial::type();
}

QSGMaterialShader* QSGVertexColorMaterial_virtualbase_createShader(const VirtualQSGVertexColorMaterial* self, int renderMode) {

	return self->QSGVertexColorMaterial::createShader(static_cast<QSGRendererInterface::RenderMode>(renderMode));
}

const QSGVertexColorMaterial_VTable* QSGVertexColorMaterial_vtbl(const VirtualQSGVertexColorMaterial* self) { return self->vtbl; }
void* QSGVertexColorMaterial_vdata(const VirtualQSGVertexColorMaterial* self) { return self->vdata; }
void QSGVertexColorMaterial_setVdata(VirtualQSGVertexColorMaterial* self, void* vdata) { self->vdata = vdata; }

void QSGVertexColorMaterial_delete(QSGVertexColorMaterial* self) {
	delete self;
}

