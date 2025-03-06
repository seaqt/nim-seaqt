#include <QAudioBuffer>
#include <QAudioDecoderControl>
#include <QAudioFormat>
#include <QIODevice>
#include <QMediaControl>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qaudiodecodercontrol.h>
#include "gen_qaudiodecodercontrol.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

void QAudioDecoderControl_virtbase(QAudioDecoderControl* src, QMediaControl** outptr_QMediaControl) {
	*outptr_QMediaControl = static_cast<QMediaControl*>(src);
}

QMetaObject* QAudioDecoderControl_metaObject(const QAudioDecoderControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioDecoderControl_metacast(QAudioDecoderControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioDecoderControl_metacall(QAudioDecoderControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAudioDecoderControl_tr(const char* s) {
	QString _ret = QAudioDecoderControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioDecoderControl_trUtf8(const char* s) {
	QString _ret = QAudioDecoderControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAudioDecoderControl_state(const QAudioDecoderControl* self) {
	QAudioDecoder::State _ret = self->state();
	return static_cast<int>(_ret);
}

struct miqt_string QAudioDecoderControl_sourceFilename(const QAudioDecoderControl* self) {
	QString _ret = self->sourceFilename();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAudioDecoderControl_setSourceFilename(QAudioDecoderControl* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setSourceFilename(fileName_QString);
}

QIODevice* QAudioDecoderControl_sourceDevice(const QAudioDecoderControl* self) {
	return self->sourceDevice();
}

void QAudioDecoderControl_setSourceDevice(QAudioDecoderControl* self, QIODevice* device) {
	self->setSourceDevice(device);
}

void QAudioDecoderControl_start(QAudioDecoderControl* self) {
	self->start();
}

void QAudioDecoderControl_stop(QAudioDecoderControl* self) {
	self->stop();
}

QAudioFormat* QAudioDecoderControl_audioFormat(const QAudioDecoderControl* self) {
	return new QAudioFormat(self->audioFormat());
}

void QAudioDecoderControl_setAudioFormat(QAudioDecoderControl* self, QAudioFormat* format) {
	self->setAudioFormat(*format);
}

QAudioBuffer* QAudioDecoderControl_read(QAudioDecoderControl* self) {
	return new QAudioBuffer(self->read());
}

bool QAudioDecoderControl_bufferAvailable(const QAudioDecoderControl* self) {
	return self->bufferAvailable();
}

long long QAudioDecoderControl_position(const QAudioDecoderControl* self) {
	qint64 _ret = self->position();
	return static_cast<long long>(_ret);
}

long long QAudioDecoderControl_duration(const QAudioDecoderControl* self) {
	qint64 _ret = self->duration();
	return static_cast<long long>(_ret);
}

void QAudioDecoderControl_stateChanged(QAudioDecoderControl* self, int newState) {
	self->stateChanged(static_cast<QAudioDecoder::State>(newState));
}

void QAudioDecoderControl_connect_stateChanged(QAudioDecoderControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QAudioDecoder::State newState) {
			QAudioDecoder::State newState_ret = newState;
			int sigval1 = static_cast<int>(newState_ret);
			callback(slot, sigval1);
		}
	};
	QAudioDecoderControl::connect(self, static_cast<void (QAudioDecoderControl::*)(QAudioDecoder::State)>(&QAudioDecoderControl::stateChanged), self, local_caller{slot, callback, release});
}

void QAudioDecoderControl_formatChanged(QAudioDecoderControl* self, QAudioFormat* format) {
	self->formatChanged(*format);
}

void QAudioDecoderControl_connect_formatChanged(QAudioDecoderControl* self, intptr_t slot, void (*callback)(intptr_t, QAudioFormat*), void (*release)(intptr_t)) {
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
	QAudioDecoderControl::connect(self, static_cast<void (QAudioDecoderControl::*)(const QAudioFormat&)>(&QAudioDecoderControl::formatChanged), self, local_caller{slot, callback, release});
}

void QAudioDecoderControl_sourceChanged(QAudioDecoderControl* self) {
	self->sourceChanged();
}

void QAudioDecoderControl_connect_sourceChanged(QAudioDecoderControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QAudioDecoderControl::connect(self, static_cast<void (QAudioDecoderControl::*)()>(&QAudioDecoderControl::sourceChanged), self, local_caller{slot, callback, release});
}

void QAudioDecoderControl_error(QAudioDecoderControl* self, int error, struct miqt_string errorString) {
	QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->error(static_cast<int>(error), errorString_QString);
}

void QAudioDecoderControl_connect_error(QAudioDecoderControl* self, intptr_t slot, void (*callback)(intptr_t, int, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, struct miqt_string);
		void operator()(int error, const QString& errorString) {
			int sigval1 = error;
			const QString errorString_ret = errorString;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray errorString_b = errorString_ret.toUtf8();
			struct miqt_string errorString_ms;
			errorString_ms.len = errorString_b.length();
			errorString_ms.data = static_cast<char*>(malloc(errorString_ms.len));
			memcpy(errorString_ms.data, errorString_b.data(), errorString_ms.len);
			struct miqt_string sigval2 = errorString_ms;
			callback(slot, sigval1, sigval2);
		}
	};
	QAudioDecoderControl::connect(self, static_cast<void (QAudioDecoderControl::*)(int, const QString&)>(&QAudioDecoderControl::error), self, local_caller{slot, callback, release});
}

void QAudioDecoderControl_bufferReady(QAudioDecoderControl* self) {
	self->bufferReady();
}

void QAudioDecoderControl_connect_bufferReady(QAudioDecoderControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QAudioDecoderControl::connect(self, static_cast<void (QAudioDecoderControl::*)()>(&QAudioDecoderControl::bufferReady), self, local_caller{slot, callback, release});
}

void QAudioDecoderControl_bufferAvailableChanged(QAudioDecoderControl* self, bool available) {
	self->bufferAvailableChanged(available);
}

void QAudioDecoderControl_connect_bufferAvailableChanged(QAudioDecoderControl* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool available) {
			bool sigval1 = available;
			callback(slot, sigval1);
		}
	};
	QAudioDecoderControl::connect(self, static_cast<void (QAudioDecoderControl::*)(bool)>(&QAudioDecoderControl::bufferAvailableChanged), self, local_caller{slot, callback, release});
}

void QAudioDecoderControl_finished(QAudioDecoderControl* self) {
	self->finished();
}

void QAudioDecoderControl_connect_finished(QAudioDecoderControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QAudioDecoderControl::connect(self, static_cast<void (QAudioDecoderControl::*)()>(&QAudioDecoderControl::finished), self, local_caller{slot, callback, release});
}

void QAudioDecoderControl_positionChanged(QAudioDecoderControl* self, long long position) {
	self->positionChanged(static_cast<qint64>(position));
}

void QAudioDecoderControl_connect_positionChanged(QAudioDecoderControl* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, long long);
		void operator()(qint64 position) {
			qint64 position_ret = position;
			long long sigval1 = static_cast<long long>(position_ret);
			callback(slot, sigval1);
		}
	};
	QAudioDecoderControl::connect(self, static_cast<void (QAudioDecoderControl::*)(qint64)>(&QAudioDecoderControl::positionChanged), self, local_caller{slot, callback, release});
}

void QAudioDecoderControl_durationChanged(QAudioDecoderControl* self, long long duration) {
	self->durationChanged(static_cast<qint64>(duration));
}

void QAudioDecoderControl_connect_durationChanged(QAudioDecoderControl* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, long long);
		void operator()(qint64 duration) {
			qint64 duration_ret = duration;
			long long sigval1 = static_cast<long long>(duration_ret);
			callback(slot, sigval1);
		}
	};
	QAudioDecoderControl::connect(self, static_cast<void (QAudioDecoderControl::*)(qint64)>(&QAudioDecoderControl::durationChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QAudioDecoderControl_tr2(const char* s, const char* c) {
	QString _ret = QAudioDecoderControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioDecoderControl_tr3(const char* s, const char* c, int n) {
	QString _ret = QAudioDecoderControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioDecoderControl_trUtf82(const char* s, const char* c) {
	QString _ret = QAudioDecoderControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioDecoderControl_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAudioDecoderControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QAudioDecoderControl_staticMetaObject() { return &QAudioDecoderControl::staticMetaObject; }
void QAudioDecoderControl_delete(QAudioDecoderControl* self) {
	delete self;
}

