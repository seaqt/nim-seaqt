#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQmlEngine>
#include <QQmlEngineExtensionInterface>
#include <QQmlEngineExtensionPlugin>
#include <QQmlExtensionInterface>
#include <QQmlExtensionPlugin>
#include <QQmlTypesExtensionInterface>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <qqmlextensionplugin.h>
#include "gen_qqmlextensionplugin.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQQmlExtensionPlugin final : public QQmlExtensionPlugin {
	const QQmlExtensionPlugin_VTable* vtbl;
public:
	friend void* QQmlExtensionPlugin_vdata(VirtualQQmlExtensionPlugin* self);
	friend VirtualQQmlExtensionPlugin* vdata_QQmlExtensionPlugin(void* vdata);

	VirtualQQmlExtensionPlugin(const QQmlExtensionPlugin_VTable* vtbl): QQmlExtensionPlugin(), vtbl(vtbl) {}
	VirtualQQmlExtensionPlugin(const QQmlExtensionPlugin_VTable* vtbl, QObject* parent): QQmlExtensionPlugin(parent), vtbl(vtbl) {}

	virtual ~VirtualQQmlExtensionPlugin() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQmlExtensionPlugin::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QQmlExtensionPlugin_virtualbase_metaObject(const VirtualQQmlExtensionPlugin* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQmlExtensionPlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QQmlExtensionPlugin_virtualbase_metacast(VirtualQQmlExtensionPlugin* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQmlExtensionPlugin::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QQmlExtensionPlugin_virtualbase_metacall(VirtualQQmlExtensionPlugin* self, int param1, int param2, void** param3);

	virtual void registerTypes(const char* uri) override {
		if (vtbl->registerTypes == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const char* sigval1 = (const char*) uri;
		vtbl->registerTypes(this, sigval1);
	}

	virtual void initializeEngine(QQmlEngine* engine, const char* uri) override {
		if (vtbl->initializeEngine == 0) {
			QQmlExtensionPlugin::initializeEngine(engine, uri);
			return;
		}

		QQmlEngine* sigval1 = engine;
		const char* sigval2 = (const char*) uri;
		vtbl->initializeEngine(this, sigval1, sigval2);
	}

	friend void QQmlExtensionPlugin_virtualbase_initializeEngine(VirtualQQmlExtensionPlugin* self, QQmlEngine* engine, const char* uri);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQmlExtensionPlugin::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QQmlExtensionPlugin_virtualbase_event(VirtualQQmlExtensionPlugin* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQmlExtensionPlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QQmlExtensionPlugin_virtualbase_eventFilter(VirtualQQmlExtensionPlugin* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQmlExtensionPlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QQmlExtensionPlugin_virtualbase_timerEvent(VirtualQQmlExtensionPlugin* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQmlExtensionPlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QQmlExtensionPlugin_virtualbase_childEvent(VirtualQQmlExtensionPlugin* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQmlExtensionPlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QQmlExtensionPlugin_virtualbase_customEvent(VirtualQQmlExtensionPlugin* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQmlExtensionPlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QQmlExtensionPlugin_virtualbase_connectNotify(VirtualQQmlExtensionPlugin* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQmlExtensionPlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QQmlExtensionPlugin_virtualbase_disconnectNotify(VirtualQQmlExtensionPlugin* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQmlExtensionPlugin_protectedbase_sender(const VirtualQQmlExtensionPlugin* self);
	friend int QQmlExtensionPlugin_protectedbase_senderSignalIndex(const VirtualQQmlExtensionPlugin* self);
	friend int QQmlExtensionPlugin_protectedbase_receivers(const VirtualQQmlExtensionPlugin* self, const char* signal);
	friend bool QQmlExtensionPlugin_protectedbase_isSignalConnected(const VirtualQQmlExtensionPlugin* self, QMetaMethod* signal);
};

VirtualQQmlExtensionPlugin* QQmlExtensionPlugin_new(const QQmlExtensionPlugin_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlExtensionPlugin>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlExtensionPlugin(vtbl) : nullptr;
}

VirtualQQmlExtensionPlugin* QQmlExtensionPlugin_new_parent(const QQmlExtensionPlugin_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlExtensionPlugin>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlExtensionPlugin(vtbl, parent) : nullptr;
}

void QQmlExtensionPlugin_virtbase(QQmlExtensionPlugin* src, QObject** outptr_QObject, QQmlExtensionInterface** outptr_QQmlExtensionInterface) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QQmlExtensionInterface = static_cast<QQmlExtensionInterface*>(src);
}

QMetaObject* QQmlExtensionPlugin_metaObject(const QQmlExtensionPlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQmlExtensionPlugin_metacast(QQmlExtensionPlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQmlExtensionPlugin_metacall(QQmlExtensionPlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QQmlExtensionPlugin_tr_s(const char* s) {
	QString _ret = QQmlExtensionPlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQmlExtensionPlugin_trUtf8_s(const char* s) {
	QString _ret = QQmlExtensionPlugin::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QQmlExtensionPlugin_baseUrl(const QQmlExtensionPlugin* self) {
	return new QUrl(self->baseUrl());
}

void QQmlExtensionPlugin_registerTypes(QQmlExtensionPlugin* self, const char* uri) {
	self->registerTypes(uri);
}

void QQmlExtensionPlugin_initializeEngine(QQmlExtensionPlugin* self, QQmlEngine* engine, const char* uri) {
	self->initializeEngine(engine, uri);
}

struct seaqt_string QQmlExtensionPlugin_tr_s_c(const char* s, const char* c) {
	QString _ret = QQmlExtensionPlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQmlExtensionPlugin_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QQmlExtensionPlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQmlExtensionPlugin_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QQmlExtensionPlugin::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQmlExtensionPlugin_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QQmlExtensionPlugin::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QQmlExtensionPlugin_staticMetaObject() { return &QQmlExtensionPlugin::staticMetaObject; }
void* QQmlExtensionPlugin_vdata(VirtualQQmlExtensionPlugin* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQQmlExtensionPlugin>()); }
VirtualQQmlExtensionPlugin* vdata_QQmlExtensionPlugin(void* vdata) { return reinterpret_cast<VirtualQQmlExtensionPlugin*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQQmlExtensionPlugin>()); }

QMetaObject* QQmlExtensionPlugin_virtualbase_metaObject(const VirtualQQmlExtensionPlugin* self) {

	return (QMetaObject*) self->QQmlExtensionPlugin::metaObject();
}

void* QQmlExtensionPlugin_virtualbase_metacast(VirtualQQmlExtensionPlugin* self, const char* param1) {

	return self->QQmlExtensionPlugin::qt_metacast(param1);
}

int QQmlExtensionPlugin_virtualbase_metacall(VirtualQQmlExtensionPlugin* self, int param1, int param2, void** param3) {

	return self->QQmlExtensionPlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QQmlExtensionPlugin_virtualbase_initializeEngine(VirtualQQmlExtensionPlugin* self, QQmlEngine* engine, const char* uri) {

	self->QQmlExtensionPlugin::initializeEngine(engine, uri);
}

bool QQmlExtensionPlugin_virtualbase_event(VirtualQQmlExtensionPlugin* self, QEvent* event) {

	return self->QQmlExtensionPlugin::event(event);
}

bool QQmlExtensionPlugin_virtualbase_eventFilter(VirtualQQmlExtensionPlugin* self, QObject* watched, QEvent* event) {

	return self->QQmlExtensionPlugin::eventFilter(watched, event);
}

void QQmlExtensionPlugin_virtualbase_timerEvent(VirtualQQmlExtensionPlugin* self, QTimerEvent* event) {

	self->QQmlExtensionPlugin::timerEvent(event);
}

void QQmlExtensionPlugin_virtualbase_childEvent(VirtualQQmlExtensionPlugin* self, QChildEvent* event) {

	self->QQmlExtensionPlugin::childEvent(event);
}

void QQmlExtensionPlugin_virtualbase_customEvent(VirtualQQmlExtensionPlugin* self, QEvent* event) {

	self->QQmlExtensionPlugin::customEvent(event);
}

void QQmlExtensionPlugin_virtualbase_connectNotify(VirtualQQmlExtensionPlugin* self, QMetaMethod* signal) {

	self->QQmlExtensionPlugin::connectNotify(*signal);
}

void QQmlExtensionPlugin_virtualbase_disconnectNotify(VirtualQQmlExtensionPlugin* self, QMetaMethod* signal) {

	self->QQmlExtensionPlugin::disconnectNotify(*signal);
}

QObject* QQmlExtensionPlugin_protectedbase_sender(const VirtualQQmlExtensionPlugin* self) {
	return self->sender();
}

int QQmlExtensionPlugin_protectedbase_senderSignalIndex(const VirtualQQmlExtensionPlugin* self) {
	return self->senderSignalIndex();
}

int QQmlExtensionPlugin_protectedbase_receivers(const VirtualQQmlExtensionPlugin* self, const char* signal) {
	return self->receivers(signal);
}

bool QQmlExtensionPlugin_protectedbase_isSignalConnected(const VirtualQQmlExtensionPlugin* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QQmlExtensionPlugin_delete(QQmlExtensionPlugin* self) {
	delete self;
}

class VirtualQQmlEngineExtensionPlugin final : public QQmlEngineExtensionPlugin {
	const QQmlEngineExtensionPlugin_VTable* vtbl;
public:
	friend void* QQmlEngineExtensionPlugin_vdata(VirtualQQmlEngineExtensionPlugin* self);
	friend VirtualQQmlEngineExtensionPlugin* vdata_QQmlEngineExtensionPlugin(void* vdata);

	VirtualQQmlEngineExtensionPlugin(const QQmlEngineExtensionPlugin_VTable* vtbl): QQmlEngineExtensionPlugin(), vtbl(vtbl) {}
	VirtualQQmlEngineExtensionPlugin(const QQmlEngineExtensionPlugin_VTable* vtbl, QObject* parent): QQmlEngineExtensionPlugin(parent), vtbl(vtbl) {}

	virtual ~VirtualQQmlEngineExtensionPlugin() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQmlEngineExtensionPlugin::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QQmlEngineExtensionPlugin_virtualbase_metaObject(const VirtualQQmlEngineExtensionPlugin* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQmlEngineExtensionPlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QQmlEngineExtensionPlugin_virtualbase_metacast(VirtualQQmlEngineExtensionPlugin* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQmlEngineExtensionPlugin::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QQmlEngineExtensionPlugin_virtualbase_metacall(VirtualQQmlEngineExtensionPlugin* self, int param1, int param2, void** param3);

	virtual void initializeEngine(QQmlEngine* engine, const char* uri) override {
		if (vtbl->initializeEngine == 0) {
			QQmlEngineExtensionPlugin::initializeEngine(engine, uri);
			return;
		}

		QQmlEngine* sigval1 = engine;
		const char* sigval2 = (const char*) uri;
		vtbl->initializeEngine(this, sigval1, sigval2);
	}

	friend void QQmlEngineExtensionPlugin_virtualbase_initializeEngine(VirtualQQmlEngineExtensionPlugin* self, QQmlEngine* engine, const char* uri);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQmlEngineExtensionPlugin::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QQmlEngineExtensionPlugin_virtualbase_event(VirtualQQmlEngineExtensionPlugin* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQmlEngineExtensionPlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QQmlEngineExtensionPlugin_virtualbase_eventFilter(VirtualQQmlEngineExtensionPlugin* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQmlEngineExtensionPlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QQmlEngineExtensionPlugin_virtualbase_timerEvent(VirtualQQmlEngineExtensionPlugin* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQmlEngineExtensionPlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QQmlEngineExtensionPlugin_virtualbase_childEvent(VirtualQQmlEngineExtensionPlugin* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQmlEngineExtensionPlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QQmlEngineExtensionPlugin_virtualbase_customEvent(VirtualQQmlEngineExtensionPlugin* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQmlEngineExtensionPlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QQmlEngineExtensionPlugin_virtualbase_connectNotify(VirtualQQmlEngineExtensionPlugin* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQmlEngineExtensionPlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QQmlEngineExtensionPlugin_virtualbase_disconnectNotify(VirtualQQmlEngineExtensionPlugin* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQmlEngineExtensionPlugin_protectedbase_sender(const VirtualQQmlEngineExtensionPlugin* self);
	friend int QQmlEngineExtensionPlugin_protectedbase_senderSignalIndex(const VirtualQQmlEngineExtensionPlugin* self);
	friend int QQmlEngineExtensionPlugin_protectedbase_receivers(const VirtualQQmlEngineExtensionPlugin* self, const char* signal);
	friend bool QQmlEngineExtensionPlugin_protectedbase_isSignalConnected(const VirtualQQmlEngineExtensionPlugin* self, QMetaMethod* signal);
};

VirtualQQmlEngineExtensionPlugin* QQmlEngineExtensionPlugin_new(const QQmlEngineExtensionPlugin_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlEngineExtensionPlugin>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlEngineExtensionPlugin(vtbl) : nullptr;
}

VirtualQQmlEngineExtensionPlugin* QQmlEngineExtensionPlugin_new_parent(const QQmlEngineExtensionPlugin_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlEngineExtensionPlugin>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlEngineExtensionPlugin(vtbl, parent) : nullptr;
}

void QQmlEngineExtensionPlugin_virtbase(QQmlEngineExtensionPlugin* src, QObject** outptr_QObject, QQmlEngineExtensionInterface** outptr_QQmlEngineExtensionInterface) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QQmlEngineExtensionInterface = static_cast<QQmlEngineExtensionInterface*>(src);
}

QMetaObject* QQmlEngineExtensionPlugin_metaObject(const QQmlEngineExtensionPlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQmlEngineExtensionPlugin_metacast(QQmlEngineExtensionPlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQmlEngineExtensionPlugin_metacall(QQmlEngineExtensionPlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QQmlEngineExtensionPlugin_tr_s(const char* s) {
	QString _ret = QQmlEngineExtensionPlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQmlEngineExtensionPlugin_trUtf8_s(const char* s) {
	QString _ret = QQmlEngineExtensionPlugin::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQmlEngineExtensionPlugin_initializeEngine(QQmlEngineExtensionPlugin* self, QQmlEngine* engine, const char* uri) {
	self->initializeEngine(engine, uri);
}

struct seaqt_string QQmlEngineExtensionPlugin_tr_s_c(const char* s, const char* c) {
	QString _ret = QQmlEngineExtensionPlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQmlEngineExtensionPlugin_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QQmlEngineExtensionPlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQmlEngineExtensionPlugin_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QQmlEngineExtensionPlugin::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQmlEngineExtensionPlugin_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QQmlEngineExtensionPlugin::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QQmlEngineExtensionPlugin_staticMetaObject() { return &QQmlEngineExtensionPlugin::staticMetaObject; }
void* QQmlEngineExtensionPlugin_vdata(VirtualQQmlEngineExtensionPlugin* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQQmlEngineExtensionPlugin>()); }
VirtualQQmlEngineExtensionPlugin* vdata_QQmlEngineExtensionPlugin(void* vdata) { return reinterpret_cast<VirtualQQmlEngineExtensionPlugin*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQQmlEngineExtensionPlugin>()); }

QMetaObject* QQmlEngineExtensionPlugin_virtualbase_metaObject(const VirtualQQmlEngineExtensionPlugin* self) {

	return (QMetaObject*) self->QQmlEngineExtensionPlugin::metaObject();
}

void* QQmlEngineExtensionPlugin_virtualbase_metacast(VirtualQQmlEngineExtensionPlugin* self, const char* param1) {

	return self->QQmlEngineExtensionPlugin::qt_metacast(param1);
}

int QQmlEngineExtensionPlugin_virtualbase_metacall(VirtualQQmlEngineExtensionPlugin* self, int param1, int param2, void** param3) {

	return self->QQmlEngineExtensionPlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QQmlEngineExtensionPlugin_virtualbase_initializeEngine(VirtualQQmlEngineExtensionPlugin* self, QQmlEngine* engine, const char* uri) {

	self->QQmlEngineExtensionPlugin::initializeEngine(engine, uri);
}

bool QQmlEngineExtensionPlugin_virtualbase_event(VirtualQQmlEngineExtensionPlugin* self, QEvent* event) {

	return self->QQmlEngineExtensionPlugin::event(event);
}

bool QQmlEngineExtensionPlugin_virtualbase_eventFilter(VirtualQQmlEngineExtensionPlugin* self, QObject* watched, QEvent* event) {

	return self->QQmlEngineExtensionPlugin::eventFilter(watched, event);
}

void QQmlEngineExtensionPlugin_virtualbase_timerEvent(VirtualQQmlEngineExtensionPlugin* self, QTimerEvent* event) {

	self->QQmlEngineExtensionPlugin::timerEvent(event);
}

void QQmlEngineExtensionPlugin_virtualbase_childEvent(VirtualQQmlEngineExtensionPlugin* self, QChildEvent* event) {

	self->QQmlEngineExtensionPlugin::childEvent(event);
}

void QQmlEngineExtensionPlugin_virtualbase_customEvent(VirtualQQmlEngineExtensionPlugin* self, QEvent* event) {

	self->QQmlEngineExtensionPlugin::customEvent(event);
}

void QQmlEngineExtensionPlugin_virtualbase_connectNotify(VirtualQQmlEngineExtensionPlugin* self, QMetaMethod* signal) {

	self->QQmlEngineExtensionPlugin::connectNotify(*signal);
}

void QQmlEngineExtensionPlugin_virtualbase_disconnectNotify(VirtualQQmlEngineExtensionPlugin* self, QMetaMethod* signal) {

	self->QQmlEngineExtensionPlugin::disconnectNotify(*signal);
}

QObject* QQmlEngineExtensionPlugin_protectedbase_sender(const VirtualQQmlEngineExtensionPlugin* self) {
	return self->sender();
}

int QQmlEngineExtensionPlugin_protectedbase_senderSignalIndex(const VirtualQQmlEngineExtensionPlugin* self) {
	return self->senderSignalIndex();
}

int QQmlEngineExtensionPlugin_protectedbase_receivers(const VirtualQQmlEngineExtensionPlugin* self, const char* signal) {
	return self->receivers(signal);
}

bool QQmlEngineExtensionPlugin_protectedbase_isSignalConnected(const VirtualQQmlEngineExtensionPlugin* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QQmlEngineExtensionPlugin_delete(QQmlEngineExtensionPlugin* self) {
	delete self;
}

