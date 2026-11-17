#include <QChildEvent>
#include <QEvent>
#include <QGeoSatelliteInfo>
#include <QGeoSatelliteInfoSource>
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
#include <qgeosatelliteinfosource.h>
#include "gen_qgeosatelliteinfosource.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQGeoSatelliteInfoSource final : public QGeoSatelliteInfoSource {
	const QGeoSatelliteInfoSource_VTable* vtbl;
public:
	friend void* QGeoSatelliteInfoSource_vdata(VirtualQGeoSatelliteInfoSource* self);
	friend VirtualQGeoSatelliteInfoSource* vdata_QGeoSatelliteInfoSource(void* vdata);

	VirtualQGeoSatelliteInfoSource(const QGeoSatelliteInfoSource_VTable* vtbl, QObject* parent): QGeoSatelliteInfoSource(parent), vtbl(vtbl) {}

	virtual ~VirtualQGeoSatelliteInfoSource() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGeoSatelliteInfoSource::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QGeoSatelliteInfoSource_virtualbase_metaObject(const VirtualQGeoSatelliteInfoSource* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGeoSatelliteInfoSource::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QGeoSatelliteInfoSource_virtualbase_metacast(VirtualQGeoSatelliteInfoSource* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGeoSatelliteInfoSource::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QGeoSatelliteInfoSource_virtualbase_metacall(VirtualQGeoSatelliteInfoSource* self, int param1, int param2, void** param3);

	virtual void setUpdateInterval(int msec) override {
		if (vtbl->setUpdateInterval == 0) {
			QGeoSatelliteInfoSource::setUpdateInterval(msec);
			return;
		}

		int sigval1 = msec;
		vtbl->setUpdateInterval(this, sigval1);
	}

	friend void QGeoSatelliteInfoSource_virtualbase_setUpdateInterval(VirtualQGeoSatelliteInfoSource* self, int msec);

	virtual int minimumUpdateInterval() const override {
		if (vtbl->minimumUpdateInterval == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->minimumUpdateInterval(this);
		return static_cast<int>(callback_return_value);
	}

	virtual QGeoSatelliteInfoSource::Error error() const override {
		if (vtbl->error == 0) {
			return (QGeoSatelliteInfoSource::Error)(0); // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->error(this);
		return static_cast<QGeoSatelliteInfoSource::Error>(callback_return_value);
	}

	virtual bool setBackendProperty(const QString& name, const QVariant& value) override {
		if (vtbl->setBackendProperty == 0) {
			return QGeoSatelliteInfoSource::setBackendProperty(name, value);
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

	friend bool QGeoSatelliteInfoSource_virtualbase_setBackendProperty(VirtualQGeoSatelliteInfoSource* self, struct seaqt_string name, QVariant* value);

	virtual QVariant backendProperty(const QString& name) const override {
		if (vtbl->backendProperty == 0) {
			return QGeoSatelliteInfoSource::backendProperty(name);
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

	friend QVariant* QGeoSatelliteInfoSource_virtualbase_backendProperty(const VirtualQGeoSatelliteInfoSource* self, struct seaqt_string name);

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
			return QGeoSatelliteInfoSource::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QGeoSatelliteInfoSource_virtualbase_event(VirtualQGeoSatelliteInfoSource* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGeoSatelliteInfoSource::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QGeoSatelliteInfoSource_virtualbase_eventFilter(VirtualQGeoSatelliteInfoSource* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGeoSatelliteInfoSource::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QGeoSatelliteInfoSource_virtualbase_timerEvent(VirtualQGeoSatelliteInfoSource* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGeoSatelliteInfoSource::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QGeoSatelliteInfoSource_virtualbase_childEvent(VirtualQGeoSatelliteInfoSource* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGeoSatelliteInfoSource::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QGeoSatelliteInfoSource_virtualbase_customEvent(VirtualQGeoSatelliteInfoSource* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGeoSatelliteInfoSource::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QGeoSatelliteInfoSource_virtualbase_connectNotify(VirtualQGeoSatelliteInfoSource* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGeoSatelliteInfoSource::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QGeoSatelliteInfoSource_virtualbase_disconnectNotify(VirtualQGeoSatelliteInfoSource* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QGeoSatelliteInfoSource_protectedbase_sender(const VirtualQGeoSatelliteInfoSource* self);
	friend int QGeoSatelliteInfoSource_protectedbase_senderSignalIndex(const VirtualQGeoSatelliteInfoSource* self);
	friend int QGeoSatelliteInfoSource_protectedbase_receivers(const VirtualQGeoSatelliteInfoSource* self, const char* signal);
	friend bool QGeoSatelliteInfoSource_protectedbase_isSignalConnected(const VirtualQGeoSatelliteInfoSource* self, QMetaMethod* signal);
};

VirtualQGeoSatelliteInfoSource* QGeoSatelliteInfoSource_new(const QGeoSatelliteInfoSource_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQGeoSatelliteInfoSource>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQGeoSatelliteInfoSource(vtbl, parent) : nullptr;
}

void QGeoSatelliteInfoSource_virtbase(QGeoSatelliteInfoSource* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QGeoSatelliteInfoSource_metaObject(const QGeoSatelliteInfoSource* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGeoSatelliteInfoSource_metacast(QGeoSatelliteInfoSource* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGeoSatelliteInfoSource_metacall(QGeoSatelliteInfoSource* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QGeoSatelliteInfoSource_tr_s(const char* s) {
	QString _ret = QGeoSatelliteInfoSource::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QGeoSatelliteInfoSource* QGeoSatelliteInfoSource_createDefaultSource_QObject(QObject* parent) {
	return QGeoSatelliteInfoSource::createDefaultSource(parent);
}

QGeoSatelliteInfoSource* QGeoSatelliteInfoSource_createSource_QString_QObject(struct seaqt_string sourceName, QObject* parent) {
	QString sourceName_QString = QString::fromUtf8(sourceName.data, sourceName.len);
	return QGeoSatelliteInfoSource::createSource(sourceName_QString, parent);
}

QGeoSatelliteInfoSource* QGeoSatelliteInfoSource_createDefaultSource_QVariantMap_QObject(struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters, QObject* parent) {
	QVariantMap parameters_QMap;
	struct seaqt_string* parameters_karr = static_cast<struct seaqt_string*>(parameters.keys);
	QVariant** parameters_varr = static_cast<QVariant**>(parameters.values);
	for(size_t i = 0; i < parameters.len; ++i) {
		QString parameters_karr_i_QString = QString::fromUtf8(parameters_karr[i].data, parameters_karr[i].len);
		parameters_QMap[parameters_karr_i_QString] = *(parameters_varr[i]);
	}
	return QGeoSatelliteInfoSource::createDefaultSource(parameters_QMap, parent);
}

QGeoSatelliteInfoSource* QGeoSatelliteInfoSource_createSource_QString_QVariantMap_QObject(struct seaqt_string sourceName, struct seaqt_map /* of struct seaqt_string to QVariant* */  parameters, QObject* parent) {
	QString sourceName_QString = QString::fromUtf8(sourceName.data, sourceName.len);
	QVariantMap parameters_QMap;
	struct seaqt_string* parameters_karr = static_cast<struct seaqt_string*>(parameters.keys);
	QVariant** parameters_varr = static_cast<QVariant**>(parameters.values);
	for(size_t i = 0; i < parameters.len; ++i) {
		QString parameters_karr_i_QString = QString::fromUtf8(parameters_karr[i].data, parameters_karr[i].len);
		parameters_QMap[parameters_karr_i_QString] = *(parameters_varr[i]);
	}
	return QGeoSatelliteInfoSource::createSource(sourceName_QString, parameters_QMap, parent);
}

struct seaqt_array /* of struct seaqt_string */  QGeoSatelliteInfoSource_availableSources() {
	QStringList _ret = QGeoSatelliteInfoSource::availableSources();
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

struct seaqt_string QGeoSatelliteInfoSource_sourceName(const QGeoSatelliteInfoSource* self) {
	QString _ret = self->sourceName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGeoSatelliteInfoSource_setUpdateInterval(QGeoSatelliteInfoSource* self, int msec) {
	self->setUpdateInterval(static_cast<int>(msec));
}

int QGeoSatelliteInfoSource_updateInterval(const QGeoSatelliteInfoSource* self) {
	return self->updateInterval();
}

int QGeoSatelliteInfoSource_minimumUpdateInterval(const QGeoSatelliteInfoSource* self) {
	return self->minimumUpdateInterval();
}

int QGeoSatelliteInfoSource_error(const QGeoSatelliteInfoSource* self) {
	QGeoSatelliteInfoSource::Error _ret = self->error();
	return static_cast<int>(_ret);
}

bool QGeoSatelliteInfoSource_setBackendProperty(QGeoSatelliteInfoSource* self, struct seaqt_string name, QVariant* value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->setBackendProperty(name_QString, *value);
}

QVariant* QGeoSatelliteInfoSource_backendProperty(const QGeoSatelliteInfoSource* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new QVariant(self->backendProperty(name_QString));
}

void QGeoSatelliteInfoSource_startUpdates(QGeoSatelliteInfoSource* self) {
	self->startUpdates();
}

void QGeoSatelliteInfoSource_stopUpdates(QGeoSatelliteInfoSource* self) {
	self->stopUpdates();
}

void QGeoSatelliteInfoSource_requestUpdate(QGeoSatelliteInfoSource* self, int timeout) {
	self->requestUpdate(static_cast<int>(timeout));
}

void QGeoSatelliteInfoSource_satellitesInViewUpdated(QGeoSatelliteInfoSource* self, struct seaqt_array /* of QGeoSatelliteInfo* */  satellites) {
	QList<QGeoSatelliteInfo> satellites_QList;
	satellites_QList.reserve(satellites.len);
	QGeoSatelliteInfo** satellites_arr = static_cast<QGeoSatelliteInfo**>(satellites.data);
	for(size_t i = 0; i < satellites.len; ++i) {
		satellites_QList.push_back(*(satellites_arr[i]));
	}
	self->satellitesInViewUpdated(satellites_QList);
}

void QGeoSatelliteInfoSource_connect_satellitesInViewUpdated(QGeoSatelliteInfoSource* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_array /* of QGeoSatelliteInfo* */ ), void (*release)(intptr_t)) {
	QGeoSatelliteInfoSource::connect(self, static_cast<void (QGeoSatelliteInfoSource::*)(const QList<QGeoSatelliteInfo>&)>(&QGeoSatelliteInfoSource::satellitesInViewUpdated), self, [callback, release = seaqt::release_callback{slot,release}](const QList<QGeoSatelliteInfo>& satellites) {
			const QList<QGeoSatelliteInfo>& satellites_ret = satellites;
			// Convert QList<> from C++ memory to manually-managed C memory
			QGeoSatelliteInfo** satellites_arr = static_cast<QGeoSatelliteInfo**>(malloc(sizeof(QGeoSatelliteInfo*) * satellites_ret.length()));
			for (size_t i = 0, e = satellites_ret.length(); i < e; ++i) {
				satellites_arr[i] = new QGeoSatelliteInfo(satellites_ret[i]);
			}
			struct seaqt_array satellites_out;
			satellites_out.len = satellites_ret.length();
			satellites_out.data = static_cast<void*>(satellites_arr);
			struct seaqt_array /* of QGeoSatelliteInfo* */  sigval1 = satellites_out;
			callback(release.slot, sigval1);
	});
}

void QGeoSatelliteInfoSource_satellitesInUseUpdated(QGeoSatelliteInfoSource* self, struct seaqt_array /* of QGeoSatelliteInfo* */  satellites) {
	QList<QGeoSatelliteInfo> satellites_QList;
	satellites_QList.reserve(satellites.len);
	QGeoSatelliteInfo** satellites_arr = static_cast<QGeoSatelliteInfo**>(satellites.data);
	for(size_t i = 0; i < satellites.len; ++i) {
		satellites_QList.push_back(*(satellites_arr[i]));
	}
	self->satellitesInUseUpdated(satellites_QList);
}

void QGeoSatelliteInfoSource_connect_satellitesInUseUpdated(QGeoSatelliteInfoSource* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_array /* of QGeoSatelliteInfo* */ ), void (*release)(intptr_t)) {
	QGeoSatelliteInfoSource::connect(self, static_cast<void (QGeoSatelliteInfoSource::*)(const QList<QGeoSatelliteInfo>&)>(&QGeoSatelliteInfoSource::satellitesInUseUpdated), self, [callback, release = seaqt::release_callback{slot,release}](const QList<QGeoSatelliteInfo>& satellites) {
			const QList<QGeoSatelliteInfo>& satellites_ret = satellites;
			// Convert QList<> from C++ memory to manually-managed C memory
			QGeoSatelliteInfo** satellites_arr = static_cast<QGeoSatelliteInfo**>(malloc(sizeof(QGeoSatelliteInfo*) * satellites_ret.length()));
			for (size_t i = 0, e = satellites_ret.length(); i < e; ++i) {
				satellites_arr[i] = new QGeoSatelliteInfo(satellites_ret[i]);
			}
			struct seaqt_array satellites_out;
			satellites_out.len = satellites_ret.length();
			satellites_out.data = static_cast<void*>(satellites_arr);
			struct seaqt_array /* of QGeoSatelliteInfo* */  sigval1 = satellites_out;
			callback(release.slot, sigval1);
	});
}

void QGeoSatelliteInfoSource_errorOccurred(QGeoSatelliteInfoSource* self, int param1) {
	self->errorOccurred(static_cast<QGeoSatelliteInfoSource::Error>(param1));
}

void QGeoSatelliteInfoSource_connect_errorOccurred(QGeoSatelliteInfoSource* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QGeoSatelliteInfoSource::connect(self, static_cast<void (QGeoSatelliteInfoSource::*)(QGeoSatelliteInfoSource::Error)>(&QGeoSatelliteInfoSource::errorOccurred), self, [callback, release = seaqt::release_callback{slot,release}](QGeoSatelliteInfoSource::Error param1) {
			QGeoSatelliteInfoSource::Error param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QGeoSatelliteInfoSource_tr_s_c(const char* s, const char* c) {
	QString _ret = QGeoSatelliteInfoSource::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QGeoSatelliteInfoSource_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QGeoSatelliteInfoSource::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QGeoSatelliteInfoSource_staticMetaObject() { return &QGeoSatelliteInfoSource::staticMetaObject; }
void* QGeoSatelliteInfoSource_vdata(VirtualQGeoSatelliteInfoSource* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQGeoSatelliteInfoSource>()); }
VirtualQGeoSatelliteInfoSource* vdata_QGeoSatelliteInfoSource(void* vdata) { return reinterpret_cast<VirtualQGeoSatelliteInfoSource*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQGeoSatelliteInfoSource>()); }

QMetaObject* QGeoSatelliteInfoSource_virtualbase_metaObject(const VirtualQGeoSatelliteInfoSource* self) {

	return (QMetaObject*) self->QGeoSatelliteInfoSource::metaObject();
}

void* QGeoSatelliteInfoSource_virtualbase_metacast(VirtualQGeoSatelliteInfoSource* self, const char* param1) {

	return self->QGeoSatelliteInfoSource::qt_metacast(param1);
}

int QGeoSatelliteInfoSource_virtualbase_metacall(VirtualQGeoSatelliteInfoSource* self, int param1, int param2, void** param3) {

	return self->QGeoSatelliteInfoSource::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QGeoSatelliteInfoSource_virtualbase_setUpdateInterval(VirtualQGeoSatelliteInfoSource* self, int msec) {

	self->QGeoSatelliteInfoSource::setUpdateInterval(static_cast<int>(msec));
}

bool QGeoSatelliteInfoSource_virtualbase_setBackendProperty(VirtualQGeoSatelliteInfoSource* self, struct seaqt_string name, QVariant* value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QGeoSatelliteInfoSource::setBackendProperty(name_QString, *value);
}

QVariant* QGeoSatelliteInfoSource_virtualbase_backendProperty(const VirtualQGeoSatelliteInfoSource* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return new QVariant(self->QGeoSatelliteInfoSource::backendProperty(name_QString));
}

bool QGeoSatelliteInfoSource_virtualbase_event(VirtualQGeoSatelliteInfoSource* self, QEvent* event) {

	return self->QGeoSatelliteInfoSource::event(event);
}

bool QGeoSatelliteInfoSource_virtualbase_eventFilter(VirtualQGeoSatelliteInfoSource* self, QObject* watched, QEvent* event) {

	return self->QGeoSatelliteInfoSource::eventFilter(watched, event);
}

void QGeoSatelliteInfoSource_virtualbase_timerEvent(VirtualQGeoSatelliteInfoSource* self, QTimerEvent* event) {

	self->QGeoSatelliteInfoSource::timerEvent(event);
}

void QGeoSatelliteInfoSource_virtualbase_childEvent(VirtualQGeoSatelliteInfoSource* self, QChildEvent* event) {

	self->QGeoSatelliteInfoSource::childEvent(event);
}

void QGeoSatelliteInfoSource_virtualbase_customEvent(VirtualQGeoSatelliteInfoSource* self, QEvent* event) {

	self->QGeoSatelliteInfoSource::customEvent(event);
}

void QGeoSatelliteInfoSource_virtualbase_connectNotify(VirtualQGeoSatelliteInfoSource* self, QMetaMethod* signal) {

	self->QGeoSatelliteInfoSource::connectNotify(*signal);
}

void QGeoSatelliteInfoSource_virtualbase_disconnectNotify(VirtualQGeoSatelliteInfoSource* self, QMetaMethod* signal) {

	self->QGeoSatelliteInfoSource::disconnectNotify(*signal);
}

QObject* QGeoSatelliteInfoSource_protectedbase_sender(const VirtualQGeoSatelliteInfoSource* self) {
	return self->sender();
}

int QGeoSatelliteInfoSource_protectedbase_senderSignalIndex(const VirtualQGeoSatelliteInfoSource* self) {
	return self->senderSignalIndex();
}

int QGeoSatelliteInfoSource_protectedbase_receivers(const VirtualQGeoSatelliteInfoSource* self, const char* signal) {
	return self->receivers(signal);
}

bool QGeoSatelliteInfoSource_protectedbase_isSignalConnected(const VirtualQGeoSatelliteInfoSource* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGeoSatelliteInfoSource_delete(QGeoSatelliteInfoSource* self) {
	delete self;
}

