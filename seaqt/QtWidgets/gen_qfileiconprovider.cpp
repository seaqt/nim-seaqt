#include <QAbstractFileIconProvider>
#include <QFileIconProvider>
#include <QFileInfo>
#include <QIcon>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qfileiconprovider.h>
#include "gen_qfileiconprovider.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQFileIconProvider final : public QFileIconProvider {
	struct QFileIconProvider_VTable* vtbl;
public:

	VirtualQFileIconProvider(struct QFileIconProvider_VTable* vtbl): QFileIconProvider(), vtbl(vtbl) {};

	virtual ~VirtualQFileIconProvider() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QIcon icon(QAbstractFileIconProvider::IconType type) const override {
		if (vtbl->icon == 0) {
			return QFileIconProvider::icon(type);
		}

		QAbstractFileIconProvider::IconType type_ret = type;
		int sigval1 = static_cast<int>(type_ret);

		QIcon* callback_return_value = vtbl->icon(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QIcon* QFileIconProvider_virtualbase_icon(const void* self, int type);

	// Subclass to allow providing a Go implementation
	virtual QIcon icon(const QFileInfo& info) const override {
		if (vtbl->iconWithInfo == 0) {
			return QFileIconProvider::icon(info);
		}

		const QFileInfo& info_ret = info;
		// Cast returned reference into pointer
		QFileInfo* sigval1 = const_cast<QFileInfo*>(&info_ret);

		QIcon* callback_return_value = vtbl->iconWithInfo(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QIcon* QFileIconProvider_virtualbase_iconWithInfo(const void* self, QFileInfo* info);

	// Subclass to allow providing a Go implementation
	virtual QString type(const QFileInfo& param1) const override {
		if (vtbl->type == 0) {
			return QFileIconProvider::type(param1);
		}

		const QFileInfo& param1_ret = param1;
		// Cast returned reference into pointer
		QFileInfo* sigval1 = const_cast<QFileInfo*>(&param1_ret);

		struct miqt_string callback_return_value = vtbl->type(vtbl, this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);

		return callback_return_value_QString;
	}

	friend struct miqt_string QFileIconProvider_virtualbase_type(const void* self, QFileInfo* param1);

	// Subclass to allow providing a Go implementation
	virtual void setOptions(QAbstractFileIconProvider::Options options) override {
		if (vtbl->setOptions == 0) {
			QFileIconProvider::setOptions(options);
			return;
		}

		QAbstractFileIconProvider::Options options_ret = options;
		int sigval1 = static_cast<int>(options_ret);

		vtbl->setOptions(vtbl, this, sigval1);

	}

	friend void QFileIconProvider_virtualbase_setOptions(void* self, int options);

	// Subclass to allow providing a Go implementation
	virtual QAbstractFileIconProvider::Options options() const override {
		if (vtbl->options == 0) {
			return QFileIconProvider::options();
		}


		int callback_return_value = vtbl->options(vtbl, this);

		return static_cast<QAbstractFileIconProvider::Options>(callback_return_value);
	}

	friend int QFileIconProvider_virtualbase_options(const void* self);

};

QFileIconProvider* QFileIconProvider_new(struct QFileIconProvider_VTable* vtbl) {
	return new VirtualQFileIconProvider(vtbl);
}

void QFileIconProvider_virtbase(QFileIconProvider* src, QAbstractFileIconProvider** outptr_QAbstractFileIconProvider) {
	*outptr_QAbstractFileIconProvider = static_cast<QAbstractFileIconProvider*>(src);
}

QIcon* QFileIconProvider_icon(const QFileIconProvider* self, int type) {
	return new QIcon(self->icon(static_cast<QAbstractFileIconProvider::IconType>(type)));
}

QIcon* QFileIconProvider_iconWithInfo(const QFileIconProvider* self, QFileInfo* info) {
	return new QIcon(self->icon(*info));
}

QIcon* QFileIconProvider_virtualbase_icon(const void* self, int type) {

	return new QIcon(( (const VirtualQFileIconProvider*)(self) )->QFileIconProvider::icon(static_cast<VirtualQFileIconProvider::IconType>(type)));

}

QIcon* QFileIconProvider_virtualbase_iconWithInfo(const void* self, QFileInfo* info) {

	return new QIcon(( (const VirtualQFileIconProvider*)(self) )->QFileIconProvider::icon(*info));

}

struct miqt_string QFileIconProvider_virtualbase_type(const void* self, QFileInfo* param1) {

	QString _ret = ( (const VirtualQFileIconProvider*)(self) )->QFileIconProvider::type(*param1);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;

}

void QFileIconProvider_virtualbase_setOptions(void* self, int options) {

	( (VirtualQFileIconProvider*)(self) )->QFileIconProvider::setOptions(static_cast<VirtualQFileIconProvider::Options>(options));

}

int QFileIconProvider_virtualbase_options(const void* self) {

	VirtualQFileIconProvider::Options _ret = ( (const VirtualQFileIconProvider*)(self) )->QFileIconProvider::options();
	return static_cast<int>(_ret);

}

void QFileIconProvider_delete(QFileIconProvider* self) {
	delete self;
}

