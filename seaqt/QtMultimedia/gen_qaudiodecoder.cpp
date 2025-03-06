#include <QAudioBuffer>
#include <QAudioDecoder>
#include <QAudioFormat>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <qaudiodecoder.h>
#include "gen_qaudiodecoder.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAudioDecoder final : public QAudioDecoder {
	struct QAudioDecoder_VTable* vtbl;
public:

	VirtualQAudioDecoder(struct QAudioDecoder_VTable* vtbl): QAudioDecoder(), vtbl(vtbl) {};
	VirtualQAudioDecoder(struct QAudioDecoder_VTable* vtbl, QObject* parent): QAudioDecoder(parent), vtbl(vtbl) {};

	virtual ~VirtualQAudioDecoder() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioDecoder::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAudioDecoder_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioDecoder::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAudioDecoder_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioDecoder::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioDecoder_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioDecoder::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioDecoder_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioDecoder::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioDecoder_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioDecoder::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAudioDecoder_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioDecoder::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAudioDecoder_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioDecoder::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAudioDecoder_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioDecoder::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAudioDecoder_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioDecoder::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAudioDecoder_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioDecoder_protectedbase_sender(const void* self);
	friend int QAudioDecoder_protectedbase_senderSignalIndex(const void* self);
	friend int QAudioDecoder_protectedbase_receivers(const void* self, const char* signal);
	friend bool QAudioDecoder_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QAudioDecoder* QAudioDecoder_new(struct QAudioDecoder_VTable* vtbl) {
	return new VirtualQAudioDecoder(vtbl);
}

QAudioDecoder* QAudioDecoder_new2(struct QAudioDecoder_VTable* vtbl, QObject* parent) {
	return new VirtualQAudioDecoder(vtbl, parent);
}

void QAudioDecoder_virtbase(QAudioDecoder* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAudioDecoder_metaObject(const QAudioDecoder* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioDecoder_metacast(QAudioDecoder* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioDecoder_metacall(QAudioDecoder* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAudioDecoder_tr(const char* s) {
	QString _ret = QAudioDecoder::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAudioDecoder_isSupported(const QAudioDecoder* self) {
	return self->isSupported();
}

bool QAudioDecoder_isDecoding(const QAudioDecoder* self) {
	return self->isDecoding();
}

QUrl* QAudioDecoder_source(const QAudioDecoder* self) {
	return new QUrl(self->source());
}

void QAudioDecoder_setSource(QAudioDecoder* self, QUrl* fileName) {
	self->setSource(*fileName);
}

QIODevice* QAudioDecoder_sourceDevice(const QAudioDecoder* self) {
	return self->sourceDevice();
}

void QAudioDecoder_setSourceDevice(QAudioDecoder* self, QIODevice* device) {
	self->setSourceDevice(device);
}

QAudioFormat* QAudioDecoder_audioFormat(const QAudioDecoder* self) {
	return new QAudioFormat(self->audioFormat());
}

void QAudioDecoder_setAudioFormat(QAudioDecoder* self, QAudioFormat* format) {
	self->setAudioFormat(*format);
}

int QAudioDecoder_error(const QAudioDecoder* self) {
	QAudioDecoder::Error _ret = self->error();
	return static_cast<int>(_ret);
}

struct miqt_string QAudioDecoder_errorString(const QAudioDecoder* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAudioBuffer* QAudioDecoder_read(const QAudioDecoder* self) {
	return new QAudioBuffer(self->read());
}

bool QAudioDecoder_bufferAvailable(const QAudioDecoder* self) {
	return self->bufferAvailable();
}

long long QAudioDecoder_position(const QAudioDecoder* self) {
	qint64 _ret = self->position();
	return static_cast<long long>(_ret);
}

long long QAudioDecoder_duration(const QAudioDecoder* self) {
	qint64 _ret = self->duration();
	return static_cast<long long>(_ret);
}

void QAudioDecoder_start(QAudioDecoder* self) {
	self->start();
}

void QAudioDecoder_stop(QAudioDecoder* self) {
	self->stop();
}

void QAudioDecoder_bufferAvailableChanged(QAudioDecoder* self, bool param1) {
	self->bufferAvailableChanged(param1);
}

void QAudioDecoder_connect_bufferAvailableChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)(bool)>(&QAudioDecoder::bufferAvailableChanged), self, local_caller{slot, callback, release});
}

void QAudioDecoder_bufferReady(QAudioDecoder* self) {
	self->bufferReady();
}

void QAudioDecoder_connect_bufferReady(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)()>(&QAudioDecoder::bufferReady), self, local_caller{slot, callback, release});
}

void QAudioDecoder_finished(QAudioDecoder* self) {
	self->finished();
}

void QAudioDecoder_connect_finished(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)()>(&QAudioDecoder::finished), self, local_caller{slot, callback, release});
}

void QAudioDecoder_isDecodingChanged(QAudioDecoder* self, bool param1) {
	self->isDecodingChanged(param1);
}

void QAudioDecoder_connect_isDecodingChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)(bool)>(&QAudioDecoder::isDecodingChanged), self, local_caller{slot, callback, release});
}

void QAudioDecoder_formatChanged(QAudioDecoder* self, QAudioFormat* format) {
	self->formatChanged(*format);
}

void QAudioDecoder_connect_formatChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, QAudioFormat*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAudioFormat*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAudioFormat*);
		void operator()(const QAudioFormat& format) {
			const QAudioFormat& format_ret = format;
			// Cast returned reference into pointer
			QAudioFormat* sigval1 = const_cast<QAudioFormat*>(&format_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)(const QAudioFormat&)>(&QAudioDecoder::formatChanged), self, local_caller{slot, callback, release});
}

void QAudioDecoder_errorWithError(QAudioDecoder* self, int error) {
	self->error(static_cast<QAudioDecoder::Error>(error));
}

void QAudioDecoder_connect_errorWithError(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QAudioDecoder::Error error) {
			QAudioDecoder::Error error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)(QAudioDecoder::Error)>(&QAudioDecoder::error), self, local_caller{slot, callback, release});
}

void QAudioDecoder_sourceChanged(QAudioDecoder* self) {
	self->sourceChanged();
}

void QAudioDecoder_connect_sourceChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)()>(&QAudioDecoder::sourceChanged), self, local_caller{slot, callback, release});
}

void QAudioDecoder_positionChanged(QAudioDecoder* self, long long position) {
	self->positionChanged(static_cast<qint64>(position));
}

void QAudioDecoder_connect_positionChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, long long);
		void operator()(qint64 position) {
			qint64 position_ret = position;
			long long sigval1 = static_cast<long long>(position_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)(qint64)>(&QAudioDecoder::positionChanged), self, local_caller{slot, callback, release});
}

void QAudioDecoder_durationChanged(QAudioDecoder* self, long long duration) {
	self->durationChanged(static_cast<qint64>(duration));
}

void QAudioDecoder_connect_durationChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, long long);
		void operator()(qint64 duration) {
			qint64 duration_ret = duration;
			long long sigval1 = static_cast<long long>(duration_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)(qint64)>(&QAudioDecoder::durationChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QAudioDecoder_tr2(const char* s, const char* c) {
	QString _ret = QAudioDecoder::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioDecoder_tr3(const char* s, const char* c, int n) {
	QString _ret = QAudioDecoder::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAudioDecoder_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAudioDecoder*)(self) )->QAudioDecoder::metaObject();

}

void* QAudioDecoder_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAudioDecoder*)(self) )->QAudioDecoder::qt_metacast(param1);

}

int QAudioDecoder_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAudioDecoder*)(self) )->QAudioDecoder::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QAudioDecoder_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQAudioDecoder*)(self) )->QAudioDecoder::event(event);

}

bool QAudioDecoder_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQAudioDecoder*)(self) )->QAudioDecoder::eventFilter(watched, event);

}

void QAudioDecoder_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAudioDecoder*)(self) )->QAudioDecoder::timerEvent(event);

}

void QAudioDecoder_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAudioDecoder*)(self) )->QAudioDecoder::childEvent(event);

}

void QAudioDecoder_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAudioDecoder*)(self) )->QAudioDecoder::customEvent(event);

}

void QAudioDecoder_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAudioDecoder*)(self) )->QAudioDecoder::connectNotify(*signal);

}

void QAudioDecoder_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAudioDecoder*)(self) )->QAudioDecoder::disconnectNotify(*signal);

}

const QMetaObject* QAudioDecoder_staticMetaObject() { return &QAudioDecoder::staticMetaObject; }
QObject* QAudioDecoder_protectedbase_sender(const void* self) {
	VirtualQAudioDecoder* self_cast = static_cast<VirtualQAudioDecoder*>( (QAudioDecoder*)(self) );
	
	return self_cast->sender();

}

int QAudioDecoder_protectedbase_senderSignalIndex(const void* self) {
	VirtualQAudioDecoder* self_cast = static_cast<VirtualQAudioDecoder*>( (QAudioDecoder*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QAudioDecoder_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQAudioDecoder* self_cast = static_cast<VirtualQAudioDecoder*>( (QAudioDecoder*)(self) );
	
	return self_cast->receivers(signal);

}

bool QAudioDecoder_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQAudioDecoder* self_cast = static_cast<VirtualQAudioDecoder*>( (QAudioDecoder*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QAudioDecoder_delete(QAudioDecoder* self) {
	delete self;
}

