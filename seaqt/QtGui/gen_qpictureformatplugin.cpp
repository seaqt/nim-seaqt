#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPicture>
#include <QPictureFormatPlugin>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qpictureformatplugin.h>
#include "gen_qpictureformatplugin.h"
class VirtualQPictureFormatPlugin final : public QPictureFormatPlugin {
	const QPictureFormatPlugin_VTable* vtbl;
	void* vdata;
public:
	friend const QPictureFormatPlugin_VTable* QPictureFormatPlugin_vtbl(const VirtualQPictureFormatPlugin* self);
	friend void* QPictureFormatPlugin_vdata(const VirtualQPictureFormatPlugin* self);
	friend void QPictureFormatPlugin_setVdata(VirtualQPictureFormatPlugin* self, void* vdata);

	VirtualQPictureFormatPlugin(const QPictureFormatPlugin_VTable* vtbl, void* vdata): QPictureFormatPlugin(), vtbl(vtbl), vdata(vdata) {}
	VirtualQPictureFormatPlugin(const QPictureFormatPlugin_VTable* vtbl, void* vdata, QObject* parent): QPictureFormatPlugin(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPictureFormatPlugin() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPictureFormatPlugin::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QPictureFormatPlugin_virtualbase_metaObject(const VirtualQPictureFormatPlugin* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPictureFormatPlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QPictureFormatPlugin_virtualbase_metacast(VirtualQPictureFormatPlugin* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPictureFormatPlugin::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPictureFormatPlugin_virtualbase_metacall(VirtualQPictureFormatPlugin* self, int param1, int param2, void** param3);

	virtual bool loadPicture(const QString& format, const QString& filename, QPicture* pic) override {
		if (vtbl->loadPicture == 0) {
			return QPictureFormatPlugin::loadPicture(format, filename, pic);
		}

		const QString format_ret = format;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray format_b = format_ret.toUtf8();
		struct miqt_string format_ms;
		format_ms.len = format_b.length();
		format_ms.data = static_cast<char*>(malloc(format_ms.len));
		memcpy(format_ms.data, format_b.data(), format_ms.len);
		struct miqt_string sigval1 = format_ms;
		const QString filename_ret = filename;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray filename_b = filename_ret.toUtf8();
		struct miqt_string filename_ms;
		filename_ms.len = filename_b.length();
		filename_ms.data = static_cast<char*>(malloc(filename_ms.len));
		memcpy(filename_ms.data, filename_b.data(), filename_ms.len);
		struct miqt_string sigval2 = filename_ms;
		QPicture* sigval3 = pic;

		bool callback_return_value = vtbl->loadPicture(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QPictureFormatPlugin_virtualbase_loadPicture(VirtualQPictureFormatPlugin* self, struct miqt_string format, struct miqt_string filename, QPicture* pic);

	virtual bool savePicture(const QString& format, const QString& filename, const QPicture& pic) override {
		if (vtbl->savePicture == 0) {
			return QPictureFormatPlugin::savePicture(format, filename, pic);
		}

		const QString format_ret = format;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray format_b = format_ret.toUtf8();
		struct miqt_string format_ms;
		format_ms.len = format_b.length();
		format_ms.data = static_cast<char*>(malloc(format_ms.len));
		memcpy(format_ms.data, format_b.data(), format_ms.len);
		struct miqt_string sigval1 = format_ms;
		const QString filename_ret = filename;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray filename_b = filename_ret.toUtf8();
		struct miqt_string filename_ms;
		filename_ms.len = filename_b.length();
		filename_ms.data = static_cast<char*>(malloc(filename_ms.len));
		memcpy(filename_ms.data, filename_b.data(), filename_ms.len);
		struct miqt_string sigval2 = filename_ms;
		const QPicture& pic_ret = pic;
		// Cast returned reference into pointer
		QPicture* sigval3 = const_cast<QPicture*>(&pic_ret);

		bool callback_return_value = vtbl->savePicture(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QPictureFormatPlugin_virtualbase_savePicture(VirtualQPictureFormatPlugin* self, struct miqt_string format, struct miqt_string filename, QPicture* pic);

	virtual bool installIOHandler(const QString& format) override {
		if (vtbl->installIOHandler == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		const QString format_ret = format;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray format_b = format_ret.toUtf8();
		struct miqt_string format_ms;
		format_ms.len = format_b.length();
		format_ms.data = static_cast<char*>(malloc(format_ms.len));
		memcpy(format_ms.data, format_b.data(), format_ms.len);
		struct miqt_string sigval1 = format_ms;

		bool callback_return_value = vtbl->installIOHandler(this, sigval1);

		return callback_return_value;
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPictureFormatPlugin::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QPictureFormatPlugin_virtualbase_event(VirtualQPictureFormatPlugin* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPictureFormatPlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPictureFormatPlugin_virtualbase_eventFilter(VirtualQPictureFormatPlugin* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPictureFormatPlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QPictureFormatPlugin_virtualbase_timerEvent(VirtualQPictureFormatPlugin* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPictureFormatPlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QPictureFormatPlugin_virtualbase_childEvent(VirtualQPictureFormatPlugin* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPictureFormatPlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QPictureFormatPlugin_virtualbase_customEvent(VirtualQPictureFormatPlugin* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPictureFormatPlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QPictureFormatPlugin_virtualbase_connectNotify(VirtualQPictureFormatPlugin* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPictureFormatPlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QPictureFormatPlugin_virtualbase_disconnectNotify(VirtualQPictureFormatPlugin* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QPictureFormatPlugin_protectedbase_sender(const VirtualQPictureFormatPlugin* self);
	friend int QPictureFormatPlugin_protectedbase_senderSignalIndex(const VirtualQPictureFormatPlugin* self);
	friend int QPictureFormatPlugin_protectedbase_receivers(const VirtualQPictureFormatPlugin* self, const char* signal);
	friend bool QPictureFormatPlugin_protectedbase_isSignalConnected(const VirtualQPictureFormatPlugin* self, QMetaMethod* signal);
};

VirtualQPictureFormatPlugin* QPictureFormatPlugin_new(const QPictureFormatPlugin_VTable* vtbl, void* vdata) {
	return new VirtualQPictureFormatPlugin(vtbl, vdata);
}

VirtualQPictureFormatPlugin* QPictureFormatPlugin_new2(const QPictureFormatPlugin_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQPictureFormatPlugin(vtbl, vdata, parent);
}

void QPictureFormatPlugin_virtbase(QPictureFormatPlugin* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QPictureFormatPlugin_metaObject(const QPictureFormatPlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPictureFormatPlugin_metacast(QPictureFormatPlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPictureFormatPlugin_metacall(QPictureFormatPlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPictureFormatPlugin_tr(const char* s) {
	QString _ret = QPictureFormatPlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPictureFormatPlugin_trUtf8(const char* s) {
	QString _ret = QPictureFormatPlugin::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QPictureFormatPlugin_loadPicture(QPictureFormatPlugin* self, struct miqt_string format, struct miqt_string filename, QPicture* pic) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return self->loadPicture(format_QString, filename_QString, pic);
}

bool QPictureFormatPlugin_savePicture(QPictureFormatPlugin* self, struct miqt_string format, struct miqt_string filename, QPicture* pic) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return self->savePicture(format_QString, filename_QString, *pic);
}

bool QPictureFormatPlugin_installIOHandler(QPictureFormatPlugin* self, struct miqt_string format) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	return self->installIOHandler(format_QString);
}

struct miqt_string QPictureFormatPlugin_tr2(const char* s, const char* c) {
	QString _ret = QPictureFormatPlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPictureFormatPlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QPictureFormatPlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPictureFormatPlugin_trUtf82(const char* s, const char* c) {
	QString _ret = QPictureFormatPlugin::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPictureFormatPlugin_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QPictureFormatPlugin::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPictureFormatPlugin_virtualbase_metaObject(const VirtualQPictureFormatPlugin* self) {

	return (QMetaObject*) self->QPictureFormatPlugin::metaObject();
}

void* QPictureFormatPlugin_virtualbase_metacast(VirtualQPictureFormatPlugin* self, const char* param1) {

	return self->QPictureFormatPlugin::qt_metacast(param1);
}

int QPictureFormatPlugin_virtualbase_metacall(VirtualQPictureFormatPlugin* self, int param1, int param2, void** param3) {

	return self->QPictureFormatPlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QPictureFormatPlugin_virtualbase_loadPicture(VirtualQPictureFormatPlugin* self, struct miqt_string format, struct miqt_string filename, QPicture* pic) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);

	return self->QPictureFormatPlugin::loadPicture(format_QString, filename_QString, pic);
}

bool QPictureFormatPlugin_virtualbase_savePicture(VirtualQPictureFormatPlugin* self, struct miqt_string format, struct miqt_string filename, QPicture* pic) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);

	return self->QPictureFormatPlugin::savePicture(format_QString, filename_QString, *pic);
}

bool QPictureFormatPlugin_virtualbase_event(VirtualQPictureFormatPlugin* self, QEvent* event) {

	return self->QPictureFormatPlugin::event(event);
}

bool QPictureFormatPlugin_virtualbase_eventFilter(VirtualQPictureFormatPlugin* self, QObject* watched, QEvent* event) {

	return self->QPictureFormatPlugin::eventFilter(watched, event);
}

void QPictureFormatPlugin_virtualbase_timerEvent(VirtualQPictureFormatPlugin* self, QTimerEvent* event) {

	self->QPictureFormatPlugin::timerEvent(event);
}

void QPictureFormatPlugin_virtualbase_childEvent(VirtualQPictureFormatPlugin* self, QChildEvent* event) {

	self->QPictureFormatPlugin::childEvent(event);
}

void QPictureFormatPlugin_virtualbase_customEvent(VirtualQPictureFormatPlugin* self, QEvent* event) {

	self->QPictureFormatPlugin::customEvent(event);
}

void QPictureFormatPlugin_virtualbase_connectNotify(VirtualQPictureFormatPlugin* self, QMetaMethod* signal) {

	self->QPictureFormatPlugin::connectNotify(*signal);
}

void QPictureFormatPlugin_virtualbase_disconnectNotify(VirtualQPictureFormatPlugin* self, QMetaMethod* signal) {

	self->QPictureFormatPlugin::disconnectNotify(*signal);
}

const QMetaObject* QPictureFormatPlugin_staticMetaObject() { return &QPictureFormatPlugin::staticMetaObject; }

const QPictureFormatPlugin_VTable* QPictureFormatPlugin_vtbl(const VirtualQPictureFormatPlugin* self) { return self->vtbl; }
void* QPictureFormatPlugin_vdata(const VirtualQPictureFormatPlugin* self) { return self->vdata; }
void QPictureFormatPlugin_setVdata(VirtualQPictureFormatPlugin* self, void* vdata) { self->vdata = vdata; }

QObject* QPictureFormatPlugin_protectedbase_sender(const VirtualQPictureFormatPlugin* self) {
	return self->sender();
}

int QPictureFormatPlugin_protectedbase_senderSignalIndex(const VirtualQPictureFormatPlugin* self) {
	return self->senderSignalIndex();
}

int QPictureFormatPlugin_protectedbase_receivers(const VirtualQPictureFormatPlugin* self, const char* signal) {
	return self->receivers(signal);
}

bool QPictureFormatPlugin_protectedbase_isSignalConnected(const VirtualQPictureFormatPlugin* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPictureFormatPlugin_delete(QPictureFormatPlugin* self) {
	delete self;
}

