#include <QChildEvent>
#include <QEvent>
#include <QGeoSatelliteInfo>
#include <QGeoSatelliteInfoSource>
#include <QIODevice>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNmeaSatelliteInfoSource>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qnmeasatelliteinfosource.h>
#include "gen_qnmeasatelliteinfosource.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQNmeaSatelliteInfoSource final : public QNmeaSatelliteInfoSource {
	const QNmeaSatelliteInfoSource_VTable* vtbl;
public:
	friend void* QNmeaSatelliteInfoSource_vdata(VirtualQNmeaSatelliteInfoSource* self);
	friend VirtualQNmeaSatelliteInfoSource* vdata_QNmeaSatelliteInfoSource(void* vdata);

	VirtualQNmeaSatelliteInfoSource(const QNmeaSatelliteInfoSource_VTable* vtbl, QNmeaSatelliteInfoSource::UpdateMode mode): QNmeaSatelliteInfoSource(mode), vtbl(vtbl) {}
	VirtualQNmeaSatelliteInfoSource(const QNmeaSatelliteInfoSource_VTable* vtbl, QNmeaSatelliteInfoSource::UpdateMode mode, QObject* parent): QNmeaSatelliteInfoSource(mode, parent), vtbl(vtbl) {}

	virtual ~VirtualQNmeaSatelliteInfoSource() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QNmeaSatelliteInfoSource::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QNmeaSatelliteInfoSource_virtualbase_metaObject(const VirtualQNmeaSatelliteInfoSource* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QNmeaSatelliteInfoSource::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QNmeaSatelliteInfoSource_virtualbase_metacast(VirtualQNmeaSatelliteInfoSource* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QNmeaSatelliteInfoSource::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QNmeaSatelliteInfoSource_virtualbase_metacall(VirtualQNmeaSatelliteInfoSource* self, int param1, int param2, void** param3);

	virtual void setUpdateInterval(int msec) override {
		if (vtbl->setUpdateInterval == 0) {
			QNmeaSatelliteInfoSource::setUpdateInterval(msec);
			return;
		}

		int sigval1 = msec;
		vtbl->setUpdateInterval(this, sigval1);
	}

	friend void QNmeaSatelliteInfoSource_virtualbase_setUpdateInterval(VirtualQNmeaSatelliteInfoSource* self, int msec);

	virtual int minimumUpdateInterval() const override {
		if (vtbl->minimumUpdateInterval == 0) {
			return QNmeaSatelliteInfoSource::minimumUpdateInterval();
		}

		int callback_return_value = vtbl->minimumUpdateInterval(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QNmeaSatelliteInfoSource_virtualbase_minimumUpdateInterval(const VirtualQNmeaSatelliteInfoSource* self);

	virtual QGeoSatelliteInfoSource::Error error() const override {
		if (vtbl->error == 0) {
			return QNmeaSatelliteInfoSource::error();
		}

		int callback_return_value = vtbl->error(this);
		return static_cast<QGeoSatelliteInfoSource::Error>(callback_return_value);
	}

	friend int QNmeaSatelliteInfoSource_virtualbase_error(const VirtualQNmeaSatelliteInfoSource* self);

	virtual bool setBackendProperty(const QString& name, const QVariant& value) override {
		if (vtbl->setBackendProperty == 0) {
			return QNmeaSatelliteInfoSource::setBackendProperty(name, value);
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

	friend bool QNmeaSatelliteInfoSource_virtualbase_setBackendProperty(VirtualQNmeaSatelliteInfoSource* self, struct seaqt_string name, QVariant* value);

	virtual QVariant backendProperty(const QString& name) const override {
		if (vtbl->backendProperty == 0) {
			return QNmeaSatelliteInfoSource::backendProperty(name);
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

	friend QVariant* QNmeaSatelliteInfoSource_virtualbase_backendProperty(const VirtualQNmeaSatelliteInfoSource* self, struct seaqt_string name);

	virtual void startUpdates() override {
		if (vtbl->startUpdates == 0) {
			QNmeaSatelliteInfoSource::startUpdates();
			return;
		}

		vtbl->startUpdates(this);
	}

	friend void QNmeaSatelliteInfoSource_virtualbase_startUpdates(VirtualQNmeaSatelliteInfoSource* self);

	virtual void stopUpdates() override {
		if (vtbl->stopUpdates == 0) {
			QNmeaSatelliteInfoSource::stopUpdates();
			return;
		}

		vtbl->stopUpdates(this);
	}

	friend void QNmeaSatelliteInfoSource_virtualbase_stopUpdates(VirtualQNmeaSatelliteInfoSource* self);

	virtual void requestUpdate(int timeout) override {
		if (vtbl->requestUpdate == 0) {
			QNmeaSatelliteInfoSource::requestUpdate(timeout);
			return;
		}

		int sigval1 = timeout;
		vtbl->requestUpdate(this, sigval1);
	}

	friend void QNmeaSatelliteInfoSource_virtualbase_requestUpdate(VirtualQNmeaSatelliteInfoSource* self, int timeout);

	virtual QGeoSatelliteInfo::SatelliteSystem parseSatellitesInUseFromNmea(const char* data, int size, QList<int>& pnrsInUse) override {
		if (vtbl->parseSatellitesInUseFromNmea == 0) {
			return QNmeaSatelliteInfoSource::parseSatellitesInUseFromNmea(data, size, pnrsInUse);
		}

		const char* sigval1 = (const char*) data;
		int sigval2 = size;
		QList<int>& pnrsInUse_ret = pnrsInUse;
		// Convert QList<> from C++ memory to manually-managed C memory
		int* pnrsInUse_arr = static_cast<int*>(malloc(sizeof(int) * pnrsInUse_ret.length()));
		for (size_t i = 0, e = pnrsInUse_ret.length(); i < e; ++i) {
			pnrsInUse_arr[i] = pnrsInUse_ret[i];
		}
		struct seaqt_array pnrsInUse_out;
		pnrsInUse_out.len = pnrsInUse_ret.length();
		pnrsInUse_out.data = static_cast<void*>(pnrsInUse_arr);
		struct seaqt_array /* of int */  sigval3 = pnrsInUse_out;
		int callback_return_value = vtbl->parseSatellitesInUseFromNmea(this, sigval1, sigval2, sigval3);
		return static_cast<QGeoSatelliteInfo::SatelliteSystem>(callback_return_value);
	}

	friend int QNmeaSatelliteInfoSource_virtualbase_parseSatellitesInUseFromNmea(VirtualQNmeaSatelliteInfoSource* self, const char* data, int size, struct seaqt_array /* of int */  pnrsInUse);

	virtual QNmeaSatelliteInfoSource::SatelliteInfoParseStatus parseSatelliteInfoFromNmea(const char* data, int size, QList<QGeoSatelliteInfo>& infos, QGeoSatelliteInfo::SatelliteSystem& system) override {
		if (vtbl->parseSatelliteInfoFromNmea == 0) {
			return QNmeaSatelliteInfoSource::parseSatelliteInfoFromNmea(data, size, infos, system);
		}

		const char* sigval1 = (const char*) data;
		int sigval2 = size;
		QList<QGeoSatelliteInfo>& infos_ret = infos;
		// Convert QList<> from C++ memory to manually-managed C memory
		QGeoSatelliteInfo** infos_arr = static_cast<QGeoSatelliteInfo**>(malloc(sizeof(QGeoSatelliteInfo*) * infos_ret.length()));
		for (size_t i = 0, e = infos_ret.length(); i < e; ++i) {
			infos_arr[i] = new QGeoSatelliteInfo(infos_ret[i]);
		}
		struct seaqt_array infos_out;
		infos_out.len = infos_ret.length();
		infos_out.data = static_cast<void*>(infos_arr);
		struct seaqt_array /* of QGeoSatelliteInfo* */  sigval3 = infos_out;
		QGeoSatelliteInfo::SatelliteSystem& system_ret = system;
		int* sigval4 = reinterpret_cast<int*>(&system_ret);
		int callback_return_value = vtbl->parseSatelliteInfoFromNmea(this, sigval1, sigval2, sigval3, sigval4);
		return static_cast<QNmeaSatelliteInfoSource::SatelliteInfoParseStatus>(callback_return_value);
	}

	friend int QNmeaSatelliteInfoSource_virtualbase_parseSatelliteInfoFromNmea(VirtualQNmeaSatelliteInfoSource* self, const char* data, int size, struct seaqt_array /* of QGeoSatelliteInfo* */  infos, int* system);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QNmeaSatelliteInfoSource::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QNmeaSatelliteInfoSource_virtualbase_event(VirtualQNmeaSatelliteInfoSource* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QNmeaSatelliteInfoSource::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QNmeaSatelliteInfoSource_virtualbase_eventFilter(VirtualQNmeaSatelliteInfoSource* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QNmeaSatelliteInfoSource::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QNmeaSatelliteInfoSource_virtualbase_timerEvent(VirtualQNmeaSatelliteInfoSource* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QNmeaSatelliteInfoSource::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QNmeaSatelliteInfoSource_virtualbase_childEvent(VirtualQNmeaSatelliteInfoSource* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QNmeaSatelliteInfoSource::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QNmeaSatelliteInfoSource_virtualbase_customEvent(VirtualQNmeaSatelliteInfoSource* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QNmeaSatelliteInfoSource::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QNmeaSatelliteInfoSource_virtualbase_connectNotify(VirtualQNmeaSatelliteInfoSource* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QNmeaSatelliteInfoSource::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QNmeaSatelliteInfoSource_virtualbase_disconnectNotify(VirtualQNmeaSatelliteInfoSource* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QNmeaSatelliteInfoSource_protectedbase_setError(VirtualQNmeaSatelliteInfoSource* self, int satelliteError);
	friend QObject* QNmeaSatelliteInfoSource_protectedbase_sender(const VirtualQNmeaSatelliteInfoSource* self);
	friend int QNmeaSatelliteInfoSource_protectedbase_senderSignalIndex(const VirtualQNmeaSatelliteInfoSource* self);
	friend int QNmeaSatelliteInfoSource_protectedbase_receivers(const VirtualQNmeaSatelliteInfoSource* self, const char* signal);
	friend bool QNmeaSatelliteInfoSource_protectedbase_isSignalConnected(const VirtualQNmeaSatelliteInfoSource* self, QMetaMethod* signal);
};

VirtualQNmeaSatelliteInfoSource* QNmeaSatelliteInfoSource_new(const QNmeaSatelliteInfoSource_VTable* vtbl, size_t vdata, int mode) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQNmeaSatelliteInfoSource>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQNmeaSatelliteInfoSource(vtbl, static_cast<QNmeaSatelliteInfoSource::UpdateMode>(mode)) : nullptr;
}

VirtualQNmeaSatelliteInfoSource* QNmeaSatelliteInfoSource_new2(const QNmeaSatelliteInfoSource_VTable* vtbl, size_t vdata, int mode, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQNmeaSatelliteInfoSource>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQNmeaSatelliteInfoSource(vtbl, static_cast<QNmeaSatelliteInfoSource::UpdateMode>(mode), parent) : nullptr;
}

void QNmeaSatelliteInfoSource_virtbase(QNmeaSatelliteInfoSource* src, QGeoSatelliteInfoSource** outptr_QGeoSatelliteInfoSource) {
	*outptr_QGeoSatelliteInfoSource = static_cast<QGeoSatelliteInfoSource*>(src);
}

QMetaObject* QNmeaSatelliteInfoSource_metaObject(const QNmeaSatelliteInfoSource* self) {
	return (QMetaObject*) self->metaObject();
}

void* QNmeaSatelliteInfoSource_metacast(QNmeaSatelliteInfoSource* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QNmeaSatelliteInfoSource_metacall(QNmeaSatelliteInfoSource* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QNmeaSatelliteInfoSource_tr(const char* s) {
	QString _ret = QNmeaSatelliteInfoSource::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QNmeaSatelliteInfoSource_updateMode(const QNmeaSatelliteInfoSource* self) {
	QNmeaSatelliteInfoSource::UpdateMode _ret = self->updateMode();
	return static_cast<int>(_ret);
}

void QNmeaSatelliteInfoSource_setDevice(QNmeaSatelliteInfoSource* self, QIODevice* source) {
	self->setDevice(source);
}

QIODevice* QNmeaSatelliteInfoSource_device(const QNmeaSatelliteInfoSource* self) {
	return self->device();
}

void QNmeaSatelliteInfoSource_setUpdateInterval(QNmeaSatelliteInfoSource* self, int msec) {
	self->setUpdateInterval(static_cast<int>(msec));
}

int QNmeaSatelliteInfoSource_minimumUpdateInterval(const QNmeaSatelliteInfoSource* self) {
	return self->minimumUpdateInterval();
}

int QNmeaSatelliteInfoSource_error(const QNmeaSatelliteInfoSource* self) {
	QGeoSatelliteInfoSource::Error _ret = self->error();
	return static_cast<int>(_ret);
}

bool QNmeaSatelliteInfoSource_setBackendProperty(QNmeaSatelliteInfoSource* self, struct seaqt_string name, QVariant* value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->setBackendProperty(name_QString, *value);
}

QVariant* QNmeaSatelliteInfoSource_backendProperty(const QNmeaSatelliteInfoSource* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new QVariant(self->backendProperty(name_QString));
}

void QNmeaSatelliteInfoSource_startUpdates(QNmeaSatelliteInfoSource* self) {
	self->startUpdates();
}

void QNmeaSatelliteInfoSource_stopUpdates(QNmeaSatelliteInfoSource* self) {
	self->stopUpdates();
}

void QNmeaSatelliteInfoSource_requestUpdate(QNmeaSatelliteInfoSource* self, int timeout) {
	self->requestUpdate(static_cast<int>(timeout));
}

struct seaqt_string QNmeaSatelliteInfoSource_tr2(const char* s, const char* c) {
	QString _ret = QNmeaSatelliteInfoSource::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QNmeaSatelliteInfoSource_tr3(const char* s, const char* c, int n) {
	QString _ret = QNmeaSatelliteInfoSource::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QNmeaSatelliteInfoSource_staticMetaObject() { return &QNmeaSatelliteInfoSource::staticMetaObject; }
void* QNmeaSatelliteInfoSource_vdata(VirtualQNmeaSatelliteInfoSource* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQNmeaSatelliteInfoSource>()); }
VirtualQNmeaSatelliteInfoSource* vdata_QNmeaSatelliteInfoSource(void* vdata) { return reinterpret_cast<VirtualQNmeaSatelliteInfoSource*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQNmeaSatelliteInfoSource>()); }

QMetaObject* QNmeaSatelliteInfoSource_virtualbase_metaObject(const VirtualQNmeaSatelliteInfoSource* self) {

	return (QMetaObject*) self->QNmeaSatelliteInfoSource::metaObject();
}

void* QNmeaSatelliteInfoSource_virtualbase_metacast(VirtualQNmeaSatelliteInfoSource* self, const char* param1) {

	return self->QNmeaSatelliteInfoSource::qt_metacast(param1);
}

int QNmeaSatelliteInfoSource_virtualbase_metacall(VirtualQNmeaSatelliteInfoSource* self, int param1, int param2, void** param3) {

	return self->QNmeaSatelliteInfoSource::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QNmeaSatelliteInfoSource_virtualbase_setUpdateInterval(VirtualQNmeaSatelliteInfoSource* self, int msec) {

	self->QNmeaSatelliteInfoSource::setUpdateInterval(static_cast<int>(msec));
}

int QNmeaSatelliteInfoSource_virtualbase_minimumUpdateInterval(const VirtualQNmeaSatelliteInfoSource* self) {

	return self->QNmeaSatelliteInfoSource::minimumUpdateInterval();
}

int QNmeaSatelliteInfoSource_virtualbase_error(const VirtualQNmeaSatelliteInfoSource* self) {

	VirtualQNmeaSatelliteInfoSource::Error _ret = self->QNmeaSatelliteInfoSource::error();
	return static_cast<int>(_ret);
}

bool QNmeaSatelliteInfoSource_virtualbase_setBackendProperty(VirtualQNmeaSatelliteInfoSource* self, struct seaqt_string name, QVariant* value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QNmeaSatelliteInfoSource::setBackendProperty(name_QString, *value);
}

QVariant* QNmeaSatelliteInfoSource_virtualbase_backendProperty(const VirtualQNmeaSatelliteInfoSource* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return new QVariant(self->QNmeaSatelliteInfoSource::backendProperty(name_QString));
}

void QNmeaSatelliteInfoSource_virtualbase_startUpdates(VirtualQNmeaSatelliteInfoSource* self) {

	self->QNmeaSatelliteInfoSource::startUpdates();
}

void QNmeaSatelliteInfoSource_virtualbase_stopUpdates(VirtualQNmeaSatelliteInfoSource* self) {

	self->QNmeaSatelliteInfoSource::stopUpdates();
}

void QNmeaSatelliteInfoSource_virtualbase_requestUpdate(VirtualQNmeaSatelliteInfoSource* self, int timeout) {

	self->QNmeaSatelliteInfoSource::requestUpdate(static_cast<int>(timeout));
}

int QNmeaSatelliteInfoSource_virtualbase_parseSatellitesInUseFromNmea(VirtualQNmeaSatelliteInfoSource* self, const char* data, int size, struct seaqt_array /* of int */  pnrsInUse) {
	QList<int> pnrsInUse_QList;
	pnrsInUse_QList.reserve(pnrsInUse.len);
	int* pnrsInUse_arr = static_cast<int*>(pnrsInUse.data);
	for(size_t i = 0; i < pnrsInUse.len; ++i) {
		pnrsInUse_QList.push_back(static_cast<int>(pnrsInUse_arr[i]));
	}

	QGeoSatelliteInfo::SatelliteSystem _ret = self->QNmeaSatelliteInfoSource::parseSatellitesInUseFromNmea(data, static_cast<int>(size), pnrsInUse_QList);
	return static_cast<int>(_ret);
}

int QNmeaSatelliteInfoSource_virtualbase_parseSatelliteInfoFromNmea(VirtualQNmeaSatelliteInfoSource* self, const char* data, int size, struct seaqt_array /* of QGeoSatelliteInfo* */  infos, int* system) {
	QList<QGeoSatelliteInfo> infos_QList;
	infos_QList.reserve(infos.len);
	QGeoSatelliteInfo** infos_arr = static_cast<QGeoSatelliteInfo**>(infos.data);
	for(size_t i = 0; i < infos.len; ++i) {
		infos_QList.push_back(*(infos_arr[i]));
	}

	VirtualQNmeaSatelliteInfoSource::SatelliteInfoParseStatus _ret = self->QNmeaSatelliteInfoSource::parseSatelliteInfoFromNmea(data, static_cast<int>(size), infos_QList, (QGeoSatelliteInfo::SatelliteSystem&)(*system));
	return static_cast<int>(_ret);
}

bool QNmeaSatelliteInfoSource_virtualbase_event(VirtualQNmeaSatelliteInfoSource* self, QEvent* event) {

	return self->QNmeaSatelliteInfoSource::event(event);
}

bool QNmeaSatelliteInfoSource_virtualbase_eventFilter(VirtualQNmeaSatelliteInfoSource* self, QObject* watched, QEvent* event) {

	return self->QNmeaSatelliteInfoSource::eventFilter(watched, event);
}

void QNmeaSatelliteInfoSource_virtualbase_timerEvent(VirtualQNmeaSatelliteInfoSource* self, QTimerEvent* event) {

	self->QNmeaSatelliteInfoSource::timerEvent(event);
}

void QNmeaSatelliteInfoSource_virtualbase_childEvent(VirtualQNmeaSatelliteInfoSource* self, QChildEvent* event) {

	self->QNmeaSatelliteInfoSource::childEvent(event);
}

void QNmeaSatelliteInfoSource_virtualbase_customEvent(VirtualQNmeaSatelliteInfoSource* self, QEvent* event) {

	self->QNmeaSatelliteInfoSource::customEvent(event);
}

void QNmeaSatelliteInfoSource_virtualbase_connectNotify(VirtualQNmeaSatelliteInfoSource* self, QMetaMethod* signal) {

	self->QNmeaSatelliteInfoSource::connectNotify(*signal);
}

void QNmeaSatelliteInfoSource_virtualbase_disconnectNotify(VirtualQNmeaSatelliteInfoSource* self, QMetaMethod* signal) {

	self->QNmeaSatelliteInfoSource::disconnectNotify(*signal);
}

void QNmeaSatelliteInfoSource_protectedbase_setError(VirtualQNmeaSatelliteInfoSource* self, int satelliteError) {
	self->setError(static_cast<VirtualQNmeaSatelliteInfoSource::Error>(satelliteError));
}

QObject* QNmeaSatelliteInfoSource_protectedbase_sender(const VirtualQNmeaSatelliteInfoSource* self) {
	return self->sender();
}

int QNmeaSatelliteInfoSource_protectedbase_senderSignalIndex(const VirtualQNmeaSatelliteInfoSource* self) {
	return self->senderSignalIndex();
}

int QNmeaSatelliteInfoSource_protectedbase_receivers(const VirtualQNmeaSatelliteInfoSource* self, const char* signal) {
	return self->receivers(signal);
}

bool QNmeaSatelliteInfoSource_protectedbase_isSignalConnected(const VirtualQNmeaSatelliteInfoSource* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QNmeaSatelliteInfoSource_delete(QNmeaSatelliteInfoSource* self) {
	delete self;
}

