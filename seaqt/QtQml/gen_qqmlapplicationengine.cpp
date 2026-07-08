#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QJSEngine>
#include <QList>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <qqmlapplicationengine.h>
#include "gen_qqmlapplicationengine.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQQmlApplicationEngine final : public QQmlApplicationEngine {
	const QQmlApplicationEngine_VTable* vtbl;
public:
	friend void* QQmlApplicationEngine_vdata(VirtualQQmlApplicationEngine* self);
	friend VirtualQQmlApplicationEngine* vdata_QQmlApplicationEngine(void* vdata);

	VirtualQQmlApplicationEngine(const QQmlApplicationEngine_VTable* vtbl): QQmlApplicationEngine(), vtbl(vtbl) {}
	VirtualQQmlApplicationEngine(const QQmlApplicationEngine_VTable* vtbl, const QUrl& url): QQmlApplicationEngine(url), vtbl(vtbl) {}
	VirtualQQmlApplicationEngine(const QQmlApplicationEngine_VTable* vtbl, const QString& filePath): QQmlApplicationEngine(filePath), vtbl(vtbl) {}
	VirtualQQmlApplicationEngine(const QQmlApplicationEngine_VTable* vtbl, QObject* parent): QQmlApplicationEngine(parent), vtbl(vtbl) {}
	VirtualQQmlApplicationEngine(const QQmlApplicationEngine_VTable* vtbl, const QUrl& url, QObject* parent): QQmlApplicationEngine(url, parent), vtbl(vtbl) {}
	VirtualQQmlApplicationEngine(const QQmlApplicationEngine_VTable* vtbl, const QString& filePath, QObject* parent): QQmlApplicationEngine(filePath, parent), vtbl(vtbl) {}

	virtual ~VirtualQQmlApplicationEngine() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQmlApplicationEngine::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QQmlApplicationEngine_virtualbase_metaObject(const VirtualQQmlApplicationEngine* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQmlApplicationEngine::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QQmlApplicationEngine_virtualbase_metacast(VirtualQQmlApplicationEngine* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQmlApplicationEngine::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QQmlApplicationEngine_virtualbase_metacall(VirtualQQmlApplicationEngine* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QQmlApplicationEngine::event(param1);
		}

		QEvent* sigval1 = param1;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QQmlApplicationEngine_virtualbase_event(VirtualQQmlApplicationEngine* self, QEvent* param1);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQmlApplicationEngine::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QQmlApplicationEngine_virtualbase_eventFilter(VirtualQQmlApplicationEngine* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQmlApplicationEngine::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QQmlApplicationEngine_virtualbase_timerEvent(VirtualQQmlApplicationEngine* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQmlApplicationEngine::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QQmlApplicationEngine_virtualbase_childEvent(VirtualQQmlApplicationEngine* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQmlApplicationEngine::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QQmlApplicationEngine_virtualbase_customEvent(VirtualQQmlApplicationEngine* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQmlApplicationEngine::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QQmlApplicationEngine_virtualbase_connectNotify(VirtualQQmlApplicationEngine* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQmlApplicationEngine::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QQmlApplicationEngine_virtualbase_disconnectNotify(VirtualQQmlApplicationEngine* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQmlApplicationEngine_protectedbase_sender(const VirtualQQmlApplicationEngine* self);
	friend int QQmlApplicationEngine_protectedbase_senderSignalIndex(const VirtualQQmlApplicationEngine* self);
	friend int QQmlApplicationEngine_protectedbase_receivers(const VirtualQQmlApplicationEngine* self, const char* signal);
	friend bool QQmlApplicationEngine_protectedbase_isSignalConnected(const VirtualQQmlApplicationEngine* self, QMetaMethod* signal);
};

VirtualQQmlApplicationEngine* QQmlApplicationEngine_new(const QQmlApplicationEngine_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlApplicationEngine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlApplicationEngine(vtbl) : nullptr;
}

VirtualQQmlApplicationEngine* QQmlApplicationEngine_new_url(const QQmlApplicationEngine_VTable* vtbl, size_t vdata, QUrl* url) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlApplicationEngine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlApplicationEngine(vtbl, *url) : nullptr;
}

VirtualQQmlApplicationEngine* QQmlApplicationEngine_new_filePath(const QQmlApplicationEngine_VTable* vtbl, size_t vdata, struct seaqt_string filePath) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlApplicationEngine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlApplicationEngine(vtbl, filePath_QString) : nullptr;
}

VirtualQQmlApplicationEngine* QQmlApplicationEngine_new_parent(const QQmlApplicationEngine_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlApplicationEngine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlApplicationEngine(vtbl, parent) : nullptr;
}

VirtualQQmlApplicationEngine* QQmlApplicationEngine_new_url_parent(const QQmlApplicationEngine_VTable* vtbl, size_t vdata, QUrl* url, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlApplicationEngine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlApplicationEngine(vtbl, *url, parent) : nullptr;
}

VirtualQQmlApplicationEngine* QQmlApplicationEngine_new_filePath_parent(const QQmlApplicationEngine_VTable* vtbl, size_t vdata, struct seaqt_string filePath, QObject* parent) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlApplicationEngine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlApplicationEngine(vtbl, filePath_QString, parent) : nullptr;
}

void QQmlApplicationEngine_virtbase(QQmlApplicationEngine* src, QQmlEngine** outptr_QQmlEngine) {
	*outptr_QQmlEngine = static_cast<QQmlEngine*>(src);
}

QMetaObject* QQmlApplicationEngine_metaObject(const QQmlApplicationEngine* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQmlApplicationEngine_metacast(QQmlApplicationEngine* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQmlApplicationEngine_metacall(QQmlApplicationEngine* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QQmlApplicationEngine_tr_s(const char* s) {
	QString _ret = QQmlApplicationEngine::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of QObject* */  QQmlApplicationEngine_rootObjects(const QQmlApplicationEngine* self) {
	QList<QObject *> _ret = self->rootObjects();
	// Convert QList<> from C++ memory to manually-managed C memory
	QObject** _arr = static_cast<QObject**>(malloc(sizeof(QObject*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QQmlApplicationEngine_load_url(QQmlApplicationEngine* self, QUrl* url) {
	self->load(*url);
}

void QQmlApplicationEngine_load_filePath(QQmlApplicationEngine* self, struct seaqt_string filePath) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->load(filePath_QString);
}

void QQmlApplicationEngine_setInitialProperties(QQmlApplicationEngine* self, struct seaqt_map /* of struct seaqt_string to QVariant* */  initialProperties) {
	QVariantMap initialProperties_QMap;
	struct seaqt_string* initialProperties_karr = static_cast<struct seaqt_string*>(initialProperties.keys);
	QVariant** initialProperties_varr = static_cast<QVariant**>(initialProperties.values);
	for(size_t i = 0; i < initialProperties.len; ++i) {
		QString initialProperties_karr_i_QString = QString::fromUtf8(initialProperties_karr[i].data, initialProperties_karr[i].len);
		initialProperties_QMap[initialProperties_karr_i_QString] = *(initialProperties_varr[i]);
	}
	self->setInitialProperties(initialProperties_QMap);
}

void QQmlApplicationEngine_setExtraFileSelectors(QQmlApplicationEngine* self, struct seaqt_array /* of struct seaqt_string */  extraFileSelectors) {
	QStringList extraFileSelectors_QList;
	extraFileSelectors_QList.reserve(extraFileSelectors.len);
	struct seaqt_string* extraFileSelectors_arr = static_cast<struct seaqt_string*>(extraFileSelectors.data);
	for(size_t i = 0; i < extraFileSelectors.len; ++i) {
		QString extraFileSelectors_arr_i_QString = QString::fromUtf8(extraFileSelectors_arr[i].data, extraFileSelectors_arr[i].len);
		extraFileSelectors_QList.push_back(extraFileSelectors_arr_i_QString);
	}
	self->setExtraFileSelectors(extraFileSelectors_QList);
}

void QQmlApplicationEngine_loadData_data(QQmlApplicationEngine* self, struct seaqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	self->loadData(data_QByteArray);
}

void QQmlApplicationEngine_objectCreated(QQmlApplicationEngine* self, QObject* object, QUrl* url) {
	self->objectCreated(object, *url);
}

void QQmlApplicationEngine_connect_objectCreated(QQmlApplicationEngine* self, intptr_t slot, void (*callback)(intptr_t, QObject*, QUrl*), void (*release)(intptr_t)) {
	QQmlApplicationEngine::connect(self, static_cast<void (QQmlApplicationEngine::*)(QObject*, const QUrl&)>(&QQmlApplicationEngine::objectCreated), self, [callback, release = seaqt::release_callback{slot,release}](QObject* object, const QUrl& url) {
			QObject* sigval1 = object;
			const QUrl& url_ret = url;
			// Cast returned reference into pointer
			QUrl* sigval2 = const_cast<QUrl*>(&url_ret);
			callback(release.slot, sigval1, sigval2);
	});
}

void QQmlApplicationEngine_objectCreationFailed(QQmlApplicationEngine* self, QUrl* url) {
	self->objectCreationFailed(*url);
}

void QQmlApplicationEngine_connect_objectCreationFailed(QQmlApplicationEngine* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
	QQmlApplicationEngine::connect(self, static_cast<void (QQmlApplicationEngine::*)(const QUrl&)>(&QQmlApplicationEngine::objectCreationFailed), self, [callback, release = seaqt::release_callback{slot,release}](const QUrl& url) {
			const QUrl& url_ret = url;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&url_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QQmlApplicationEngine_tr_s_c(const char* s, const char* c) {
	QString _ret = QQmlApplicationEngine::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQmlApplicationEngine_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QQmlApplicationEngine::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQmlApplicationEngine_loadData_data_url(QQmlApplicationEngine* self, struct seaqt_string data, QUrl* url) {
	QByteArray data_QByteArray(data.data, data.len);
	self->loadData(data_QByteArray, *url);
}

const QMetaObject* QQmlApplicationEngine_staticMetaObject() { return &QQmlApplicationEngine::staticMetaObject; }
void* QQmlApplicationEngine_vdata(VirtualQQmlApplicationEngine* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQQmlApplicationEngine>()); }
VirtualQQmlApplicationEngine* vdata_QQmlApplicationEngine(void* vdata) { return reinterpret_cast<VirtualQQmlApplicationEngine*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQQmlApplicationEngine>()); }

QMetaObject* QQmlApplicationEngine_virtualbase_metaObject(const VirtualQQmlApplicationEngine* self) {

	return (QMetaObject*) self->QQmlApplicationEngine::metaObject();
}

void* QQmlApplicationEngine_virtualbase_metacast(VirtualQQmlApplicationEngine* self, const char* param1) {

	return self->QQmlApplicationEngine::qt_metacast(param1);
}

int QQmlApplicationEngine_virtualbase_metacall(VirtualQQmlApplicationEngine* self, int param1, int param2, void** param3) {

	return self->QQmlApplicationEngine::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QQmlApplicationEngine_virtualbase_event(VirtualQQmlApplicationEngine* self, QEvent* param1) {

	return self->QQmlApplicationEngine::event(param1);
}

bool QQmlApplicationEngine_virtualbase_eventFilter(VirtualQQmlApplicationEngine* self, QObject* watched, QEvent* event) {

	return self->QQmlApplicationEngine::eventFilter(watched, event);
}

void QQmlApplicationEngine_virtualbase_timerEvent(VirtualQQmlApplicationEngine* self, QTimerEvent* event) {

	self->QQmlApplicationEngine::timerEvent(event);
}

void QQmlApplicationEngine_virtualbase_childEvent(VirtualQQmlApplicationEngine* self, QChildEvent* event) {

	self->QQmlApplicationEngine::childEvent(event);
}

void QQmlApplicationEngine_virtualbase_customEvent(VirtualQQmlApplicationEngine* self, QEvent* event) {

	self->QQmlApplicationEngine::customEvent(event);
}

void QQmlApplicationEngine_virtualbase_connectNotify(VirtualQQmlApplicationEngine* self, QMetaMethod* signal) {

	self->QQmlApplicationEngine::connectNotify(*signal);
}

void QQmlApplicationEngine_virtualbase_disconnectNotify(VirtualQQmlApplicationEngine* self, QMetaMethod* signal) {

	self->QQmlApplicationEngine::disconnectNotify(*signal);
}

QObject* QQmlApplicationEngine_protectedbase_sender(const VirtualQQmlApplicationEngine* self) {
	return self->QQmlApplicationEngine::sender();
}

int QQmlApplicationEngine_protectedbase_senderSignalIndex(const VirtualQQmlApplicationEngine* self) {
	return self->QQmlApplicationEngine::senderSignalIndex();
}

int QQmlApplicationEngine_protectedbase_receivers(const VirtualQQmlApplicationEngine* self, const char* signal) {
	return self->QQmlApplicationEngine::receivers(signal);
}

bool QQmlApplicationEngine_protectedbase_isSignalConnected(const VirtualQQmlApplicationEngine* self, QMetaMethod* signal) {
	return self->QQmlApplicationEngine::isSignalConnected(*signal);
}

void QQmlApplicationEngine_delete(QQmlApplicationEngine* self) {
	delete self;
}

