#include <QAudioBuffer>
#include <QAudioDecoder>
#include <QAudioFormat>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QList>
#include <QMediaObject>
#include <QMediaService>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qaudiodecoder.h>
#include "gen_qaudiodecoder.h"
class VirtualQAudioDecoder final : public QAudioDecoder {
	const QAudioDecoder_VTable* vtbl;
	void* vdata;
public:
	friend const QAudioDecoder_VTable* QAudioDecoder_vtbl(const VirtualQAudioDecoder* self);
	friend void* QAudioDecoder_vdata(const VirtualQAudioDecoder* self);
	friend void QAudioDecoder_setVdata(VirtualQAudioDecoder* self, void* vdata);

	VirtualQAudioDecoder(const QAudioDecoder_VTable* vtbl, void* vdata): QAudioDecoder(), vtbl(vtbl), vdata(vdata) {}
	VirtualQAudioDecoder(const QAudioDecoder_VTable* vtbl, void* vdata, QObject* parent): QAudioDecoder(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAudioDecoder() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioDecoder::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAudioDecoder_virtualbase_metaObject(const VirtualQAudioDecoder* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioDecoder::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAudioDecoder_virtualbase_metacast(VirtualQAudioDecoder* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioDecoder::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioDecoder_virtualbase_metacall(VirtualQAudioDecoder* self, int param1, int param2, void** param3);

	virtual bool bind(QObject* param1) override {
		if (vtbl->bind == 0) {
			return QAudioDecoder::bind(param1);
		}

		QObject* sigval1 = param1;

		bool callback_return_value = vtbl->bind(this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioDecoder_virtualbase_bind(VirtualQAudioDecoder* self, QObject* param1);

	virtual void unbind(QObject* param1) override {
		if (vtbl->unbind == 0) {
			QAudioDecoder::unbind(param1);
			return;
		}

		QObject* sigval1 = param1;

		vtbl->unbind(this, sigval1);

	}

	friend void QAudioDecoder_virtualbase_unbind(VirtualQAudioDecoder* self, QObject* param1);

	virtual bool isAvailable() const override {
		if (vtbl->isAvailable == 0) {
			return QAudioDecoder::isAvailable();
		}


		bool callback_return_value = vtbl->isAvailable(this);

		return callback_return_value;
	}

	friend bool QAudioDecoder_virtualbase_isAvailable(const VirtualQAudioDecoder* self);

	virtual QMultimedia::AvailabilityStatus availability() const override {
		if (vtbl->availability == 0) {
			return QAudioDecoder::availability();
		}


		int callback_return_value = vtbl->availability(this);

		return static_cast<QMultimedia::AvailabilityStatus>(callback_return_value);
	}

	friend int QAudioDecoder_virtualbase_availability(const VirtualQAudioDecoder* self);

	virtual QMediaService* service() const override {
		if (vtbl->service == 0) {
			return QAudioDecoder::service();
		}


		QMediaService* callback_return_value = vtbl->service(this);

		return callback_return_value;
	}

	friend QMediaService* QAudioDecoder_virtualbase_service(const VirtualQAudioDecoder* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioDecoder::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioDecoder_virtualbase_event(VirtualQAudioDecoder* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioDecoder::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioDecoder_virtualbase_eventFilter(VirtualQAudioDecoder* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioDecoder::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAudioDecoder_virtualbase_timerEvent(VirtualQAudioDecoder* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioDecoder::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAudioDecoder_virtualbase_childEvent(VirtualQAudioDecoder* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioDecoder::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAudioDecoder_virtualbase_customEvent(VirtualQAudioDecoder* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioDecoder::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAudioDecoder_virtualbase_connectNotify(VirtualQAudioDecoder* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioDecoder::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAudioDecoder_virtualbase_disconnectNotify(VirtualQAudioDecoder* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QAudioDecoder_protectedbase_addPropertyWatch(VirtualQAudioDecoder* self, struct miqt_string name);
	friend void QAudioDecoder_protectedbase_removePropertyWatch(VirtualQAudioDecoder* self, struct miqt_string name);
	friend QObject* QAudioDecoder_protectedbase_sender(const VirtualQAudioDecoder* self);
	friend int QAudioDecoder_protectedbase_senderSignalIndex(const VirtualQAudioDecoder* self);
	friend int QAudioDecoder_protectedbase_receivers(const VirtualQAudioDecoder* self, const char* signal);
	friend bool QAudioDecoder_protectedbase_isSignalConnected(const VirtualQAudioDecoder* self, QMetaMethod* signal);
};

VirtualQAudioDecoder* QAudioDecoder_new(const QAudioDecoder_VTable* vtbl, void* vdata) {
	return new VirtualQAudioDecoder(vtbl, vdata);
}

VirtualQAudioDecoder* QAudioDecoder_new2(const QAudioDecoder_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQAudioDecoder(vtbl, vdata, parent);
}

void QAudioDecoder_virtbase(QAudioDecoder* src, QMediaObject** outptr_QMediaObject) {
	*outptr_QMediaObject = static_cast<QMediaObject*>(src);
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

struct miqt_string QAudioDecoder_trUtf8(const char* s) {
	QString _ret = QAudioDecoder::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAudioDecoder_hasSupport(struct miqt_string mimeType) {
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	QMultimedia::SupportEstimate _ret = QAudioDecoder::hasSupport(mimeType_QString);
	return static_cast<int>(_ret);
}

int QAudioDecoder_state(const QAudioDecoder* self) {
	QAudioDecoder::State _ret = self->state();
	return static_cast<int>(_ret);
}

struct miqt_string QAudioDecoder_sourceFilename(const QAudioDecoder* self) {
	QString _ret = self->sourceFilename();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAudioDecoder_setSourceFilename(QAudioDecoder* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setSourceFilename(fileName_QString);
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

void QAudioDecoder_connect_bufferAvailableChanged(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
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

void QAudioDecoder_connect_bufferReady(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QAudioDecoder_connect_finished(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)()>(&QAudioDecoder::finished), self, local_caller{slot, callback, release});
}

void QAudioDecoder_stateChanged(QAudioDecoder* self, int newState) {
	self->stateChanged(static_cast<QAudioDecoder::State>(newState));
}

void QAudioDecoder_connect_stateChanged(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QAudioDecoder::State newState) {
			QAudioDecoder::State newState_ret = newState;
			int sigval1 = static_cast<int>(newState_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)(QAudioDecoder::State)>(&QAudioDecoder::stateChanged), self, local_caller{slot, callback, release});
}

void QAudioDecoder_formatChanged(QAudioDecoder* self, QAudioFormat* format) {
	self->formatChanged(*format);
}

void QAudioDecoder_connect_formatChanged(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, QAudioFormat*), void (*release)(intptr_t)) {
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

void QAudioDecoder_connect_errorWithError(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
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

void QAudioDecoder_connect_sourceChanged(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QAudioDecoder_connect_positionChanged(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) {
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

void QAudioDecoder_connect_durationChanged(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) {
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

bool QAudioDecoder_bind(QAudioDecoder* self, QObject* param1) {
	return self->bind(param1);
}

void QAudioDecoder_unbind(QAudioDecoder* self, QObject* param1) {
	self->unbind(param1);
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

struct miqt_string QAudioDecoder_trUtf82(const char* s, const char* c) {
	QString _ret = QAudioDecoder::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioDecoder_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAudioDecoder::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAudioDecoder_hasSupport2(struct miqt_string mimeType, struct miqt_array /* of struct miqt_string */  codecs) {
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	QStringList codecs_QList;
	codecs_QList.reserve(codecs.len);
	struct miqt_string* codecs_arr = static_cast<struct miqt_string*>(codecs.data);
	for(size_t i = 0; i < codecs.len; ++i) {
		QString codecs_arr_i_QString = QString::fromUtf8(codecs_arr[i].data, codecs_arr[i].len);
		codecs_QList.push_back(codecs_arr_i_QString);
	}
	QMultimedia::SupportEstimate _ret = QAudioDecoder::hasSupport(mimeType_QString, codecs_QList);
	return static_cast<int>(_ret);
}

QMetaObject* QAudioDecoder_virtualbase_metaObject(const VirtualQAudioDecoder* self) {

	return (QMetaObject*) self->QAudioDecoder::metaObject();
}

void* QAudioDecoder_virtualbase_metacast(VirtualQAudioDecoder* self, const char* param1) {

	return self->QAudioDecoder::qt_metacast(param1);
}

int QAudioDecoder_virtualbase_metacall(VirtualQAudioDecoder* self, int param1, int param2, void** param3) {

	return self->QAudioDecoder::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAudioDecoder_virtualbase_bind(VirtualQAudioDecoder* self, QObject* param1) {

	return self->QAudioDecoder::bind(param1);
}

void QAudioDecoder_virtualbase_unbind(VirtualQAudioDecoder* self, QObject* param1) {

	self->QAudioDecoder::unbind(param1);
}

bool QAudioDecoder_virtualbase_isAvailable(const VirtualQAudioDecoder* self) {

	return self->QAudioDecoder::isAvailable();
}

int QAudioDecoder_virtualbase_availability(const VirtualQAudioDecoder* self) {

	QMultimedia::AvailabilityStatus _ret = self->QAudioDecoder::availability();
	return static_cast<int>(_ret);
}

QMediaService* QAudioDecoder_virtualbase_service(const VirtualQAudioDecoder* self) {

	return self->QAudioDecoder::service();
}

bool QAudioDecoder_virtualbase_event(VirtualQAudioDecoder* self, QEvent* event) {

	return self->QAudioDecoder::event(event);
}

bool QAudioDecoder_virtualbase_eventFilter(VirtualQAudioDecoder* self, QObject* watched, QEvent* event) {

	return self->QAudioDecoder::eventFilter(watched, event);
}

void QAudioDecoder_virtualbase_timerEvent(VirtualQAudioDecoder* self, QTimerEvent* event) {

	self->QAudioDecoder::timerEvent(event);
}

void QAudioDecoder_virtualbase_childEvent(VirtualQAudioDecoder* self, QChildEvent* event) {

	self->QAudioDecoder::childEvent(event);
}

void QAudioDecoder_virtualbase_customEvent(VirtualQAudioDecoder* self, QEvent* event) {

	self->QAudioDecoder::customEvent(event);
}

void QAudioDecoder_virtualbase_connectNotify(VirtualQAudioDecoder* self, QMetaMethod* signal) {

	self->QAudioDecoder::connectNotify(*signal);
}

void QAudioDecoder_virtualbase_disconnectNotify(VirtualQAudioDecoder* self, QMetaMethod* signal) {

	self->QAudioDecoder::disconnectNotify(*signal);
}

const QMetaObject* QAudioDecoder_staticMetaObject() { return &QAudioDecoder::staticMetaObject; }

const QAudioDecoder_VTable* QAudioDecoder_vtbl(const VirtualQAudioDecoder* self) { return self->vtbl; }
void* QAudioDecoder_vdata(const VirtualQAudioDecoder* self) { return self->vdata; }
void QAudioDecoder_setVdata(VirtualQAudioDecoder* self, void* vdata) { self->vdata = vdata; }

void QAudioDecoder_protectedbase_addPropertyWatch(VirtualQAudioDecoder* self, struct miqt_string name) {
		QByteArray name_QByteArray(name.data, name.len);
	self->addPropertyWatch(name_QByteArray);
}

void QAudioDecoder_protectedbase_removePropertyWatch(VirtualQAudioDecoder* self, struct miqt_string name) {
		QByteArray name_QByteArray(name.data, name.len);
	self->removePropertyWatch(name_QByteArray);
}

QObject* QAudioDecoder_protectedbase_sender(const VirtualQAudioDecoder* self) {
	return self->sender();
}

int QAudioDecoder_protectedbase_senderSignalIndex(const VirtualQAudioDecoder* self) {
	return self->senderSignalIndex();
}

int QAudioDecoder_protectedbase_receivers(const VirtualQAudioDecoder* self, const char* signal) {
	return self->receivers(signal);
}

bool QAudioDecoder_protectedbase_isSignalConnected(const VirtualQAudioDecoder* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAudioDecoder_delete(QAudioDecoder* self) {
	delete self;
}

