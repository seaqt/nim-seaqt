#include <QAbstractVideoSurface>
#include <QByteArray>
#include <QCamera>
#define WORKAROUND_INNER_CLASS_DEFINITION_QCamera__FrameRateRange
#include <QCameraExposure>
#include <QCameraFocus>
#include <QCameraImageProcessing>
#include <QCameraInfo>
#include <QCameraViewfinderSettings>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaObject>
#include <QMediaService>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qcamera.h>
#include "gen_qcamera.h"
class VirtualQCamera final : public QCamera {
	const QCamera_VTable* vtbl;
	void* vdata;
public:
	friend const QCamera_VTable* QCamera_vtbl(const VirtualQCamera* self);
	friend void* QCamera_vdata(const VirtualQCamera* self);
	friend void QCamera_setVdata(VirtualQCamera* self, void* vdata);

	VirtualQCamera(const QCamera_VTable* vtbl, void* vdata): QCamera(), vtbl(vtbl), vdata(vdata) {}
	VirtualQCamera(const QCamera_VTable* vtbl, void* vdata, const QByteArray& deviceName): QCamera(deviceName), vtbl(vtbl), vdata(vdata) {}
	VirtualQCamera(const QCamera_VTable* vtbl, void* vdata, const QCameraInfo& cameraInfo): QCamera(cameraInfo), vtbl(vtbl), vdata(vdata) {}
	VirtualQCamera(const QCamera_VTable* vtbl, void* vdata, QCamera::Position position): QCamera(position), vtbl(vtbl), vdata(vdata) {}
	VirtualQCamera(const QCamera_VTable* vtbl, void* vdata, QObject* parent): QCamera(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQCamera(const QCamera_VTable* vtbl, void* vdata, const QByteArray& deviceName, QObject* parent): QCamera(deviceName, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQCamera(const QCamera_VTable* vtbl, void* vdata, const QCameraInfo& cameraInfo, QObject* parent): QCamera(cameraInfo, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQCamera(const QCamera_VTable* vtbl, void* vdata, QCamera::Position position, QObject* parent): QCamera(position, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQCamera() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QCamera::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QCamera_virtualbase_metaObject(const VirtualQCamera* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QCamera::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QCamera_virtualbase_metacast(VirtualQCamera* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QCamera::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QCamera_virtualbase_metacall(VirtualQCamera* self, int param1, int param2, void** param3);

	virtual QMultimedia::AvailabilityStatus availability() const override {
		if (vtbl->availability == 0) {
			return QCamera::availability();
		}


		int callback_return_value = vtbl->availability(this);

		return static_cast<QMultimedia::AvailabilityStatus>(callback_return_value);
	}

	friend int QCamera_virtualbase_availability(const VirtualQCamera* self);

	virtual bool isAvailable() const override {
		if (vtbl->isAvailable == 0) {
			return QCamera::isAvailable();
		}


		bool callback_return_value = vtbl->isAvailable(this);

		return callback_return_value;
	}

	friend bool QCamera_virtualbase_isAvailable(const VirtualQCamera* self);

	virtual QMediaService* service() const override {
		if (vtbl->service == 0) {
			return QCamera::service();
		}


		QMediaService* callback_return_value = vtbl->service(this);

		return callback_return_value;
	}

	friend QMediaService* QCamera_virtualbase_service(const VirtualQCamera* self);

	virtual bool bind(QObject* param1) override {
		if (vtbl->bind == 0) {
			return QCamera::bind(param1);
		}

		QObject* sigval1 = param1;

		bool callback_return_value = vtbl->bind(this, sigval1);

		return callback_return_value;
	}

	friend bool QCamera_virtualbase_bind(VirtualQCamera* self, QObject* param1);

	virtual void unbind(QObject* param1) override {
		if (vtbl->unbind == 0) {
			QCamera::unbind(param1);
			return;
		}

		QObject* sigval1 = param1;

		vtbl->unbind(this, sigval1);

	}

	friend void QCamera_virtualbase_unbind(VirtualQCamera* self, QObject* param1);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QCamera::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QCamera_virtualbase_event(VirtualQCamera* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QCamera::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QCamera_virtualbase_eventFilter(VirtualQCamera* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QCamera::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QCamera_virtualbase_timerEvent(VirtualQCamera* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QCamera::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QCamera_virtualbase_childEvent(VirtualQCamera* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QCamera::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QCamera_virtualbase_customEvent(VirtualQCamera* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QCamera::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QCamera_virtualbase_connectNotify(VirtualQCamera* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QCamera::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QCamera_virtualbase_disconnectNotify(VirtualQCamera* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QCamera_protectedbase_addPropertyWatch(VirtualQCamera* self, struct miqt_string name);
	friend void QCamera_protectedbase_removePropertyWatch(VirtualQCamera* self, struct miqt_string name);
	friend QObject* QCamera_protectedbase_sender(const VirtualQCamera* self);
	friend int QCamera_protectedbase_senderSignalIndex(const VirtualQCamera* self);
	friend int QCamera_protectedbase_receivers(const VirtualQCamera* self, const char* signal);
	friend bool QCamera_protectedbase_isSignalConnected(const VirtualQCamera* self, QMetaMethod* signal);
};

VirtualQCamera* QCamera_new(const QCamera_VTable* vtbl, void* vdata) {
	return new VirtualQCamera(vtbl, vdata);
}

VirtualQCamera* QCamera_new2(const QCamera_VTable* vtbl, void* vdata, struct miqt_string deviceName) {
	QByteArray deviceName_QByteArray(deviceName.data, deviceName.len);
	return new VirtualQCamera(vtbl, vdata, deviceName_QByteArray);
}

VirtualQCamera* QCamera_new3(const QCamera_VTable* vtbl, void* vdata, QCameraInfo* cameraInfo) {
	return new VirtualQCamera(vtbl, vdata, *cameraInfo);
}

VirtualQCamera* QCamera_new4(const QCamera_VTable* vtbl, void* vdata, int position) {
	return new VirtualQCamera(vtbl, vdata, static_cast<QCamera::Position>(position));
}

VirtualQCamera* QCamera_new5(const QCamera_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQCamera(vtbl, vdata, parent);
}

VirtualQCamera* QCamera_new6(const QCamera_VTable* vtbl, void* vdata, struct miqt_string deviceName, QObject* parent) {
	QByteArray deviceName_QByteArray(deviceName.data, deviceName.len);
	return new VirtualQCamera(vtbl, vdata, deviceName_QByteArray, parent);
}

VirtualQCamera* QCamera_new7(const QCamera_VTable* vtbl, void* vdata, QCameraInfo* cameraInfo, QObject* parent) {
	return new VirtualQCamera(vtbl, vdata, *cameraInfo, parent);
}

VirtualQCamera* QCamera_new8(const QCamera_VTable* vtbl, void* vdata, int position, QObject* parent) {
	return new VirtualQCamera(vtbl, vdata, static_cast<QCamera::Position>(position), parent);
}

void QCamera_virtbase(QCamera* src, QMediaObject** outptr_QMediaObject) {
	*outptr_QMediaObject = static_cast<QMediaObject*>(src);
}

QMetaObject* QCamera_metaObject(const QCamera* self) {
	return (QMetaObject*) self->metaObject();
}

void* QCamera_metacast(QCamera* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QCamera_metacall(QCamera* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QCamera_tr(const char* s) {
	QString _ret = QCamera::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCamera_trUtf8(const char* s) {
	QString _ret = QCamera::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of struct miqt_string */  QCamera_availableDevices() {
	QList<QByteArray> _ret = QCamera::availableDevices();
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

struct miqt_string QCamera_deviceDescription(struct miqt_string device) {
	QByteArray device_QByteArray(device.data, device.len);
	QString _ret = QCamera::deviceDescription(device_QByteArray);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QCamera_availability(const QCamera* self) {
	QMultimedia::AvailabilityStatus _ret = self->availability();
	return static_cast<int>(_ret);
}

int QCamera_state(const QCamera* self) {
	QCamera::State _ret = self->state();
	return static_cast<int>(_ret);
}

int QCamera_status(const QCamera* self) {
	QCamera::Status _ret = self->status();
	return static_cast<int>(_ret);
}

int QCamera_captureMode(const QCamera* self) {
	QCamera::CaptureModes _ret = self->captureMode();
	return static_cast<int>(_ret);
}

bool QCamera_isCaptureModeSupported(const QCamera* self, int mode) {
	return self->isCaptureModeSupported(static_cast<QCamera::CaptureModes>(mode));
}

QCameraExposure* QCamera_exposure(const QCamera* self) {
	return self->exposure();
}

QCameraFocus* QCamera_focus(const QCamera* self) {
	return self->focus();
}

QCameraImageProcessing* QCamera_imageProcessing(const QCamera* self) {
	return self->imageProcessing();
}

void QCamera_setViewfinder(QCamera* self, QVideoWidget* viewfinder) {
	self->setViewfinder(viewfinder);
}

void QCamera_setViewfinderWithViewfinder(QCamera* self, QGraphicsVideoItem* viewfinder) {
	self->setViewfinder(viewfinder);
}

void QCamera_setViewfinderWithSurface(QCamera* self, QAbstractVideoSurface* surface) {
	self->setViewfinder(surface);
}

QCameraViewfinderSettings* QCamera_viewfinderSettings(const QCamera* self) {
	return new QCameraViewfinderSettings(self->viewfinderSettings());
}

void QCamera_setViewfinderSettings(QCamera* self, QCameraViewfinderSettings* settings) {
	self->setViewfinderSettings(*settings);
}

struct miqt_array /* of QCameraViewfinderSettings* */  QCamera_supportedViewfinderSettings(const QCamera* self) {
	QList<QCameraViewfinderSettings> _ret = self->supportedViewfinderSettings();
	// Convert QList<> from C++ memory to manually-managed C memory
	QCameraViewfinderSettings** _arr = static_cast<QCameraViewfinderSettings**>(malloc(sizeof(QCameraViewfinderSettings*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QCameraViewfinderSettings(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QSize* */  QCamera_supportedViewfinderResolutions(const QCamera* self) {
	QList<QSize> _ret = self->supportedViewfinderResolutions();
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

struct miqt_array /* of QCamera__FrameRateRange* */  QCamera_supportedViewfinderFrameRateRanges(const QCamera* self) {
	QList<QCamera::FrameRateRange> _ret = self->supportedViewfinderFrameRateRanges();
	// Convert QList<> from C++ memory to manually-managed C memory
	QCamera__FrameRateRange** _arr = static_cast<QCamera__FrameRateRange**>(malloc(sizeof(QCamera__FrameRateRange*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QCamera::FrameRateRange(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of int */  QCamera_supportedViewfinderPixelFormats(const QCamera* self) {
	QList<QVideoFrame::PixelFormat> _ret = self->supportedViewfinderPixelFormats();
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

int QCamera_error(const QCamera* self) {
	QCamera::Error _ret = self->error();
	return static_cast<int>(_ret);
}

struct miqt_string QCamera_errorString(const QCamera* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QCamera_supportedLocks(const QCamera* self) {
	QCamera::LockTypes _ret = self->supportedLocks();
	return static_cast<int>(_ret);
}

int QCamera_requestedLocks(const QCamera* self) {
	QCamera::LockTypes _ret = self->requestedLocks();
	return static_cast<int>(_ret);
}

int QCamera_lockStatus(const QCamera* self) {
	QCamera::LockStatus _ret = self->lockStatus();
	return static_cast<int>(_ret);
}

int QCamera_lockStatusWithLock(const QCamera* self, int lock) {
	QCamera::LockStatus _ret = self->lockStatus(static_cast<QCamera::LockType>(lock));
	return static_cast<int>(_ret);
}

void QCamera_setCaptureMode(QCamera* self, int mode) {
	self->setCaptureMode(static_cast<QCamera::CaptureModes>(mode));
}

void QCamera_load(QCamera* self) {
	self->load();
}

void QCamera_unload(QCamera* self) {
	self->unload();
}

void QCamera_start(QCamera* self) {
	self->start();
}

void QCamera_stop(QCamera* self) {
	self->stop();
}

void QCamera_searchAndLock(QCamera* self) {
	self->searchAndLock();
}

void QCamera_unlock(QCamera* self) {
	self->unlock();
}

void QCamera_searchAndLockWithLocks(QCamera* self, int locks) {
	self->searchAndLock(static_cast<QCamera::LockTypes>(locks));
}

void QCamera_unlockWithLocks(QCamera* self, int locks) {
	self->unlock(static_cast<QCamera::LockTypes>(locks));
}

void QCamera_stateChanged(QCamera* self, int state) {
	self->stateChanged(static_cast<QCamera::State>(state));
}

void QCamera_connect_stateChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QCamera::State state) {
			QCamera::State state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQCamera::connect(self, static_cast<void (QCamera::*)(QCamera::State)>(&QCamera::stateChanged), self, local_caller{slot, callback, release});
}

void QCamera_captureModeChanged(QCamera* self, int param1) {
	self->captureModeChanged(static_cast<QCamera::CaptureModes>(param1));
}

void QCamera_connect_captureModeChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QCamera::CaptureModes param1) {
			QCamera::CaptureModes param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQCamera::connect(self, static_cast<void (QCamera::*)(QCamera::CaptureModes)>(&QCamera::captureModeChanged), self, local_caller{slot, callback, release});
}

void QCamera_statusChanged(QCamera* self, int status) {
	self->statusChanged(static_cast<QCamera::Status>(status));
}

void QCamera_connect_statusChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QCamera::Status status) {
			QCamera::Status status_ret = status;
			int sigval1 = static_cast<int>(status_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQCamera::connect(self, static_cast<void (QCamera::*)(QCamera::Status)>(&QCamera::statusChanged), self, local_caller{slot, callback, release});
}

void QCamera_locked(QCamera* self) {
	self->locked();
}

void QCamera_connect_locked(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQCamera::connect(self, static_cast<void (QCamera::*)()>(&QCamera::locked), self, local_caller{slot, callback, release});
}

void QCamera_lockFailed(QCamera* self) {
	self->lockFailed();
}

void QCamera_connect_lockFailed(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQCamera::connect(self, static_cast<void (QCamera::*)()>(&QCamera::lockFailed), self, local_caller{slot, callback, release});
}

void QCamera_lockStatusChanged(QCamera* self, int status, int reason) {
	self->lockStatusChanged(static_cast<QCamera::LockStatus>(status), static_cast<QCamera::LockChangeReason>(reason));
}

void QCamera_connect_lockStatusChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(QCamera::LockStatus status, QCamera::LockChangeReason reason) {
			QCamera::LockStatus status_ret = status;
			int sigval1 = static_cast<int>(status_ret);
			QCamera::LockChangeReason reason_ret = reason;
			int sigval2 = static_cast<int>(reason_ret);
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQCamera::connect(self, static_cast<void (QCamera::*)(QCamera::LockStatus, QCamera::LockChangeReason)>(&QCamera::lockStatusChanged), self, local_caller{slot, callback, release});
}

void QCamera_lockStatusChanged2(QCamera* self, int lock, int status, int reason) {
	self->lockStatusChanged(static_cast<QCamera::LockType>(lock), static_cast<QCamera::LockStatus>(status), static_cast<QCamera::LockChangeReason>(reason));
}

void QCamera_connect_lockStatusChanged2(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int, int);
		void operator()(QCamera::LockType lock, QCamera::LockStatus status, QCamera::LockChangeReason reason) {
			QCamera::LockType lock_ret = lock;
			int sigval1 = static_cast<int>(lock_ret);
			QCamera::LockStatus status_ret = status;
			int sigval2 = static_cast<int>(status_ret);
			QCamera::LockChangeReason reason_ret = reason;
			int sigval3 = static_cast<int>(reason_ret);
			callback(slot, sigval1, sigval2, sigval3);
		}
	};
	VirtualQCamera::connect(self, static_cast<void (QCamera::*)(QCamera::LockType, QCamera::LockStatus, QCamera::LockChangeReason)>(&QCamera::lockStatusChanged), self, local_caller{slot, callback, release});
}

void QCamera_errorWithQCameraError(QCamera* self, int param1) {
	self->error(static_cast<QCamera::Error>(param1));
}

void QCamera_connect_errorWithQCameraError(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QCamera::Error param1) {
			QCamera::Error param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQCamera::connect(self, static_cast<void (QCamera::*)(QCamera::Error)>(&QCamera::error), self, local_caller{slot, callback, release});
}

void QCamera_errorOccurred(QCamera* self, int param1) {
	self->errorOccurred(static_cast<QCamera::Error>(param1));
}

void QCamera_connect_errorOccurred(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QCamera::Error param1) {
			QCamera::Error param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQCamera::connect(self, static_cast<void (QCamera::*)(QCamera::Error)>(&QCamera::errorOccurred), self, local_caller{slot, callback, release});
}

struct miqt_string QCamera_tr2(const char* s, const char* c) {
	QString _ret = QCamera::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCamera_tr3(const char* s, const char* c, int n) {
	QString _ret = QCamera::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCamera_trUtf82(const char* s, const char* c) {
	QString _ret = QCamera::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCamera_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QCamera::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QCameraViewfinderSettings* */  QCamera_supportedViewfinderSettings1(const QCamera* self, QCameraViewfinderSettings* settings) {
	QList<QCameraViewfinderSettings> _ret = self->supportedViewfinderSettings(*settings);
	// Convert QList<> from C++ memory to manually-managed C memory
	QCameraViewfinderSettings** _arr = static_cast<QCameraViewfinderSettings**>(malloc(sizeof(QCameraViewfinderSettings*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QCameraViewfinderSettings(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QSize* */  QCamera_supportedViewfinderResolutions1(const QCamera* self, QCameraViewfinderSettings* settings) {
	QList<QSize> _ret = self->supportedViewfinderResolutions(*settings);
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

struct miqt_array /* of QCamera__FrameRateRange* */  QCamera_supportedViewfinderFrameRateRanges1(const QCamera* self, QCameraViewfinderSettings* settings) {
	QList<QCamera::FrameRateRange> _ret = self->supportedViewfinderFrameRateRanges(*settings);
	// Convert QList<> from C++ memory to manually-managed C memory
	QCamera__FrameRateRange** _arr = static_cast<QCamera__FrameRateRange**>(malloc(sizeof(QCamera__FrameRateRange*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QCamera::FrameRateRange(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of int */  QCamera_supportedViewfinderPixelFormats1(const QCamera* self, QCameraViewfinderSettings* settings) {
	QList<QVideoFrame::PixelFormat> _ret = self->supportedViewfinderPixelFormats(*settings);
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

QMetaObject* QCamera_virtualbase_metaObject(const VirtualQCamera* self) {

	return (QMetaObject*) self->QCamera::metaObject();
}

void* QCamera_virtualbase_metacast(VirtualQCamera* self, const char* param1) {

	return self->QCamera::qt_metacast(param1);
}

int QCamera_virtualbase_metacall(VirtualQCamera* self, int param1, int param2, void** param3) {

	return self->QCamera::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QCamera_virtualbase_availability(const VirtualQCamera* self) {

	QMultimedia::AvailabilityStatus _ret = self->QCamera::availability();
	return static_cast<int>(_ret);
}

bool QCamera_virtualbase_isAvailable(const VirtualQCamera* self) {

	return self->QCamera::isAvailable();
}

QMediaService* QCamera_virtualbase_service(const VirtualQCamera* self) {

	return self->QCamera::service();
}

bool QCamera_virtualbase_bind(VirtualQCamera* self, QObject* param1) {

	return self->QCamera::bind(param1);
}

void QCamera_virtualbase_unbind(VirtualQCamera* self, QObject* param1) {

	self->QCamera::unbind(param1);
}

bool QCamera_virtualbase_event(VirtualQCamera* self, QEvent* event) {

	return self->QCamera::event(event);
}

bool QCamera_virtualbase_eventFilter(VirtualQCamera* self, QObject* watched, QEvent* event) {

	return self->QCamera::eventFilter(watched, event);
}

void QCamera_virtualbase_timerEvent(VirtualQCamera* self, QTimerEvent* event) {

	self->QCamera::timerEvent(event);
}

void QCamera_virtualbase_childEvent(VirtualQCamera* self, QChildEvent* event) {

	self->QCamera::childEvent(event);
}

void QCamera_virtualbase_customEvent(VirtualQCamera* self, QEvent* event) {

	self->QCamera::customEvent(event);
}

void QCamera_virtualbase_connectNotify(VirtualQCamera* self, QMetaMethod* signal) {

	self->QCamera::connectNotify(*signal);
}

void QCamera_virtualbase_disconnectNotify(VirtualQCamera* self, QMetaMethod* signal) {

	self->QCamera::disconnectNotify(*signal);
}

const QMetaObject* QCamera_staticMetaObject() { return &QCamera::staticMetaObject; }

const QCamera_VTable* QCamera_vtbl(const VirtualQCamera* self) { return self->vtbl; }
void* QCamera_vdata(const VirtualQCamera* self) { return self->vdata; }
void QCamera_setVdata(VirtualQCamera* self, void* vdata) { self->vdata = vdata; }

void QCamera_protectedbase_addPropertyWatch(VirtualQCamera* self, struct miqt_string name) {
		QByteArray name_QByteArray(name.data, name.len);
	self->addPropertyWatch(name_QByteArray);
}

void QCamera_protectedbase_removePropertyWatch(VirtualQCamera* self, struct miqt_string name) {
		QByteArray name_QByteArray(name.data, name.len);
	self->removePropertyWatch(name_QByteArray);
}

QObject* QCamera_protectedbase_sender(const VirtualQCamera* self) {
	return self->sender();
}

int QCamera_protectedbase_senderSignalIndex(const VirtualQCamera* self) {
	return self->senderSignalIndex();
}

int QCamera_protectedbase_receivers(const VirtualQCamera* self, const char* signal) {
	return self->receivers(signal);
}

bool QCamera_protectedbase_isSignalConnected(const VirtualQCamera* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QCamera_delete(QCamera* self) {
	delete self;
}

QCamera__FrameRateRange* QCamera__FrameRateRange_new() {
	return new QCamera__FrameRateRange();
}

QCamera__FrameRateRange* QCamera__FrameRateRange_new2(double minimum, double maximum) {
	return new QCamera__FrameRateRange(static_cast<qreal>(minimum), static_cast<qreal>(maximum));
}

QCamera__FrameRateRange* QCamera__FrameRateRange_new3(QCamera__FrameRateRange* param1) {
	return new QCamera__FrameRateRange(*param1);
}

void QCamera__FrameRateRange_delete(QCamera__FrameRateRange* self) {
	delete self;
}

