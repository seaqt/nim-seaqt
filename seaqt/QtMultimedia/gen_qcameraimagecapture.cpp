#include <QCameraImageCapture>
#include <QChildEvent>
#include <QEvent>
#include <QImage>
#include <QImageEncoderSettings>
#include <QList>
#include <QMediaBindableInterface>
#include <QMediaObject>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <QVideoFrame>
#include <qcameraimagecapture.h>
#include "gen_qcameraimagecapture.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QCameraImageCapture_error2(intptr_t, int, int, struct miqt_string);
void miqt_exec_callback_QCameraImageCapture_readyForCaptureChanged(intptr_t, bool);
void miqt_exec_callback_QCameraImageCapture_bufferFormatChanged(intptr_t, int);
void miqt_exec_callback_QCameraImageCapture_captureDestinationChanged(intptr_t, int);
void miqt_exec_callback_QCameraImageCapture_imageExposed(intptr_t, int);
void miqt_exec_callback_QCameraImageCapture_imageCaptured(intptr_t, int, QImage*);
void miqt_exec_callback_QCameraImageCapture_imageMetadataAvailable(intptr_t, int, struct miqt_string, QVariant*);
void miqt_exec_callback_QCameraImageCapture_imageAvailable(intptr_t, int, QVideoFrame*);
void miqt_exec_callback_QCameraImageCapture_imageSaved(intptr_t, int, struct miqt_string);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQCameraImageCapture final : public QCameraImageCapture {
	struct QCameraImageCapture_VTable* vtbl;
public:

	VirtualQCameraImageCapture(struct QCameraImageCapture_VTable* vtbl, QMediaObject* mediaObject): QCameraImageCapture(mediaObject), vtbl(vtbl) {};
	VirtualQCameraImageCapture(struct QCameraImageCapture_VTable* vtbl, QMediaObject* mediaObject, QObject* parent): QCameraImageCapture(mediaObject, parent), vtbl(vtbl) {};

	virtual ~VirtualQCameraImageCapture() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QCameraImageCapture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QCameraImageCapture_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QCameraImageCapture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QCameraImageCapture_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QCameraImageCapture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QCameraImageCapture_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QMediaObject* mediaObject() const override {
		if (vtbl->mediaObject == 0) {
			return QCameraImageCapture::mediaObject();
		}


		QMediaObject* callback_return_value = vtbl->mediaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMediaObject* QCameraImageCapture_virtualbase_mediaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool setMediaObject(QMediaObject* mediaObject) override {
		if (vtbl->setMediaObject == 0) {
			return QCameraImageCapture::setMediaObject(mediaObject);
		}

		QMediaObject* sigval1 = mediaObject;

		bool callback_return_value = vtbl->setMediaObject(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QCameraImageCapture_virtualbase_setMediaObject(void* self, QMediaObject* mediaObject);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QCameraImageCapture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QCameraImageCapture_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QCameraImageCapture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QCameraImageCapture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QCameraImageCapture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QCameraImageCapture_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QCameraImageCapture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QCameraImageCapture_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QCameraImageCapture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QCameraImageCapture_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QCameraImageCapture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QCameraImageCapture_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QCameraImageCapture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QCameraImageCapture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QCameraImageCapture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QCameraImageCapture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QCameraImageCapture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QCameraImageCapture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QCameraImageCapture* QCameraImageCapture_new(struct QCameraImageCapture_VTable* vtbl, QMediaObject* mediaObject) {
	return new VirtualQCameraImageCapture(vtbl, mediaObject);
}

QCameraImageCapture* QCameraImageCapture_new2(struct QCameraImageCapture_VTable* vtbl, QMediaObject* mediaObject, QObject* parent) {
	return new VirtualQCameraImageCapture(vtbl, mediaObject, parent);
}

void QCameraImageCapture_virtbase(QCameraImageCapture* src, QObject** outptr_QObject, QMediaBindableInterface** outptr_QMediaBindableInterface) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QMediaBindableInterface = static_cast<QMediaBindableInterface*>(src);
}

QMetaObject* QCameraImageCapture_metaObject(const QCameraImageCapture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QCameraImageCapture_metacast(QCameraImageCapture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QCameraImageCapture_metacall(QCameraImageCapture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QCameraImageCapture_tr(const char* s) {
	QString _ret = QCameraImageCapture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCameraImageCapture_trUtf8(const char* s) {
	QString _ret = QCameraImageCapture::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QCameraImageCapture_isAvailable(const QCameraImageCapture* self) {
	return self->isAvailable();
}

int QCameraImageCapture_availability(const QCameraImageCapture* self) {
	QMultimedia::AvailabilityStatus _ret = self->availability();
	return static_cast<int>(_ret);
}

QMediaObject* QCameraImageCapture_mediaObject(const QCameraImageCapture* self) {
	return self->mediaObject();
}

int QCameraImageCapture_error(const QCameraImageCapture* self) {
	QCameraImageCapture::Error _ret = self->error();
	return static_cast<int>(_ret);
}

struct miqt_string QCameraImageCapture_errorString(const QCameraImageCapture* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QCameraImageCapture_isReadyForCapture(const QCameraImageCapture* self) {
	return self->isReadyForCapture();
}

struct miqt_array /* of struct miqt_string */  QCameraImageCapture_supportedImageCodecs(const QCameraImageCapture* self) {
	QStringList _ret = self->supportedImageCodecs();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_string QCameraImageCapture_imageCodecDescription(const QCameraImageCapture* self, struct miqt_string codecName) {
	QString codecName_QString = QString::fromUtf8(codecName.data, codecName.len);
	QString _ret = self->imageCodecDescription(codecName_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QSize* */  QCameraImageCapture_supportedResolutions(const QCameraImageCapture* self) {
	QList<QSize> _ret = self->supportedResolutions();
	// Convert QList<> from C++ memory to manually-managed C memory
	QSize** _arr = static_cast<QSize**>(malloc(sizeof(QSize*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSize(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QImageEncoderSettings* QCameraImageCapture_encodingSettings(const QCameraImageCapture* self) {
	return new QImageEncoderSettings(self->encodingSettings());
}

void QCameraImageCapture_setEncodingSettings(QCameraImageCapture* self, QImageEncoderSettings* settings) {
	self->setEncodingSettings(*settings);
}

struct miqt_array /* of int */  QCameraImageCapture_supportedBufferFormats(const QCameraImageCapture* self) {
	QList<QVideoFrame::PixelFormat> _ret = self->supportedBufferFormats();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QVideoFrame::PixelFormat _lv_ret = _ret[i];
		_arr[i] = static_cast<int>(_lv_ret);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QCameraImageCapture_bufferFormat(const QCameraImageCapture* self) {
	QVideoFrame::PixelFormat _ret = self->bufferFormat();
	return static_cast<int>(_ret);
}

void QCameraImageCapture_setBufferFormat(QCameraImageCapture* self, int format) {
	self->setBufferFormat(static_cast<const QVideoFrame::PixelFormat>(format));
}

bool QCameraImageCapture_isCaptureDestinationSupported(const QCameraImageCapture* self, int destination) {
	return self->isCaptureDestinationSupported(static_cast<QCameraImageCapture::CaptureDestinations>(destination));
}

int QCameraImageCapture_captureDestination(const QCameraImageCapture* self) {
	QCameraImageCapture::CaptureDestinations _ret = self->captureDestination();
	return static_cast<int>(_ret);
}

void QCameraImageCapture_setCaptureDestination(QCameraImageCapture* self, int destination) {
	self->setCaptureDestination(static_cast<QCameraImageCapture::CaptureDestinations>(destination));
}

int QCameraImageCapture_capture(QCameraImageCapture* self) {
	return self->capture();
}

void QCameraImageCapture_cancelCapture(QCameraImageCapture* self) {
	self->cancelCapture();
}

void QCameraImageCapture_error2(QCameraImageCapture* self, int id, int error, struct miqt_string errorString) {
	QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->error(static_cast<int>(id), static_cast<QCameraImageCapture::Error>(error), errorString_QString);
}

void QCameraImageCapture_connect_error2(QCameraImageCapture* self, intptr_t slot) {
	VirtualQCameraImageCapture::connect(self, static_cast<void (QCameraImageCapture::*)(int, QCameraImageCapture::Error, const QString&)>(&QCameraImageCapture::error), self, [=](int id, QCameraImageCapture::Error error, const QString& errorString) {
		int sigval1 = id;
		QCameraImageCapture::Error error_ret = error;
		int sigval2 = static_cast<int>(error_ret);
		const QString errorString_ret = errorString;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray errorString_b = errorString_ret.toUtf8();
		struct miqt_string errorString_ms;
		errorString_ms.len = errorString_b.length();
		errorString_ms.data = static_cast<char*>(malloc(errorString_ms.len));
		memcpy(errorString_ms.data, errorString_b.data(), errorString_ms.len);
		struct miqt_string sigval3 = errorString_ms;
		miqt_exec_callback_QCameraImageCapture_error2(slot, sigval1, sigval2, sigval3);
	});
}

void QCameraImageCapture_readyForCaptureChanged(QCameraImageCapture* self, bool ready) {
	self->readyForCaptureChanged(ready);
}

void QCameraImageCapture_connect_readyForCaptureChanged(QCameraImageCapture* self, intptr_t slot) {
	VirtualQCameraImageCapture::connect(self, static_cast<void (QCameraImageCapture::*)(bool)>(&QCameraImageCapture::readyForCaptureChanged), self, [=](bool ready) {
		bool sigval1 = ready;
		miqt_exec_callback_QCameraImageCapture_readyForCaptureChanged(slot, sigval1);
	});
}

void QCameraImageCapture_bufferFormatChanged(QCameraImageCapture* self, int format) {
	self->bufferFormatChanged(static_cast<QVideoFrame::PixelFormat>(format));
}

void QCameraImageCapture_connect_bufferFormatChanged(QCameraImageCapture* self, intptr_t slot) {
	VirtualQCameraImageCapture::connect(self, static_cast<void (QCameraImageCapture::*)(QVideoFrame::PixelFormat)>(&QCameraImageCapture::bufferFormatChanged), self, [=](QVideoFrame::PixelFormat format) {
		QVideoFrame::PixelFormat format_ret = format;
		int sigval1 = static_cast<int>(format_ret);
		miqt_exec_callback_QCameraImageCapture_bufferFormatChanged(slot, sigval1);
	});
}

void QCameraImageCapture_captureDestinationChanged(QCameraImageCapture* self, int destination) {
	self->captureDestinationChanged(static_cast<QCameraImageCapture::CaptureDestinations>(destination));
}

void QCameraImageCapture_connect_captureDestinationChanged(QCameraImageCapture* self, intptr_t slot) {
	VirtualQCameraImageCapture::connect(self, static_cast<void (QCameraImageCapture::*)(QCameraImageCapture::CaptureDestinations)>(&QCameraImageCapture::captureDestinationChanged), self, [=](QCameraImageCapture::CaptureDestinations destination) {
		QCameraImageCapture::CaptureDestinations destination_ret = destination;
		int sigval1 = static_cast<int>(destination_ret);
		miqt_exec_callback_QCameraImageCapture_captureDestinationChanged(slot, sigval1);
	});
}

void QCameraImageCapture_imageExposed(QCameraImageCapture* self, int id) {
	self->imageExposed(static_cast<int>(id));
}

void QCameraImageCapture_connect_imageExposed(QCameraImageCapture* self, intptr_t slot) {
	VirtualQCameraImageCapture::connect(self, static_cast<void (QCameraImageCapture::*)(int)>(&QCameraImageCapture::imageExposed), self, [=](int id) {
		int sigval1 = id;
		miqt_exec_callback_QCameraImageCapture_imageExposed(slot, sigval1);
	});
}

void QCameraImageCapture_imageCaptured(QCameraImageCapture* self, int id, QImage* preview) {
	self->imageCaptured(static_cast<int>(id), *preview);
}

void QCameraImageCapture_connect_imageCaptured(QCameraImageCapture* self, intptr_t slot) {
	VirtualQCameraImageCapture::connect(self, static_cast<void (QCameraImageCapture::*)(int, const QImage&)>(&QCameraImageCapture::imageCaptured), self, [=](int id, const QImage& preview) {
		int sigval1 = id;
		const QImage& preview_ret = preview;
		// Cast returned reference into pointer
		QImage* sigval2 = const_cast<QImage*>(&preview_ret);
		miqt_exec_callback_QCameraImageCapture_imageCaptured(slot, sigval1, sigval2);
	});
}

void QCameraImageCapture_imageMetadataAvailable(QCameraImageCapture* self, int id, struct miqt_string key, QVariant* value) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->imageMetadataAvailable(static_cast<int>(id), key_QString, *value);
}

void QCameraImageCapture_connect_imageMetadataAvailable(QCameraImageCapture* self, intptr_t slot) {
	VirtualQCameraImageCapture::connect(self, static_cast<void (QCameraImageCapture::*)(int, const QString&, const QVariant&)>(&QCameraImageCapture::imageMetadataAvailable), self, [=](int id, const QString& key, const QVariant& value) {
		int sigval1 = id;
		const QString key_ret = key;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray key_b = key_ret.toUtf8();
		struct miqt_string key_ms;
		key_ms.len = key_b.length();
		key_ms.data = static_cast<char*>(malloc(key_ms.len));
		memcpy(key_ms.data, key_b.data(), key_ms.len);
		struct miqt_string sigval2 = key_ms;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval3 = const_cast<QVariant*>(&value_ret);
		miqt_exec_callback_QCameraImageCapture_imageMetadataAvailable(slot, sigval1, sigval2, sigval3);
	});
}

void QCameraImageCapture_imageAvailable(QCameraImageCapture* self, int id, QVideoFrame* frame) {
	self->imageAvailable(static_cast<int>(id), *frame);
}

void QCameraImageCapture_connect_imageAvailable(QCameraImageCapture* self, intptr_t slot) {
	VirtualQCameraImageCapture::connect(self, static_cast<void (QCameraImageCapture::*)(int, const QVideoFrame&)>(&QCameraImageCapture::imageAvailable), self, [=](int id, const QVideoFrame& frame) {
		int sigval1 = id;
		const QVideoFrame& frame_ret = frame;
		// Cast returned reference into pointer
		QVideoFrame* sigval2 = const_cast<QVideoFrame*>(&frame_ret);
		miqt_exec_callback_QCameraImageCapture_imageAvailable(slot, sigval1, sigval2);
	});
}

void QCameraImageCapture_imageSaved(QCameraImageCapture* self, int id, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->imageSaved(static_cast<int>(id), fileName_QString);
}

void QCameraImageCapture_connect_imageSaved(QCameraImageCapture* self, intptr_t slot) {
	VirtualQCameraImageCapture::connect(self, static_cast<void (QCameraImageCapture::*)(int, const QString&)>(&QCameraImageCapture::imageSaved), self, [=](int id, const QString& fileName) {
		int sigval1 = id;
		const QString fileName_ret = fileName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray fileName_b = fileName_ret.toUtf8();
		struct miqt_string fileName_ms;
		fileName_ms.len = fileName_b.length();
		fileName_ms.data = static_cast<char*>(malloc(fileName_ms.len));
		memcpy(fileName_ms.data, fileName_b.data(), fileName_ms.len);
		struct miqt_string sigval2 = fileName_ms;
		miqt_exec_callback_QCameraImageCapture_imageSaved(slot, sigval1, sigval2);
	});
}

struct miqt_string QCameraImageCapture_tr2(const char* s, const char* c) {
	QString _ret = QCameraImageCapture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCameraImageCapture_tr3(const char* s, const char* c, int n) {
	QString _ret = QCameraImageCapture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCameraImageCapture_trUtf82(const char* s, const char* c) {
	QString _ret = QCameraImageCapture::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCameraImageCapture_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QCameraImageCapture::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QSize* */  QCameraImageCapture_supportedResolutions1(const QCameraImageCapture* self, QImageEncoderSettings* settings) {
	QList<QSize> _ret = self->supportedResolutions(*settings);
	// Convert QList<> from C++ memory to manually-managed C memory
	QSize** _arr = static_cast<QSize**>(malloc(sizeof(QSize*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSize(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QSize* */  QCameraImageCapture_supportedResolutions2(const QCameraImageCapture* self, QImageEncoderSettings* settings, bool* continuous) {
	QList<QSize> _ret = self->supportedResolutions(*settings, continuous);
	// Convert QList<> from C++ memory to manually-managed C memory
	QSize** _arr = static_cast<QSize**>(malloc(sizeof(QSize*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSize(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QCameraImageCapture_capture1(QCameraImageCapture* self, struct miqt_string location) {
	QString location_QString = QString::fromUtf8(location.data, location.len);
	return self->capture(location_QString);
}

QMetaObject* QCameraImageCapture_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQCameraImageCapture*)(self) )->QCameraImageCapture::metaObject();

}

void* QCameraImageCapture_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQCameraImageCapture*)(self) )->QCameraImageCapture::qt_metacast(param1);

}

int QCameraImageCapture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQCameraImageCapture*)(self) )->QCameraImageCapture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QMediaObject* QCameraImageCapture_virtualbase_mediaObject(const void* self) {

	return ( (const VirtualQCameraImageCapture*)(self) )->QCameraImageCapture::mediaObject();

}

bool QCameraImageCapture_virtualbase_setMediaObject(void* self, QMediaObject* mediaObject) {

	return ( (VirtualQCameraImageCapture*)(self) )->QCameraImageCapture::setMediaObject(mediaObject);

}

bool QCameraImageCapture_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQCameraImageCapture*)(self) )->QCameraImageCapture::event(event);

}

bool QCameraImageCapture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQCameraImageCapture*)(self) )->QCameraImageCapture::eventFilter(watched, event);

}

void QCameraImageCapture_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQCameraImageCapture*)(self) )->QCameraImageCapture::timerEvent(event);

}

void QCameraImageCapture_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQCameraImageCapture*)(self) )->QCameraImageCapture::childEvent(event);

}

void QCameraImageCapture_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQCameraImageCapture*)(self) )->QCameraImageCapture::customEvent(event);

}

void QCameraImageCapture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQCameraImageCapture*)(self) )->QCameraImageCapture::connectNotify(*signal);

}

void QCameraImageCapture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQCameraImageCapture*)(self) )->QCameraImageCapture::disconnectNotify(*signal);

}

const QMetaObject* QCameraImageCapture_staticMetaObject() { return &QCameraImageCapture::staticMetaObject; }
QObject* QCameraImageCapture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQCameraImageCapture* self_cast = dynamic_cast<VirtualQCameraImageCapture*>( (QCameraImageCapture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QCameraImageCapture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQCameraImageCapture* self_cast = dynamic_cast<VirtualQCameraImageCapture*>( (QCameraImageCapture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QCameraImageCapture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQCameraImageCapture* self_cast = dynamic_cast<VirtualQCameraImageCapture*>( (QCameraImageCapture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QCameraImageCapture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQCameraImageCapture* self_cast = dynamic_cast<VirtualQCameraImageCapture*>( (QCameraImageCapture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QCameraImageCapture_delete(QCameraImageCapture* self) {
	delete self;
}

