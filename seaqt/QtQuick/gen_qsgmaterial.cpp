#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGMaterialType>
#include <qsgmaterial.h>
#include "gen_qsgmaterial.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQSGMaterial final : public QSGMaterial {
	const QSGMaterial_VTable* vtbl;
public:
	friend void* QSGMaterial_vdata(VirtualQSGMaterial* self);
	friend VirtualQSGMaterial* vdata_QSGMaterial(void* vdata);

	VirtualQSGMaterial(const QSGMaterial_VTable* vtbl): QSGMaterial(), vtbl(vtbl) {}

	virtual ~VirtualQSGMaterial() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QSGMaterialType* type() const override {
		if (vtbl->type == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QSGMaterialType* callback_return_value = vtbl->type(this);
		return callback_return_value;
	}

	virtual QSGMaterialShader* createShader() const override {
		if (vtbl->createShader == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QSGMaterialShader* callback_return_value = vtbl->createShader(this);
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

VirtualQSGMaterial* QSGMaterial_new(const QSGMaterial_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSGMaterial>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSGMaterial(vtbl) : nullptr;
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

void* QSGMaterial_vdata(VirtualQSGMaterial* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQSGMaterial>()); }
VirtualQSGMaterial* vdata_QSGMaterial(void* vdata) { return reinterpret_cast<VirtualQSGMaterial*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQSGMaterial>()); }

int QSGMaterial_virtualbase_compare(const VirtualQSGMaterial* self, QSGMaterial* other) {

	return self->QSGMaterial::compare(other);
}

void QSGMaterial_delete(QSGMaterial* self) {
	delete self;
}

