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

	virtual QIcon icon(QFileIconProvider::IconType type) const override {
		if (vtbl->icon == 0) {
			return QFileIconProvider::icon(type);
		}

		QFileIconProvider::IconType type_ret = type;
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

	virtual QString type(const QFileInfo& info) const override {
		if (vtbl->type == 0) {
			return QFileIconProvider::type(info);
		}

		const QFileInfo& info_ret = info;
		// Cast returned reference into pointer
		QFileInfo* sigval1 = const_cast<QFileInfo*>(&info_ret);

		struct miqt_string callback_return_value = vtbl->type(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);

		return callback_return_value_QString;
	}

	friend struct miqt_string QFileIconProvider_virtualbase_type(const VirtualQFileIconProvider* self, QFileInfo* info);

};

VirtualQFileIconProvider* QFileIconProvider_new(const QFileIconProvider_VTable* vtbl, void* vdata) {
	return new VirtualQFileIconProvider(vtbl, vdata);
}

QIcon* QFileIconProvider_icon(const QFileIconProvider* self, int type) {
	return new QIcon(self->icon(static_cast<QFileIconProvider::IconType>(type)));
}

QIcon* QFileIconProvider_iconWithInfo(const QFileIconProvider* self, QFileInfo* info) {
	return new QIcon(self->icon(*info));
}

struct miqt_string QFileIconProvider_type(const QFileIconProvider* self, QFileInfo* info) {
	QString _ret = self->type(*info);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFileIconProvider_setOptions(QFileIconProvider* self, int options) {
	self->setOptions(static_cast<QFileIconProvider::Options>(options));
}

int QFileIconProvider_options(const QFileIconProvider* self) {
	QFileIconProvider::Options _ret = self->options();
	return static_cast<int>(_ret);
}

QIcon* QFileIconProvider_virtualbase_icon(const VirtualQFileIconProvider* self, int type) {

	return new QIcon(self->QFileIconProvider::icon(static_cast<VirtualQFileIconProvider::IconType>(type)));
}

QIcon* QFileIconProvider_virtualbase_iconWithInfo(const VirtualQFileIconProvider* self, QFileInfo* info) {

	return new QIcon(self->QFileIconProvider::icon(*info));
}

struct miqt_string QFileIconProvider_virtualbase_type(const VirtualQFileIconProvider* self, QFileInfo* info) {

	QString _ret = self->QFileIconProvider::type(*info);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QFileIconProvider_VTable* QFileIconProvider_vtbl(const VirtualQFileIconProvider* self) { return self->vtbl; }
void* QFileIconProvider_vdata(const VirtualQFileIconProvider* self) { return self->vdata; }
void QFileIconProvider_setVdata(VirtualQFileIconProvider* self, void* vdata) { self->vdata = vdata; }

void QFileIconProvider_delete(QFileIconProvider* self) {
	delete self;
}

