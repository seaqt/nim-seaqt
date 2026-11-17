#include <QChildEvent>
#include <QEvent>
#include <QGeoPositionInfo>
#include <QGeoPositionInfoSource>
#include <QList>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qgeopositioninfosource.h>
#include "gen_qgeopositioninfosource.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQGeoPositionInfoSource final : public QGeoPositionInfoSource {
	const QGeoPositionInfoSource_VTable* vtbl;
public:
	friend void* QGeoPositionInfoSource_vdata(VirtualQGeoPositionInfoSource* self);
	friend VirtualQGeoPositionInfoSource* vdata_QGeoPositionInfoSource(void* vdata);

	VirtualQGeoPositionInfoSource(const QGeoPositionInfoSource_VTable* vtbl, QObject* parent): QGeoPositionInfoSource(parent), vtbl(vtbl) {}

	virtual ~VirtualQGeoPositionInfoSource() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGeoPositionInfoSource::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QGeoPositionInfoSource_virtualbase_metaObject(const VirtualQGeoPositionInfoSource* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGeoPositionInfoSource::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QGeoPositionInfoSource_virtualbase_metacast(VirtualQGeoPositionInfoSource* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGeoPositionInfoSource::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QGeoPositionInfoSource_virtualbase_metacall(VirtualQGeoPositionInfoSource* self, int param1, int param2, void** param3);

	virtual void setUpdateInterval(int msec) override {
		if (vtbl->setUpdateInterval == 0) {
			QGeoPositionInfoSource::setUpdateInterval(msec);
			return;
		}

		int sigval1 = msec;
		vtbl->setUpdateInterval(this, sigval1);
	}

	friend void QGeoPositionInfoSource_virtualbase_setUpdateInterval(VirtualQGeoPositionInfoSource* self, int msec);

	virtual void setPreferredPositioningMethods(QGeoPositionInfoSource::PositioningMethods methods) override {
		if (vtbl->setPreferredPositioningMethods == 0) {
			QGeoPositionInfoSource::setPreferredPositioningMethods(methods);
			return;
		}

		QGeoPositionInfoSource::PositioningMethods methods_ret = methods;
		int sigval1 = static_cast<int>(methods_ret);
		vtbl->setPreferredPositioningMethods(this, sigval1);
	}

	friend void QGeoPositionInfoSource_virtualbase_setPreferredPositioningMethods(VirtualQGeoPositionInfoSource* self, int methods);

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

	virtual bool setBackendProperty(const QString& name, const QVariant& value) override {
		if (vtbl->setBackendProperty == 0) {
			return QGeoPositionInfoSource::setBackendProperty(name, value);
		}

		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval1 = name_ms;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
		bool callback_return_value = vtbl->setBackendProperty(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QGeoPositionInfoSource_virtualbase_setBackendProperty(VirtualQGeoPositionInfoSource* self, struct seaqt_string name, QVariant* value);

	virtual QVariant backendProperty(const QString& name) const override {
		if (vtbl->backendProperty == 0) {
			return QGeoPositionInfoSource::backendProperty(name);
		}

		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval1 = name_ms;
		QVariant* callback_return_value = vtbl->backendProperty(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QGeoPositionInfoSource_virtualbase_backendProperty(const VirtualQGeoPositionInfoSource* self, struct seaqt_string name);

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
			return QGeoPositionInfoSource::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QGeoPositionInfoSource_virtualbase_event(VirtualQGeoPositionInfoSource* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGeoPositionInfoSource::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QGeoPositionInfoSource_virtualbase_eventFilter(VirtualQGeoPositionInfoSource* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGeoPositionInfoSource::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QGeoPositionInfoSource_virtualbase_timerEvent(VirtualQGeoPositionInfoSource* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGeoPositionInfoSource::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QGeoPositionInfoSource_virtualbase_childEvent(VirtualQGeoPositionInfoSource* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGeoPositionInfoSource::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QGeoPositionInfoSource_virtualbase_customEvent(VirtualQGeoPositionInfoSource* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGeoPositionInfoSource::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QGeoPositionInfoSource_virtualbase_connectNotify(VirtualQGeoPositionInfoSource* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGeoPositionInfoSource::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QGeoPositionInfoSource_virtualbase_disconnectNotify(VirtualQGeoPositionInfoSource* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QGeoPositionInfoSource_protectedbase_sender(const VirtualQGeoPositionInfoSource* self);
	friend int QGeoPositionInfoSource_protectedbase_senderSignalIndex(const VirtualQGeoPositionInfoSource* self);
	friend int QGeoPositionInfoSource_protectedbase_receivers(const VirtualQGeoPositionInfoSource* self, const char* signal);
	friend bool QGeoPositionInfoSource_protectedbase_isSignalConnected(const VirtualQGeoPositionInfoSource* self, QMetaMethod* signal);
};

VirtualQGeoPositionInfoSource* QGeoPositionInfoSource_new(const QGeoPositionInfoSource_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQGeoPositionInfoSource>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQGeoPositionInfoSource(vtbl, parent) : nullptr;
}

void QGeoPositionInfoSource_virtbase(QGeoPositionInfoSource* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QGeoPositionInfoSource_metaObject(const QGeoPositionInfoSource* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGeoPositionInfoSource_metacast(QGeoPositionInfoSource* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGeoPositionInfoSource_metacall(QGeoPositionInfoSource* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QGeoPositionInfoSource_tr_s(const char* s) {
	QString _ret = QGeoPositionInfoSource::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGeoPositionInfoSource_setUpdateInterval(QGeoPositionInfoSource* self, int msec) {
	self->setUpdateInterval(static_cast<int>(msec));
}

int QGeoPositionInfoSource_updateInterval(const QGeoPositionInfoSource* self) {
	return self->updateInterval();
}

void QGeoPositionInfoSource_setPreferredPositioningMethods(QGeoPositionInfoSource* self, int methods) {
	self->setPreferredPositioningMethods(static_cast<QGeoPositionInfoSource::PositioningMethods>(methods));
}

int QGeoPositionInfoSource_preferredPositioningMethods(const QGeoPositionInfoSource* self) {
	QGeoPositionInfoSource::PositioningMethods _ret = self->preferredPositioningMethods();
	return static_cast<int>(_ret);
}

QGeoPositionInfo* QGeoPositionInfoSource_lastKnownPosition(const QGeoPositionInfoSource* self, bool fromSatellitePositioningMethodsOnly) {
	return new QGeoPositionInfo(self->lastKnownPosition(fromSatellitePositioningMethodsOnly));
}

int QGeoPositionInfoSource_supportedPositioningMethods(const QGeoPositionInfoSource* self) {
	QGeoPositionInfoSource::PositioningMethods _ret = self->supportedPositioningMethods();
	return static_cast<int>(_ret);
}

int QGeoPositionInfoSource_minimumUpdateInterval(const QGeoPositionInfoSource* self) {
	return self->minimumUpdateInterval();
}

struct seaqt_string QGeoPositionInfoSource_sourceName(const QGeoPositionInfoSource* self) {
	QString _ret = self->sourceName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QGeoPositionInfoSource_setBackendProperty(QGeoPositionInfoSource* self, struct seaqt_string name, QVariant* value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->setBackendProperty(name_QString, *value);
}

QVariant* QGeoPositionInfoSource_backendProperty(const QGeoPositionInfoSource* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new QVariant(self->backendProperty(name_QString));
}

QGeoPositionInfoSource* QGeoPositionInfoSource_createDefaultSource_QObject(QObject* parent) {
	return QGeoPositionInfoSource::createDefaultSource(parent);
}

QGeoPositionInfoSource* QGeoPositionInfoSource_createDefaultSource_QVariantMap_QObject(struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters, QObject* parent) {
	QVariantMap parameters_QMap;
	struct seaqt_string* parameters_karr = static_cast<struct seaqt_string*>(parameters.keys);
	QVariant** parameters_varr = static_cast<QVariant**>(parameters.values);
	for(size_t i = 0; i < parameters.len; ++i) {
		QString parameters_karr_i_QString = QString::fromUtf8(parameters_karr[i].data, parameters_karr[i].len);
		parameters_QMap[parameters_karr_i_QString] = *(parameters_varr[i]);
	}
	return QGeoPositionInfoSource::createDefaultSource(parameters_QMap, parent);
}

QGeoPositionInfoSource* QGeoPositionInfoSource_createSource_QString_QObject(struct seaqt_string sourceName, QObject* parent) {
	QString sourceName_QString = QString::fromUtf8(sourceName.data, sourceName.len);
	return QGeoPositionInfoSource::createSource(sourceName_QString, parent);
}

QGeoPositionInfoSource* QGeoPositionInfoSource_createSource_QString_QVariantMap_QObject(struct seaqt_string sourceName, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters, QObject* parent) {
	QString sourceName_QString = QString::fromUtf8(sourceName.data, sourceName.len);
	QVariantMap parameters_QMap;
	struct seaqt_string* parameters_karr = static_cast<struct seaqt_string*>(parameters.keys);
	QVariant** parameters_varr = static_cast<QVariant**>(parameters.values);
	for(size_t i = 0; i < parameters.len; ++i) {
		QString parameters_karr_i_QString = QString::fromUtf8(parameters_karr[i].data, parameters_karr[i].len);
		parameters_QMap[parameters_karr_i_QString] = *(parameters_varr[i]);
	}
	return QGeoPositionInfoSource::createSource(sourceName_QString, parameters_QMap, parent);
}

struct seaqt_array /* of struct seaqt_string */  QGeoPositionInfoSource_availableSources() {
	QStringList _ret = QGeoPositionInfoSource::availableSources();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QGeoPositionInfoSource_error(const QGeoPositionInfoSource* self) {
	QGeoPositionInfoSource::Error _ret = self->error();
	return static_cast<int>(_ret);
}

void QGeoPositionInfoSource_startUpdates(QGeoPositionInfoSource* self) {
	self->startUpdates();
}

void QGeoPositionInfoSource_stopUpdates(QGeoPositionInfoSource* self) {
	self->stopUpdates();
}

void QGeoPositionInfoSource_requestUpdate(QGeoPositionInfoSource* self, int timeout) {
	self->requestUpdate(static_cast<int>(timeout));
}

void QGeoPositionInfoSource_positionUpdated(QGeoPositionInfoSource* self, QGeoPositionInfo* update) {
	self->positionUpdated(*update);
}

void QGeoPositionInfoSource_connect_positionUpdated(QGeoPositionInfoSource* self, intptr_t slot, void (*callback)(intptr_t, QGeoPositionInfo*), void (*release)(intptr_t)) {
	QGeoPositionInfoSource::connect(self, static_cast<void (QGeoPositionInfoSource::*)(const QGeoPositionInfo&)>(&QGeoPositionInfoSource::positionUpdated), self, [callback, release = seaqt::release_callback{slot,release}](const QGeoPositionInfo& update) {
			const QGeoPositionInfo& update_ret = update;
			// Cast returned reference into pointer
			QGeoPositionInfo* sigval1 = const_cast<QGeoPositionInfo*>(&update_ret);
			callback(release.slot, sigval1);
	});
}

void QGeoPositionInfoSource_errorOccurred(QGeoPositionInfoSource* self, int param1) {
	self->errorOccurred(static_cast<QGeoPositionInfoSource::Error>(param1));
}

void QGeoPositionInfoSource_connect_errorOccurred(QGeoPositionInfoSource* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QGeoPositionInfoSource::connect(self, static_cast<void (QGeoPositionInfoSource::*)(QGeoPositionInfoSource::Error)>(&QGeoPositionInfoSource::errorOccurred), self, [callback, release = seaqt::release_callback{slot,release}](QGeoPositionInfoSource::Error param1) {
			QGeoPositionInfoSource::Error param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			callback(release.slot, sigval1);
	});
}

void QGeoPositionInfoSource_supportedPositioningMethodsChanged(QGeoPositionInfoSource* self) {
	self->supportedPositioningMethodsChanged();
}

void QGeoPositionInfoSource_connect_supportedPositioningMethodsChanged(QGeoPositionInfoSource* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QGeoPositionInfoSource::connect(self, static_cast<void (QGeoPositionInfoSource::*)()>(&QGeoPositionInfoSource::supportedPositioningMethodsChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QGeoPositionInfoSource_tr_s_c(const char* s, const char* c) {
	QString _ret = QGeoPositionInfoSource::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QGeoPositionInfoSource_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QGeoPositionInfoSource::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QGeoPositionInfoSource_staticMetaObject() { return &QGeoPositionInfoSource::staticMetaObject; }
void* QGeoPositionInfoSource_vdata(VirtualQGeoPositionInfoSource* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQGeoPositionInfoSource>()); }
VirtualQGeoPositionInfoSource* vdata_QGeoPositionInfoSource(void* vdata) { return reinterpret_cast<VirtualQGeoPositionInfoSource*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQGeoPositionInfoSource>()); }

QMetaObject* QGeoPositionInfoSource_virtualbase_metaObject(const VirtualQGeoPositionInfoSource* self) {

	return (QMetaObject*) self->QGeoPositionInfoSource::metaObject();
}

void* QGeoPositionInfoSource_virtualbase_metacast(VirtualQGeoPositionInfoSource* self, const char* param1) {

	return self->QGeoPositionInfoSource::qt_metacast(param1);
}

int QGeoPositionInfoSource_virtualbase_metacall(VirtualQGeoPositionInfoSource* self, int param1, int param2, void** param3) {

	return self->QGeoPositionInfoSource::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QGeoPositionInfoSource_virtualbase_setUpdateInterval(VirtualQGeoPositionInfoSource* self, int msec) {

	self->QGeoPositionInfoSource::setUpdateInterval(static_cast<int>(msec));
}

void QGeoPositionInfoSource_virtualbase_setPreferredPositioningMethods(VirtualQGeoPositionInfoSource* self, int methods) {

	self->QGeoPositionInfoSource::setPreferredPositioningMethods(static_cast<VirtualQGeoPositionInfoSource::PositioningMethods>(methods));
}

bool QGeoPositionInfoSource_virtualbase_setBackendProperty(VirtualQGeoPositionInfoSource* self, struct seaqt_string name, QVariant* value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QGeoPositionInfoSource::setBackendProperty(name_QString, *value);
}

QVariant* QGeoPositionInfoSource_virtualbase_backendProperty(const VirtualQGeoPositionInfoSource* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return new QVariant(self->QGeoPositionInfoSource::backendProperty(name_QString));
}

bool QGeoPositionInfoSource_virtualbase_event(VirtualQGeoPositionInfoSource* self, QEvent* event) {

	return self->QGeoPositionInfoSource::event(event);
}

bool QGeoPositionInfoSource_virtualbase_eventFilter(VirtualQGeoPositionInfoSource* self, QObject* watched, QEvent* event) {

	return self->QGeoPositionInfoSource::eventFilter(watched, event);
}

void QGeoPositionInfoSource_virtualbase_timerEvent(VirtualQGeoPositionInfoSource* self, QTimerEvent* event) {

	self->QGeoPositionInfoSource::timerEvent(event);
}

void QGeoPositionInfoSource_virtualbase_childEvent(VirtualQGeoPositionInfoSource* self, QChildEvent* event) {

	self->QGeoPositionInfoSource::childEvent(event);
}

void QGeoPositionInfoSource_virtualbase_customEvent(VirtualQGeoPositionInfoSource* self, QEvent* event) {

	self->QGeoPositionInfoSource::customEvent(event);
}

void QGeoPositionInfoSource_virtualbase_connectNotify(VirtualQGeoPositionInfoSource* self, QMetaMethod* signal) {

	self->QGeoPositionInfoSource::connectNotify(*signal);
}

void QGeoPositionInfoSource_virtualbase_disconnectNotify(VirtualQGeoPositionInfoSource* self, QMetaMethod* signal) {

	self->QGeoPositionInfoSource::disconnectNotify(*signal);
}

QObject* QGeoPositionInfoSource_protectedbase_sender(const VirtualQGeoPositionInfoSource* self) {
	return self->QGeoPositionInfoSource::sender();
}

int QGeoPositionInfoSource_protectedbase_senderSignalIndex(const VirtualQGeoPositionInfoSource* self) {
	return self->QGeoPositionInfoSource::senderSignalIndex();
}

int QGeoPositionInfoSource_protectedbase_receivers(const VirtualQGeoPositionInfoSource* self, const char* signal) {
	return self->QGeoPositionInfoSource::receivers(signal);
}

bool QGeoPositionInfoSource_protectedbase_isSignalConnected(const VirtualQGeoPositionInfoSource* self, QMetaMethod* signal) {
	return self->QGeoPositionInfoSource::isSignalConnected(*signal);
}

void QGeoPositionInfoSource_delete(QGeoPositionInfoSource* self) {
	delete self;
}

