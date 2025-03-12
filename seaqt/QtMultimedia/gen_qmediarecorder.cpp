#include <QChildEvent>
#include <QEvent>
#include <QMediaCaptureSession>
#include <QMediaFormat>
#include <QMediaMetaData>
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
#include <qmediarecorder.h>
#include "gen_qmediarecorder.h"
class VirtualQMediaRecorder final : public QMediaRecorder {
	const QMediaRecorder_VTable* vtbl;
	void* vdata;
public:
	friend const QMediaRecorder_VTable* QMediaRecorder_vtbl(const VirtualQMediaRecorder* self);
	friend void* QMediaRecorder_vdata(const VirtualQMediaRecorder* self);
	friend void QMediaRecorder_setVdata(VirtualQMediaRecorder* self, void* vdata);

	VirtualQMediaRecorder(const QMediaRecorder_VTable* vtbl, void* vdata): QMediaRecorder(), vtbl(vtbl), vdata(vdata) {}
	VirtualQMediaRecorder(const QMediaRecorder_VTable* vtbl, void* vdata, QObject* parent): QMediaRecorder(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQMediaRecorder() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMediaRecorder::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QMediaRecorder_virtualbase_metaObject(const VirtualQMediaRecorder* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMediaRecorder::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QMediaRecorder_virtualbase_metacast(VirtualQMediaRecorder* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMediaRecorder::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMediaRecorder_virtualbase_metacall(VirtualQMediaRecorder* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMediaRecorder::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QMediaRecorder_virtualbase_event(VirtualQMediaRecorder* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMediaRecorder::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMediaRecorder_virtualbase_eventFilter(VirtualQMediaRecorder* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMediaRecorder::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QMediaRecorder_virtualbase_timerEvent(VirtualQMediaRecorder* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMediaRecorder::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QMediaRecorder_virtualbase_childEvent(VirtualQMediaRecorder* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMediaRecorder::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QMediaRecorder_virtualbase_customEvent(VirtualQMediaRecorder* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMediaRecorder::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QMediaRecorder_virtualbase_connectNotify(VirtualQMediaRecorder* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMediaRecorder::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QMediaRecorder_virtualbase_disconnectNotify(VirtualQMediaRecorder* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QMediaRecorder_protectedbase_sender(const VirtualQMediaRecorder* self);
	friend int QMediaRecorder_protectedbase_senderSignalIndex(const VirtualQMediaRecorder* self);
	friend int QMediaRecorder_protectedbase_receivers(const VirtualQMediaRecorder* self, const char* signal);
	friend bool QMediaRecorder_protectedbase_isSignalConnected(const VirtualQMediaRecorder* self, QMetaMethod* signal);
};

VirtualQMediaRecorder* QMediaRecorder_new(const QMediaRecorder_VTable* vtbl, void* vdata) {
	return new VirtualQMediaRecorder(vtbl, vdata);
}

VirtualQMediaRecorder* QMediaRecorder_new2(const QMediaRecorder_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQMediaRecorder(vtbl, vdata, parent);
}

void QMediaRecorder_virtbase(QMediaRecorder* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
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

bool QMediaRecorder_isAvailable(const QMediaRecorder* self) {
	return self->isAvailable();
}

QUrl* QMediaRecorder_outputLocation(const QMediaRecorder* self) {
	return new QUrl(self->outputLocation());
}

void QMediaRecorder_setOutputLocation(QMediaRecorder* self, QUrl* location) {
	self->setOutputLocation(*location);
}

QUrl* QMediaRecorder_actualLocation(const QMediaRecorder* self) {
	return new QUrl(self->actualLocation());
}

int QMediaRecorder_recorderState(const QMediaRecorder* self) {
	QMediaRecorder::RecorderState _ret = self->recorderState();
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

QMediaFormat* QMediaRecorder_mediaFormat(const QMediaRecorder* self) {
	return new QMediaFormat(self->mediaFormat());
}

void QMediaRecorder_setMediaFormat(QMediaRecorder* self, QMediaFormat* format) {
	self->setMediaFormat(*format);
}

int QMediaRecorder_encodingMode(const QMediaRecorder* self) {
	QMediaRecorder::EncodingMode _ret = self->encodingMode();
	return static_cast<int>(_ret);
}

void QMediaRecorder_setEncodingMode(QMediaRecorder* self, int encodingMode) {
	self->setEncodingMode(static_cast<QMediaRecorder::EncodingMode>(encodingMode));
}

int QMediaRecorder_quality(const QMediaRecorder* self) {
	QMediaRecorder::Quality _ret = self->quality();
	return static_cast<int>(_ret);
}

void QMediaRecorder_setQuality(QMediaRecorder* self, int quality) {
	self->setQuality(static_cast<QMediaRecorder::Quality>(quality));
}

QSize* QMediaRecorder_videoResolution(const QMediaRecorder* self) {
	return new QSize(self->videoResolution());
}

void QMediaRecorder_setVideoResolution(QMediaRecorder* self, QSize* videoResolution) {
	self->setVideoResolution(*videoResolution);
}

void QMediaRecorder_setVideoResolution2(QMediaRecorder* self, int width, int height) {
	self->setVideoResolution(static_cast<int>(width), static_cast<int>(height));
}

double QMediaRecorder_videoFrameRate(const QMediaRecorder* self) {
	qreal _ret = self->videoFrameRate();
	return static_cast<double>(_ret);
}

void QMediaRecorder_setVideoFrameRate(QMediaRecorder* self, double frameRate) {
	self->setVideoFrameRate(static_cast<qreal>(frameRate));
}

int QMediaRecorder_videoBitRate(const QMediaRecorder* self) {
	return self->videoBitRate();
}

void QMediaRecorder_setVideoBitRate(QMediaRecorder* self, int bitRate) {
	self->setVideoBitRate(static_cast<int>(bitRate));
}

int QMediaRecorder_audioBitRate(const QMediaRecorder* self) {
	return self->audioBitRate();
}

void QMediaRecorder_setAudioBitRate(QMediaRecorder* self, int bitRate) {
	self->setAudioBitRate(static_cast<int>(bitRate));
}

int QMediaRecorder_audioChannelCount(const QMediaRecorder* self) {
	return self->audioChannelCount();
}

void QMediaRecorder_setAudioChannelCount(QMediaRecorder* self, int channels) {
	self->setAudioChannelCount(static_cast<int>(channels));
}

int QMediaRecorder_audioSampleRate(const QMediaRecorder* self) {
	return self->audioSampleRate();
}

void QMediaRecorder_setAudioSampleRate(QMediaRecorder* self, int sampleRate) {
	self->setAudioSampleRate(static_cast<int>(sampleRate));
}

QMediaMetaData* QMediaRecorder_metaData(const QMediaRecorder* self) {
	return new QMediaMetaData(self->metaData());
}

void QMediaRecorder_setMetaData(QMediaRecorder* self, QMediaMetaData* metaData) {
	self->setMetaData(*metaData);
}

void QMediaRecorder_addMetaData(QMediaRecorder* self, QMediaMetaData* metaData) {
	self->addMetaData(*metaData);
}

QMediaCaptureSession* QMediaRecorder_captureSession(const QMediaRecorder* self) {
	return self->captureSession();
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

void QMediaRecorder_recorderStateChanged(QMediaRecorder* self, int state) {
	self->recorderStateChanged(static_cast<QMediaRecorder::RecorderState>(state));
}

void QMediaRecorder_connect_recorderStateChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QMediaRecorder::RecorderState state) {
			QMediaRecorder::RecorderState state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)(QMediaRecorder::RecorderState)>(&QMediaRecorder::recorderStateChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_durationChanged(QMediaRecorder* self, long long duration) {
	self->durationChanged(static_cast<qint64>(duration));
}

void QMediaRecorder_connect_durationChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) {
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

void QMediaRecorder_actualLocationChanged(QMediaRecorder* self, QUrl* location) {
	self->actualLocationChanged(*location);
}

void QMediaRecorder_connect_actualLocationChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
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

void QMediaRecorder_encoderSettingsChanged(QMediaRecorder* self) {
	self->encoderSettingsChanged();
}

void QMediaRecorder_connect_encoderSettingsChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)()>(&QMediaRecorder::encoderSettingsChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_errorOccurred(QMediaRecorder* self, int error, struct miqt_string errorString) {
	QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->errorOccurred(static_cast<QMediaRecorder::Error>(error), errorString_QString);
}

void QMediaRecorder_connect_errorOccurred(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t, int, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, struct miqt_string);
		void operator()(QMediaRecorder::Error error, const QString& errorString) {
			QMediaRecorder::Error error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
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
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)(QMediaRecorder::Error, const QString&)>(&QMediaRecorder::errorOccurred), self, local_caller{slot, callback, release});
}

void QMediaRecorder_errorChanged(QMediaRecorder* self) {
	self->errorChanged();
}

void QMediaRecorder_connect_errorChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)()>(&QMediaRecorder::errorChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_metaDataChanged(QMediaRecorder* self) {
	self->metaDataChanged();
}

void QMediaRecorder_connect_metaDataChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)()>(&QMediaRecorder::metaDataChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_mediaFormatChanged(QMediaRecorder* self) {
	self->mediaFormatChanged();
}

void QMediaRecorder_connect_mediaFormatChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)()>(&QMediaRecorder::mediaFormatChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_encodingModeChanged(QMediaRecorder* self) {
	self->encodingModeChanged();
}

void QMediaRecorder_connect_encodingModeChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)()>(&QMediaRecorder::encodingModeChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_qualityChanged(QMediaRecorder* self) {
	self->qualityChanged();
}

void QMediaRecorder_connect_qualityChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)()>(&QMediaRecorder::qualityChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_videoResolutionChanged(QMediaRecorder* self) {
	self->videoResolutionChanged();
}

void QMediaRecorder_connect_videoResolutionChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)()>(&QMediaRecorder::videoResolutionChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_videoFrameRateChanged(QMediaRecorder* self) {
	self->videoFrameRateChanged();
}

void QMediaRecorder_connect_videoFrameRateChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)()>(&QMediaRecorder::videoFrameRateChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_videoBitRateChanged(QMediaRecorder* self) {
	self->videoBitRateChanged();
}

void QMediaRecorder_connect_videoBitRateChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)()>(&QMediaRecorder::videoBitRateChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_audioBitRateChanged(QMediaRecorder* self) {
	self->audioBitRateChanged();
}

void QMediaRecorder_connect_audioBitRateChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)()>(&QMediaRecorder::audioBitRateChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_audioChannelCountChanged(QMediaRecorder* self) {
	self->audioChannelCountChanged();
}

void QMediaRecorder_connect_audioChannelCountChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)()>(&QMediaRecorder::audioChannelCountChanged), self, local_caller{slot, callback, release});
}

void QMediaRecorder_audioSampleRateChanged(QMediaRecorder* self) {
	self->audioSampleRateChanged();
}

void QMediaRecorder_connect_audioSampleRateChanged(VirtualQMediaRecorder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMediaRecorder::connect(self, static_cast<void (QMediaRecorder::*)()>(&QMediaRecorder::audioSampleRateChanged), self, local_caller{slot, callback, release});
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

QMetaObject* QMediaRecorder_virtualbase_metaObject(const VirtualQMediaRecorder* self) {

	return (QMetaObject*) self->QMediaRecorder::metaObject();
}

void* QMediaRecorder_virtualbase_metacast(VirtualQMediaRecorder* self, const char* param1) {

	return self->QMediaRecorder::qt_metacast(param1);
}

int QMediaRecorder_virtualbase_metacall(VirtualQMediaRecorder* self, int param1, int param2, void** param3) {

	return self->QMediaRecorder::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QMediaRecorder_virtualbase_event(VirtualQMediaRecorder* self, QEvent* event) {

	return self->QMediaRecorder::event(event);
}

bool QMediaRecorder_virtualbase_eventFilter(VirtualQMediaRecorder* self, QObject* watched, QEvent* event) {

	return self->QMediaRecorder::eventFilter(watched, event);
}

void QMediaRecorder_virtualbase_timerEvent(VirtualQMediaRecorder* self, QTimerEvent* event) {

	self->QMediaRecorder::timerEvent(event);
}

void QMediaRecorder_virtualbase_childEvent(VirtualQMediaRecorder* self, QChildEvent* event) {

	self->QMediaRecorder::childEvent(event);
}

void QMediaRecorder_virtualbase_customEvent(VirtualQMediaRecorder* self, QEvent* event) {

	self->QMediaRecorder::customEvent(event);
}

void QMediaRecorder_virtualbase_connectNotify(VirtualQMediaRecorder* self, QMetaMethod* signal) {

	self->QMediaRecorder::connectNotify(*signal);
}

void QMediaRecorder_virtualbase_disconnectNotify(VirtualQMediaRecorder* self, QMetaMethod* signal) {

	self->QMediaRecorder::disconnectNotify(*signal);
}

const QMetaObject* QMediaRecorder_staticMetaObject() { return &QMediaRecorder::staticMetaObject; }

const QMediaRecorder_VTable* QMediaRecorder_vtbl(const VirtualQMediaRecorder* self) { return self->vtbl; }
void* QMediaRecorder_vdata(const VirtualQMediaRecorder* self) { return self->vdata; }
void QMediaRecorder_setVdata(VirtualQMediaRecorder* self, void* vdata) { self->vdata = vdata; }

QObject* QMediaRecorder_protectedbase_sender(const VirtualQMediaRecorder* self) {
	return self->sender();
}

int QMediaRecorder_protectedbase_senderSignalIndex(const VirtualQMediaRecorder* self) {
	return self->senderSignalIndex();
}

int QMediaRecorder_protectedbase_receivers(const VirtualQMediaRecorder* self, const char* signal) {
	return self->receivers(signal);
}

bool QMediaRecorder_protectedbase_isSignalConnected(const VirtualQMediaRecorder* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QMediaRecorder_delete(QMediaRecorder* self) {
	delete self;
}

