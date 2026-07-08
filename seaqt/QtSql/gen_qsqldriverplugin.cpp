#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSqlDriver>
#include <QSqlDriverPlugin>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qsqldriverplugin.h>
#include "gen_qsqldriverplugin.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQSqlDriverPlugin final : public QSqlDriverPlugin {
	const QSqlDriverPlugin_VTable* vtbl;
public:
	friend void* QSqlDriverPlugin_vdata(VirtualQSqlDriverPlugin* self);
	friend VirtualQSqlDriverPlugin* vdata_QSqlDriverPlugin(void* vdata);

	VirtualQSqlDriverPlugin(const QSqlDriverPlugin_VTable* vtbl): QSqlDriverPlugin(), vtbl(vtbl) {}
	VirtualQSqlDriverPlugin(const QSqlDriverPlugin_VTable* vtbl, QObject* parent): QSqlDriverPlugin(parent), vtbl(vtbl) {}

	virtual ~VirtualQSqlDriverPlugin() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSqlDriverPlugin::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QSqlDriverPlugin_virtualbase_metaObject(const VirtualQSqlDriverPlugin* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSqlDriverPlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QSqlDriverPlugin_virtualbase_metacast(VirtualQSqlDriverPlugin* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSqlDriverPlugin::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QSqlDriverPlugin_virtualbase_metacall(VirtualQSqlDriverPlugin* self, int param1, int param2, void** param3);

	virtual QSqlDriver* create(const QString& key) override {
		if (vtbl->create == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		const QString key_ret = key;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray key_b = key_ret.toUtf8();
		struct seaqt_string key_ms;
		key_ms.len = key_b.length();
		key_ms.data = static_cast<char*>(malloc(key_ms.len));
		memcpy(key_ms.data, key_b.data(), key_ms.len);
		struct seaqt_string sigval1 = key_ms;
		QSqlDriver* callback_return_value = vtbl->create(this, sigval1);
		return callback_return_value;
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSqlDriverPlugin::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QSqlDriverPlugin_virtualbase_event(VirtualQSqlDriverPlugin* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSqlDriverPlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QSqlDriverPlugin_virtualbase_eventFilter(VirtualQSqlDriverPlugin* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSqlDriverPlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QSqlDriverPlugin_virtualbase_timerEvent(VirtualQSqlDriverPlugin* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSqlDriverPlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QSqlDriverPlugin_virtualbase_childEvent(VirtualQSqlDriverPlugin* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSqlDriverPlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QSqlDriverPlugin_virtualbase_customEvent(VirtualQSqlDriverPlugin* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSqlDriverPlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QSqlDriverPlugin_virtualbase_connectNotify(VirtualQSqlDriverPlugin* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSqlDriverPlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QSqlDriverPlugin_virtualbase_disconnectNotify(VirtualQSqlDriverPlugin* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSqlDriverPlugin_protectedbase_sender(const VirtualQSqlDriverPlugin* self);
	friend int QSqlDriverPlugin_protectedbase_senderSignalIndex(const VirtualQSqlDriverPlugin* self);
	friend int QSqlDriverPlugin_protectedbase_receivers(const VirtualQSqlDriverPlugin* self, const char* signal);
	friend bool QSqlDriverPlugin_protectedbase_isSignalConnected(const VirtualQSqlDriverPlugin* self, QMetaMethod* signal);
};

VirtualQSqlDriverPlugin* QSqlDriverPlugin_new(const QSqlDriverPlugin_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSqlDriverPlugin>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSqlDriverPlugin(vtbl) : nullptr;
}

VirtualQSqlDriverPlugin* QSqlDriverPlugin_new2(const QSqlDriverPlugin_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSqlDriverPlugin>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSqlDriverPlugin(vtbl, parent) : nullptr;
}

void QSqlDriverPlugin_virtbase(QSqlDriverPlugin* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSqlDriverPlugin_metaObject(const QSqlDriverPlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSqlDriverPlugin_metacast(QSqlDriverPlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSqlDriverPlugin_metacall(QSqlDriverPlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QSqlDriverPlugin_tr(const char* s) {
	QString _ret = QSqlDriverPlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlDriverPlugin_trUtf8(const char* s) {
	QString _ret = QSqlDriverPlugin::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSqlDriver* QSqlDriverPlugin_create(QSqlDriverPlugin* self, struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return self->create(key_QString);
}

struct seaqt_string QSqlDriverPlugin_tr2(const char* s, const char* c) {
	QString _ret = QSqlDriverPlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlDriverPlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QSqlDriverPlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlDriverPlugin_trUtf82(const char* s, const char* c) {
	QString _ret = QSqlDriverPlugin::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlDriverPlugin_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSqlDriverPlugin::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QSqlDriverPlugin_staticMetaObject() { return &QSqlDriverPlugin::staticMetaObject; }
void* QSqlDriverPlugin_vdata(VirtualQSqlDriverPlugin* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQSqlDriverPlugin>()); }
VirtualQSqlDriverPlugin* vdata_QSqlDriverPlugin(void* vdata) { return reinterpret_cast<VirtualQSqlDriverPlugin*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQSqlDriverPlugin>()); }

QMetaObject* QSqlDriverPlugin_virtualbase_metaObject(const VirtualQSqlDriverPlugin* self) {

	return (QMetaObject*) self->QSqlDriverPlugin::metaObject();
}

void* QSqlDriverPlugin_virtualbase_metacast(VirtualQSqlDriverPlugin* self, const char* param1) {

	return self->QSqlDriverPlugin::qt_metacast(param1);
}

int QSqlDriverPlugin_virtualbase_metacall(VirtualQSqlDriverPlugin* self, int param1, int param2, void** param3) {

	return self->QSqlDriverPlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QSqlDriverPlugin_virtualbase_event(VirtualQSqlDriverPlugin* self, QEvent* event) {

	return self->QSqlDriverPlugin::event(event);
}

bool QSqlDriverPlugin_virtualbase_eventFilter(VirtualQSqlDriverPlugin* self, QObject* watched, QEvent* event) {

	return self->QSqlDriverPlugin::eventFilter(watched, event);
}

void QSqlDriverPlugin_virtualbase_timerEvent(VirtualQSqlDriverPlugin* self, QTimerEvent* event) {

	self->QSqlDriverPlugin::timerEvent(event);
}

void QSqlDriverPlugin_virtualbase_childEvent(VirtualQSqlDriverPlugin* self, QChildEvent* event) {

	self->QSqlDriverPlugin::childEvent(event);
}

void QSqlDriverPlugin_virtualbase_customEvent(VirtualQSqlDriverPlugin* self, QEvent* event) {

	self->QSqlDriverPlugin::customEvent(event);
}

void QSqlDriverPlugin_virtualbase_connectNotify(VirtualQSqlDriverPlugin* self, QMetaMethod* signal) {

	self->QSqlDriverPlugin::connectNotify(*signal);
}

void QSqlDriverPlugin_virtualbase_disconnectNotify(VirtualQSqlDriverPlugin* self, QMetaMethod* signal) {

	self->QSqlDriverPlugin::disconnectNotify(*signal);
}

QObject* QSqlDriverPlugin_protectedbase_sender(const VirtualQSqlDriverPlugin* self) {
	return self->sender();
}

int QSqlDriverPlugin_protectedbase_senderSignalIndex(const VirtualQSqlDriverPlugin* self) {
	return self->senderSignalIndex();
}

int QSqlDriverPlugin_protectedbase_receivers(const VirtualQSqlDriverPlugin* self, const char* signal) {
	return self->receivers(signal);
}

bool QSqlDriverPlugin_protectedbase_isSignalConnected(const VirtualQSqlDriverPlugin* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSqlDriverPlugin_delete(QSqlDriverPlugin* self) {
	delete self;
}

