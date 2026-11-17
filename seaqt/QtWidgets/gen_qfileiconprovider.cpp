#include <QAbstractFileIconProvider>
#include <QFileIconProvider>
#include <QFileInfo>
#include <QIcon>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qfileiconprovider.h>
#include "gen_qfileiconprovider.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQFileIconProvider final : public QFileIconProvider {
	const QFileIconProvider_VTable* vtbl;
public:
	friend void* QFileIconProvider_vdata(VirtualQFileIconProvider* self);
	friend VirtualQFileIconProvider* vdata_QFileIconProvider(void* vdata);

	VirtualQFileIconProvider(const QFileIconProvider_VTable* vtbl): QFileIconProvider(), vtbl(vtbl) {}

	virtual ~VirtualQFileIconProvider() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QIcon icon(QAbstractFileIconProvider::IconType type) const override {
		if (vtbl->icon_type == 0) {
			return QFileIconProvider::icon(type);
		}

		QAbstractFileIconProvider::IconType type_ret = type;
		int sigval1 = static_cast<int>(type_ret);
		QIcon* callback_return_value = vtbl->icon_type(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QIcon* QFileIconProvider_virtualbase_icon_type(const VirtualQFileIconProvider* self, int type);

	virtual QIcon icon(const QFileInfo& info) const override {
		if (vtbl->icon_info == 0) {
			return QFileIconProvider::icon(info);
		}

		const QFileInfo& info_ret = info;
		// Cast returned reference into pointer
		QFileInfo* sigval1 = const_cast<QFileInfo*>(&info_ret);
		QIcon* callback_return_value = vtbl->icon_info(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QIcon* QFileIconProvider_virtualbase_icon_info(const VirtualQFileIconProvider* self, QFileInfo* info);

	virtual QString type(const QFileInfo& param1) const override {
		if (vtbl->type == 0) {
			return QFileIconProvider::type(param1);
		}

		const QFileInfo& param1_ret = param1;
		// Cast returned reference into pointer
		QFileInfo* sigval1 = const_cast<QFileInfo*>(&param1_ret);
		struct seaqt_string callback_return_value = vtbl->type(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	friend struct seaqt_string QFileIconProvider_virtualbase_type(const VirtualQFileIconProvider* self, QFileInfo* param1);

	virtual void setOptions(QAbstractFileIconProvider::Options options) override {
		if (vtbl->setOptions == 0) {
			QFileIconProvider::setOptions(options);
			return;
		}

		QAbstractFileIconProvider::Options options_ret = options;
		int sigval1 = static_cast<int>(options_ret);
		vtbl->setOptions(this, sigval1);
	}

	friend void QFileIconProvider_virtualbase_setOptions(VirtualQFileIconProvider* self, int options);

	virtual QAbstractFileIconProvider::Options options() const override {
		if (vtbl->options == 0) {
			return QFileIconProvider::options();
		}

		int callback_return_value = vtbl->options(this);
		return static_cast<QAbstractFileIconProvider::Options>(callback_return_value);
	}

	friend int QFileIconProvider_virtualbase_options(const VirtualQFileIconProvider* self);

};

VirtualQFileIconProvider* QFileIconProvider_new(const QFileIconProvider_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQFileIconProvider>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQFileIconProvider(vtbl) : nullptr;
}

void QFileIconProvider_virtbase(QFileIconProvider* src, QAbstractFileIconProvider** outptr_QAbstractFileIconProvider) {
	*outptr_QAbstractFileIconProvider = static_cast<QAbstractFileIconProvider*>(src);
}

QIcon* QFileIconProvider_icon_type(const QFileIconProvider* self, int type) {
	return new QIcon(self->icon(static_cast<QAbstractFileIconProvider::IconType>(type)));
}

QIcon* QFileIconProvider_icon_info(const QFileIconProvider* self, QFileInfo* info) {
	return new QIcon(self->icon(*info));
}

void* QFileIconProvider_vdata(VirtualQFileIconProvider* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQFileIconProvider>()); }
VirtualQFileIconProvider* vdata_QFileIconProvider(void* vdata) { return reinterpret_cast<VirtualQFileIconProvider*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQFileIconProvider>()); }

QIcon* QFileIconProvider_virtualbase_icon_type(const VirtualQFileIconProvider* self, int type) {

	return new QIcon(self->QFileIconProvider::icon(static_cast<VirtualQFileIconProvider::IconType>(type)));
}

QIcon* QFileIconProvider_virtualbase_icon_info(const VirtualQFileIconProvider* self, QFileInfo* info) {

	return new QIcon(self->QFileIconProvider::icon(*info));
}

struct seaqt_string QFileIconProvider_virtualbase_type(const VirtualQFileIconProvider* self, QFileInfo* param1) {

	QString _ret = self->QFileIconProvider::type(*param1);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFileIconProvider_virtualbase_setOptions(VirtualQFileIconProvider* self, int options) {

	self->QFileIconProvider::setOptions(static_cast<VirtualQFileIconProvider::Options>(options));
}

int QFileIconProvider_virtualbase_options(const VirtualQFileIconProvider* self) {

	VirtualQFileIconProvider::Options _ret = self->QFileIconProvider::options();
	return static_cast<int>(_ret);
}

void QFileIconProvider_delete(QFileIconProvider* self) {
	delete self;
}

