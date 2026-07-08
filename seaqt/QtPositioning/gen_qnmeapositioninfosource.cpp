#include <QChildEvent>
#include <QEvent>
#include <QGeoPositionInfo>
#include <QGeoPositionInfoSource>
#include <QIODevice>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNmeaPositionInfoSource>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qnmeapositioninfosource.h>
#include "gen_qnmeapositioninfosource.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQNmeaPositionInfoSource final : public QNmeaPositionInfoSource {
	const QNmeaPositionInfoSource_VTable* vtbl;
public:
	friend void* QNmeaPositionInfoSource_vdata(VirtualQNmeaPositionInfoSource* self);
	friend VirtualQNmeaPositionInfoSource* vdata_QNmeaPositionInfoSource(void* vdata);

	VirtualQNmeaPositionInfoSource(const QNmeaPositionInfoSource_VTable* vtbl, QNmeaPositionInfoSource::UpdateMode updateMode): QNmeaPositionInfoSource(updateMode), vtbl(vtbl) {}
	VirtualQNmeaPositionInfoSource(const QNmeaPositionInfoSource_VTable* vtbl, QNmeaPositionInfoSource::UpdateMode updateMode, QObject* parent): QNmeaPositionInfoSource(updateMode, parent), vtbl(vtbl) {}

	virtual ~VirtualQNmeaPositionInfoSource() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QNmeaPositionInfoSource::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QNmeaPositionInfoSource_virtualbase_metaObject(const VirtualQNmeaPositionInfoSource* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QNmeaPositionInfoSource::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QNmeaPositionInfoSource_virtualbase_metacast(VirtualQNmeaPositionInfoSource* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QNmeaPositionInfoSource::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QNmeaPositionInfoSource_virtualbase_metacall(VirtualQNmeaPositionInfoSource* self, int param1, int param2, void** param3);

	virtual bool parsePosInfoFromNmeaData(const char* data, int size, QGeoPositionInfo* posInfo, bool* hasFix) override {
		if (vtbl->parsePosInfoFromNmeaData == 0) {
			return QNmeaPositionInfoSource::parsePosInfoFromNmeaData(data, size, posInfo, hasFix);
		}

		const char* sigval1 = (const char*) data;
		int sigval2 = size;
		QGeoPositionInfo* sigval3 = posInfo;
		bool* sigval4 = hasFix;
		bool callback_return_value = vtbl->parsePosInfoFromNmeaData(this, sigval1, sigval2, sigval3, sigval4);
		return callback_return_value;
	}

	friend bool QNmeaPositionInfoSource_virtualbase_parsePosInfoFromNmeaData(VirtualQNmeaPositionInfoSource* self, const char* data, int size, QGeoPositionInfo* posInfo, bool* hasFix);

	virtual void setUpdateInterval(int msec) override {
		if (vtbl->setUpdateInterval == 0) {
			QNmeaPositionInfoSource::setUpdateInterval(msec);
			return;
		}

		int sigval1 = msec;
		vtbl->setUpdateInterval(this, sigval1);
	}

	friend void QNmeaPositionInfoSource_virtualbase_setUpdateInterval(VirtualQNmeaPositionInfoSource* self, int msec);

	virtual void setPreferredPositioningMethods(QGeoPositionInfoSource::PositioningMethods methods) override {
		if (vtbl->setPreferredPositioningMethods == 0) {
			QNmeaPositionInfoSource::setPreferredPositioningMethods(methods);
			return;
		}

		QGeoPositionInfoSource::PositioningMethods methods_ret = methods;
		int sigval1 = static_cast<int>(methods_ret);
		vtbl->setPreferredPositioningMethods(this, sigval1);
	}

	friend void QNmeaPositionInfoSource_virtualbase_setPreferredPositioningMethods(VirtualQNmeaPositionInfoSource* self, int methods);

	virtual QGeoPositionInfo lastKnownPosition(bool fromSatellitePositioningMethodsOnly) const override {
		if (vtbl->lastKnownPosition == 0) {
			return QGeoPositionInfo(); // Pure virtual, there is no base we can call
		}

		bool sigval1 = fromSatellitePositioningMethodsOnly;
		QGeoPositionInfo* callback_return_value = vtbl->lastKnownPosition(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	virtual QGeoPositionInfoSource::PositioningMethods supportedPositioningMethods() const override {
		if (vtbl->supportedPositioningMethods == 0) {
			return QGeoPositionInfoSource::PositioningMethods(); // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->supportedPositioningMethods(this);
		return static_cast<QGeoPositionInfoSource::PositioningMethods>(callback_return_value);
	}

	virtual int minimumUpdateInterval() const override {
		if (vtbl->minimumUpdateInterval == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->minimumUpdateInterval(this);
		return static_cast<int>(callback_return_value);
	}

	virtual QGeoPositionInfoSource::Error error() const override {
		if (vtbl->error == 0) {
			return (QGeoPositionInfoSource::Error)(0); // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->error(this);
		return static_cast<QGeoPositionInfoSource::Error>(callback_return_value);
	}

	virtual void startUpdates() override {
		if (vtbl->startUpdates == 0) {
			return; // Pure virtual, there is no base we can call
		}

		vtbl->startUpdates(this);
	}

	virtual void stopUpdates() override {
		if (vtbl->stopUpdates == 0) {
			return; // Pure virtual, there is no base we can call
		}

		vtbl->stopUpdates(this);
	}

	virtual void requestUpdate(int timeout) override {
		if (vtbl->requestUpdate == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = timeout;
		vtbl->requestUpdate(this, sigval1);
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QNmeaPositionInfoSource::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QNmeaPositionInfoSource_virtualbase_event(VirtualQNmeaPositionInfoSource* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QNmeaPositionInfoSource::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QNmeaPositionInfoSource_virtualbase_eventFilter(VirtualQNmeaPositionInfoSource* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QNmeaPositionInfoSource::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QNmeaPositionInfoSource_virtualbase_timerEvent(VirtualQNmeaPositionInfoSource* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QNmeaPositionInfoSource::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QNmeaPositionInfoSource_virtualbase_childEvent(VirtualQNmeaPositionInfoSource* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QNmeaPositionInfoSource::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QNmeaPositionInfoSource_virtualbase_customEvent(VirtualQNmeaPositionInfoSource* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QNmeaPositionInfoSource::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QNmeaPositionInfoSource_virtualbase_connectNotify(VirtualQNmeaPositionInfoSource* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QNmeaPositionInfoSource::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QNmeaPositionInfoSource_virtualbase_disconnectNotify(VirtualQNmeaPositionInfoSource* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QNmeaPositionInfoSource_protectedbase_sender(const VirtualQNmeaPositionInfoSource* self);
	friend int QNmeaPositionInfoSource_protectedbase_senderSignalIndex(const VirtualQNmeaPositionInfoSource* self);
	friend int QNmeaPositionInfoSource_protectedbase_receivers(const VirtualQNmeaPositionInfoSource* self, const char* signal);
	friend bool QNmeaPositionInfoSource_protectedbase_isSignalConnected(const VirtualQNmeaPositionInfoSource* self, QMetaMethod* signal);
};

VirtualQNmeaPositionInfoSource* QNmeaPositionInfoSource_new_updateMode(const QNmeaPositionInfoSource_VTable* vtbl, size_t vdata, int updateMode) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQNmeaPositionInfoSource>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQNmeaPositionInfoSource(vtbl, static_cast<QNmeaPositionInfoSource::UpdateMode>(updateMode)) : nullptr;
}

VirtualQNmeaPositionInfoSource* QNmeaPositionInfoSource_new_updateMode_parent(const QNmeaPositionInfoSource_VTable* vtbl, size_t vdata, int updateMode, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQNmeaPositionInfoSource>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQNmeaPositionInfoSource(vtbl, static_cast<QNmeaPositionInfoSource::UpdateMode>(updateMode), parent) : nullptr;
}

void QNmeaPositionInfoSource_virtbase(QNmeaPositionInfoSource* src, QGeoPositionInfoSource** outptr_QGeoPositionInfoSource) {
	*outptr_QGeoPositionInfoSource = static_cast<QGeoPositionInfoSource*>(src);
}

QMetaObject* QNmeaPositionInfoSource_metaObject(const QNmeaPositionInfoSource* self) {
	return (QMetaObject*) self->metaObject();
}

void* QNmeaPositionInfoSource_metacast(QNmeaPositionInfoSource* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QNmeaPositionInfoSource_metacall(QNmeaPositionInfoSource* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QNmeaPositionInfoSource_tr_s(const char* s) {
	QString _ret = QNmeaPositionInfoSource::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QNmeaPositionInfoSource_trUtf8_s(const char* s) {
	QString _ret = QNmeaPositionInfoSource::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QNmeaPositionInfoSource_setUserEquivalentRangeError(QNmeaPositionInfoSource* self, double uere) {
	self->setUserEquivalentRangeError(static_cast<double>(uere));
}

double QNmeaPositionInfoSource_userEquivalentRangeError(const QNmeaPositionInfoSource* self) {
	return self->userEquivalentRangeError();
}

int QNmeaPositionInfoSource_updateMode(const QNmeaPositionInfoSource* self) {
	QNmeaPositionInfoSource::UpdateMode _ret = self->updateMode();
	return static_cast<int>(_ret);
}

void QNmeaPositionInfoSource_setDevice(QNmeaPositionInfoSource* self, QIODevice* source) {
	self->setDevice(source);
}

QIODevice* QNmeaPositionInfoSource_device(const QNmeaPositionInfoSource* self) {
	return self->device();
}

void QNmeaPositionInfoSource_setUpdateInterval(QNmeaPositionInfoSource* self, int msec) {
	self->setUpdateInterval(static_cast<int>(msec));
}

QGeoPositionInfo* QNmeaPositionInfoSource_lastKnownPosition(const QNmeaPositionInfoSource* self) {
	return new QGeoPositionInfo(self->lastKnownPosition());
}

int QNmeaPositionInfoSource_supportedPositioningMethods(const QNmeaPositionInfoSource* self) {
	QGeoPositionInfoSource::PositioningMethods _ret = self->supportedPositioningMethods();
	return static_cast<int>(_ret);
}

int QNmeaPositionInfoSource_minimumUpdateInterval(const QNmeaPositionInfoSource* self) {
	return self->minimumUpdateInterval();
}

int QNmeaPositionInfoSource_error(const QNmeaPositionInfoSource* self) {
	QGeoPositionInfoSource::Error _ret = self->error();
	return static_cast<int>(_ret);
}

void QNmeaPositionInfoSource_startUpdates(QNmeaPositionInfoSource* self) {
	self->startUpdates();
}

void QNmeaPositionInfoSource_stopUpdates(QNmeaPositionInfoSource* self) {
	self->stopUpdates();
}

void QNmeaPositionInfoSource_requestUpdate(QNmeaPositionInfoSource* self) {
	self->requestUpdate();
}

struct seaqt_string QNmeaPositionInfoSource_tr_s_c(const char* s, const char* c) {
	QString _ret = QNmeaPositionInfoSource::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QNmeaPositionInfoSource_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QNmeaPositionInfoSource::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QNmeaPositionInfoSource_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QNmeaPositionInfoSource::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QNmeaPositionInfoSource_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QNmeaPositionInfoSource::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QGeoPositionInfo* QNmeaPositionInfoSource_lastKnownPosition_fromSatellitePositioningMethodsOnly(const QNmeaPositionInfoSource* self, bool fromSatellitePositioningMethodsOnly) {
	return new QGeoPositionInfo(self->lastKnownPosition(fromSatellitePositioningMethodsOnly));
}

void QNmeaPositionInfoSource_requestUpdate_timeout(QNmeaPositionInfoSource* self, int timeout) {
	self->requestUpdate(static_cast<int>(timeout));
}

const QMetaObject* QNmeaPositionInfoSource_staticMetaObject() { return &QNmeaPositionInfoSource::staticMetaObject; }
void* QNmeaPositionInfoSource_vdata(VirtualQNmeaPositionInfoSource* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQNmeaPositionInfoSource>()); }
VirtualQNmeaPositionInfoSource* vdata_QNmeaPositionInfoSource(void* vdata) { return reinterpret_cast<VirtualQNmeaPositionInfoSource*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQNmeaPositionInfoSource>()); }

QMetaObject* QNmeaPositionInfoSource_virtualbase_metaObject(const VirtualQNmeaPositionInfoSource* self) {

	return (QMetaObject*) self->QNmeaPositionInfoSource::metaObject();
}

void* QNmeaPositionInfoSource_virtualbase_metacast(VirtualQNmeaPositionInfoSource* self, const char* param1) {

	return self->QNmeaPositionInfoSource::qt_metacast(param1);
}

int QNmeaPositionInfoSource_virtualbase_metacall(VirtualQNmeaPositionInfoSource* self, int param1, int param2, void** param3) {

	return self->QNmeaPositionInfoSource::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QNmeaPositionInfoSource_virtualbase_parsePosInfoFromNmeaData(VirtualQNmeaPositionInfoSource* self, const char* data, int size, QGeoPositionInfo* posInfo, bool* hasFix) {

	return self->QNmeaPositionInfoSource::parsePosInfoFromNmeaData(data, static_cast<int>(size), posInfo, hasFix);
}

void QNmeaPositionInfoSource_virtualbase_setUpdateInterval(VirtualQNmeaPositionInfoSource* self, int msec) {

	self->QNmeaPositionInfoSource::setUpdateInterval(static_cast<int>(msec));
}

void QNmeaPositionInfoSource_virtualbase_setPreferredPositioningMethods(VirtualQNmeaPositionInfoSource* self, int methods) {

	self->QNmeaPositionInfoSource::setPreferredPositioningMethods(static_cast<VirtualQNmeaPositionInfoSource::PositioningMethods>(methods));
}

bool QNmeaPositionInfoSource_virtualbase_event(VirtualQNmeaPositionInfoSource* self, QEvent* event) {

	return self->QNmeaPositionInfoSource::event(event);
}

bool QNmeaPositionInfoSource_virtualbase_eventFilter(VirtualQNmeaPositionInfoSource* self, QObject* watched, QEvent* event) {

	return self->QNmeaPositionInfoSource::eventFilter(watched, event);
}

void QNmeaPositionInfoSource_virtualbase_timerEvent(VirtualQNmeaPositionInfoSource* self, QTimerEvent* event) {

	self->QNmeaPositionInfoSource::timerEvent(event);
}

void QNmeaPositionInfoSource_virtualbase_childEvent(VirtualQNmeaPositionInfoSource* self, QChildEvent* event) {

	self->QNmeaPositionInfoSource::childEvent(event);
}

void QNmeaPositionInfoSource_virtualbase_customEvent(VirtualQNmeaPositionInfoSource* self, QEvent* event) {

	self->QNmeaPositionInfoSource::customEvent(event);
}

void QNmeaPositionInfoSource_virtualbase_connectNotify(VirtualQNmeaPositionInfoSource* self, QMetaMethod* signal) {

	self->QNmeaPositionInfoSource::connectNotify(*signal);
}

void QNmeaPositionInfoSource_virtualbase_disconnectNotify(VirtualQNmeaPositionInfoSource* self, QMetaMethod* signal) {

	self->QNmeaPositionInfoSource::disconnectNotify(*signal);
}

QObject* QNmeaPositionInfoSource_protectedbase_sender(const VirtualQNmeaPositionInfoSource* self) {
	return self->QNmeaPositionInfoSource::sender();
}

int QNmeaPositionInfoSource_protectedbase_senderSignalIndex(const VirtualQNmeaPositionInfoSource* self) {
	return self->QNmeaPositionInfoSource::senderSignalIndex();
}

int QNmeaPositionInfoSource_protectedbase_receivers(const VirtualQNmeaPositionInfoSource* self, const char* signal) {
	return self->QNmeaPositionInfoSource::receivers(signal);
}

bool QNmeaPositionInfoSource_protectedbase_isSignalConnected(const VirtualQNmeaPositionInfoSource* self, QMetaMethod* signal) {
	return self->QNmeaPositionInfoSource::isSignalConnected(*signal);
}

void QNmeaPositionInfoSource_delete(QNmeaPositionInfoSource* self) {
	delete self;
}

