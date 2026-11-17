#include <QColor>
#include <QSGFlatColorMaterial>
#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGMaterialType>
#include <qsgflatcolormaterial.h>
#include "gen_qsgflatcolormaterial.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQSGFlatColorMaterial final : public QSGFlatColorMaterial {
	const QSGFlatColorMaterial_VTable* vtbl;
public:
	friend void* QSGFlatColorMaterial_vdata(VirtualQSGFlatColorMaterial* self);
	friend VirtualQSGFlatColorMaterial* vdata_QSGFlatColorMaterial(void* vdata);

	VirtualQSGFlatColorMaterial(const QSGFlatColorMaterial_VTable* vtbl): QSGFlatColorMaterial(), vtbl(vtbl) {}

	virtual ~VirtualQSGFlatColorMaterial() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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

VirtualQSGFlatColorMaterial* QSGFlatColorMaterial_new(const QSGFlatColorMaterial_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSGFlatColorMaterial>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSGFlatColorMaterial(vtbl) : nullptr;
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

void* QSGFlatColorMaterial_vdata(VirtualQSGFlatColorMaterial* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQSGFlatColorMaterial>()); }
VirtualQSGFlatColorMaterial* vdata_QSGFlatColorMaterial(void* vdata) { return reinterpret_cast<VirtualQSGFlatColorMaterial*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQSGFlatColorMaterial>()); }

QSGMaterialType* QSGFlatColorMaterial_virtualbase_type(const VirtualQSGFlatColorMaterial* self) {

	return self->QSGFlatColorMaterial::type();
}

QSGMaterialShader* QSGFlatColorMaterial_virtualbase_createShader(const VirtualQSGFlatColorMaterial* self) {

	return self->QSGFlatColorMaterial::createShader();
}

int QSGFlatColorMaterial_virtualbase_compare(const VirtualQSGFlatColorMaterial* self, QSGMaterial* other) {

	return self->QSGFlatColorMaterial::compare(other);
}

void QSGFlatColorMaterial_delete(QSGFlatColorMaterial* self) {
	delete self;
}

