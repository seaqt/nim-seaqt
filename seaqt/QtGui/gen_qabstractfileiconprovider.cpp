#include <QAbstractFileIconProvider>
#include <QFileInfo>
#include <QIcon>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qabstractfileiconprovider.h>
#include "gen_qabstractfileiconprovider.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAbstractFileIconProvider final : public QAbstractFileIconProvider {
	struct QAbstractFileIconProvider_VTable* vtbl;
public:

	VirtualQAbstractFileIconProvider(struct QAbstractFileIconProvider_VTable* vtbl): QAbstractFileIconProvider(), vtbl(vtbl) {};

	virtual ~VirtualQAbstractFileIconProvider() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QIcon icon(QAbstractFileIconProvider::IconType param1) const override {
		if (vtbl->icon == 0) {
			return QAbstractFileIconProvider::icon(param1);
		}

		QAbstractFileIconProvider::IconType param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QIcon* callback_return_value = vtbl->icon(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QIcon* QAbstractFileIconProvider_virtualbase_icon(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual QIcon icon(const QFileInfo& param1) const override {
		if (vtbl->iconWithQFileInfo == 0) {
			return QAbstractFileIconProvider::icon(param1);
		}

		const QFileInfo& param1_ret = param1;
		// Cast returned reference into pointer
		QFileInfo* sigval1 = const_cast<QFileInfo*>(&param1_ret);

		QIcon* callback_return_value = vtbl->iconWithQFileInfo(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QIcon* QAbstractFileIconProvider_virtualbase_iconWithQFileInfo(const void* self, QFileInfo* param1);

	// Subclass to allow providing a Go implementation
	virtual QString type(const QFileInfo& param1) const override {
		if (vtbl->type == 0) {
			return QAbstractFileIconProvider::type(param1);
		}

		const QFileInfo& param1_ret = param1;
		// Cast returned reference into pointer
		QFileInfo* sigval1 = const_cast<QFileInfo*>(&param1_ret);

		struct miqt_string callback_return_value = vtbl->type(vtbl, this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	friend struct miqt_string QAbstractFileIconProvider_virtualbase_type(const void* self, QFileInfo* param1);

	// Subclass to allow providing a Go implementation
	virtual void setOptions(QAbstractFileIconProvider::Options options) override {
		if (vtbl->setOptions == 0) {
			QAbstractFileIconProvider::setOptions(options);
			return;
		}

		QAbstractFileIconProvider::Options options_ret = options;
		int sigval1 = static_cast<int>(options_ret);

		vtbl->setOptions(vtbl, this, sigval1);

	}

	friend void QAbstractFileIconProvider_virtualbase_setOptions(void* self, int options);

	// Subclass to allow providing a Go implementation
	virtual QAbstractFileIconProvider::Options options() const override {
		if (vtbl->options == 0) {
			return QAbstractFileIconProvider::options();
		}


		int callback_return_value = vtbl->options(vtbl, this);

		return static_cast<QAbstractFileIconProvider::Options>(callback_return_value);
	}

	friend int QAbstractFileIconProvider_virtualbase_options(const void* self);

};

QAbstractFileIconProvider* QAbstractFileIconProvider_new(struct QAbstractFileIconProvider_VTable* vtbl) {
	return new VirtualQAbstractFileIconProvider(vtbl);
}

QIcon* QAbstractFileIconProvider_icon(const QAbstractFileIconProvider* self, int param1) {
	return new QIcon(self->icon(static_cast<QAbstractFileIconProvider::IconType>(param1)));
}

QIcon* QAbstractFileIconProvider_iconWithQFileInfo(const QAbstractFileIconProvider* self, QFileInfo* param1) {
	return new QIcon(self->icon(*param1));
}

struct miqt_string QAbstractFileIconProvider_type(const QAbstractFileIconProvider* self, QFileInfo* param1) {
	QString _ret = self->type(*param1);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
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

QIcon* QAbstractFileIconProvider_virtualbase_icon(const void* self, int param1) {

	return new QIcon(( (const VirtualQAbstractFileIconProvider*)(self) )->QAbstractFileIconProvider::icon(static_cast<VirtualQAbstractFileIconProvider::IconType>(param1)));

}

QIcon* QAbstractFileIconProvider_virtualbase_iconWithQFileInfo(const void* self, QFileInfo* param1) {

	return new QIcon(( (const VirtualQAbstractFileIconProvider*)(self) )->QAbstractFileIconProvider::icon(*param1));

}

struct miqt_string QAbstractFileIconProvider_virtualbase_type(const void* self, QFileInfo* param1) {

	QString _ret = ( (const VirtualQAbstractFileIconProvider*)(self) )->QAbstractFileIconProvider::type(*param1);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;

}

void QAbstractFileIconProvider_virtualbase_setOptions(void* self, int options) {

	( (VirtualQAbstractFileIconProvider*)(self) )->QAbstractFileIconProvider::setOptions(static_cast<VirtualQAbstractFileIconProvider::Options>(options));

}

int QAbstractFileIconProvider_virtualbase_options(const void* self) {

	VirtualQAbstractFileIconProvider::Options _ret = ( (const VirtualQAbstractFileIconProvider*)(self) )->QAbstractFileIconProvider::options();
	return static_cast<int>(_ret);

}

void QAbstractFileIconProvider_delete(QAbstractFileIconProvider* self) {
	delete self;
}

