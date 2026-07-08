#include <QDesignerSettingsInterface>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <abstractsettings.h>
#include "gen_abstractsettings.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDesignerSettingsInterface final : public QDesignerSettingsInterface {
	const QDesignerSettingsInterface_VTable* vtbl;
public:
	friend void* QDesignerSettingsInterface_vdata(VirtualQDesignerSettingsInterface* self);
	friend VirtualQDesignerSettingsInterface* vdata_QDesignerSettingsInterface(void* vdata);

	VirtualQDesignerSettingsInterface(const QDesignerSettingsInterface_VTable* vtbl): QDesignerSettingsInterface(), vtbl(vtbl) {}

	virtual ~VirtualQDesignerSettingsInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual void beginGroup(const QString& prefix) override {
		if (vtbl->beginGroup == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString prefix_ret = prefix;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray prefix_b = prefix_ret.toUtf8();
		struct seaqt_string prefix_ms;
		prefix_ms.len = prefix_b.length();
		prefix_ms.data = static_cast<char*>(malloc(prefix_ms.len));
		memcpy(prefix_ms.data, prefix_b.data(), prefix_ms.len);
		struct seaqt_string sigval1 = prefix_ms;
		vtbl->beginGroup(this, sigval1);
	}

	virtual void endGroup() override {
		if (vtbl->endGroup == 0) {
			return; // Pure virtual, there is no base we can call
		}

		vtbl->endGroup(this);
	}

	virtual bool contains(const QString& key) const override {
		if (vtbl->contains == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		const QString key_ret = key;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray key_b = key_ret.toUtf8();
		struct seaqt_string key_ms;
		key_ms.len = key_b.length();
		key_ms.data = static_cast<char*>(malloc(key_ms.len));
		memcpy(key_ms.data, key_b.data(), key_ms.len);
		struct seaqt_string sigval1 = key_ms;
		bool callback_return_value = vtbl->contains(this, sigval1);
		return callback_return_value;
	}

	virtual void setValue(const QString& key, const QVariant& value) override {
		if (vtbl->setValue == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString key_ret = key;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray key_b = key_ret.toUtf8();
		struct seaqt_string key_ms;
		key_ms.len = key_b.length();
		key_ms.data = static_cast<char*>(malloc(key_ms.len));
		memcpy(key_ms.data, key_b.data(), key_ms.len);
		struct seaqt_string sigval1 = key_ms;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
		vtbl->setValue(this, sigval1, sigval2);
	}

	virtual QVariant value(const QString& key, const QVariant& defaultValue) const override {
		if (vtbl->value == 0) {
			return QVariant(); // Pure virtual, there is no base we can call
		}

		const QString key_ret = key;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray key_b = key_ret.toUtf8();
		struct seaqt_string key_ms;
		key_ms.len = key_b.length();
		key_ms.data = static_cast<char*>(malloc(key_ms.len));
		memcpy(key_ms.data, key_b.data(), key_ms.len);
		struct seaqt_string sigval1 = key_ms;
		const QVariant& defaultValue_ret = defaultValue;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&defaultValue_ret);
		QVariant* callback_return_value = vtbl->value(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	virtual void remove(const QString& key) override {
		if (vtbl->remove == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString key_ret = key;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray key_b = key_ret.toUtf8();
		struct seaqt_string key_ms;
		key_ms.len = key_b.length();
		key_ms.data = static_cast<char*>(malloc(key_ms.len));
		memcpy(key_ms.data, key_b.data(), key_ms.len);
		struct seaqt_string sigval1 = key_ms;
		vtbl->remove(this, sigval1);
	}

};

VirtualQDesignerSettingsInterface* QDesignerSettingsInterface_new(const QDesignerSettingsInterface_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerSettingsInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerSettingsInterface(vtbl) : nullptr;
}

void QDesignerSettingsInterface_beginGroup(QDesignerSettingsInterface* self, struct seaqt_string prefix) {
	QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);
	self->beginGroup(prefix_QString);
}

void QDesignerSettingsInterface_endGroup(QDesignerSettingsInterface* self) {
	self->endGroup();
}

bool QDesignerSettingsInterface_contains(const QDesignerSettingsInterface* self, struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return self->contains(key_QString);
}

void QDesignerSettingsInterface_setValue(QDesignerSettingsInterface* self, struct seaqt_string key, QVariant* value) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->setValue(key_QString, *value);
}

QVariant* QDesignerSettingsInterface_value(const QDesignerSettingsInterface* self, struct seaqt_string key, QVariant* defaultValue) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QVariant(self->value(key_QString, *defaultValue));
}

void QDesignerSettingsInterface_remove(QDesignerSettingsInterface* self, struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->remove(key_QString);
}

void* QDesignerSettingsInterface_vdata(VirtualQDesignerSettingsInterface* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerSettingsInterface>()); }
VirtualQDesignerSettingsInterface* vdata_QDesignerSettingsInterface(void* vdata) { return reinterpret_cast<VirtualQDesignerSettingsInterface*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerSettingsInterface>()); }

void QDesignerSettingsInterface_delete(QDesignerSettingsInterface* self) {
	delete self;
}

