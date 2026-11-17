#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyle>
#include <QStylePlugin>
#include <QTimerEvent>
#include <qstyleplugin.h>
#include "gen_qstyleplugin.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQStylePlugin final : public QStylePlugin {
	const QStylePlugin_VTable* vtbl;
public:
	friend void* QStylePlugin_vdata(VirtualQStylePlugin* self);
	friend VirtualQStylePlugin* vdata_QStylePlugin(void* vdata);

	VirtualQStylePlugin(const QStylePlugin_VTable* vtbl): QStylePlugin(), vtbl(vtbl) {}
	VirtualQStylePlugin(const QStylePlugin_VTable* vtbl, QObject* parent): QStylePlugin(parent), vtbl(vtbl) {}

	virtual ~VirtualQStylePlugin() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QStylePlugin::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QStylePlugin_virtualbase_metaObject(const VirtualQStylePlugin* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QStylePlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QStylePlugin_virtualbase_metacast(VirtualQStylePlugin* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QStylePlugin::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QStylePlugin_virtualbase_metacall(VirtualQStylePlugin* self, int param1, int param2, void** param3);

	virtual QStyle* create(const QString& key) override {
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
		QStyle* callback_return_value = vtbl->create(this, sigval1);
		return callback_return_value;
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QStylePlugin::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QStylePlugin_virtualbase_event(VirtualQStylePlugin* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QStylePlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QStylePlugin_virtualbase_eventFilter(VirtualQStylePlugin* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QStylePlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QStylePlugin_virtualbase_timerEvent(VirtualQStylePlugin* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QStylePlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QStylePlugin_virtualbase_childEvent(VirtualQStylePlugin* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QStylePlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QStylePlugin_virtualbase_customEvent(VirtualQStylePlugin* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QStylePlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QStylePlugin_virtualbase_connectNotify(VirtualQStylePlugin* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QStylePlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QStylePlugin_virtualbase_disconnectNotify(VirtualQStylePlugin* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QStylePlugin_protectedbase_sender(const VirtualQStylePlugin* self);
	friend int QStylePlugin_protectedbase_senderSignalIndex(const VirtualQStylePlugin* self);
	friend int QStylePlugin_protectedbase_receivers(const VirtualQStylePlugin* self, const char* signal);
	friend bool QStylePlugin_protectedbase_isSignalConnected(const VirtualQStylePlugin* self, QMetaMethod* signal);
};

VirtualQStylePlugin* QStylePlugin_new(const QStylePlugin_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQStylePlugin>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQStylePlugin(vtbl) : nullptr;
}

VirtualQStylePlugin* QStylePlugin_new2(const QStylePlugin_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQStylePlugin>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQStylePlugin(vtbl, parent) : nullptr;
}

void QStylePlugin_virtbase(QStylePlugin* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QStylePlugin_metaObject(const QStylePlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QStylePlugin_metacast(QStylePlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QStylePlugin_metacall(QStylePlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QStylePlugin_tr(const char* s) {
	QString _ret = QStylePlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QStyle* QStylePlugin_create(QStylePlugin* self, struct seaqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return self->create(key_QString);
}

struct seaqt_string QStylePlugin_tr2(const char* s, const char* c) {
	QString _ret = QStylePlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QStylePlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QStylePlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QStylePlugin_staticMetaObject() { return &QStylePlugin::staticMetaObject; }
void* QStylePlugin_vdata(VirtualQStylePlugin* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQStylePlugin>()); }
VirtualQStylePlugin* vdata_QStylePlugin(void* vdata) { return reinterpret_cast<VirtualQStylePlugin*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQStylePlugin>()); }

QMetaObject* QStylePlugin_virtualbase_metaObject(const VirtualQStylePlugin* self) {

	return (QMetaObject*) self->QStylePlugin::metaObject();
}

void* QStylePlugin_virtualbase_metacast(VirtualQStylePlugin* self, const char* param1) {

	return self->QStylePlugin::qt_metacast(param1);
}

int QStylePlugin_virtualbase_metacall(VirtualQStylePlugin* self, int param1, int param2, void** param3) {

	return self->QStylePlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QStylePlugin_virtualbase_event(VirtualQStylePlugin* self, QEvent* event) {

	return self->QStylePlugin::event(event);
}

bool QStylePlugin_virtualbase_eventFilter(VirtualQStylePlugin* self, QObject* watched, QEvent* event) {

	return self->QStylePlugin::eventFilter(watched, event);
}

void QStylePlugin_virtualbase_timerEvent(VirtualQStylePlugin* self, QTimerEvent* event) {

	self->QStylePlugin::timerEvent(event);
}

void QStylePlugin_virtualbase_childEvent(VirtualQStylePlugin* self, QChildEvent* event) {

	self->QStylePlugin::childEvent(event);
}

void QStylePlugin_virtualbase_customEvent(VirtualQStylePlugin* self, QEvent* event) {

	self->QStylePlugin::customEvent(event);
}

void QStylePlugin_virtualbase_connectNotify(VirtualQStylePlugin* self, QMetaMethod* signal) {

	self->QStylePlugin::connectNotify(*signal);
}

void QStylePlugin_virtualbase_disconnectNotify(VirtualQStylePlugin* self, QMetaMethod* signal) {

	self->QStylePlugin::disconnectNotify(*signal);
}

QObject* QStylePlugin_protectedbase_sender(const VirtualQStylePlugin* self) {
	return self->sender();
}

int QStylePlugin_protectedbase_senderSignalIndex(const VirtualQStylePlugin* self) {
	return self->senderSignalIndex();
}

int QStylePlugin_protectedbase_receivers(const VirtualQStylePlugin* self, const char* signal) {
	return self->receivers(signal);
}

bool QStylePlugin_protectedbase_isSignalConnected(const VirtualQStylePlugin* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QStylePlugin_delete(QStylePlugin* self) {
	delete self;
}

