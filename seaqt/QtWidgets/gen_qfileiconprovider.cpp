#include <QAbstractFileIconProvider>
#include <QFileIconProvider>
#include <QFileInfo>
#include <QIcon>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qfileiconprovider.h>
#include "gen_qfileiconprovider.h"
class VirtualQFileIconProvider final : public QFileIconProvider {
	const QFileIconProvider_VTable* vtbl;
	void* vdata;
public:
	friend const QFileIconProvider_VTable* QFileIconProvider_vtbl(const VirtualQFileIconProvider* self);
	friend void* QFileIconProvider_vdata(const VirtualQFileIconProvider* self);
	friend void QFileIconProvider_setVdata(VirtualQFileIconProvider* self, void* vdata);

	VirtualQFileIconProvider(const QFileIconProvider_VTable* vtbl, void* vdata): QFileIconProvider(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQFileIconProvider() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QIcon icon(QAbstractFileIconProvider::IconType type) const override {
		if (vtbl->icon == 0) {
			return QFileIconProvider::icon(type);
		}

		QAbstractFileIconProvider::IconType type_ret = type;
		int sigval1 = static_cast<int>(type_ret);

		QIcon* callback_return_value = vtbl->icon(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QIcon* QFileIconProvider_virtualbase_icon(const VirtualQFileIconProvider* self, int type);

	virtual QIcon icon(const QFileInfo& info) const override {
		if (vtbl->iconWithInfo == 0) {
			return QFileIconProvider::icon(info);
		}

		const QFileInfo& info_ret = info;
		// Cast returned reference into pointer
		QFileInfo* sigval1 = const_cast<QFileInfo*>(&info_ret);

		QIcon* callback_return_value = vtbl->iconWithInfo(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QIcon* QFileIconProvider_virtualbase_iconWithInfo(const VirtualQFileIconProvider* self, QFileInfo* info);

	virtual QString type(const QFileInfo& param1) const override {
		if (vtbl->type == 0) {
			return QFileIconProvider::type(param1);
		}

		const QFileInfo& param1_ret = param1;
		// Cast returned reference into pointer
		QFileInfo* sigval1 = const_cast<QFileInfo*>(&param1_ret);

		struct miqt_string callback_return_value = vtbl->type(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);

		return callback_return_value_QString;
	}

	friend struct miqt_string QFileIconProvider_virtualbase_type(const VirtualQFileIconProvider* self, QFileInfo* param1);

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

VirtualQFileIconProvider* QFileIconProvider_new(const QFileIconProvider_VTable* vtbl, void* vdata) {
	return new VirtualQFileIconProvider(vtbl, vdata);
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

QIcon* QFileIconProvider_virtualbase_icon(const VirtualQFileIconProvider* self, int type) {

	return new QIcon(self->QFileIconProvider::icon(static_cast<VirtualQFileIconProvider::IconType>(type)));
}

QIcon* QFileIconProvider_virtualbase_iconWithInfo(const VirtualQFileIconProvider* self, QFileInfo* info) {

	return new QIcon(self->QFileIconProvider::icon(*info));
}

struct miqt_string QFileIconProvider_virtualbase_type(const VirtualQFileIconProvider* self, QFileInfo* param1) {

	QString _ret = self->QFileIconProvider::type(*param1);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
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

const QFileIconProvider_VTable* QFileIconProvider_vtbl(const VirtualQFileIconProvider* self) { return self->vtbl; }
void* QFileIconProvider_vdata(const VirtualQFileIconProvider* self) { return self->vdata; }
void QFileIconProvider_setVdata(VirtualQFileIconProvider* self, void* vdata) { self->vdata = vdata; }

void QFileIconProvider_delete(QFileIconProvider* self) {
	delete self;
}

