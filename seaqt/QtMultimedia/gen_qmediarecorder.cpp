#include <QAudioEncoderSettings>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaBindableInterface>
#include <QMediaObject>
#include <QMediaRecorder>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <QVideoEncoderSettings>
#include <qmediarecorder.h>
#include "gen_qmediarecorder.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQMediaRecorder final : public QMediaRecorder {
	struct QMediaRecorder_VTable* vtbl;
public:

	VirtualQMediaRecorder(struct QMediaRecorder_VTable* vtbl, QMediaObject* mediaObject): QMediaRecorder(mediaObject), vtbl(vtbl) {};
	VirtualQMediaRecorder(struct QMediaRecorder_VTable* vtbl, QMediaObject* mediaObject, QObject* parent): QMediaRecorder(mediaObject, parent), vtbl(vtbl) {};

	virtual ~VirtualQMediaRecorder() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMediaRecorder::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QMediaRecorder_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMediaRecorder::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QMediaRecorder_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMediaRecorder::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMediaRecorder_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QMediaObject* mediaObject() const override {
		if (vtbl->mediaObject == 0) {
			return QMediaRecorder::mediaObject();
		}


		QMediaObject* callback_return_value = vtbl->mediaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMediaObject* QMediaRecorder_virtualbase_mediaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool setMediaObject(QMediaObject* object) override {
		if (vtbl->setMediaObject == 0) {
			return QMediaRecorder::setMediaObject(object);
		}

		QMediaObject* sigval1 = object;

		bool callback_return_value = vtbl->setMediaObject(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QMediaRecorder_virtualbase_setMediaObject(void* self, QMediaObject* object);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMediaRecorder::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QMediaRecorder_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMediaRecorder::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMediaRecorder_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMediaRecorder::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QMediaRecorder_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMediaRecorder::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QMediaRecorder_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMediaRecorder::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QMediaRecorder_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMediaRecorder::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QMediaRecorder_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMediaRecorder::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QMediaRecorder_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QMediaRecorder_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QMediaRecorder_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QMediaRecorder_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QMediaRecorder_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QMediaRecorder* QMediaRecorder_new(struct QMediaRecorder_VTable* vtbl, QMediaObject* mediaObject) {
	return new VirtualQMediaRecorder(vtbl, mediaObject);
}

QMediaRecorder* QMediaRecorder_new2(struct QMediaRecorder_VTable* vtbl, QMediaObject* mediaObject, QObject* parent) {
	return new VirtualQMediaRecorder(vtbl, mediaObject, parent);
}

void QMediaRecorder_virtbase(QMediaRecorder* src, QObject** outptr_QObject, QMediaBindableInterface** outptr_QMediaBindableInterface) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QMediaBindableInterface = static_cast<QMediaBindableInterface*>(src);
}

QMetaObject* QMediaRecorder_metaObject(const QMediaRecorder* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMediaRecorder_metacast(QMediaRecorder* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMediaRecorder_metacall(QMediaRecorder* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMediaRecorder_tr(const char* s) {
	QString _ret = QMediaRecorder::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaRecorder_trUtf8(const char* s) {
	QString _ret = QMediaRecorder::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMediaObject* QMediaRecorder_mediaObject(const QMediaRecorder* self) {
	return self->mediaObject();
}

bool QMediaRecorder_isAvailable(const QMediaRecorder* self) {
	return self->isAvailable();
}

int QMediaRecorder_availability(const QMediaRecorder* self) {
	QMultimedia::AvailabilityStatus _ret = self->availability();
	return static_cast<int>(_ret);
}

QUrl* QMediaRecorder_outputLocation(const QMediaRecorder* self) {
	return new QUrl(self->outputLocation());
}

bool QMediaRecorder_setOutputLocation(QMediaRecorder* self, QUrl* location) {
	return self->setOutputLocation(*location);
}

QUrl* QMediaRecorder_actualLocation(const QMediaRecorder* self) {
	return new QUrl(self->actualLocation());
}

int QMediaRecorder_state(const QMediaRecorder* self) {
	QMediaRecorder::State _ret = self->state();
	return static_cast<int>(_ret);
}

int QMediaRecorder_status(const QMediaRecorder* self) {
	QMediaRecorder::Status _ret = self->status();
	return static_cast<int>(_ret);
}

int QMediaRecorder_error(const QMediaRecorder* self) {
	QMediaRecorder::Error _ret = self->error();
	return static_cast<int>(_ret);
}

struct miqt_string QMediaRecorder_errorString(const QMediaRecorder* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

long long QMediaRecorder_duration(const QMediaRecorder* self) {
	qint64 _ret = self->duration();
	return static_cast<long long>(_ret);
}

bool QMediaRecorder_isMuted(const QMediaRecorder* self) {
	return self->isMuted();
}

double QMediaRecorder_volume(const QMediaRecorder* self) {
	qreal _ret = self->volume();
	return static_cast<double>(_ret);
}

struct miqt_array /* of struct miqt_string */  QMediaRecorder_supportedContainers(const QMediaRecorder* self) {
	QStringList _ret = self->supportedContainers();
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

struct miqt_string QMediaRecorder_containerDescription(const QMediaRecorder* self, struct miqt_string format) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	QString _ret = self->containerDescription(format_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of struct miqt_string */  QMediaRecorder_supportedAudioCodecs(const QMediaRecorder* self) {
	QStringList _ret = self->supportedAudioCodecs();
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

struct miqt_string QMediaRecorder_audioCodecDescription(const QMediaRecorder* self, struct miqt_string codecName) {
	QString codecName_QString = QString::fromUtf8(codecName.data, codecName.len);
	QString _ret = self->audioCodecDescription(codecName_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of int */  QMediaRecorder_supportedAudioSampleRates(const QMediaRecorder* self) {
	QList<int> _ret = self->supportedAudioSampleRates();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of struct miqt_string */  QMediaRecorder_supportedVideoCodecs(const QMediaRecorder* self) {
	QStringList _ret = self->supportedVideoCodecs();
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

struct miqt_string QMediaRecorder_videoCodecDescription(const QMediaRecorder* self, struct miqt_string codecName) {
	QString codecName_QString = QString::fromUtf8(codecName.data, codecName.len);
	QString _ret = self->videoCodecDescription(codecName_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QSize* */  QMediaRecorder_supportedResolutions(const QMediaRecorder* self) {
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

struct miqt_array /* of double */  QMediaRecorder_supportedFrameRates(const QMediaRecorder* self) {
	QList<qreal> _ret = self->supportedFrameRates();
	// Convert QList<> from C++ memory to manually-managed C memory
	double* _arr = static_cast<double*>(malloc(sizeof(double) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QAudioEncoderSettings* QMediaRecorder_audioSettings(const QMediaRecorder* self) {
	return new QAudioEncoderSettings(self->audioSettings());
}

QVideoEncoderSettings* QMediaRecorder_videoSettings(const QMediaRecorder* self) {
	return new QVideoEncoderSettings(self->videoSettings());
}

struct miqt_string QMediaRecorder_containerFormat(const QMediaRecorder* self) {
	QString _ret = self->containerFormat();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMediaRecorder_setAudioSettings(QMediaRecorder* self, QAudioEncoderSettings* audioSettings) {
	self->setAudioSettings(*audioSettings);
}

void QMediaRecorder_setVideoSettings(QMediaRecorder* self, QVideoEncoderSettings* videoSettings) {
	self->setVideoSettings(*videoSettings);
}

void QMediaRecorder_setContainerFormat(QMediaRecorder* self, struct miqt_string container) {
	QString container_QString = QString::fromUtf8(container.data, container.len);
	self->setContainerFormat(container_QString);
}

void QMediaRecorder_setEncodingSettings(QMediaRecorder* self, QAudioEncoderSettings* audioSettings) {
	self->setEncodingSettings(*audioSettings);
}

bool QMediaRecorder_isMetaDataAvailable(const QMediaRecorder* self) {
	return self->isMetaDataAvailable();
}

bool QMediaRecorder_isMetaDataWritable(const QMediaRecorder* self) {
	return self->isMetaDataWritable();
}

QVariant* QMediaRecorder_metaData(const QMediaRecorder* self, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QVariant(self->metaData(key_QString));
}

void QMediaRecorder_setMetaData(QMediaRecorder* self, struct miqt_string key, QVariant* value) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->setMetaData(key_QString, *value);
}

struct miqt_array /* of struct miqt_string */  QMediaRecorder_availableMetaData(const QMediaRecorder* self) {
	QStringList _ret = self->availableMetaData();
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

void QMediaRecorder_record(QMediaRecorder* self) {
	self->record();
}

void QMediaRecorder_pause(QMediaRecorder* self) {
	self->pause();
}

void QMediaRecorder_stop(QMediaRecorder* self) {
	self->stop();
}

void QMediaRecorder_setMuted(QMediaRecorder* self, bool muted) {
	self->setMuted(muted);
}

void QMediaRecorder_setVolume(QMediaRecorder* self, double volume) {
	self->setVolume(static_cast<qreal>(volume));
}

void QMediaRecorder_stateChanged(QMediaRecorder* self, int state) {
	self->stateChanged(static_cast<QMediaRecorder::State>(state));
}

void QMediaRecorder_connect_stateChanged(QMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QMediaRecorder::State state) {
			QMediaRecorder::State state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)(QMediaRecorder::State)>(&QMediaRecorder::stateChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_statusChanged(QMediaRecorder* self, int status) {
	self->statusChanged(static_cast<QMediaRecorder::Status>(status));
}

void QMediaRecorder_connect_statusChanged(QMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QMediaRecorder::Status status) {
			QMediaRecorder::Status status_ret = status;
			int sigval1 = static_cast<int>(status_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)(QMediaRecorder::Status)>(&QMediaRecorder::statusChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_durationChanged(QMediaRecorder* self, long long duration) {
	self->durationChanged(static_cast<qint64>(duration));
}

void QMediaRecorder_connect_durationChanged(QMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, long long);
		void operator()(qint64 duration) {
			qint64 duration_ret = duration;
			long long sigval1 = static_cast<long long>(duration_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)(qint64)>(&QMediaRecorder::durationChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_mutedChanged(QMediaRecorder* self, bool muted) {
	self->mutedChanged(muted);
}

void QMediaRecorder_connect_mutedChanged(QMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool muted) {
			bool sigval1 = muted;
			callback(slot, sigval1);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)(bool)>(&QMediaRecorder::mutedChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_volumeChanged(QMediaRecorder* self, double volume) {
	self->volumeChanged(static_cast<qreal>(volume));
}

void QMediaRecorder_connect_volumeChanged(QMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, double);
		void operator()(qreal volume) {
			qreal volume_ret = volume;
			double sigval1 = static_cast<double>(volume_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)(qreal)>(&QMediaRecorder::volumeChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_actualLocationChanged(QMediaRecorder* self, QUrl* location) {
	self->actualLocationChanged(*location);
}

void QMediaRecorder_connect_actualLocationChanged(QMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QUrl*);
		void operator()(const QUrl& location) {
			const QUrl& location_ret = location;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&location_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)(const QUrl&)>(&QMediaRecorder::actualLocationChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_errorWithError(QMediaRecorder* self, int error) {
	self->error(static_cast<QMediaRecorder::Error>(error));
}

void QMediaRecorder_connect_errorWithError(QMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QMediaRecorder::Error error) {
			QMediaRecorder::Error error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)(QMediaRecorder::Error)>(&QMediaRecorder::error), self, local_caller{slot, callback, release});
}

void QMediaRecorder_metaDataAvailableChanged(QMediaRecorder* self, bool available) {
	self->metaDataAvailableChanged(available);
}

void QMediaRecorder_connect_metaDataAvailableChanged(QMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool available) {
			bool sigval1 = available;
			callback(slot, sigval1);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)(bool)>(&QMediaRecorder::metaDataAvailableChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_metaDataWritableChanged(QMediaRecorder* self, bool writable) {
	self->metaDataWritableChanged(writable);
}

void QMediaRecorder_connect_metaDataWritableChanged(QMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool writable) {
			bool sigval1 = writable;
			callback(slot, sigval1);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)(bool)>(&QMediaRecorder::metaDataWritableChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_metaDataChanged(QMediaRecorder* self) {
	self->metaDataChanged();
}

void QMediaRecorder_connect_metaDataChanged(QMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)()>(&QMediaRecorder::metaDataChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_metaDataChanged2(QMediaRecorder* self, struct miqt_string key, QVariant* value) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->metaDataChanged(key_QString, *value);
}

void QMediaRecorder_connect_metaDataChanged2(QMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string, QVariant*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string, QVariant*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string, QVariant*);
		void operator()(const QString& key, const QVariant& value) {
			const QString key_ret = key;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray key_b = key_ret.toUtf8();
			struct miqt_string key_ms;
			key_ms.len = key_b.length();
			key_ms.data = static_cast<char*>(malloc(key_ms.len));
			memcpy(key_ms.data, key_b.data(), key_ms.len);
			struct miqt_string sigval1 = key_ms;
			const QVariant& value_ret = value;
			// Cast returned reference into pointer
			QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)(const QString&, const QVariant&)>(&QMediaRecorder::metaDataChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_availabilityChanged(QMediaRecorder* self, bool available) {
	self->availabilityChanged(available);
}

void QMediaRecorder_connect_availabilityChanged(QMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool available) {
			bool sigval1 = available;
			callback(slot, sigval1);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)(bool)>(&QMediaRecorder::availabilityChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_availabilityChangedWithAvailability(QMediaRecorder* self, int availability) {
	self->availabilityChanged(static_cast<QMultimedia::AvailabilityStatus>(availability));
}

void QMediaRecorder_connect_availabilityChangedWithAvailability(QMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QMultimedia::AvailabilityStatus availability) {
			QMultimedia::AvailabilityStatus availability_ret = availability;
			int sigval1 = static_cast<int>(availability_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)(QMultimedia::AvailabilityStatus)>(&QMediaRecorder::availabilityChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QMediaRecorder_tr2(const char* s, const char* c) {
	QString _ret = QMediaRecorder::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaRecorder_tr3(const char* s, const char* c, int n) {
	QString _ret = QMediaRecorder::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaRecorder_trUtf82(const char* s, const char* c) {
	QString _ret = QMediaRecorder::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaRecorder_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMediaRecorder::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of int */  QMediaRecorder_supportedAudioSampleRates1(const QMediaRecorder* self, QAudioEncoderSettings* settings) {
	QList<int> _ret = self->supportedAudioSampleRates(*settings);
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of int */  QMediaRecorder_supportedAudioSampleRates2(const QMediaRecorder* self, QAudioEncoderSettings* settings, bool* continuous) {
	QList<int> _ret = self->supportedAudioSampleRates(*settings, continuous);
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QSize* */  QMediaRecorder_supportedResolutions1(const QMediaRecorder* self, QVideoEncoderSettings* settings) {
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

struct miqt_array /* of QSize* */  QMediaRecorder_supportedResolutions2(const QMediaRecorder* self, QVideoEncoderSettings* settings, bool* continuous) {
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

struct miqt_array /* of double */  QMediaRecorder_supportedFrameRates1(const QMediaRecorder* self, QVideoEncoderSettings* settings) {
	QList<qreal> _ret = self->supportedFrameRates(*settings);
	// Convert QList<> from C++ memory to manually-managed C memory
	double* _arr = static_cast<double*>(malloc(sizeof(double) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of double */  QMediaRecorder_supportedFrameRates2(const QMediaRecorder* self, QVideoEncoderSettings* settings, bool* continuous) {
	QList<qreal> _ret = self->supportedFrameRates(*settings, continuous);
	// Convert QList<> from C++ memory to manually-managed C memory
	double* _arr = static_cast<double*>(malloc(sizeof(double) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QMediaRecorder_setEncodingSettings2(QMediaRecorder* self, QAudioEncoderSettings* audioSettings, QVideoEncoderSettings* videoSettings) {
	self->setEncodingSettings(*audioSettings, *videoSettings);
}

void QMediaRecorder_setEncodingSettings3(QMediaRecorder* self, QAudioEncoderSettings* audioSettings, QVideoEncoderSettings* videoSettings, struct miqt_string containerMimeType) {
	QString containerMimeType_QString = QString::fromUtf8(containerMimeType.data, containerMimeType.len);
	self->setEncodingSettings(*audioSettings, *videoSettings, containerMimeType_QString);
}

QMetaObject* QMediaRecorder_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQMediaRecorder*)(self) )->QMediaRecorder::metaObject();

}

void* QMediaRecorder_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQMediaRecorder*)(self) )->QMediaRecorder::qt_metacast(param1);

}

int QMediaRecorder_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQMediaRecorder*)(self) )->QMediaRecorder::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QMediaObject* QMediaRecorder_virtualbase_mediaObject(const void* self) {

	return ( (const VirtualQMediaRecorder*)(self) )->QMediaRecorder::mediaObject();

}

bool QMediaRecorder_virtualbase_setMediaObject(void* self, QMediaObject* object) {

	return ( (VirtualQMediaRecorder*)(self) )->QMediaRecorder::setMediaObject(object);

}

bool QMediaRecorder_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQMediaRecorder*)(self) )->QMediaRecorder::event(event);

}

bool QMediaRecorder_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQMediaRecorder*)(self) )->QMediaRecorder::eventFilter(watched, event);

}

void QMediaRecorder_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQMediaRecorder*)(self) )->QMediaRecorder::timerEvent(event);

}

void QMediaRecorder_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQMediaRecorder*)(self) )->QMediaRecorder::childEvent(event);

}

void QMediaRecorder_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQMediaRecorder*)(self) )->QMediaRecorder::customEvent(event);

}

void QMediaRecorder_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQMediaRecorder*)(self) )->QMediaRecorder::connectNotify(*signal);

}

void QMediaRecorder_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQMediaRecorder*)(self) )->QMediaRecorder::disconnectNotify(*signal);

}

const QMetaObject* QMediaRecorder_staticMetaObject() { return &QMediaRecorder::staticMetaObject; }
QObject* QMediaRecorder_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQMediaRecorder* self_cast = dynamic_cast<VirtualQMediaRecorder*>( (QMediaRecorder*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QMediaRecorder_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQMediaRecorder* self_cast = dynamic_cast<VirtualQMediaRecorder*>( (QMediaRecorder*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QMediaRecorder_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQMediaRecorder* self_cast = dynamic_cast<VirtualQMediaRecorder*>( (QMediaRecorder*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QMediaRecorder_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQMediaRecorder* self_cast = dynamic_cast<VirtualQMediaRecorder*>( (QMediaRecorder*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QMediaRecorder_delete(QMediaRecorder* self) {
	delete self;
}

