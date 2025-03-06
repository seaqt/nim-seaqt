#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGMaterialType>
#include <QSGVertexColorMaterial>
#include <qsgvertexcolormaterial.h>
#include "gen_qsgvertexcolormaterial.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSGVertexColorMaterial final : public QSGVertexColorMaterial {
	struct QSGVertexColorMaterial_VTable* vtbl;
public:

	VirtualQSGVertexColorMaterial(struct QSGVertexColorMaterial_VTable* vtbl): QSGVertexColorMaterial(), vtbl(vtbl) {};

	virtual ~VirtualQSGVertexColorMaterial() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual int compare(const QSGMaterial* other) const override {
		if (vtbl->compare == 0) {
			return QSGVertexColorMaterial::compare(other);
		}

		QSGMaterial* sigval1 = (QSGMaterial*) other;

		int callback_return_value = vtbl->compare(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSGVertexColorMaterial_virtualbase_compare(const void* self, QSGMaterial* other);

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialType* type() const override {
		if (vtbl->type == 0) {
			return QSGVertexColorMaterial::type();
		}


		QSGMaterialType* callback_return_value = vtbl->type(vtbl, this);

		return callback_return_value;
	}

	friend QSGMaterialType* QSGVertexColorMaterial_virtualbase_type(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialShader* createShader() const override {
		if (vtbl->createShader == 0) {
			return QSGVertexColorMaterial::createShader();
		}


		QSGMaterialShader* callback_return_value = vtbl->createShader(vtbl, this);

		return callback_return_value;
	}

	friend QSGMaterialShader* QSGVertexColorMaterial_virtualbase_createShader(const void* self);

};

QSGVertexColorMaterial* QSGVertexColorMaterial_new(struct QSGVertexColorMaterial_VTable* vtbl) {
	return new VirtualQSGVertexColorMaterial(vtbl);
}

void QSGVertexColorMaterial_virtbase(QSGVertexColorMaterial* src, QSGMaterial** outptr_QSGMaterial) {
	*outptr_QSGMaterial = static_cast<QSGMaterial*>(src);
}

int QSGVertexColorMaterial_compare(const QSGVertexColorMaterial* self, QSGMaterial* other) {
	return self->compare(other);
}

int QSGVertexColorMaterial_virtualbase_compare(const void* self, QSGMaterial* other) {

	return ( (const VirtualQSGVertexColorMaterial*)(self) )->QSGVertexColorMaterial::compare(other);

}

QSGMaterialType* QSGVertexColorMaterial_virtualbase_type(const void* self) {

	return ( (const VirtualQSGVertexColorMaterial*)(self) )->QSGVertexColorMaterial::type();

}

QSGMaterialShader* QSGVertexColorMaterial_virtualbase_createShader(const void* self) {

	return ( (const VirtualQSGVertexColorMaterial*)(self) )->QSGVertexColorMaterial::createShader();

}

void QSGVertexColorMaterial_delete(QSGVertexColorMaterial* self) {
	delete self;
}

