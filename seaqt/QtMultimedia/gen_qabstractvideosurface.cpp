#include <QAbstractVideoSurface>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVideoFrame>
#include <QVideoSurfaceFormat>
#include <qabstractvideosurface.h>
#include "gen_qabstractvideosurface.h"
class VirtualQAbstractVideoSurface final : public QAbstractVideoSurface {
	const QAbstractVideoSurface_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractVideoSurface_VTable* QAbstractVideoSurface_vtbl(const VirtualQAbstractVideoSurface* self);
	friend void* QAbstractVideoSurface_vdata(const VirtualQAbstractVideoSurface* self);
	friend void QAbstractVideoSurface_setVdata(VirtualQAbstractVideoSurface* self, void* vdata);

	VirtualQAbstractVideoSurface(const QAbstractVideoSurface_VTable* vtbl, void* vdata): QAbstractVideoSurface(), vtbl(vtbl), vdata(vdata) {}
	VirtualQAbstractVideoSurface(const QAbstractVideoSurface_VTable* vtbl, void* vdata, QObject* parent): QAbstractVideoSurface(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractVideoSurface() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractVideoSurface::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractVideoSurface_virtualbase_metaObject(const VirtualQAbstractVideoSurface* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractVideoSurface::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractVideoSurface_virtualbase_metacast(VirtualQAbstractVideoSurface* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractVideoSurface::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractVideoSurface_virtualbase_metacall(VirtualQAbstractVideoSurface* self, int param1, int param2, void** param3);

	virtual QList<QVideoFrame::PixelFormat> supportedPixelFormats(QAbstractVideoBuffer::HandleType type) const override {
		if (vtbl->supportedPixelFormats == 0) {
			return QList<QVideoFrame::PixelFormat>(); // Pure virtual, there is no base we can call
		}

		QAbstractVideoBuffer::HandleType type_ret = type;
		int sigval1 = static_cast<int>(type_ret);

		struct miqt_array /* of int */  callback_return_value = vtbl->supportedPixelFormats(this, sigval1);
		QList<QVideoFrame::PixelFormat> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		int* callback_return_value_arr = static_cast<int*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(static_cast<QVideoFrame::PixelFormat>(callback_return_value_arr[i]));
		}
		free(callback_return_value.data);

		return callback_return_value_QList;
	}

	virtual bool isFormatSupported(const QVideoSurfaceFormat& format) const override {
		if (vtbl->isFormatSupported == 0) {
			return QAbstractVideoSurface::isFormatSupported(format);
		}

		const QVideoSurfaceFormat& format_ret = format;
		// Cast returned reference into pointer
		QVideoSurfaceFormat* sigval1 = const_cast<QVideoSurfaceFormat*>(&format_ret);

		bool callback_return_value = vtbl->isFormatSupported(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractVideoSurface_virtualbase_isFormatSupported(const VirtualQAbstractVideoSurface* self, QVideoSurfaceFormat* format);

	virtual QVideoSurfaceFormat nearestFormat(const QVideoSurfaceFormat& format) const override {
		if (vtbl->nearestFormat == 0) {
			return QAbstractVideoSurface::nearestFormat(format);
		}

		const QVideoSurfaceFormat& format_ret = format;
		// Cast returned reference into pointer
		QVideoSurfaceFormat* sigval1 = const_cast<QVideoSurfaceFormat*>(&format_ret);

		QVideoSurfaceFormat* callback_return_value = vtbl->nearestFormat(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVideoSurfaceFormat* QAbstractVideoSurface_virtualbase_nearestFormat(const VirtualQAbstractVideoSurface* self, QVideoSurfaceFormat* format);

	virtual bool start(const QVideoSurfaceFormat& format) override {
		if (vtbl->start == 0) {
			return QAbstractVideoSurface::start(format);
		}

		const QVideoSurfaceFormat& format_ret = format;
		// Cast returned reference into pointer
		QVideoSurfaceFormat* sigval1 = const_cast<QVideoSurfaceFormat*>(&format_ret);

		bool callback_return_value = vtbl->start(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractVideoSurface_virtualbase_start(VirtualQAbstractVideoSurface* self, QVideoSurfaceFormat* format);

	virtual void stop() override {
		if (vtbl->stop == 0) {
			QAbstractVideoSurface::stop();
			return;
		}


		vtbl->stop(this);

	}

	friend void QAbstractVideoSurface_virtualbase_stop(VirtualQAbstractVideoSurface* self);

	virtual bool present(const QVideoFrame& frame) override {
		if (vtbl->present == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		const QVideoFrame& frame_ret = frame;
		// Cast returned reference into pointer
		QVideoFrame* sigval1 = const_cast<QVideoFrame*>(&frame_ret);

		bool callback_return_value = vtbl->present(this, sigval1);

		return callback_return_value;
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractVideoSurface::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractVideoSurface_virtualbase_event(VirtualQAbstractVideoSurface* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractVideoSurface::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractVideoSurface_virtualbase_eventFilter(VirtualQAbstractVideoSurface* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractVideoSurface::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAbstractVideoSurface_virtualbase_timerEvent(VirtualQAbstractVideoSurface* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractVideoSurface::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAbstractVideoSurface_virtualbase_childEvent(VirtualQAbstractVideoSurface* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractVideoSurface::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAbstractVideoSurface_virtualbase_customEvent(VirtualQAbstractVideoSurface* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractVideoSurface::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAbstractVideoSurface_virtualbase_connectNotify(VirtualQAbstractVideoSurface* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractVideoSurface::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAbstractVideoSurface_virtualbase_disconnectNotify(VirtualQAbstractVideoSurface* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QAbstractVideoSurface_protectedbase_setError(VirtualQAbstractVideoSurface* self, int error);
	friend void QAbstractVideoSurface_protectedbase_setNativeResolution(VirtualQAbstractVideoSurface* self, QSize* resolution);
	friend QObject* QAbstractVideoSurface_protectedbase_sender(const VirtualQAbstractVideoSurface* self);
	friend int QAbstractVideoSurface_protectedbase_senderSignalIndex(const VirtualQAbstractVideoSurface* self);
	friend int QAbstractVideoSurface_protectedbase_receivers(const VirtualQAbstractVideoSurface* self, const char* signal);
	friend bool QAbstractVideoSurface_protectedbase_isSignalConnected(const VirtualQAbstractVideoSurface* self, QMetaMethod* signal);
};

VirtualQAbstractVideoSurface* QAbstractVideoSurface_new(const QAbstractVideoSurface_VTable* vtbl, void* vdata) {
	return new VirtualQAbstractVideoSurface(vtbl, vdata);
}

VirtualQAbstractVideoSurface* QAbstractVideoSurface_new2(const QAbstractVideoSurface_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQAbstractVideoSurface(vtbl, vdata, parent);
}

void QAbstractVideoSurface_virtbase(QAbstractVideoSurface* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAbstractVideoSurface_metaObject(const QAbstractVideoSurface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractVideoSurface_metacast(QAbstractVideoSurface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractVideoSurface_metacall(QAbstractVideoSurface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractVideoSurface_tr(const char* s) {
	QString _ret = QAbstractVideoSurface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractVideoSurface_trUtf8(const char* s) {
	QString _ret = QAbstractVideoSurface::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of int */  QAbstractVideoSurface_supportedPixelFormats(const QAbstractVideoSurface* self, int type) {
	QList<QVideoFrame::PixelFormat> _ret = self->supportedPixelFormats(static_cast<QAbstractVideoBuffer::HandleType>(type));
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

bool QAbstractVideoSurface_isFormatSupported(const QAbstractVideoSurface* self, QVideoSurfaceFormat* format) {
	return self->isFormatSupported(*format);
}

QVideoSurfaceFormat* QAbstractVideoSurface_nearestFormat(const QAbstractVideoSurface* self, QVideoSurfaceFormat* format) {
	return new QVideoSurfaceFormat(self->nearestFormat(*format));
}

QVideoSurfaceFormat* QAbstractVideoSurface_surfaceFormat(const QAbstractVideoSurface* self) {
	return new QVideoSurfaceFormat(self->surfaceFormat());
}

QSize* QAbstractVideoSurface_nativeResolution(const QAbstractVideoSurface* self) {
	return new QSize(self->nativeResolution());
}

bool QAbstractVideoSurface_start(QAbstractVideoSurface* self, QVideoSurfaceFormat* format) {
	return self->start(*format);
}

void QAbstractVideoSurface_stop(QAbstractVideoSurface* self) {
	self->stop();
}

bool QAbstractVideoSurface_isActive(const QAbstractVideoSurface* self) {
	return self->isActive();
}

bool QAbstractVideoSurface_present(QAbstractVideoSurface* self, QVideoFrame* frame) {
	return self->present(*frame);
}

int QAbstractVideoSurface_error(const QAbstractVideoSurface* self) {
	QAbstractVideoSurface::Error _ret = self->error();
	return static_cast<int>(_ret);
}

void QAbstractVideoSurface_activeChanged(QAbstractVideoSurface* self, bool active) {
	self->activeChanged(active);
}

void QAbstractVideoSurface_connect_activeChanged(VirtualQAbstractVideoSurface* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool active) {
			bool sigval1 = active;
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractVideoSurface::connect(self, static_cast<void (QAbstractVideoSurface::*)(bool)>(&QAbstractVideoSurface::activeChanged), self, local_caller{slot, callback, release});
}

void QAbstractVideoSurface_surfaceFormatChanged(QAbstractVideoSurface* self, QVideoSurfaceFormat* format) {
	self->surfaceFormatChanged(*format);
}

void QAbstractVideoSurface_connect_surfaceFormatChanged(VirtualQAbstractVideoSurface* self, intptr_t slot, void (*callback)(intptr_t, QVideoSurfaceFormat*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QVideoSurfaceFormat*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QVideoSurfaceFormat*);
		void operator()(const QVideoSurfaceFormat& format) {
			const QVideoSurfaceFormat& format_ret = format;
			// Cast returned reference into pointer
			QVideoSurfaceFormat* sigval1 = const_cast<QVideoSurfaceFormat*>(&format_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractVideoSurface::connect(self, static_cast<void (QAbstractVideoSurface::*)(const QVideoSurfaceFormat&)>(&QAbstractVideoSurface::surfaceFormatChanged), self, local_caller{slot, callback, release});
}

void QAbstractVideoSurface_supportedFormatsChanged(QAbstractVideoSurface* self) {
	self->supportedFormatsChanged();
}

void QAbstractVideoSurface_connect_supportedFormatsChanged(VirtualQAbstractVideoSurface* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractVideoSurface::connect(self, static_cast<void (QAbstractVideoSurface::*)()>(&QAbstractVideoSurface::supportedFormatsChanged), self, local_caller{slot, callback, release});
}

void QAbstractVideoSurface_nativeResolutionChanged(QAbstractVideoSurface* self, QSize* resolution) {
	self->nativeResolutionChanged(*resolution);
}

void QAbstractVideoSurface_connect_nativeResolutionChanged(VirtualQAbstractVideoSurface* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QSize*);
		void operator()(const QSize& resolution) {
			const QSize& resolution_ret = resolution;
			// Cast returned reference into pointer
			QSize* sigval1 = const_cast<QSize*>(&resolution_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractVideoSurface::connect(self, static_cast<void (QAbstractVideoSurface::*)(const QSize&)>(&QAbstractVideoSurface::nativeResolutionChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QAbstractVideoSurface_tr2(const char* s, const char* c) {
	QString _ret = QAbstractVideoSurface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractVideoSurface_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractVideoSurface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractVideoSurface_trUtf82(const char* s, const char* c) {
	QString _ret = QAbstractVideoSurface::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractVideoSurface_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAbstractVideoSurface::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAbstractVideoSurface_virtualbase_metaObject(const VirtualQAbstractVideoSurface* self) {

	return (QMetaObject*) self->QAbstractVideoSurface::metaObject();
}

void* QAbstractVideoSurface_virtualbase_metacast(VirtualQAbstractVideoSurface* self, const char* param1) {

	return self->QAbstractVideoSurface::qt_metacast(param1);
}

int QAbstractVideoSurface_virtualbase_metacall(VirtualQAbstractVideoSurface* self, int param1, int param2, void** param3) {

	return self->QAbstractVideoSurface::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAbstractVideoSurface_virtualbase_isFormatSupported(const VirtualQAbstractVideoSurface* self, QVideoSurfaceFormat* format) {

	return self->QAbstractVideoSurface::isFormatSupported(*format);
}

QVideoSurfaceFormat* QAbstractVideoSurface_virtualbase_nearestFormat(const VirtualQAbstractVideoSurface* self, QVideoSurfaceFormat* format) {

	return new QVideoSurfaceFormat(self->QAbstractVideoSurface::nearestFormat(*format));
}

bool QAbstractVideoSurface_virtualbase_start(VirtualQAbstractVideoSurface* self, QVideoSurfaceFormat* format) {

	return self->QAbstractVideoSurface::start(*format);
}

void QAbstractVideoSurface_virtualbase_stop(VirtualQAbstractVideoSurface* self) {

	self->QAbstractVideoSurface::stop();
}

bool QAbstractVideoSurface_virtualbase_event(VirtualQAbstractVideoSurface* self, QEvent* event) {

	return self->QAbstractVideoSurface::event(event);
}

bool QAbstractVideoSurface_virtualbase_eventFilter(VirtualQAbstractVideoSurface* self, QObject* watched, QEvent* event) {

	return self->QAbstractVideoSurface::eventFilter(watched, event);
}

void QAbstractVideoSurface_virtualbase_timerEvent(VirtualQAbstractVideoSurface* self, QTimerEvent* event) {

	self->QAbstractVideoSurface::timerEvent(event);
}

void QAbstractVideoSurface_virtualbase_childEvent(VirtualQAbstractVideoSurface* self, QChildEvent* event) {

	self->QAbstractVideoSurface::childEvent(event);
}

void QAbstractVideoSurface_virtualbase_customEvent(VirtualQAbstractVideoSurface* self, QEvent* event) {

	self->QAbstractVideoSurface::customEvent(event);
}

void QAbstractVideoSurface_virtualbase_connectNotify(VirtualQAbstractVideoSurface* self, QMetaMethod* signal) {

	self->QAbstractVideoSurface::connectNotify(*signal);
}

void QAbstractVideoSurface_virtualbase_disconnectNotify(VirtualQAbstractVideoSurface* self, QMetaMethod* signal) {

	self->QAbstractVideoSurface::disconnectNotify(*signal);
}

const QMetaObject* QAbstractVideoSurface_staticMetaObject() { return &QAbstractVideoSurface::staticMetaObject; }

const QAbstractVideoSurface_VTable* QAbstractVideoSurface_vtbl(const VirtualQAbstractVideoSurface* self) { return self->vtbl; }
void* QAbstractVideoSurface_vdata(const VirtualQAbstractVideoSurface* self) { return self->vdata; }
void QAbstractVideoSurface_setVdata(VirtualQAbstractVideoSurface* self, void* vdata) { self->vdata = vdata; }

void QAbstractVideoSurface_protectedbase_setError(VirtualQAbstractVideoSurface* self, int error) {
	self->setError(static_cast<VirtualQAbstractVideoSurface::Error>(error));
}

void QAbstractVideoSurface_protectedbase_setNativeResolution(VirtualQAbstractVideoSurface* self, QSize* resolution) {
	self->setNativeResolution(*resolution);
}

QObject* QAbstractVideoSurface_protectedbase_sender(const VirtualQAbstractVideoSurface* self) {
	return self->sender();
}

int QAbstractVideoSurface_protectedbase_senderSignalIndex(const VirtualQAbstractVideoSurface* self) {
	return self->senderSignalIndex();
}

int QAbstractVideoSurface_protectedbase_receivers(const VirtualQAbstractVideoSurface* self, const char* signal) {
	return self->receivers(signal);
}

bool QAbstractVideoSurface_protectedbase_isSignalConnected(const VirtualQAbstractVideoSurface* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAbstractVideoSurface_delete(QAbstractVideoSurface* self) {
	delete self;
}

