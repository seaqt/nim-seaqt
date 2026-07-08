#include <QDesignerDynamicPropertySheetExtension>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <dynamicpropertysheet.h>
#include "gen_dynamicpropertysheet.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDesignerDynamicPropertySheetExtension final : public QDesignerDynamicPropertySheetExtension {
	const QDesignerDynamicPropertySheetExtension_VTable* vtbl;
public:
	friend void* QDesignerDynamicPropertySheetExtension_vdata(VirtualQDesignerDynamicPropertySheetExtension* self);
	friend VirtualQDesignerDynamicPropertySheetExtension* vdata_QDesignerDynamicPropertySheetExtension(void* vdata);

	VirtualQDesignerDynamicPropertySheetExtension(const QDesignerDynamicPropertySheetExtension_VTable* vtbl): QDesignerDynamicPropertySheetExtension(), vtbl(vtbl) {}

	virtual ~VirtualQDesignerDynamicPropertySheetExtension() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual bool dynamicPropertiesAllowed() const override {
		if (vtbl->dynamicPropertiesAllowed == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		bool callback_return_value = vtbl->dynamicPropertiesAllowed(this);
		return callback_return_value;
	}

	virtual int addDynamicProperty(const QString& propertyName, const QVariant& value) override {
		if (vtbl->addDynamicProperty == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		const QString propertyName_ret = propertyName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray propertyName_b = propertyName_ret.toUtf8();
		struct seaqt_string propertyName_ms;
		propertyName_ms.len = propertyName_b.length();
		propertyName_ms.data = static_cast<char*>(malloc(propertyName_ms.len));
		memcpy(propertyName_ms.data, propertyName_b.data(), propertyName_ms.len);
		struct seaqt_string sigval1 = propertyName_ms;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
		int callback_return_value = vtbl->addDynamicProperty(this, sigval1, sigval2);
		return static_cast<int>(callback_return_value);
	}

	virtual bool removeDynamicProperty(int index) override {
		if (vtbl->removeDynamicProperty == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool callback_return_value = vtbl->removeDynamicProperty(this, sigval1);
		return callback_return_value;
	}

	virtual bool isDynamicProperty(int index) const override {
		if (vtbl->isDynamicProperty == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool callback_return_value = vtbl->isDynamicProperty(this, sigval1);
		return callback_return_value;
	}

	virtual bool canAddDynamicProperty(const QString& propertyName) const override {
		if (vtbl->canAddDynamicProperty == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		const QString propertyName_ret = propertyName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray propertyName_b = propertyName_ret.toUtf8();
		struct seaqt_string propertyName_ms;
		propertyName_ms.len = propertyName_b.length();
		propertyName_ms.data = static_cast<char*>(malloc(propertyName_ms.len));
		memcpy(propertyName_ms.data, propertyName_b.data(), propertyName_ms.len);
		struct seaqt_string sigval1 = propertyName_ms;
		bool callback_return_value = vtbl->canAddDynamicProperty(this, sigval1);
		return callback_return_value;
	}

};

VirtualQDesignerDynamicPropertySheetExtension* QDesignerDynamicPropertySheetExtension_new(const QDesignerDynamicPropertySheetExtension_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerDynamicPropertySheetExtension>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerDynamicPropertySheetExtension(vtbl) : nullptr;
}

bool QDesignerDynamicPropertySheetExtension_dynamicPropertiesAllowed(const QDesignerDynamicPropertySheetExtension* self) {
	return self->dynamicPropertiesAllowed();
}

int QDesignerDynamicPropertySheetExtension_addDynamicProperty(QDesignerDynamicPropertySheetExtension* self, struct seaqt_string propertyName, QVariant* value) {
	QString propertyName_QString = QString::fromUtf8(propertyName.data, propertyName.len);
	return self->addDynamicProperty(propertyName_QString, *value);
}

bool QDesignerDynamicPropertySheetExtension_removeDynamicProperty(QDesignerDynamicPropertySheetExtension* self, int index) {
	return self->removeDynamicProperty(static_cast<int>(index));
}

bool QDesignerDynamicPropertySheetExtension_isDynamicProperty(const QDesignerDynamicPropertySheetExtension* self, int index) {
	return self->isDynamicProperty(static_cast<int>(index));
}

bool QDesignerDynamicPropertySheetExtension_canAddDynamicProperty(const QDesignerDynamicPropertySheetExtension* self, struct seaqt_string propertyName) {
	QString propertyName_QString = QString::fromUtf8(propertyName.data, propertyName.len);
	return self->canAddDynamicProperty(propertyName_QString);
}

void* QDesignerDynamicPropertySheetExtension_vdata(VirtualQDesignerDynamicPropertySheetExtension* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerDynamicPropertySheetExtension>()); }
VirtualQDesignerDynamicPropertySheetExtension* vdata_QDesignerDynamicPropertySheetExtension(void* vdata) { return reinterpret_cast<VirtualQDesignerDynamicPropertySheetExtension*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerDynamicPropertySheetExtension>()); }

void QDesignerDynamicPropertySheetExtension_delete(QDesignerDynamicPropertySheetExtension* self) {
	delete self;
}

