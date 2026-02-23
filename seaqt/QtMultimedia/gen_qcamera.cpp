#include <QCamera>
#include <QCameraDevice>
#include <QCameraFormat>
#include <QChildEvent>
#include <QEvent>
#include <QMediaCaptureSession>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPointF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qcamera.h>
#include "gen_qcamera.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQCamera final : public QCamera {
	const QCamera_VTable* vtbl;
public:
	friend void* QCamera_vdata(VirtualQCamera* self);
	friend VirtualQCamera* vdata_QCamera(void* vdata);

	VirtualQCamera(const QCamera_VTable* vtbl): QCamera(), vtbl(vtbl) {}
	VirtualQCamera(const QCamera_VTable* vtbl, const QCameraDevice& cameraDevice): QCamera(cameraDevice), vtbl(vtbl) {}
	VirtualQCamera(const QCamera_VTable* vtbl, QCameraDevice::Position position): QCamera(position), vtbl(vtbl) {}
	VirtualQCamera(const QCamera_VTable* vtbl, QObject* parent): QCamera(parent), vtbl(vtbl) {}
	VirtualQCamera(const QCamera_VTable* vtbl, const QCameraDevice& cameraDevice, QObject* parent): QCamera(cameraDevice, parent), vtbl(vtbl) {}
	VirtualQCamera(const QCamera_VTable* vtbl, QCameraDevice::Position position, QObject* parent): QCamera(position, parent), vtbl(vtbl) {}

	virtual ~VirtualQCamera() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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
	friend QObject* QCamera_protectedbase_sender(const VirtualQCamera* self);
	friend int QCamera_protectedbase_senderSignalIndex(const VirtualQCamera* self);
	friend int QCamera_protectedbase_receivers(const VirtualQCamera* self, const char* signal);
	friend bool QCamera_protectedbase_isSignalConnected(const VirtualQCamera* self, QMetaMethod* signal);
};

VirtualQCamera* QCamera_new(const QCamera_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQCamera>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQCamera(vtbl) : nullptr;
}

VirtualQCamera* QCamera_new_cameraDevice(const QCamera_VTable* vtbl, size_t vdata, QCameraDevice* cameraDevice) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQCamera>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQCamera(vtbl, *cameraDevice) : nullptr;
}

VirtualQCamera* QCamera_new_position(const QCamera_VTable* vtbl, size_t vdata, int position) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQCamera>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQCamera(vtbl, static_cast<QCameraDevice::Position>(position)) : nullptr;
}

VirtualQCamera* QCamera_new_parent(const QCamera_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQCamera>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQCamera(vtbl, parent) : nullptr;
}

VirtualQCamera* QCamera_new_cameraDevice_parent(const QCamera_VTable* vtbl, size_t vdata, QCameraDevice* cameraDevice, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQCamera>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQCamera(vtbl, *cameraDevice, parent) : nullptr;
}

VirtualQCamera* QCamera_new_position_parent(const QCamera_VTable* vtbl, size_t vdata, int position, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQCamera>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQCamera(vtbl, static_cast<QCameraDevice::Position>(position), parent) : nullptr;
}

void QCamera_virtbase(QCamera* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
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

struct seaqt_string QCamera_tr_s(const char* s) {
	QString _ret = QCamera::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QCamera_isAvailable(const QCamera* self) {
	return self->isAvailable();
}

bool QCamera_isActive(const QCamera* self) {
	return self->isActive();
}

QMediaCaptureSession* QCamera_captureSession(const QCamera* self) {
	return self->captureSession();
}

QCameraDevice* QCamera_cameraDevice(const QCamera* self) {
	return new QCameraDevice(self->cameraDevice());
}

void QCamera_setCameraDevice(QCamera* self, QCameraDevice* cameraDevice) {
	self->setCameraDevice(*cameraDevice);
}

QCameraFormat* QCamera_cameraFormat(const QCamera* self) {
	return new QCameraFormat(self->cameraFormat());
}

void QCamera_setCameraFormat(QCamera* self, QCameraFormat* format) {
	self->setCameraFormat(*format);
}

int QCamera_error(const QCamera* self) {
	QCamera::Error _ret = self->error();
	return static_cast<int>(_ret);
}

struct seaqt_string QCamera_errorString(const QCamera* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QCamera_supportedFeatures(const QCamera* self) {
	QCamera::Features _ret = self->supportedFeatures();
	return static_cast<int>(_ret);
}

int QCamera_focusMode(const QCamera* self) {
	QCamera::FocusMode _ret = self->focusMode();
	return static_cast<int>(_ret);
}

void QCamera_setFocusMode(QCamera* self, int mode) {
	self->setFocusMode(static_cast<QCamera::FocusMode>(mode));
}

bool QCamera_isFocusModeSupported(const QCamera* self, int mode) {
	return self->isFocusModeSupported(static_cast<QCamera::FocusMode>(mode));
}

QPointF* QCamera_focusPoint(const QCamera* self) {
	return new QPointF(self->focusPoint());
}

QPointF* QCamera_customFocusPoint(const QCamera* self) {
	return new QPointF(self->customFocusPoint());
}

void QCamera_setCustomFocusPoint(QCamera* self, QPointF* point) {
	self->setCustomFocusPoint(*point);
}

void QCamera_setFocusDistance(QCamera* self, float d) {
	self->setFocusDistance(static_cast<float>(d));
}

float QCamera_focusDistance(const QCamera* self) {
	return self->focusDistance();
}

float QCamera_minimumZoomFactor(const QCamera* self) {
	return self->minimumZoomFactor();
}

float QCamera_maximumZoomFactor(const QCamera* self) {
	return self->maximumZoomFactor();
}

float QCamera_zoomFactor(const QCamera* self) {
	return self->zoomFactor();
}

void QCamera_setZoomFactor(QCamera* self, float factor) {
	self->setZoomFactor(static_cast<float>(factor));
}

int QCamera_flashMode(const QCamera* self) {
	QCamera::FlashMode _ret = self->flashMode();
	return static_cast<int>(_ret);
}

bool QCamera_isFlashModeSupported(const QCamera* self, int mode) {
	return self->isFlashModeSupported(static_cast<QCamera::FlashMode>(mode));
}

bool QCamera_isFlashReady(const QCamera* self) {
	return self->isFlashReady();
}

int QCamera_torchMode(const QCamera* self) {
	QCamera::TorchMode _ret = self->torchMode();
	return static_cast<int>(_ret);
}

bool QCamera_isTorchModeSupported(const QCamera* self, int mode) {
	return self->isTorchModeSupported(static_cast<QCamera::TorchMode>(mode));
}

int QCamera_exposureMode(const QCamera* self) {
	QCamera::ExposureMode _ret = self->exposureMode();
	return static_cast<int>(_ret);
}

bool QCamera_isExposureModeSupported(const QCamera* self, int mode) {
	return self->isExposureModeSupported(static_cast<QCamera::ExposureMode>(mode));
}

float QCamera_exposureCompensation(const QCamera* self) {
	return self->exposureCompensation();
}

int QCamera_isoSensitivity(const QCamera* self) {
	return self->isoSensitivity();
}

int QCamera_manualIsoSensitivity(const QCamera* self) {
	return self->manualIsoSensitivity();
}

float QCamera_exposureTime(const QCamera* self) {
	return self->exposureTime();
}

float QCamera_manualExposureTime(const QCamera* self) {
	return self->manualExposureTime();
}

int QCamera_minimumIsoSensitivity(const QCamera* self) {
	return self->minimumIsoSensitivity();
}

int QCamera_maximumIsoSensitivity(const QCamera* self) {
	return self->maximumIsoSensitivity();
}

float QCamera_minimumExposureTime(const QCamera* self) {
	return self->minimumExposureTime();
}

float QCamera_maximumExposureTime(const QCamera* self) {
	return self->maximumExposureTime();
}

int QCamera_whiteBalanceMode(const QCamera* self) {
	QCamera::WhiteBalanceMode _ret = self->whiteBalanceMode();
	return static_cast<int>(_ret);
}

bool QCamera_isWhiteBalanceModeSupported(const QCamera* self, int mode) {
	return self->isWhiteBalanceModeSupported(static_cast<QCamera::WhiteBalanceMode>(mode));
}

int QCamera_colorTemperature(const QCamera* self) {
	return self->colorTemperature();
}

void QCamera_setActive(QCamera* self, bool active) {
	self->setActive(active);
}

void QCamera_start(QCamera* self) {
	self->start();
}

void QCamera_stop(QCamera* self) {
	self->stop();
}

void QCamera_zoomTo(QCamera* self, float zoom, float rate) {
	self->zoomTo(static_cast<float>(zoom), static_cast<float>(rate));
}

void QCamera_setFlashMode(QCamera* self, int mode) {
	self->setFlashMode(static_cast<QCamera::FlashMode>(mode));
}

void QCamera_setTorchMode(QCamera* self, int mode) {
	self->setTorchMode(static_cast<QCamera::TorchMode>(mode));
}

void QCamera_setExposureMode(QCamera* self, int mode) {
	self->setExposureMode(static_cast<QCamera::ExposureMode>(mode));
}

void QCamera_setExposureCompensation(QCamera* self, float ev) {
	self->setExposureCompensation(static_cast<float>(ev));
}

void QCamera_setManualIsoSensitivity(QCamera* self, int iso) {
	self->setManualIsoSensitivity(static_cast<int>(iso));
}

void QCamera_setAutoIsoSensitivity(QCamera* self) {
	self->setAutoIsoSensitivity();
}

void QCamera_setManualExposureTime(QCamera* self, float seconds) {
	self->setManualExposureTime(static_cast<float>(seconds));
}

void QCamera_setAutoExposureTime(QCamera* self) {
	self->setAutoExposureTime();
}

void QCamera_setWhiteBalanceMode(QCamera* self, int mode) {
	self->setWhiteBalanceMode(static_cast<QCamera::WhiteBalanceMode>(mode));
}

void QCamera_setColorTemperature(QCamera* self, int colorTemperature) {
	self->setColorTemperature(static_cast<int>(colorTemperature));
}

void QCamera_activeChanged(QCamera* self, bool param1) {
	self->activeChanged(param1);
}

void QCamera_connect_activeChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)(bool)>(&QCamera::activeChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool param1) {
			bool sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QCamera_errorChanged(QCamera* self) {
	self->errorChanged();
}

void QCamera_connect_errorChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)()>(&QCamera::errorChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCamera_errorOccurred(QCamera* self, int error, struct seaqt_string errorString) {
	QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->errorOccurred(static_cast<QCamera::Error>(error), errorString_QString);
}

void QCamera_connect_errorOccurred(QCamera* self, intptr_t slot, void (*callback)(intptr_t, int, struct seaqt_string), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)(QCamera::Error, const QString&)>(&QCamera::errorOccurred), self, [callback, release = seaqt::release_callback{slot,release}](QCamera::Error error, const QString& errorString) {
			QCamera::Error error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			const QString errorString_ret = errorString;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray errorString_b = errorString_ret.toUtf8();
			struct seaqt_string errorString_ms;
			errorString_ms.len = errorString_b.length();
			errorString_ms.data = static_cast<char*>(malloc(errorString_ms.len));
			memcpy(errorString_ms.data, errorString_b.data(), errorString_ms.len);
			struct seaqt_string sigval2 = errorString_ms;
			callback(release.slot, sigval1, sigval2);
	});
}

void QCamera_cameraDeviceChanged(QCamera* self) {
	self->cameraDeviceChanged();
}

void QCamera_connect_cameraDeviceChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)()>(&QCamera::cameraDeviceChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCamera_cameraFormatChanged(QCamera* self) {
	self->cameraFormatChanged();
}

void QCamera_connect_cameraFormatChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)()>(&QCamera::cameraFormatChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCamera_supportedFeaturesChanged(QCamera* self) {
	self->supportedFeaturesChanged();
}

void QCamera_connect_supportedFeaturesChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)()>(&QCamera::supportedFeaturesChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCamera_focusModeChanged(QCamera* self) {
	self->focusModeChanged();
}

void QCamera_connect_focusModeChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)()>(&QCamera::focusModeChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCamera_zoomFactorChanged(QCamera* self, float param1) {
	self->zoomFactorChanged(static_cast<float>(param1));
}

void QCamera_connect_zoomFactorChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)(float)>(&QCamera::zoomFactorChanged), self, [callback, release = seaqt::release_callback{slot,release}](float param1) {
			float sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QCamera_minimumZoomFactorChanged(QCamera* self, float param1) {
	self->minimumZoomFactorChanged(static_cast<float>(param1));
}

void QCamera_connect_minimumZoomFactorChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)(float)>(&QCamera::minimumZoomFactorChanged), self, [callback, release = seaqt::release_callback{slot,release}](float param1) {
			float sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QCamera_maximumZoomFactorChanged(QCamera* self, float param1) {
	self->maximumZoomFactorChanged(static_cast<float>(param1));
}

void QCamera_connect_maximumZoomFactorChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)(float)>(&QCamera::maximumZoomFactorChanged), self, [callback, release = seaqt::release_callback{slot,release}](float param1) {
			float sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QCamera_focusDistanceChanged(QCamera* self, float param1) {
	self->focusDistanceChanged(static_cast<float>(param1));
}

void QCamera_connect_focusDistanceChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)(float)>(&QCamera::focusDistanceChanged), self, [callback, release = seaqt::release_callback{slot,release}](float param1) {
			float sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QCamera_focusPointChanged(QCamera* self) {
	self->focusPointChanged();
}

void QCamera_connect_focusPointChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)()>(&QCamera::focusPointChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCamera_customFocusPointChanged(QCamera* self) {
	self->customFocusPointChanged();
}

void QCamera_connect_customFocusPointChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)()>(&QCamera::customFocusPointChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCamera_flashReady(QCamera* self, bool param1) {
	self->flashReady(param1);
}

void QCamera_connect_flashReady(QCamera* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)(bool)>(&QCamera::flashReady), self, [callback, release = seaqt::release_callback{slot,release}](bool param1) {
			bool sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QCamera_flashModeChanged(QCamera* self) {
	self->flashModeChanged();
}

void QCamera_connect_flashModeChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)()>(&QCamera::flashModeChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCamera_torchModeChanged(QCamera* self) {
	self->torchModeChanged();
}

void QCamera_connect_torchModeChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)()>(&QCamera::torchModeChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCamera_exposureTimeChanged(QCamera* self, float speed) {
	self->exposureTimeChanged(static_cast<float>(speed));
}

void QCamera_connect_exposureTimeChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)(float)>(&QCamera::exposureTimeChanged), self, [callback, release = seaqt::release_callback{slot,release}](float speed) {
			float sigval1 = speed;
			callback(release.slot, sigval1);
	});
}

void QCamera_manualExposureTimeChanged(QCamera* self, float speed) {
	self->manualExposureTimeChanged(static_cast<float>(speed));
}

void QCamera_connect_manualExposureTimeChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)(float)>(&QCamera::manualExposureTimeChanged), self, [callback, release = seaqt::release_callback{slot,release}](float speed) {
			float sigval1 = speed;
			callback(release.slot, sigval1);
	});
}

void QCamera_isoSensitivityChanged(QCamera* self, int param1) {
	self->isoSensitivityChanged(static_cast<int>(param1));
}

void QCamera_connect_isoSensitivityChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)(int)>(&QCamera::isoSensitivityChanged), self, [callback, release = seaqt::release_callback{slot,release}](int param1) {
			int sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QCamera_manualIsoSensitivityChanged(QCamera* self, int param1) {
	self->manualIsoSensitivityChanged(static_cast<int>(param1));
}

void QCamera_connect_manualIsoSensitivityChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)(int)>(&QCamera::manualIsoSensitivityChanged), self, [callback, release = seaqt::release_callback{slot,release}](int param1) {
			int sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QCamera_exposureCompensationChanged(QCamera* self, float param1) {
	self->exposureCompensationChanged(static_cast<float>(param1));
}

void QCamera_connect_exposureCompensationChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)(float)>(&QCamera::exposureCompensationChanged), self, [callback, release = seaqt::release_callback{slot,release}](float param1) {
			float sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QCamera_exposureModeChanged(QCamera* self) {
	self->exposureModeChanged();
}

void QCamera_connect_exposureModeChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)()>(&QCamera::exposureModeChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCamera_whiteBalanceModeChanged(const QCamera* self) {
	self->whiteBalanceModeChanged();
}

void QCamera_connect_whiteBalanceModeChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)() const>(&QCamera::whiteBalanceModeChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCamera_colorTemperatureChanged(const QCamera* self) {
	self->colorTemperatureChanged();
}

void QCamera_connect_colorTemperatureChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)() const>(&QCamera::colorTemperatureChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCamera_brightnessChanged(QCamera* self) {
	self->brightnessChanged();
}

void QCamera_connect_brightnessChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)()>(&QCamera::brightnessChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCamera_contrastChanged(QCamera* self) {
	self->contrastChanged();
}

void QCamera_connect_contrastChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)()>(&QCamera::contrastChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCamera_saturationChanged(QCamera* self) {
	self->saturationChanged();
}

void QCamera_connect_saturationChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)()>(&QCamera::saturationChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCamera_hueChanged(QCamera* self) {
	self->hueChanged();
}

void QCamera_connect_hueChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCamera::connect(self, static_cast<void (QCamera::*)()>(&QCamera::hueChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QCamera_tr_s_c(const char* s, const char* c) {
	QString _ret = QCamera::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCamera_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QCamera::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QCamera_staticMetaObject() { return &QCamera::staticMetaObject; }
void* QCamera_vdata(VirtualQCamera* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQCamera>()); }
VirtualQCamera* vdata_QCamera(void* vdata) { return reinterpret_cast<VirtualQCamera*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQCamera>()); }

QMetaObject* QCamera_virtualbase_metaObject(const VirtualQCamera* self) {

	return (QMetaObject*) self->QCamera::metaObject();
}

void* QCamera_virtualbase_metacast(VirtualQCamera* self, const char* param1) {

	return self->QCamera::qt_metacast(param1);
}

int QCamera_virtualbase_metacall(VirtualQCamera* self, int param1, int param2, void** param3) {

	return self->QCamera::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
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

