#include <QByteArray>
#include <QChildEvent>
#include <QColor>
#include <QEvent>
#include <QIODevice>
#include <QImage>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMovie>
#include <QObject>
#include <QPixmap>
#include <QRect>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qmovie.h>
#include "gen_qmovie.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQMovie final : public QMovie {
	struct QMovie_VTable* vtbl;
public:

	VirtualQMovie(struct QMovie_VTable* vtbl): QMovie(), vtbl(vtbl) {};
	VirtualQMovie(struct QMovie_VTable* vtbl, QIODevice* device): QMovie(device), vtbl(vtbl) {};
	VirtualQMovie(struct QMovie_VTable* vtbl, const QString& fileName): QMovie(fileName), vtbl(vtbl) {};
	VirtualQMovie(struct QMovie_VTable* vtbl, QObject* parent): QMovie(parent), vtbl(vtbl) {};
	VirtualQMovie(struct QMovie_VTable* vtbl, QIODevice* device, const QByteArray& format): QMovie(device, format), vtbl(vtbl) {};
	VirtualQMovie(struct QMovie_VTable* vtbl, QIODevice* device, const QByteArray& format, QObject* parent): QMovie(device, format, parent), vtbl(vtbl) {};
	VirtualQMovie(struct QMovie_VTable* vtbl, const QString& fileName, const QByteArray& format): QMovie(fileName, format), vtbl(vtbl) {};
	VirtualQMovie(struct QMovie_VTable* vtbl, const QString& fileName, const QByteArray& format, QObject* parent): QMovie(fileName, format, parent), vtbl(vtbl) {};

	virtual ~VirtualQMovie() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMovie::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QMovie_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMovie::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QMovie_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMovie::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMovie_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMovie::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QMovie_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMovie::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMovie_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMovie::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QMovie_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMovie::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QMovie_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMovie::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QMovie_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMovie::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QMovie_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMovie::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QMovie_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QMovie_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QMovie_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QMovie_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QMovie_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QMovie* QMovie_new(struct QMovie_VTable* vtbl) {
	return new VirtualQMovie(vtbl);
}

QMovie* QMovie_new2(struct QMovie_VTable* vtbl, QIODevice* device) {
	return new VirtualQMovie(vtbl, device);
}

QMovie* QMovie_new3(struct QMovie_VTable* vtbl, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQMovie(vtbl, fileName_QString);
}

QMovie* QMovie_new4(struct QMovie_VTable* vtbl, QObject* parent) {
	return new VirtualQMovie(vtbl, parent);
}

QMovie* QMovie_new5(struct QMovie_VTable* vtbl, QIODevice* device, struct miqt_string format) {
	QByteArray format_QByteArray(format.data, format.len);
	return new VirtualQMovie(vtbl, device, format_QByteArray);
}

QMovie* QMovie_new6(struct QMovie_VTable* vtbl, QIODevice* device, struct miqt_string format, QObject* parent) {
	QByteArray format_QByteArray(format.data, format.len);
	return new VirtualQMovie(vtbl, device, format_QByteArray, parent);
}

QMovie* QMovie_new7(struct QMovie_VTable* vtbl, struct miqt_string fileName, struct miqt_string format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QByteArray format_QByteArray(format.data, format.len);
	return new VirtualQMovie(vtbl, fileName_QString, format_QByteArray);
}

QMovie* QMovie_new8(struct QMovie_VTable* vtbl, struct miqt_string fileName, struct miqt_string format, QObject* parent) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QByteArray format_QByteArray(format.data, format.len);
	return new VirtualQMovie(vtbl, fileName_QString, format_QByteArray, parent);
}

void QMovie_virtbase(QMovie* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QMovie_metaObject(const QMovie* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMovie_metacast(QMovie* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMovie_metacall(QMovie* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMovie_tr(const char* s) {
	QString _ret = QMovie::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMovie_trUtf8(const char* s) {
	QString _ret = QMovie::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of struct miqt_string */  QMovie_supportedFormats() {
	QList<QByteArray> _ret = QMovie::supportedFormats();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QByteArray _lv_qb = _ret[i];
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_qb.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_qb.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QMovie_setDevice(QMovie* self, QIODevice* device) {
	self->setDevice(device);
}

QIODevice* QMovie_device(const QMovie* self) {
	return self->device();
}

void QMovie_setFileName(QMovie* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setFileName(fileName_QString);
}

struct miqt_string QMovie_fileName(const QMovie* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMovie_setFormat(QMovie* self, struct miqt_string format) {
	QByteArray format_QByteArray(format.data, format.len);
	self->setFormat(format_QByteArray);
}

struct miqt_string QMovie_format(const QMovie* self) {
	QByteArray _qb = self->format();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QMovie_setBackgroundColor(QMovie* self, QColor* color) {
	self->setBackgroundColor(*color);
}

QColor* QMovie_backgroundColor(const QMovie* self) {
	return new QColor(self->backgroundColor());
}

int QMovie_state(const QMovie* self) {
	QMovie::MovieState _ret = self->state();
	return static_cast<int>(_ret);
}

QRect* QMovie_frameRect(const QMovie* self) {
	return new QRect(self->frameRect());
}

QImage* QMovie_currentImage(const QMovie* self) {
	return new QImage(self->currentImage());
}

QPixmap* QMovie_currentPixmap(const QMovie* self) {
	return new QPixmap(self->currentPixmap());
}

bool QMovie_isValid(const QMovie* self) {
	return self->isValid();
}

int QMovie_lastError(const QMovie* self) {
	QImageReader::ImageReaderError _ret = self->lastError();
	return static_cast<int>(_ret);
}

struct miqt_string QMovie_lastErrorString(const QMovie* self) {
	QString _ret = self->lastErrorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QMovie_jumpToFrame(QMovie* self, int frameNumber) {
	return self->jumpToFrame(static_cast<int>(frameNumber));
}

int QMovie_loopCount(const QMovie* self) {
	return self->loopCount();
}

int QMovie_frameCount(const QMovie* self) {
	return self->frameCount();
}

int QMovie_nextFrameDelay(const QMovie* self) {
	return self->nextFrameDelay();
}

int QMovie_currentFrameNumber(const QMovie* self) {
	return self->currentFrameNumber();
}

int QMovie_speed(const QMovie* self) {
	return self->speed();
}

QSize* QMovie_scaledSize(QMovie* self) {
	return new QSize(self->scaledSize());
}

void QMovie_setScaledSize(QMovie* self, QSize* size) {
	self->setScaledSize(*size);
}

int QMovie_cacheMode(const QMovie* self) {
	QMovie::CacheMode _ret = self->cacheMode();
	return static_cast<int>(_ret);
}

void QMovie_setCacheMode(QMovie* self, int mode) {
	self->setCacheMode(static_cast<QMovie::CacheMode>(mode));
}

void QMovie_started(QMovie* self) {
	self->started();
}

void QMovie_connect_started(QMovie* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMovie::connect(self, static_cast<void (QMovie::*)()>(&QMovie::started), self, local_caller{slot, callback, release});
}

void QMovie_resized(QMovie* self, QSize* size) {
	self->resized(*size);
}

void QMovie_connect_resized(QMovie* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QSize*);
		void operator()(const QSize& size) {
			const QSize& size_ret = size;
			// Cast returned reference into pointer
			QSize* sigval1 = const_cast<QSize*>(&size_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQMovie::connect(self, static_cast<void (QMovie::*)(const QSize&)>(&QMovie::resized), self, local_caller{slot, callback, release});
}

void QMovie_updated(QMovie* self, QRect* rect) {
	self->updated(*rect);
}

void QMovie_connect_updated(QMovie* self, intptr_t slot, void (*callback)(intptr_t, QRect*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QRect*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QRect*);
		void operator()(const QRect& rect) {
			const QRect& rect_ret = rect;
			// Cast returned reference into pointer
			QRect* sigval1 = const_cast<QRect*>(&rect_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQMovie::connect(self, static_cast<void (QMovie::*)(const QRect&)>(&QMovie::updated), self, local_caller{slot, callback, release});
}

void QMovie_stateChanged(QMovie* self, int state) {
	self->stateChanged(static_cast<QMovie::MovieState>(state));
}

void QMovie_connect_stateChanged(QMovie* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QMovie::MovieState state) {
			QMovie::MovieState state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQMovie::connect(self, static_cast<void (QMovie::*)(QMovie::MovieState)>(&QMovie::stateChanged), self, local_caller{slot, callback, release});
}

void QMovie_error(QMovie* self, int error) {
	self->error(static_cast<QImageReader::ImageReaderError>(error));
}

void QMovie_connect_error(QMovie* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QImageReader::ImageReaderError error) {
			QImageReader::ImageReaderError error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQMovie::connect(self, static_cast<void (QMovie::*)(QImageReader::ImageReaderError)>(&QMovie::error), self, local_caller{slot, callback, release});
}

void QMovie_finished(QMovie* self) {
	self->finished();
}

void QMovie_connect_finished(QMovie* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMovie::connect(self, static_cast<void (QMovie::*)()>(&QMovie::finished), self, local_caller{slot, callback, release});
}

void QMovie_frameChanged(QMovie* self, int frameNumber) {
	self->frameChanged(static_cast<int>(frameNumber));
}

void QMovie_connect_frameChanged(QMovie* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int frameNumber) {
			int sigval1 = frameNumber;
			callback(slot, sigval1);
		}
	};
	VirtualQMovie::connect(self, static_cast<void (QMovie::*)(int)>(&QMovie::frameChanged), self, local_caller{slot, callback, release});
}

void QMovie_start(QMovie* self) {
	self->start();
}

bool QMovie_jumpToNextFrame(QMovie* self) {
	return self->jumpToNextFrame();
}

void QMovie_setPaused(QMovie* self, bool paused) {
	self->setPaused(paused);
}

void QMovie_stop(QMovie* self) {
	self->stop();
}

void QMovie_setSpeed(QMovie* self, int percentSpeed) {
	self->setSpeed(static_cast<int>(percentSpeed));
}

struct miqt_string QMovie_tr2(const char* s, const char* c) {
	QString _ret = QMovie::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMovie_tr3(const char* s, const char* c, int n) {
	QString _ret = QMovie::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMovie_trUtf82(const char* s, const char* c) {
	QString _ret = QMovie::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMovie_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMovie::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QMovie_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQMovie*)(self) )->QMovie::metaObject();

}

void* QMovie_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQMovie*)(self) )->QMovie::qt_metacast(param1);

}

int QMovie_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQMovie*)(self) )->QMovie::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QMovie_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQMovie*)(self) )->QMovie::event(event);

}

bool QMovie_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQMovie*)(self) )->QMovie::eventFilter(watched, event);

}

void QMovie_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQMovie*)(self) )->QMovie::timerEvent(event);

}

void QMovie_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQMovie*)(self) )->QMovie::childEvent(event);

}

void QMovie_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQMovie*)(self) )->QMovie::customEvent(event);

}

void QMovie_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQMovie*)(self) )->QMovie::connectNotify(*signal);

}

void QMovie_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQMovie*)(self) )->QMovie::disconnectNotify(*signal);

}

const QMetaObject* QMovie_staticMetaObject() { return &QMovie::staticMetaObject; }
QObject* QMovie_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQMovie* self_cast = dynamic_cast<VirtualQMovie*>( (QMovie*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QMovie_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQMovie* self_cast = dynamic_cast<VirtualQMovie*>( (QMovie*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QMovie_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQMovie* self_cast = dynamic_cast<VirtualQMovie*>( (QMovie*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QMovie_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQMovie* self_cast = dynamic_cast<VirtualQMovie*>( (QMovie*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QMovie_delete(QMovie* self) {
	delete self;
}

