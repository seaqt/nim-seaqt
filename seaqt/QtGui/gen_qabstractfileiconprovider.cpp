#include <QAbstractFileIconProvider>
#include <QFileInfo>
#include <QIcon>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qabstractfileiconprovider.h>
#include "gen_qabstractfileiconprovider.h"
class VirtualQAbstractFileIconProvider final : public QAbstractFileIconProvider {
	const QAbstractFileIconProvider_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractFileIconProvider_VTable* QAbstractFileIconProvider_vtbl(const VirtualQAbstractFileIconProvider* self);
	friend void* QAbstractFileIconProvider_vdata(const VirtualQAbstractFileIconProvider* self);
	friend void QAbstractFileIconProvider_setVdata(VirtualQAbstractFileIconProvider* self, void* vdata);

	VirtualQAbstractFileIconProvider(const QAbstractFileIconProvider_VTable* vtbl, void* vdata): QAbstractFileIconProvider(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractFileIconProvider() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QIcon icon(QAbstractFileIconProvider::IconType param1) const override {
		if (vtbl->icon == 0) {
			return QAbstractFileIconProvider::icon(param1);
		}

		QAbstractFileIconProvider::IconType param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QIcon* callback_return_value = vtbl->icon(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QIcon* QAbstractFileIconProvider_virtualbase_icon(const VirtualQAbstractFileIconProvider* self, int param1);

	virtual QIcon icon(const QFileInfo& param1) const override {
		if (vtbl->iconWithQFileInfo == 0) {
			return QAbstractFileIconProvider::icon(param1);
		}

		const QFileInfo& param1_ret = param1;
		// Cast returned reference into pointer
		QFileInfo* sigval1 = const_cast<QFileInfo*>(&param1_ret);

		QIcon* callback_return_value = vtbl->iconWithQFileInfo(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QIcon* QAbstractFileIconProvider_virtualbase_iconWithQFileInfo(const VirtualQAbstractFileIconProvider* self, QFileInfo* param1);

	virtual QString type(const QFileInfo& param1) const override {
		if (vtbl->type == 0) {
			return QAbstractFileIconProvider::type(param1);
		}

		const QFileInfo& param1_ret = param1;
		// Cast returned reference into pointer
		QFileInfo* sigval1 = const_cast<QFileInfo*>(&param1_ret);

		struct miqt_string callback_return_value = vtbl->type(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);

		return callback_return_value_QString;
	}

	friend struct miqt_string QAbstractFileIconProvider_virtualbase_type(const VirtualQAbstractFileIconProvider* self, QFileInfo* param1);

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

VirtualQAbstractFileIconProvider* QAbstractFileIconProvider_new(const QAbstractFileIconProvider_VTable* vtbl, void* vdata) {
	return new VirtualQAbstractFileIconProvider(vtbl, vdata);
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

QIcon* QAbstractFileIconProvider_virtualbase_icon(const VirtualQAbstractFileIconProvider* self, int param1) {

	return new QIcon(self->QAbstractFileIconProvider::icon(static_cast<VirtualQAbstractFileIconProvider::IconType>(param1)));
}

QIcon* QAbstractFileIconProvider_virtualbase_iconWithQFileInfo(const VirtualQAbstractFileIconProvider* self, QFileInfo* param1) {

	return new QIcon(self->QAbstractFileIconProvider::icon(*param1));
}

struct miqt_string QAbstractFileIconProvider_virtualbase_type(const VirtualQAbstractFileIconProvider* self, QFileInfo* param1) {

	QString _ret = self->QAbstractFileIconProvider::type(*param1);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
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

const QAbstractFileIconProvider_VTable* QAbstractFileIconProvider_vtbl(const VirtualQAbstractFileIconProvider* self) { return self->vtbl; }
void* QAbstractFileIconProvider_vdata(const VirtualQAbstractFileIconProvider* self) { return self->vdata; }
void QAbstractFileIconProvider_setVdata(VirtualQAbstractFileIconProvider* self, void* vdata) { self->vdata = vdata; }

void QAbstractFileIconProvider_delete(QAbstractFileIconProvider* self) {
	delete self;
}

