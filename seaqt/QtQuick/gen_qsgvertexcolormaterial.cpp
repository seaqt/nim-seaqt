#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGMaterialType>
#include <QSGVertexColorMaterial>
#include <qsgvertexcolormaterial.h>
#include "gen_qsgvertexcolormaterial.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQSGVertexColorMaterial final : public QSGVertexColorMaterial {
	const QSGVertexColorMaterial_VTable* vtbl;
public:
	friend void* QSGVertexColorMaterial_vdata(VirtualQSGVertexColorMaterial* self);
	friend VirtualQSGVertexColorMaterial* vdata_QSGVertexColorMaterial(void* vdata);

	VirtualQSGVertexColorMaterial(const QSGVertexColorMaterial_VTable* vtbl): QSGVertexColorMaterial(), vtbl(vtbl) {}

	virtual ~VirtualQSGVertexColorMaterial() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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

VirtualQSGVertexColorMaterial* QSGVertexColorMaterial_new(const QSGVertexColorMaterial_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSGVertexColorMaterial>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSGVertexColorMaterial(vtbl) : nullptr;
}

void QSGVertexColorMaterial_virtbase(QSGVertexColorMaterial* src, QSGMaterial** outptr_QSGMaterial) {
	*outptr_QSGMaterial = static_cast<QSGMaterial*>(src);
}

int QSGVertexColorMaterial_compare(const QSGVertexColorMaterial* self, QSGMaterial* other) {
	return self->compare(other);
}

void* QSGVertexColorMaterial_vdata(VirtualQSGVertexColorMaterial* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQSGVertexColorMaterial>()); }
VirtualQSGVertexColorMaterial* vdata_QSGVertexColorMaterial(void* vdata) { return reinterpret_cast<VirtualQSGVertexColorMaterial*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQSGVertexColorMaterial>()); }

int QSGVertexColorMaterial_virtualbase_compare(const VirtualQSGVertexColorMaterial* self, QSGMaterial* other) {

	return self->QSGVertexColorMaterial::compare(other);
}

QSGMaterialType* QSGVertexColorMaterial_virtualbase_type(const VirtualQSGVertexColorMaterial* self) {

	return self->QSGVertexColorMaterial::type();
}

QSGMaterialShader* QSGVertexColorMaterial_virtualbase_createShader(const VirtualQSGVertexColorMaterial* self, int renderMode) {

	return self->QSGVertexColorMaterial::createShader(static_cast<QSGRendererInterface::RenderMode>(renderMode));
}

void QSGVertexColorMaterial_delete(QSGVertexColorMaterial* self) {
	delete self;
}

