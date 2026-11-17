#include <QAbstractFileIconProvider>
#include <QFileInfo>
#include <QIcon>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qabstractfileiconprovider.h>
#include "gen_qabstractfileiconprovider.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQAbstractFileIconProvider final : public QAbstractFileIconProvider {
	const QAbstractFileIconProvider_VTable* vtbl;
public:
	friend void* QAbstractFileIconProvider_vdata(VirtualQAbstractFileIconProvider* self);
	friend VirtualQAbstractFileIconProvider* vdata_QAbstractFileIconProvider(void* vdata);

	VirtualQAbstractFileIconProvider(const QAbstractFileIconProvider_VTable* vtbl): QAbstractFileIconProvider(), vtbl(vtbl) {}

	virtual ~VirtualQAbstractFileIconProvider() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QIcon icon(QAbstractFileIconProvider::IconType param1) const override {
		if (vtbl->icon_QAbstractFileIconProvider_IconType == 0) {
			return QAbstractFileIconProvider::icon(param1);
		}

		QAbstractFileIconProvider::IconType param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		QIcon* callback_return_value = vtbl->icon_QAbstractFileIconProvider_IconType(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QIcon* QAbstractFileIconProvider_virtualbase_icon_QAbstractFileIconProvider_IconType(const VirtualQAbstractFileIconProvider* self, int param1);

	virtual QIcon icon(const QFileInfo& param1) const override {
		if (vtbl->icon_QFileInfo == 0) {
			return QAbstractFileIconProvider::icon(param1);
		}

		const QFileInfo& param1_ret = param1;
		// Cast returned reference into pointer
		QFileInfo* sigval1 = const_cast<QFileInfo*>(&param1_ret);
		QIcon* callback_return_value = vtbl->icon_QFileInfo(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QIcon* QAbstractFileIconProvider_virtualbase_icon_QFileInfo(const VirtualQAbstractFileIconProvider* self, QFileInfo* param1);

	virtual QString type(const QFileInfo& param1) const override {
		if (vtbl->type == 0) {
			return QAbstractFileIconProvider::type(param1);
		}

		const QFileInfo& param1_ret = param1;
		// Cast returned reference into pointer
		QFileInfo* sigval1 = const_cast<QFileInfo*>(&param1_ret);
		struct seaqt_string callback_return_value = vtbl->type(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	friend struct seaqt_string QAbstractFileIconProvider_virtualbase_type(const VirtualQAbstractFileIconProvider* self, QFileInfo* param1);

	virtual void setOptions(QAbstractFileIconProvider::Options options) override {
		if (vtbl->setOptions == 0) {
			QAbstractFileIconProvider::setOptions(options);
			return;
		}

		QAbstractFileIconProvider::Options options_ret = options;
		int sigval1 = static_cast<int>(options_ret);
		vtbl->setOptions(this, sigval1);
	}

	friend void QAbstractFileIconProvider_virtualbase_setOptions(VirtualQAbstractFileIconProvider* self, int options);

	virtual QAbstractFileIconProvider::Options options() const override {
		if (vtbl->options == 0) {
			return QAbstractFileIconProvider::options();
		}

		int callback_return_value = vtbl->options(this);
		return static_cast<QAbstractFileIconProvider::Options>(callback_return_value);
	}

	friend int QAbstractFileIconProvider_virtualbase_options(const VirtualQAbstractFileIconProvider* self);

};

VirtualQAbstractFileIconProvider* QAbstractFileIconProvider_new(const QAbstractFileIconProvider_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAbstractFileIconProvider>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAbstractFileIconProvider(vtbl) : nullptr;
}

QIcon* QAbstractFileIconProvider_icon_QAbstractFileIconProvider_IconType(const QAbstractFileIconProvider* self, int param1) {
	return new QIcon(self->icon(static_cast<QAbstractFileIconProvider::IconType>(param1)));
}

QIcon* QAbstractFileIconProvider_icon_QFileInfo(const QAbstractFileIconProvider* self, QFileInfo* param1) {
	return new QIcon(self->icon(*param1));
}

struct seaqt_string QAbstractFileIconProvider_type(const QAbstractFileIconProvider* self, QFileInfo* param1) {
	QString _ret = self->type(*param1);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractFileIconProvider_setOptions(QAbstractFileIconProvider* self, int options) {
	self->setOptions(static_cast<QAbstractFileIconProvider::Options>(options));
}

int QAbstractFileIconProvider_options(const QAbstractFileIconProvider* self) {
	QAbstractFileIconProvider::Options _ret = self->options();
	return static_cast<int>(_ret);
}

void* QAbstractFileIconProvider_vdata(VirtualQAbstractFileIconProvider* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAbstractFileIconProvider>()); }
VirtualQAbstractFileIconProvider* vdata_QAbstractFileIconProvider(void* vdata) { return reinterpret_cast<VirtualQAbstractFileIconProvider*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAbstractFileIconProvider>()); }

QIcon* QAbstractFileIconProvider_virtualbase_icon_QAbstractFileIconProvider_IconType(const VirtualQAbstractFileIconProvider* self, int param1) {

	return new QIcon(self->QAbstractFileIconProvider::icon(static_cast<VirtualQAbstractFileIconProvider::IconType>(param1)));
}

QIcon* QAbstractFileIconProvider_virtualbase_icon_QFileInfo(const VirtualQAbstractFileIconProvider* self, QFileInfo* param1) {

	return new QIcon(self->QAbstractFileIconProvider::icon(*param1));
}

struct seaqt_string QAbstractFileIconProvider_virtualbase_type(const VirtualQAbstractFileIconProvider* self, QFileInfo* param1) {

	QString _ret = self->QAbstractFileIconProvider::type(*param1);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractFileIconProvider_virtualbase_setOptions(VirtualQAbstractFileIconProvider* self, int options) {

	self->QAbstractFileIconProvider::setOptions(static_cast<VirtualQAbstractFileIconProvider::Options>(options));
}

int QAbstractFileIconProvider_virtualbase_options(const VirtualQAbstractFileIconProvider* self) {

	VirtualQAbstractFileIconProvider::Options _ret = self->QAbstractFileIconProvider::options();
	return static_cast<int>(_ret);
}

void QAbstractFileIconProvider_delete(QAbstractFileIconProvider* self) {
	delete self;
}

