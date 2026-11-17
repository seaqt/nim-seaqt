#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QImage>
#include <QImageIOHandler>
#include <QImageIOPlugin>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRect>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qimageiohandler.h>
#include "gen_qimageiohandler.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQImageIOHandler final : public QImageIOHandler {
	const QImageIOHandler_VTable* vtbl;
public:
	friend void* QImageIOHandler_vdata(VirtualQImageIOHandler* self);
	friend VirtualQImageIOHandler* vdata_QImageIOHandler(void* vdata);

	VirtualQImageIOHandler(const QImageIOHandler_VTable* vtbl): QImageIOHandler(), vtbl(vtbl) {}

	virtual ~VirtualQImageIOHandler() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QByteArray name() const override {
		if (vtbl->name == 0) {
			return QImageIOHandler::name();
		}

		struct seaqt_string callback_return_value = vtbl->name(this);
		QByteArray callback_return_value_QByteArray(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QByteArray;
	}

	friend struct seaqt_string QImageIOHandler_virtualbase_name(const VirtualQImageIOHandler* self);

	virtual bool canRead() const override {
		if (vtbl->canRead == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		bool callback_return_value = vtbl->canRead(this);
		return callback_return_value;
	}

	virtual bool read(QImage* image) override {
		if (vtbl->read == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		QImage* sigval1 = image;
		bool callback_return_value = vtbl->read(this, sigval1);
		return callback_return_value;
	}

	virtual bool write(const QImage& image) override {
		if (vtbl->write == 0) {
			return QImageIOHandler::write(image);
		}

		const QImage& image_ret = image;
		// Cast returned reference into pointer
		QImage* sigval1 = const_cast<QImage*>(&image_ret);
		bool callback_return_value = vtbl->write(this, sigval1);
		return callback_return_value;
	}

	friend bool QImageIOHandler_virtualbase_write(VirtualQImageIOHandler* self, QImage* image);

	virtual QVariant option(QImageIOHandler::ImageOption option) const override {
		if (vtbl->option == 0) {
			return QImageIOHandler::option(option);
		}

		QImageIOHandler::ImageOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);
		QVariant* callback_return_value = vtbl->option(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QImageIOHandler_virtualbase_option(const VirtualQImageIOHandler* self, int option);

	virtual void setOption(QImageIOHandler::ImageOption option, const QVariant& value) override {
		if (vtbl->setOption == 0) {
			QImageIOHandler::setOption(option, value);
			return;
		}

		QImageIOHandler::ImageOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
		vtbl->setOption(this, sigval1, sigval2);
	}

	friend void QImageIOHandler_virtualbase_setOption(VirtualQImageIOHandler* self, int option, QVariant* value);

	virtual bool supportsOption(QImageIOHandler::ImageOption option) const override {
		if (vtbl->supportsOption == 0) {
			return QImageIOHandler::supportsOption(option);
		}

		QImageIOHandler::ImageOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);
		bool callback_return_value = vtbl->supportsOption(this, sigval1);
		return callback_return_value;
	}

	friend bool QImageIOHandler_virtualbase_supportsOption(const VirtualQImageIOHandler* self, int option);

	virtual bool jumpToNextImage() override {
		if (vtbl->jumpToNextImage == 0) {
			return QImageIOHandler::jumpToNextImage();
		}

		bool callback_return_value = vtbl->jumpToNextImage(this);
		return callback_return_value;
	}

	friend bool QImageIOHandler_virtualbase_jumpToNextImage(VirtualQImageIOHandler* self);

	virtual bool jumpToImage(int imageNumber) override {
		if (vtbl->jumpToImage == 0) {
			return QImageIOHandler::jumpToImage(imageNumber);
		}

		int sigval1 = imageNumber;
		bool callback_return_value = vtbl->jumpToImage(this, sigval1);
		return callback_return_value;
	}

	friend bool QImageIOHandler_virtualbase_jumpToImage(VirtualQImageIOHandler* self, int imageNumber);

	virtual int loopCount() const override {
		if (vtbl->loopCount == 0) {
			return QImageIOHandler::loopCount();
		}

		int callback_return_value = vtbl->loopCount(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QImageIOHandler_virtualbase_loopCount(const VirtualQImageIOHandler* self);

	virtual int imageCount() const override {
		if (vtbl->imageCount == 0) {
			return QImageIOHandler::imageCount();
		}

		int callback_return_value = vtbl->imageCount(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QImageIOHandler_virtualbase_imageCount(const VirtualQImageIOHandler* self);

	virtual int nextImageDelay() const override {
		if (vtbl->nextImageDelay == 0) {
			return QImageIOHandler::nextImageDelay();
		}

		int callback_return_value = vtbl->nextImageDelay(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QImageIOHandler_virtualbase_nextImageDelay(const VirtualQImageIOHandler* self);

	virtual int currentImageNumber() const override {
		if (vtbl->currentImageNumber == 0) {
			return QImageIOHandler::currentImageNumber();
		}

		int callback_return_value = vtbl->currentImageNumber(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QImageIOHandler_virtualbase_currentImageNumber(const VirtualQImageIOHandler* self);

	virtual QRect currentImageRect() const override {
		if (vtbl->currentImageRect == 0) {
			return QImageIOHandler::currentImageRect();
		}

		QRect* callback_return_value = vtbl->currentImageRect(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QRect* QImageIOHandler_virtualbase_currentImageRect(const VirtualQImageIOHandler* self);

};

VirtualQImageIOHandler* QImageIOHandler_new(const QImageIOHandler_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQImageIOHandler>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQImageIOHandler(vtbl) : nullptr;
}

void QImageIOHandler_setDevice(QImageIOHandler* self, QIODevice* device) {
	self->setDevice(device);
}

QIODevice* QImageIOHandler_device(const QImageIOHandler* self) {
	return self->device();
}

void QImageIOHandler_setFormat_cQByteArray(QImageIOHandler* self, struct seaqt_string format) {
	QByteArray format_QByteArray(format.data, format.len);
	self->setFormat(format_QByteArray);
}

void QImageIOHandler_setFormat_const_cQByteArray(const QImageIOHandler* self, struct seaqt_string format) {
	QByteArray format_QByteArray(format.data, format.len);
	self->setFormat(format_QByteArray);
}

struct seaqt_string QImageIOHandler_format(const QImageIOHandler* self) {
	QByteArray _qb = self->format();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QImageIOHandler_name(const QImageIOHandler* self) {
	QByteArray _qb = self->name();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

bool QImageIOHandler_canRead(const QImageIOHandler* self) {
	return self->canRead();
}

bool QImageIOHandler_read(QImageIOHandler* self, QImage* image) {
	return self->read(image);
}

bool QImageIOHandler_write(QImageIOHandler* self, QImage* image) {
	return self->write(*image);
}

QVariant* QImageIOHandler_option(const QImageIOHandler* self, int option) {
	return new QVariant(self->option(static_cast<QImageIOHandler::ImageOption>(option)));
}

void QImageIOHandler_setOption(QImageIOHandler* self, int option, QVariant* value) {
	self->setOption(static_cast<QImageIOHandler::ImageOption>(option), *value);
}

bool QImageIOHandler_supportsOption(const QImageIOHandler* self, int option) {
	return self->supportsOption(static_cast<QImageIOHandler::ImageOption>(option));
}

bool QImageIOHandler_jumpToNextImage(QImageIOHandler* self) {
	return self->jumpToNextImage();
}

bool QImageIOHandler_jumpToImage(QImageIOHandler* self, int imageNumber) {
	return self->jumpToImage(static_cast<int>(imageNumber));
}

int QImageIOHandler_loopCount(const QImageIOHandler* self) {
	return self->loopCount();
}

int QImageIOHandler_imageCount(const QImageIOHandler* self) {
	return self->imageCount();
}

int QImageIOHandler_nextImageDelay(const QImageIOHandler* self) {
	return self->nextImageDelay();
}

int QImageIOHandler_currentImageNumber(const QImageIOHandler* self) {
	return self->currentImageNumber();
}

QRect* QImageIOHandler_currentImageRect(const QImageIOHandler* self) {
	return new QRect(self->currentImageRect());
}

void* QImageIOHandler_vdata(VirtualQImageIOHandler* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQImageIOHandler>()); }
VirtualQImageIOHandler* vdata_QImageIOHandler(void* vdata) { return reinterpret_cast<VirtualQImageIOHandler*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQImageIOHandler>()); }

struct seaqt_string QImageIOHandler_virtualbase_name(const VirtualQImageIOHandler* self) {

	QByteArray _qb = self->QImageIOHandler::name();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

bool QImageIOHandler_virtualbase_write(VirtualQImageIOHandler* self, QImage* image) {

	return self->QImageIOHandler::write(*image);
}

QVariant* QImageIOHandler_virtualbase_option(const VirtualQImageIOHandler* self, int option) {

	return new QVariant(self->QImageIOHandler::option(static_cast<VirtualQImageIOHandler::ImageOption>(option)));
}

void QImageIOHandler_virtualbase_setOption(VirtualQImageIOHandler* self, int option, QVariant* value) {

	self->QImageIOHandler::setOption(static_cast<VirtualQImageIOHandler::ImageOption>(option), *value);
}

bool QImageIOHandler_virtualbase_supportsOption(const VirtualQImageIOHandler* self, int option) {

	return self->QImageIOHandler::supportsOption(static_cast<VirtualQImageIOHandler::ImageOption>(option));
}

bool QImageIOHandler_virtualbase_jumpToNextImage(VirtualQImageIOHandler* self) {

	return self->QImageIOHandler::jumpToNextImage();
}

bool QImageIOHandler_virtualbase_jumpToImage(VirtualQImageIOHandler* self, int imageNumber) {

	return self->QImageIOHandler::jumpToImage(static_cast<int>(imageNumber));
}

int QImageIOHandler_virtualbase_loopCount(const VirtualQImageIOHandler* self) {

	return self->QImageIOHandler::loopCount();
}

int QImageIOHandler_virtualbase_imageCount(const VirtualQImageIOHandler* self) {

	return self->QImageIOHandler::imageCount();
}

int QImageIOHandler_virtualbase_nextImageDelay(const VirtualQImageIOHandler* self) {

	return self->QImageIOHandler::nextImageDelay();
}

int QImageIOHandler_virtualbase_currentImageNumber(const VirtualQImageIOHandler* self) {

	return self->QImageIOHandler::currentImageNumber();
}

QRect* QImageIOHandler_virtualbase_currentImageRect(const VirtualQImageIOHandler* self) {

	return new QRect(self->QImageIOHandler::currentImageRect());
}

void QImageIOHandler_delete(QImageIOHandler* self) {
	delete self;
}

class VirtualQImageIOPlugin final : public QImageIOPlugin {
	const QImageIOPlugin_VTable* vtbl;
public:
	friend void* QImageIOPlugin_vdata(VirtualQImageIOPlugin* self);
	friend VirtualQImageIOPlugin* vdata_QImageIOPlugin(void* vdata);

	VirtualQImageIOPlugin(const QImageIOPlugin_VTable* vtbl): QImageIOPlugin(), vtbl(vtbl) {}
	VirtualQImageIOPlugin(const QImageIOPlugin_VTable* vtbl, QObject* parent): QImageIOPlugin(parent), vtbl(vtbl) {}

	virtual ~VirtualQImageIOPlugin() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QImageIOPlugin::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QImageIOPlugin_virtualbase_metaObject(const VirtualQImageIOPlugin* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QImageIOPlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QImageIOPlugin_virtualbase_metacast(VirtualQImageIOPlugin* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QImageIOPlugin::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QImageIOPlugin_virtualbase_metacall(VirtualQImageIOPlugin* self, int param1, int param2, void** param3);

	virtual QImageIOPlugin::Capabilities capabilities(QIODevice* device, const QByteArray& format) const override {
		if (vtbl->capabilities == 0) {
			return QImageIOPlugin::Capabilities(); // Pure virtual, there is no base we can call
		}

		QIODevice* sigval1 = device;
		const QByteArray format_qb = format;
		struct seaqt_string format_ms;
		format_ms.len = format_qb.length();
		format_ms.data = static_cast<char*>(malloc(format_ms.len));
		memcpy(format_ms.data, format_qb.data(), format_ms.len);
		struct seaqt_string sigval2 = format_ms;
		int callback_return_value = vtbl->capabilities(this, sigval1, sigval2);
		return static_cast<QImageIOPlugin::Capabilities>(callback_return_value);
	}

	virtual QImageIOHandler* create(QIODevice* device, const QByteArray& format) const override {
		if (vtbl->create == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QIODevice* sigval1 = device;
		const QByteArray format_qb = format;
		struct seaqt_string format_ms;
		format_ms.len = format_qb.length();
		format_ms.data = static_cast<char*>(malloc(format_ms.len));
		memcpy(format_ms.data, format_qb.data(), format_ms.len);
		struct seaqt_string sigval2 = format_ms;
		QImageIOHandler* callback_return_value = vtbl->create(this, sigval1, sigval2);
		return callback_return_value;
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QImageIOPlugin::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QImageIOPlugin_virtualbase_event(VirtualQImageIOPlugin* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QImageIOPlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QImageIOPlugin_virtualbase_eventFilter(VirtualQImageIOPlugin* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QImageIOPlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QImageIOPlugin_virtualbase_timerEvent(VirtualQImageIOPlugin* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QImageIOPlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QImageIOPlugin_virtualbase_childEvent(VirtualQImageIOPlugin* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QImageIOPlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QImageIOPlugin_virtualbase_customEvent(VirtualQImageIOPlugin* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QImageIOPlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QImageIOPlugin_virtualbase_connectNotify(VirtualQImageIOPlugin* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QImageIOPlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QImageIOPlugin_virtualbase_disconnectNotify(VirtualQImageIOPlugin* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QImageIOPlugin_protectedbase_sender(const VirtualQImageIOPlugin* self);
	friend int QImageIOPlugin_protectedbase_senderSignalIndex(const VirtualQImageIOPlugin* self);
	friend int QImageIOPlugin_protectedbase_receivers(const VirtualQImageIOPlugin* self, const char* signal);
	friend bool QImageIOPlugin_protectedbase_isSignalConnected(const VirtualQImageIOPlugin* self, QMetaMethod* signal);
};

VirtualQImageIOPlugin* QImageIOPlugin_new(const QImageIOPlugin_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQImageIOPlugin>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQImageIOPlugin(vtbl) : nullptr;
}

VirtualQImageIOPlugin* QImageIOPlugin_new_parent(const QImageIOPlugin_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQImageIOPlugin>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQImageIOPlugin(vtbl, parent) : nullptr;
}

void QImageIOPlugin_virtbase(QImageIOPlugin* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QImageIOPlugin_metaObject(const QImageIOPlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QImageIOPlugin_metacast(QImageIOPlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QImageIOPlugin_metacall(QImageIOPlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QImageIOPlugin_tr_s(const char* s) {
	QString _ret = QImageIOPlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QImageIOPlugin_trUtf8_s(const char* s) {
	QString _ret = QImageIOPlugin::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QImageIOPlugin_capabilities(const QImageIOPlugin* self, QIODevice* device, struct seaqt_string format) {
	QByteArray format_QByteArray(format.data, format.len);
	QImageIOPlugin::Capabilities _ret = self->capabilities(device, format_QByteArray);
	return static_cast<int>(_ret);
}

QImageIOHandler* QImageIOPlugin_create(const QImageIOPlugin* self, QIODevice* device, struct seaqt_string format) {
	QByteArray format_QByteArray(format.data, format.len);
	return self->create(device, format_QByteArray);
}

struct seaqt_string QImageIOPlugin_tr_s_c(const char* s, const char* c) {
	QString _ret = QImageIOPlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QImageIOPlugin_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QImageIOPlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QImageIOPlugin_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QImageIOPlugin::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QImageIOPlugin_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QImageIOPlugin::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QImageIOPlugin_staticMetaObject() { return &QImageIOPlugin::staticMetaObject; }
void* QImageIOPlugin_vdata(VirtualQImageIOPlugin* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQImageIOPlugin>()); }
VirtualQImageIOPlugin* vdata_QImageIOPlugin(void* vdata) { return reinterpret_cast<VirtualQImageIOPlugin*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQImageIOPlugin>()); }

QMetaObject* QImageIOPlugin_virtualbase_metaObject(const VirtualQImageIOPlugin* self) {

	return (QMetaObject*) self->QImageIOPlugin::metaObject();
}

void* QImageIOPlugin_virtualbase_metacast(VirtualQImageIOPlugin* self, const char* param1) {

	return self->QImageIOPlugin::qt_metacast(param1);
}

int QImageIOPlugin_virtualbase_metacall(VirtualQImageIOPlugin* self, int param1, int param2, void** param3) {

	return self->QImageIOPlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QImageIOPlugin_virtualbase_event(VirtualQImageIOPlugin* self, QEvent* event) {

	return self->QImageIOPlugin::event(event);
}

bool QImageIOPlugin_virtualbase_eventFilter(VirtualQImageIOPlugin* self, QObject* watched, QEvent* event) {

	return self->QImageIOPlugin::eventFilter(watched, event);
}

void QImageIOPlugin_virtualbase_timerEvent(VirtualQImageIOPlugin* self, QTimerEvent* event) {

	self->QImageIOPlugin::timerEvent(event);
}

void QImageIOPlugin_virtualbase_childEvent(VirtualQImageIOPlugin* self, QChildEvent* event) {

	self->QImageIOPlugin::childEvent(event);
}

void QImageIOPlugin_virtualbase_customEvent(VirtualQImageIOPlugin* self, QEvent* event) {

	self->QImageIOPlugin::customEvent(event);
}

void QImageIOPlugin_virtualbase_connectNotify(VirtualQImageIOPlugin* self, QMetaMethod* signal) {

	self->QImageIOPlugin::connectNotify(*signal);
}

void QImageIOPlugin_virtualbase_disconnectNotify(VirtualQImageIOPlugin* self, QMetaMethod* signal) {

	self->QImageIOPlugin::disconnectNotify(*signal);
}

QObject* QImageIOPlugin_protectedbase_sender(const VirtualQImageIOPlugin* self) {
	return self->QImageIOPlugin::sender();
}

int QImageIOPlugin_protectedbase_senderSignalIndex(const VirtualQImageIOPlugin* self) {
	return self->QImageIOPlugin::senderSignalIndex();
}

int QImageIOPlugin_protectedbase_receivers(const VirtualQImageIOPlugin* self, const char* signal) {
	return self->QImageIOPlugin::receivers(signal);
}

bool QImageIOPlugin_protectedbase_isSignalConnected(const VirtualQImageIOPlugin* self, QMetaMethod* signal) {
	return self->QImageIOPlugin::isSignalConnected(*signal);
}

void QImageIOPlugin_delete(QImageIOPlugin* self) {
	delete self;
}

