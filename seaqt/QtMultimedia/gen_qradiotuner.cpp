#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QMediaObject>
#include <QMediaService>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPair>
#include <QRadioData>
#include <QRadioTuner>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qradiotuner.h>
#include "gen_qradiotuner.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQRadioTuner final : public QRadioTuner {
	struct QRadioTuner_VTable* vtbl;
public:

	VirtualQRadioTuner(struct QRadioTuner_VTable* vtbl): QRadioTuner(), vtbl(vtbl) {};
	VirtualQRadioTuner(struct QRadioTuner_VTable* vtbl, QObject* parent): QRadioTuner(parent), vtbl(vtbl) {};

	virtual ~VirtualQRadioTuner() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRadioTuner::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QRadioTuner_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRadioTuner::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QRadioTuner_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRadioTuner::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QRadioTuner_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QMultimedia::AvailabilityStatus availability() const override {
		if (vtbl->availability == 0) {
			return QRadioTuner::availability();
		}


		int callback_return_value = vtbl->availability(vtbl, this);

		return static_cast<QMultimedia::AvailabilityStatus>(callback_return_value);
	}

	friend int QRadioTuner_virtualbase_availability(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isAvailable() const override {
		if (vtbl->isAvailable == 0) {
			return QRadioTuner::isAvailable();
		}


		bool callback_return_value = vtbl->isAvailable(vtbl, this);

		return callback_return_value;
	}

	friend bool QRadioTuner_virtualbase_isAvailable(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QMediaService* service() const override {
		if (vtbl->service == 0) {
			return QRadioTuner::service();
		}


		QMediaService* callback_return_value = vtbl->service(vtbl, this);

		return callback_return_value;
	}

	friend QMediaService* QRadioTuner_virtualbase_service(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool bind(QObject* param1) override {
		if (vtbl->bind == 0) {
			return QRadioTuner::bind(param1);
		}

		QObject* sigval1 = param1;

		bool callback_return_value = vtbl->bind(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QRadioTuner_virtualbase_bind(void* self, QObject* param1);

	// Subclass to allow providing a Go implementation
	virtual void unbind(QObject* param1) override {
		if (vtbl->unbind == 0) {
			QRadioTuner::unbind(param1);
			return;
		}

		QObject* sigval1 = param1;

		vtbl->unbind(vtbl, this, sigval1);

	}

	friend void QRadioTuner_virtualbase_unbind(void* self, QObject* param1);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QRadioTuner::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QRadioTuner_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRadioTuner::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QRadioTuner_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QRadioTuner::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QRadioTuner_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRadioTuner::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QRadioTuner_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRadioTuner::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QRadioTuner_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRadioTuner::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QRadioTuner_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRadioTuner::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QRadioTuner_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QRadioTuner_protectedbase_addPropertyWatch(void* self, struct miqt_string name);
	friend void QRadioTuner_protectedbase_removePropertyWatch(void* self, struct miqt_string name);
	friend QObject* QRadioTuner_protectedbase_sender(const void* self);
	friend int QRadioTuner_protectedbase_senderSignalIndex(const void* self);
	friend int QRadioTuner_protectedbase_receivers(const void* self, const char* signal);
	friend bool QRadioTuner_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QRadioTuner* QRadioTuner_new(struct QRadioTuner_VTable* vtbl) {
	return new VirtualQRadioTuner(vtbl);
}

QRadioTuner* QRadioTuner_new2(struct QRadioTuner_VTable* vtbl, QObject* parent) {
	return new VirtualQRadioTuner(vtbl, parent);
}

void QRadioTuner_virtbase(QRadioTuner* src, QMediaObject** outptr_QMediaObject) {
	*outptr_QMediaObject = static_cast<QMediaObject*>(src);
}

QMetaObject* QRadioTuner_metaObject(const QRadioTuner* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRadioTuner_metacast(QRadioTuner* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRadioTuner_metacall(QRadioTuner* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QRadioTuner_tr(const char* s) {
	QString _ret = QRadioTuner::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRadioTuner_trUtf8(const char* s) {
	QString _ret = QRadioTuner::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QRadioTuner_availability(const QRadioTuner* self) {
	QMultimedia::AvailabilityStatus _ret = self->availability();
	return static_cast<int>(_ret);
}

int QRadioTuner_state(const QRadioTuner* self) {
	QRadioTuner::State _ret = self->state();
	return static_cast<int>(_ret);
}

int QRadioTuner_band(const QRadioTuner* self) {
	QRadioTuner::Band _ret = self->band();
	return static_cast<int>(_ret);
}

bool QRadioTuner_isBandSupported(const QRadioTuner* self, int b) {
	return self->isBandSupported(static_cast<QRadioTuner::Band>(b));
}

int QRadioTuner_frequency(const QRadioTuner* self) {
	return self->frequency();
}

int QRadioTuner_frequencyStep(const QRadioTuner* self, int band) {
	return self->frequencyStep(static_cast<QRadioTuner::Band>(band));
}

struct miqt_map /* tuple of int and int */  QRadioTuner_frequencyRange(const QRadioTuner* self, int band) {
	QPair<int, int> _ret = self->frequencyRange(static_cast<QRadioTuner::Band>(band));
	// Convert QPair<> from C++ memory to manually-managed C memory
	int* _first_arr = static_cast<int*>(malloc(sizeof(int)));
	int* _second_arr = static_cast<int*>(malloc(sizeof(int)));
	_first_arr[0] = _ret.first;
	_second_arr[0] = _ret.second;
	struct miqt_map _out;
	_out.len = 1;
	_out.keys = static_cast<void*>(_first_arr);
	_out.values = static_cast<void*>(_second_arr);
	return _out;
}

bool QRadioTuner_isStereo(const QRadioTuner* self) {
	return self->isStereo();
}

void QRadioTuner_setStereoMode(QRadioTuner* self, int mode) {
	self->setStereoMode(static_cast<QRadioTuner::StereoMode>(mode));
}

int QRadioTuner_stereoMode(const QRadioTuner* self) {
	QRadioTuner::StereoMode _ret = self->stereoMode();
	return static_cast<int>(_ret);
}

int QRadioTuner_signalStrength(const QRadioTuner* self) {
	return self->signalStrength();
}

int QRadioTuner_volume(const QRadioTuner* self) {
	return self->volume();
}

bool QRadioTuner_isMuted(const QRadioTuner* self) {
	return self->isMuted();
}

bool QRadioTuner_isSearching(const QRadioTuner* self) {
	return self->isSearching();
}

bool QRadioTuner_isAntennaConnected(const QRadioTuner* self) {
	return self->isAntennaConnected();
}

int QRadioTuner_error(const QRadioTuner* self) {
	QRadioTuner::Error _ret = self->error();
	return static_cast<int>(_ret);
}

struct miqt_string QRadioTuner_errorString(const QRadioTuner* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QRadioData* QRadioTuner_radioData(const QRadioTuner* self) {
	return self->radioData();
}

void QRadioTuner_searchForward(QRadioTuner* self) {
	self->searchForward();
}

void QRadioTuner_searchBackward(QRadioTuner* self) {
	self->searchBackward();
}

void QRadioTuner_searchAllStations(QRadioTuner* self) {
	self->searchAllStations();
}

void QRadioTuner_cancelSearch(QRadioTuner* self) {
	self->cancelSearch();
}

void QRadioTuner_setBand(QRadioTuner* self, int band) {
	self->setBand(static_cast<QRadioTuner::Band>(band));
}

void QRadioTuner_setFrequency(QRadioTuner* self, int frequency) {
	self->setFrequency(static_cast<int>(frequency));
}

void QRadioTuner_setVolume(QRadioTuner* self, int volume) {
	self->setVolume(static_cast<int>(volume));
}

void QRadioTuner_setMuted(QRadioTuner* self, bool muted) {
	self->setMuted(muted);
}

void QRadioTuner_start(QRadioTuner* self) {
	self->start();
}

void QRadioTuner_stop(QRadioTuner* self) {
	self->stop();
}

void QRadioTuner_stateChanged(QRadioTuner* self, int state) {
	self->stateChanged(static_cast<QRadioTuner::State>(state));
}

void QRadioTuner_connect_stateChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QRadioTuner::State state) {
			QRadioTuner::State state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQRadioTuner::connect(self, static_cast<void (QRadioTuner::*)(QRadioTuner::State)>(&QRadioTuner::stateChanged), self, local_caller{slot, callback, release});
}

void QRadioTuner_bandChanged(QRadioTuner* self, int band) {
	self->bandChanged(static_cast<QRadioTuner::Band>(band));
}

void QRadioTuner_connect_bandChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QRadioTuner::Band band) {
			QRadioTuner::Band band_ret = band;
			int sigval1 = static_cast<int>(band_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQRadioTuner::connect(self, static_cast<void (QRadioTuner::*)(QRadioTuner::Band)>(&QRadioTuner::bandChanged), self, local_caller{slot, callback, release});
}

void QRadioTuner_frequencyChanged(QRadioTuner* self, int frequency) {
	self->frequencyChanged(static_cast<int>(frequency));
}

void QRadioTuner_connect_frequencyChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int frequency) {
			int sigval1 = frequency;
			callback(slot, sigval1);
		}
	};
	VirtualQRadioTuner::connect(self, static_cast<void (QRadioTuner::*)(int)>(&QRadioTuner::frequencyChanged), self, local_caller{slot, callback, release});
}

void QRadioTuner_stereoStatusChanged(QRadioTuner* self, bool stereo) {
	self->stereoStatusChanged(stereo);
}

void QRadioTuner_connect_stereoStatusChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool stereo) {
			bool sigval1 = stereo;
			callback(slot, sigval1);
		}
	};
	VirtualQRadioTuner::connect(self, static_cast<void (QRadioTuner::*)(bool)>(&QRadioTuner::stereoStatusChanged), self, local_caller{slot, callback, release});
}

void QRadioTuner_searchingChanged(QRadioTuner* self, bool searching) {
	self->searchingChanged(searching);
}

void QRadioTuner_connect_searchingChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool searching) {
			bool sigval1 = searching;
			callback(slot, sigval1);
		}
	};
	VirtualQRadioTuner::connect(self, static_cast<void (QRadioTuner::*)(bool)>(&QRadioTuner::searchingChanged), self, local_caller{slot, callback, release});
}

void QRadioTuner_signalStrengthChanged(QRadioTuner* self, int signalStrength) {
	self->signalStrengthChanged(static_cast<int>(signalStrength));
}

void QRadioTuner_connect_signalStrengthChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int signalStrength) {
			int sigval1 = signalStrength;
			callback(slot, sigval1);
		}
	};
	VirtualQRadioTuner::connect(self, static_cast<void (QRadioTuner::*)(int)>(&QRadioTuner::signalStrengthChanged), self, local_caller{slot, callback, release});
}

void QRadioTuner_volumeChanged(QRadioTuner* self, int volume) {
	self->volumeChanged(static_cast<int>(volume));
}

void QRadioTuner_connect_volumeChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int volume) {
			int sigval1 = volume;
			callback(slot, sigval1);
		}
	};
	VirtualQRadioTuner::connect(self, static_cast<void (QRadioTuner::*)(int)>(&QRadioTuner::volumeChanged), self, local_caller{slot, callback, release});
}

void QRadioTuner_mutedChanged(QRadioTuner* self, bool muted) {
	self->mutedChanged(muted);
}

void QRadioTuner_connect_mutedChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool muted) {
			bool sigval1 = muted;
			callback(slot, sigval1);
		}
	};
	VirtualQRadioTuner::connect(self, static_cast<void (QRadioTuner::*)(bool)>(&QRadioTuner::mutedChanged), self, local_caller{slot, callback, release});
}

void QRadioTuner_stationFound(QRadioTuner* self, int frequency, struct miqt_string stationId) {
	QString stationId_QString = QString::fromUtf8(stationId.data, stationId.len);
	self->stationFound(static_cast<int>(frequency), stationId_QString);
}

void QRadioTuner_connect_stationFound(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, int, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, struct miqt_string);
		void operator()(int frequency, QString stationId) {
			int sigval1 = frequency;
			QString stationId_ret = stationId;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray stationId_b = stationId_ret.toUtf8();
			struct miqt_string stationId_ms;
			stationId_ms.len = stationId_b.length();
			stationId_ms.data = static_cast<char*>(malloc(stationId_ms.len));
			memcpy(stationId_ms.data, stationId_b.data(), stationId_ms.len);
			struct miqt_string sigval2 = stationId_ms;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQRadioTuner::connect(self, static_cast<void (QRadioTuner::*)(int, QString)>(&QRadioTuner::stationFound), self, local_caller{slot, callback, release});
}

void QRadioTuner_antennaConnectedChanged(QRadioTuner* self, bool connectionStatus) {
	self->antennaConnectedChanged(connectionStatus);
}

void QRadioTuner_connect_antennaConnectedChanged(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool connectionStatus) {
			bool sigval1 = connectionStatus;
			callback(slot, sigval1);
		}
	};
	VirtualQRadioTuner::connect(self, static_cast<void (QRadioTuner::*)(bool)>(&QRadioTuner::antennaConnectedChanged), self, local_caller{slot, callback, release});
}

void QRadioTuner_errorWithError(QRadioTuner* self, int error) {
	self->error(static_cast<QRadioTuner::Error>(error));
}

void QRadioTuner_connect_errorWithError(QRadioTuner* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QRadioTuner::Error error) {
			QRadioTuner::Error error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQRadioTuner::connect(self, static_cast<void (QRadioTuner::*)(QRadioTuner::Error)>(&QRadioTuner::error), self, local_caller{slot, callback, release});
}

struct miqt_string QRadioTuner_tr2(const char* s, const char* c) {
	QString _ret = QRadioTuner::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRadioTuner_tr3(const char* s, const char* c, int n) {
	QString _ret = QRadioTuner::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRadioTuner_trUtf82(const char* s, const char* c) {
	QString _ret = QRadioTuner::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRadioTuner_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QRadioTuner::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QRadioTuner_searchAllStations1(QRadioTuner* self, int searchMode) {
	self->searchAllStations(static_cast<QRadioTuner::SearchMode>(searchMode));
}

QMetaObject* QRadioTuner_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQRadioTuner*)(self) )->QRadioTuner::metaObject();

}

void* QRadioTuner_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQRadioTuner*)(self) )->QRadioTuner::qt_metacast(param1);

}

int QRadioTuner_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQRadioTuner*)(self) )->QRadioTuner::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

int QRadioTuner_virtualbase_availability(const void* self) {

	QMultimedia::AvailabilityStatus _ret = ( (const VirtualQRadioTuner*)(self) )->QRadioTuner::availability();
	return static_cast<int>(_ret);

}

bool QRadioTuner_virtualbase_isAvailable(const void* self) {

	return ( (const VirtualQRadioTuner*)(self) )->QRadioTuner::isAvailable();

}

QMediaService* QRadioTuner_virtualbase_service(const void* self) {

	return ( (const VirtualQRadioTuner*)(self) )->QRadioTuner::service();

}

bool QRadioTuner_virtualbase_bind(void* self, QObject* param1) {

	return ( (VirtualQRadioTuner*)(self) )->QRadioTuner::bind(param1);

}

void QRadioTuner_virtualbase_unbind(void* self, QObject* param1) {

	( (VirtualQRadioTuner*)(self) )->QRadioTuner::unbind(param1);

}

bool QRadioTuner_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQRadioTuner*)(self) )->QRadioTuner::event(event);

}

bool QRadioTuner_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQRadioTuner*)(self) )->QRadioTuner::eventFilter(watched, event);

}

void QRadioTuner_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQRadioTuner*)(self) )->QRadioTuner::timerEvent(event);

}

void QRadioTuner_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQRadioTuner*)(self) )->QRadioTuner::childEvent(event);

}

void QRadioTuner_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQRadioTuner*)(self) )->QRadioTuner::customEvent(event);

}

void QRadioTuner_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQRadioTuner*)(self) )->QRadioTuner::connectNotify(*signal);

}

void QRadioTuner_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQRadioTuner*)(self) )->QRadioTuner::disconnectNotify(*signal);

}

const QMetaObject* QRadioTuner_staticMetaObject() { return &QRadioTuner::staticMetaObject; }
void QRadioTuner_protectedbase_addPropertyWatch(void* self, struct miqt_string name) {
	VirtualQRadioTuner* self_cast = static_cast<VirtualQRadioTuner*>( (QRadioTuner*)(self) );
			QByteArray name_QByteArray(name.data, name.len);

	self_cast->addPropertyWatch(name_QByteArray);

}

void QRadioTuner_protectedbase_removePropertyWatch(void* self, struct miqt_string name) {
	VirtualQRadioTuner* self_cast = static_cast<VirtualQRadioTuner*>( (QRadioTuner*)(self) );
			QByteArray name_QByteArray(name.data, name.len);

	self_cast->removePropertyWatch(name_QByteArray);

}

QObject* QRadioTuner_protectedbase_sender(const void* self) {
	VirtualQRadioTuner* self_cast = static_cast<VirtualQRadioTuner*>( (QRadioTuner*)(self) );
	
	return self_cast->sender();

}

int QRadioTuner_protectedbase_senderSignalIndex(const void* self) {
	VirtualQRadioTuner* self_cast = static_cast<VirtualQRadioTuner*>( (QRadioTuner*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QRadioTuner_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQRadioTuner* self_cast = static_cast<VirtualQRadioTuner*>( (QRadioTuner*)(self) );
	
	return self_cast->receivers(signal);

}

bool QRadioTuner_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQRadioTuner* self_cast = static_cast<VirtualQRadioTuner*>( (QRadioTuner*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QRadioTuner_delete(QRadioTuner* self) {
	delete self;
}

