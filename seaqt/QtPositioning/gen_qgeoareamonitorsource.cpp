#include <QChildEvent>
#include <QEvent>
#include <QGeoAreaMonitorInfo>
#include <QGeoAreaMonitorSource>
#include <QGeoPositionInfo>
#include <QGeoPositionInfoSource>
#include <QGeoShape>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qgeoareamonitorsource.h>
#include "gen_qgeoareamonitorsource.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQGeoAreaMonitorSource final : public QGeoAreaMonitorSource {
	const QGeoAreaMonitorSource_VTable* vtbl;
public:
	friend void* QGeoAreaMonitorSource_vdata(VirtualQGeoAreaMonitorSource* self);
	friend VirtualQGeoAreaMonitorSource* vdata_QGeoAreaMonitorSource(void* vdata);

	VirtualQGeoAreaMonitorSource(const QGeoAreaMonitorSource_VTable* vtbl, QObject* parent): QGeoAreaMonitorSource(parent), vtbl(vtbl) {}

	virtual ~VirtualQGeoAreaMonitorSource() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGeoAreaMonitorSource::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QGeoAreaMonitorSource_virtualbase_metaObject(const VirtualQGeoAreaMonitorSource* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGeoAreaMonitorSource::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QGeoAreaMonitorSource_virtualbase_metacast(VirtualQGeoAreaMonitorSource* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGeoAreaMonitorSource::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QGeoAreaMonitorSource_virtualbase_metacall(VirtualQGeoAreaMonitorSource* self, int param1, int param2, void** param3);

	virtual void setPositionInfoSource(QGeoPositionInfoSource* source) override {
		if (vtbl->setPositionInfoSource == 0) {
			QGeoAreaMonitorSource::setPositionInfoSource(source);
			return;
		}

		QGeoPositionInfoSource* sigval1 = source;
		vtbl->setPositionInfoSource(this, sigval1);
	}

	friend void QGeoAreaMonitorSource_virtualbase_setPositionInfoSource(VirtualQGeoAreaMonitorSource* self, QGeoPositionInfoSource* source);

	virtual QGeoPositionInfoSource* positionInfoSource() const override {
		if (vtbl->positionInfoSource == 0) {
			return QGeoAreaMonitorSource::positionInfoSource();
		}

		QGeoPositionInfoSource* callback_return_value = vtbl->positionInfoSource(this);
		return callback_return_value;
	}

	friend QGeoPositionInfoSource* QGeoAreaMonitorSource_virtualbase_positionInfoSource(const VirtualQGeoAreaMonitorSource* self);

	virtual QGeoAreaMonitorSource::Error error() const override {
		if (vtbl->error == 0) {
			return (QGeoAreaMonitorSource::Error)(0); // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->error(this);
		return static_cast<QGeoAreaMonitorSource::Error>(callback_return_value);
	}

	virtual QGeoAreaMonitorSource::AreaMonitorFeatures supportedAreaMonitorFeatures() const override {
		if (vtbl->supportedAreaMonitorFeatures == 0) {
			return QGeoAreaMonitorSource::AreaMonitorFeatures(); // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->supportedAreaMonitorFeatures(this);
		return static_cast<QGeoAreaMonitorSource::AreaMonitorFeatures>(callback_return_value);
	}

	virtual bool startMonitoring(const QGeoAreaMonitorInfo& monitor) override {
		if (vtbl->startMonitoring == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		const QGeoAreaMonitorInfo& monitor_ret = monitor;
		// Cast returned reference into pointer
		QGeoAreaMonitorInfo* sigval1 = const_cast<QGeoAreaMonitorInfo*>(&monitor_ret);
		bool callback_return_value = vtbl->startMonitoring(this, sigval1);
		return callback_return_value;
	}

	virtual bool stopMonitoring(const QGeoAreaMonitorInfo& monitor) override {
		if (vtbl->stopMonitoring == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		const QGeoAreaMonitorInfo& monitor_ret = monitor;
		// Cast returned reference into pointer
		QGeoAreaMonitorInfo* sigval1 = const_cast<QGeoAreaMonitorInfo*>(&monitor_ret);
		bool callback_return_value = vtbl->stopMonitoring(this, sigval1);
		return callback_return_value;
	}

	virtual bool requestUpdate(const QGeoAreaMonitorInfo& monitor, const char* signal) override {
		if (vtbl->requestUpdate == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		const QGeoAreaMonitorInfo& monitor_ret = monitor;
		// Cast returned reference into pointer
		QGeoAreaMonitorInfo* sigval1 = const_cast<QGeoAreaMonitorInfo*>(&monitor_ret);
		const char* sigval2 = (const char*) signal;
		bool callback_return_value = vtbl->requestUpdate(this, sigval1, sigval2);
		return callback_return_value;
	}

	virtual QList<QGeoAreaMonitorInfo> activeMonitors() const override {
		if (vtbl->activeMonitors == 0) {
			return QList<QGeoAreaMonitorInfo>(); // Pure virtual, there is no base we can call
		}

		struct seaqt_array /* of QGeoAreaMonitorInfo* */  callback_return_value = vtbl->activeMonitors(this);
		QList<QGeoAreaMonitorInfo> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QGeoAreaMonitorInfo** callback_return_value_arr = static_cast<QGeoAreaMonitorInfo**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}
		free(callback_return_value.data);
		return callback_return_value_QList;
	}

	virtual QList<QGeoAreaMonitorInfo> activeMonitors(const QGeoShape& lookupArea) const override {
		if (vtbl->activeMonitors_lookupArea == 0) {
			return QList<QGeoAreaMonitorInfo>(); // Pure virtual, there is no base we can call
		}

		const QGeoShape& lookupArea_ret = lookupArea;
		// Cast returned reference into pointer
		QGeoShape* sigval1 = const_cast<QGeoShape*>(&lookupArea_ret);
		struct seaqt_array /* of QGeoAreaMonitorInfo* */  callback_return_value = vtbl->activeMonitors_lookupArea(this, sigval1);
		QList<QGeoAreaMonitorInfo> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QGeoAreaMonitorInfo** callback_return_value_arr = static_cast<QGeoAreaMonitorInfo**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}
		free(callback_return_value.data);
		return callback_return_value_QList;
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGeoAreaMonitorSource::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QGeoAreaMonitorSource_virtualbase_event(VirtualQGeoAreaMonitorSource* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGeoAreaMonitorSource::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QGeoAreaMonitorSource_virtualbase_eventFilter(VirtualQGeoAreaMonitorSource* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGeoAreaMonitorSource::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QGeoAreaMonitorSource_virtualbase_timerEvent(VirtualQGeoAreaMonitorSource* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGeoAreaMonitorSource::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QGeoAreaMonitorSource_virtualbase_childEvent(VirtualQGeoAreaMonitorSource* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGeoAreaMonitorSource::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QGeoAreaMonitorSource_virtualbase_customEvent(VirtualQGeoAreaMonitorSource* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGeoAreaMonitorSource::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QGeoAreaMonitorSource_virtualbase_connectNotify(VirtualQGeoAreaMonitorSource* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGeoAreaMonitorSource::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QGeoAreaMonitorSource_virtualbase_disconnectNotify(VirtualQGeoAreaMonitorSource* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QGeoAreaMonitorSource_protectedbase_sender(const VirtualQGeoAreaMonitorSource* self);
	friend int QGeoAreaMonitorSource_protectedbase_senderSignalIndex(const VirtualQGeoAreaMonitorSource* self);
	friend int QGeoAreaMonitorSource_protectedbase_receivers(const VirtualQGeoAreaMonitorSource* self, const char* signal);
	friend bool QGeoAreaMonitorSource_protectedbase_isSignalConnected(const VirtualQGeoAreaMonitorSource* self, QMetaMethod* signal);
};

VirtualQGeoAreaMonitorSource* QGeoAreaMonitorSource_new(const QGeoAreaMonitorSource_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQGeoAreaMonitorSource>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQGeoAreaMonitorSource(vtbl, parent) : nullptr;
}

void QGeoAreaMonitorSource_virtbase(QGeoAreaMonitorSource* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QGeoAreaMonitorSource_metaObject(const QGeoAreaMonitorSource* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGeoAreaMonitorSource_metacast(QGeoAreaMonitorSource* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGeoAreaMonitorSource_metacall(QGeoAreaMonitorSource* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QGeoAreaMonitorSource_tr_s(const char* s) {
	QString _ret = QGeoAreaMonitorSource::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QGeoAreaMonitorSource_trUtf8_s(const char* s) {
	QString _ret = QGeoAreaMonitorSource::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QGeoAreaMonitorSource* QGeoAreaMonitorSource_createDefaultSource(QObject* parent) {
	return QGeoAreaMonitorSource::createDefaultSource(parent);
}

QGeoAreaMonitorSource* QGeoAreaMonitorSource_createSource(struct seaqt_string sourceName, QObject* parent) {
	QString sourceName_QString = QString::fromUtf8(sourceName.data, sourceName.len);
	return QGeoAreaMonitorSource::createSource(sourceName_QString, parent);
}

struct seaqt_array /* of struct seaqt_string */  QGeoAreaMonitorSource_availableSources() {
	QStringList _ret = QGeoAreaMonitorSource::availableSources();
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

void QGeoAreaMonitorSource_setPositionInfoSource(QGeoAreaMonitorSource* self, QGeoPositionInfoSource* source) {
	self->setPositionInfoSource(source);
}

QGeoPositionInfoSource* QGeoAreaMonitorSource_positionInfoSource(const QGeoAreaMonitorSource* self) {
	return self->positionInfoSource();
}

struct seaqt_string QGeoAreaMonitorSource_sourceName(const QGeoAreaMonitorSource* self) {
	QString _ret = self->sourceName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QGeoAreaMonitorSource_error(const QGeoAreaMonitorSource* self) {
	QGeoAreaMonitorSource::Error _ret = self->error();
	return static_cast<int>(_ret);
}

int QGeoAreaMonitorSource_supportedAreaMonitorFeatures(const QGeoAreaMonitorSource* self) {
	QGeoAreaMonitorSource::AreaMonitorFeatures _ret = self->supportedAreaMonitorFeatures();
	return static_cast<int>(_ret);
}

bool QGeoAreaMonitorSource_startMonitoring(QGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor) {
	return self->startMonitoring(*monitor);
}

bool QGeoAreaMonitorSource_stopMonitoring(QGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor) {
	return self->stopMonitoring(*monitor);
}

bool QGeoAreaMonitorSource_requestUpdate(QGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor, const char* signal) {
	return self->requestUpdate(*monitor, signal);
}

struct seaqt_array /* of QGeoAreaMonitorInfo* */  QGeoAreaMonitorSource_activeMonitors(const QGeoAreaMonitorSource* self) {
	QList<QGeoAreaMonitorInfo> _ret = self->activeMonitors();
	// Convert QList<> from C++ memory to manually-managed C memory
	QGeoAreaMonitorInfo** _arr = static_cast<QGeoAreaMonitorInfo**>(malloc(sizeof(QGeoAreaMonitorInfo*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QGeoAreaMonitorInfo(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of QGeoAreaMonitorInfo* */  QGeoAreaMonitorSource_activeMonitors_lookupArea(const QGeoAreaMonitorSource* self, QGeoShape* lookupArea) {
	QList<QGeoAreaMonitorInfo> _ret = self->activeMonitors(*lookupArea);
	// Convert QList<> from C++ memory to manually-managed C memory
	QGeoAreaMonitorInfo** _arr = static_cast<QGeoAreaMonitorInfo**>(malloc(sizeof(QGeoAreaMonitorInfo*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QGeoAreaMonitorInfo(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QGeoAreaMonitorSource_areaEntered(QGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor, QGeoPositionInfo* update) {
	self->areaEntered(*monitor, *update);
}

void QGeoAreaMonitorSource_connect_areaEntered(QGeoAreaMonitorSource* self, intptr_t slot, void (*callback)(intptr_t, QGeoAreaMonitorInfo*, QGeoPositionInfo*), void (*release)(intptr_t)) {
	QGeoAreaMonitorSource::connect(self, static_cast<void (QGeoAreaMonitorSource::*)(const QGeoAreaMonitorInfo&, const QGeoPositionInfo&)>(&QGeoAreaMonitorSource::areaEntered), self, [callback, release = seaqt::release_callback{slot,release}](const QGeoAreaMonitorInfo& monitor, const QGeoPositionInfo& update) {
			const QGeoAreaMonitorInfo& monitor_ret = monitor;
			// Cast returned reference into pointer
			QGeoAreaMonitorInfo* sigval1 = const_cast<QGeoAreaMonitorInfo*>(&monitor_ret);
			const QGeoPositionInfo& update_ret = update;
			// Cast returned reference into pointer
			QGeoPositionInfo* sigval2 = const_cast<QGeoPositionInfo*>(&update_ret);
			callback(release.slot, sigval1, sigval2);
	});
}

void QGeoAreaMonitorSource_areaExited(QGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor, QGeoPositionInfo* update) {
	self->areaExited(*monitor, *update);
}

void QGeoAreaMonitorSource_connect_areaExited(QGeoAreaMonitorSource* self, intptr_t slot, void (*callback)(intptr_t, QGeoAreaMonitorInfo*, QGeoPositionInfo*), void (*release)(intptr_t)) {
	QGeoAreaMonitorSource::connect(self, static_cast<void (QGeoAreaMonitorSource::*)(const QGeoAreaMonitorInfo&, const QGeoPositionInfo&)>(&QGeoAreaMonitorSource::areaExited), self, [callback, release = seaqt::release_callback{slot,release}](const QGeoAreaMonitorInfo& monitor, const QGeoPositionInfo& update) {
			const QGeoAreaMonitorInfo& monitor_ret = monitor;
			// Cast returned reference into pointer
			QGeoAreaMonitorInfo* sigval1 = const_cast<QGeoAreaMonitorInfo*>(&monitor_ret);
			const QGeoPositionInfo& update_ret = update;
			// Cast returned reference into pointer
			QGeoPositionInfo* sigval2 = const_cast<QGeoPositionInfo*>(&update_ret);
			callback(release.slot, sigval1, sigval2);
	});
}

void QGeoAreaMonitorSource_monitorExpired(QGeoAreaMonitorSource* self, QGeoAreaMonitorInfo* monitor) {
	self->monitorExpired(*monitor);
}

void QGeoAreaMonitorSource_connect_monitorExpired(QGeoAreaMonitorSource* self, intptr_t slot, void (*callback)(intptr_t, QGeoAreaMonitorInfo*), void (*release)(intptr_t)) {
	QGeoAreaMonitorSource::connect(self, static_cast<void (QGeoAreaMonitorSource::*)(const QGeoAreaMonitorInfo&)>(&QGeoAreaMonitorSource::monitorExpired), self, [callback, release = seaqt::release_callback{slot,release}](const QGeoAreaMonitorInfo& monitor) {
			const QGeoAreaMonitorInfo& monitor_ret = monitor;
			// Cast returned reference into pointer
			QGeoAreaMonitorInfo* sigval1 = const_cast<QGeoAreaMonitorInfo*>(&monitor_ret);
			callback(release.slot, sigval1);
	});
}

void QGeoAreaMonitorSource_error_error(QGeoAreaMonitorSource* self, int error) {
	self->error(static_cast<QGeoAreaMonitorSource::Error>(error));
}

void QGeoAreaMonitorSource_connect_error_error(QGeoAreaMonitorSource* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QGeoAreaMonitorSource::connect(self, static_cast<void (QGeoAreaMonitorSource::*)(QGeoAreaMonitorSource::Error)>(&QGeoAreaMonitorSource::error), self, [callback, release = seaqt::release_callback{slot,release}](QGeoAreaMonitorSource::Error error) {
			QGeoAreaMonitorSource::Error error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QGeoAreaMonitorSource_tr_s_c(const char* s, const char* c) {
	QString _ret = QGeoAreaMonitorSource::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QGeoAreaMonitorSource_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QGeoAreaMonitorSource::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QGeoAreaMonitorSource_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QGeoAreaMonitorSource::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QGeoAreaMonitorSource_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QGeoAreaMonitorSource::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QGeoAreaMonitorSource_staticMetaObject() { return &QGeoAreaMonitorSource::staticMetaObject; }
void* QGeoAreaMonitorSource_vdata(VirtualQGeoAreaMonitorSource* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQGeoAreaMonitorSource>()); }
VirtualQGeoAreaMonitorSource* vdata_QGeoAreaMonitorSource(void* vdata) { return reinterpret_cast<VirtualQGeoAreaMonitorSource*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQGeoAreaMonitorSource>()); }

QMetaObject* QGeoAreaMonitorSource_virtualbase_metaObject(const VirtualQGeoAreaMonitorSource* self) {

	return (QMetaObject*) self->QGeoAreaMonitorSource::metaObject();
}

void* QGeoAreaMonitorSource_virtualbase_metacast(VirtualQGeoAreaMonitorSource* self, const char* param1) {

	return self->QGeoAreaMonitorSource::qt_metacast(param1);
}

int QGeoAreaMonitorSource_virtualbase_metacall(VirtualQGeoAreaMonitorSource* self, int param1, int param2, void** param3) {

	return self->QGeoAreaMonitorSource::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QGeoAreaMonitorSource_virtualbase_setPositionInfoSource(VirtualQGeoAreaMonitorSource* self, QGeoPositionInfoSource* source) {

	self->QGeoAreaMonitorSource::setPositionInfoSource(source);
}

QGeoPositionInfoSource* QGeoAreaMonitorSource_virtualbase_positionInfoSource(const VirtualQGeoAreaMonitorSource* self) {

	return self->QGeoAreaMonitorSource::positionInfoSource();
}

bool QGeoAreaMonitorSource_virtualbase_event(VirtualQGeoAreaMonitorSource* self, QEvent* event) {

	return self->QGeoAreaMonitorSource::event(event);
}

bool QGeoAreaMonitorSource_virtualbase_eventFilter(VirtualQGeoAreaMonitorSource* self, QObject* watched, QEvent* event) {

	return self->QGeoAreaMonitorSource::eventFilter(watched, event);
}

void QGeoAreaMonitorSource_virtualbase_timerEvent(VirtualQGeoAreaMonitorSource* self, QTimerEvent* event) {

	self->QGeoAreaMonitorSource::timerEvent(event);
}

void QGeoAreaMonitorSource_virtualbase_childEvent(VirtualQGeoAreaMonitorSource* self, QChildEvent* event) {

	self->QGeoAreaMonitorSource::childEvent(event);
}

void QGeoAreaMonitorSource_virtualbase_customEvent(VirtualQGeoAreaMonitorSource* self, QEvent* event) {

	self->QGeoAreaMonitorSource::customEvent(event);
}

void QGeoAreaMonitorSource_virtualbase_connectNotify(VirtualQGeoAreaMonitorSource* self, QMetaMethod* signal) {

	self->QGeoAreaMonitorSource::connectNotify(*signal);
}

void QGeoAreaMonitorSource_virtualbase_disconnectNotify(VirtualQGeoAreaMonitorSource* self, QMetaMethod* signal) {

	self->QGeoAreaMonitorSource::disconnectNotify(*signal);
}

QObject* QGeoAreaMonitorSource_protectedbase_sender(const VirtualQGeoAreaMonitorSource* self) {
	return self->QGeoAreaMonitorSource::sender();
}

int QGeoAreaMonitorSource_protectedbase_senderSignalIndex(const VirtualQGeoAreaMonitorSource* self) {
	return self->QGeoAreaMonitorSource::senderSignalIndex();
}

int QGeoAreaMonitorSource_protectedbase_receivers(const VirtualQGeoAreaMonitorSource* self, const char* signal) {
	return self->QGeoAreaMonitorSource::receivers(signal);
}

bool QGeoAreaMonitorSource_protectedbase_isSignalConnected(const VirtualQGeoAreaMonitorSource* self, QMetaMethod* signal) {
	return self->QGeoAreaMonitorSource::isSignalConnected(*signal);
}

void QGeoAreaMonitorSource_delete(QGeoAreaMonitorSource* self) {
	delete self;
}

