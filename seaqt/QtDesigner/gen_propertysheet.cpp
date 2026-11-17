#include <QDesignerPropertySheetExtension>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <propertysheet.h>
#include "gen_propertysheet.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDesignerPropertySheetExtension final : public QDesignerPropertySheetExtension {
	const QDesignerPropertySheetExtension_VTable* vtbl;
public:
	friend void* QDesignerPropertySheetExtension_vdata(VirtualQDesignerPropertySheetExtension* self);
	friend VirtualQDesignerPropertySheetExtension* vdata_QDesignerPropertySheetExtension(void* vdata);

	VirtualQDesignerPropertySheetExtension(const QDesignerPropertySheetExtension_VTable* vtbl): QDesignerPropertySheetExtension(), vtbl(vtbl) {}

	virtual ~VirtualQDesignerPropertySheetExtension() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual int count() const override {
		if (vtbl->count == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->count(this);
		return static_cast<int>(callback_return_value);
	}

	virtual int indexOf(const QString& name) const override {
		if (vtbl->indexOf == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval1 = name_ms;
		int callback_return_value = vtbl->indexOf(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	virtual QString propertyName(int index) const override {
		if (vtbl->propertyName == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		struct seaqt_string callback_return_value = vtbl->propertyName(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual QString propertyGroup(int index) const override {
		if (vtbl->propertyGroup == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		struct seaqt_string callback_return_value = vtbl->propertyGroup(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual void setPropertyGroup(int index, const QString& group) override {
		if (vtbl->setPropertyGroup == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		const QString group_ret = group;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray group_b = group_ret.toUtf8();
		struct seaqt_string group_ms;
		group_ms.len = group_b.length();
		group_ms.data = static_cast<char*>(malloc(group_ms.len));
		memcpy(group_ms.data, group_b.data(), group_ms.len);
		struct seaqt_string sigval2 = group_ms;
		vtbl->setPropertyGroup(this, sigval1, sigval2);
	}

	virtual bool hasReset(int index) const override {
		if (vtbl->hasReset == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool callback_return_value = vtbl->hasReset(this, sigval1);
		return callback_return_value;
	}

	virtual bool reset(int index) override {
		if (vtbl->reset == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool callback_return_value = vtbl->reset(this, sigval1);
		return callback_return_value;
	}

	virtual bool isVisible(int index) const override {
		if (vtbl->isVisible == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool callback_return_value = vtbl->isVisible(this, sigval1);
		return callback_return_value;
	}

	virtual void setVisible(int index, bool b) override {
		if (vtbl->setVisible == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool sigval2 = b;
		vtbl->setVisible(this, sigval1, sigval2);
	}

	virtual bool isAttribute(int index) const override {
		if (vtbl->isAttribute == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool callback_return_value = vtbl->isAttribute(this, sigval1);
		return callback_return_value;
	}

	virtual void setAttribute(int index, bool b) override {
		if (vtbl->setAttribute == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool sigval2 = b;
		vtbl->setAttribute(this, sigval1, sigval2);
	}

	virtual QVariant property(int index) const override {
		if (vtbl->property == 0) {
			return QVariant(); // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		QVariant* callback_return_value = vtbl->property(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	virtual void setProperty(int index, const QVariant& value) override {
		if (vtbl->setProperty == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
		vtbl->setProperty(this, sigval1, sigval2);
	}

	virtual bool isChanged(int index) const override {
		if (vtbl->isChanged == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool callback_return_value = vtbl->isChanged(this, sigval1);
		return callback_return_value;
	}

	virtual void setChanged(int index, bool changed) override {
		if (vtbl->setChanged == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool sigval2 = changed;
		vtbl->setChanged(this, sigval1, sigval2);
	}

	virtual bool isEnabled(int index) const override {
		if (vtbl->isEnabled == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool callback_return_value = vtbl->isEnabled(this, sigval1);
		return callback_return_value;
	}

};

VirtualQDesignerPropertySheetExtension* QDesignerPropertySheetExtension_new(const QDesignerPropertySheetExtension_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerPropertySheetExtension>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerPropertySheetExtension(vtbl) : nullptr;
}

int QDesignerPropertySheetExtension_count(const QDesignerPropertySheetExtension* self) {
	return self->count();
}

int QDesignerPropertySheetExtension_indexOf(const QDesignerPropertySheetExtension* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->indexOf(name_QString);
}

struct seaqt_string QDesignerPropertySheetExtension_propertyName(const QDesignerPropertySheetExtension* self, int index) {
	QString _ret = self->propertyName(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerPropertySheetExtension_propertyGroup(const QDesignerPropertySheetExtension* self, int index) {
	QString _ret = self->propertyGroup(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerPropertySheetExtension_setPropertyGroup(QDesignerPropertySheetExtension* self, int index, struct seaqt_string group) {
	QString group_QString = QString::fromUtf8(group.data, group.len);
	self->setPropertyGroup(static_cast<int>(index), group_QString);
}

bool QDesignerPropertySheetExtension_hasReset(const QDesignerPropertySheetExtension* self, int index) {
	return self->hasReset(static_cast<int>(index));
}

bool QDesignerPropertySheetExtension_reset(QDesignerPropertySheetExtension* self, int index) {
	return self->reset(static_cast<int>(index));
}

bool QDesignerPropertySheetExtension_isVisible(const QDesignerPropertySheetExtension* self, int index) {
	return self->isVisible(static_cast<int>(index));
}

void QDesignerPropertySheetExtension_setVisible(QDesignerPropertySheetExtension* self, int index, bool b) {
	self->setVisible(static_cast<int>(index), b);
}

bool QDesignerPropertySheetExtension_isAttribute(const QDesignerPropertySheetExtension* self, int index) {
	return self->isAttribute(static_cast<int>(index));
}

void QDesignerPropertySheetExtension_setAttribute(QDesignerPropertySheetExtension* self, int index, bool b) {
	self->setAttribute(static_cast<int>(index), b);
}

QVariant* QDesignerPropertySheetExtension_property(const QDesignerPropertySheetExtension* self, int index) {
	return new QVariant(self->property(static_cast<int>(index)));
}

void QDesignerPropertySheetExtension_setProperty(QDesignerPropertySheetExtension* self, int index, QVariant* value) {
	self->setProperty(static_cast<int>(index), *value);
}

bool QDesignerPropertySheetExtension_isChanged(const QDesignerPropertySheetExtension* self, int index) {
	return self->isChanged(static_cast<int>(index));
}

void QDesignerPropertySheetExtension_setChanged(QDesignerPropertySheetExtension* self, int index, bool changed) {
	self->setChanged(static_cast<int>(index), changed);
}

bool QDesignerPropertySheetExtension_isEnabled(const QDesignerPropertySheetExtension* self, int index) {
	return self->isEnabled(static_cast<int>(index));
}

void* QDesignerPropertySheetExtension_vdata(VirtualQDesignerPropertySheetExtension* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerPropertySheetExtension>()); }
VirtualQDesignerPropertySheetExtension* vdata_QDesignerPropertySheetExtension(void* vdata) { return reinterpret_cast<VirtualQDesignerPropertySheetExtension*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerPropertySheetExtension>()); }

void QDesignerPropertySheetExtension_delete(QDesignerPropertySheetExtension* self) {
	delete self;
}

