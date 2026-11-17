#include <QAbstractExtensionFactory>
#include <QChildEvent>
#include <QEvent>
#include <QExtensionFactory>
#include <QExtensionManager>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <default_extensionfactory.h>
#include "gen_default_extensionfactory.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQExtensionFactory final : public QExtensionFactory {
	const QExtensionFactory_VTable* vtbl;
public:
	friend void* QExtensionFactory_vdata(VirtualQExtensionFactory* self);
	friend VirtualQExtensionFactory* vdata_QExtensionFactory(void* vdata);

	VirtualQExtensionFactory(const QExtensionFactory_VTable* vtbl): QExtensionFactory(), vtbl(vtbl) {}
	VirtualQExtensionFactory(const QExtensionFactory_VTable* vtbl, QExtensionManager* parent): QExtensionFactory(parent), vtbl(vtbl) {}

	virtual ~VirtualQExtensionFactory() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QExtensionFactory::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QExtensionFactory_virtualbase_metaObject(const VirtualQExtensionFactory* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QExtensionFactory::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QExtensionFactory_virtualbase_metacast(VirtualQExtensionFactory* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QExtensionFactory::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QExtensionFactory_virtualbase_metacall(VirtualQExtensionFactory* self, int param1, int param2, void** param3);

	virtual QObject* extension(QObject* object, const QString& iid) const override {
		if (vtbl->extension == 0) {
			return QExtensionFactory::extension(object, iid);
		}

		QObject* sigval1 = object;
		const QString iid_ret = iid;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray iid_b = iid_ret.toUtf8();
		struct seaqt_string iid_ms;
		iid_ms.len = iid_b.length();
		iid_ms.data = static_cast<char*>(malloc(iid_ms.len));
		memcpy(iid_ms.data, iid_b.data(), iid_ms.len);
		struct seaqt_string sigval2 = iid_ms;
		QObject* callback_return_value = vtbl->extension(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend QObject* QExtensionFactory_virtualbase_extension(const VirtualQExtensionFactory* self, QObject* object, struct seaqt_string iid);

	virtual QObject* createExtension(QObject* object, const QString& iid, QObject* parent) const override {
		if (vtbl->createExtension == 0) {
			return QExtensionFactory::createExtension(object, iid, parent);
		}

		QObject* sigval1 = object;
		const QString iid_ret = iid;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray iid_b = iid_ret.toUtf8();
		struct seaqt_string iid_ms;
		iid_ms.len = iid_b.length();
		iid_ms.data = static_cast<char*>(malloc(iid_ms.len));
		memcpy(iid_ms.data, iid_b.data(), iid_ms.len);
		struct seaqt_string sigval2 = iid_ms;
		QObject* sigval3 = parent;
		QObject* callback_return_value = vtbl->createExtension(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend QObject* QExtensionFactory_virtualbase_createExtension(const VirtualQExtensionFactory* self, QObject* object, struct seaqt_string iid, QObject* parent);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QExtensionFactory::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QExtensionFactory_virtualbase_event(VirtualQExtensionFactory* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QExtensionFactory::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QExtensionFactory_virtualbase_eventFilter(VirtualQExtensionFactory* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QExtensionFactory::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QExtensionFactory_virtualbase_timerEvent(VirtualQExtensionFactory* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QExtensionFactory::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QExtensionFactory_virtualbase_childEvent(VirtualQExtensionFactory* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QExtensionFactory::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QExtensionFactory_virtualbase_customEvent(VirtualQExtensionFactory* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QExtensionFactory::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QExtensionFactory_virtualbase_connectNotify(VirtualQExtensionFactory* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QExtensionFactory::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QExtensionFactory_virtualbase_disconnectNotify(VirtualQExtensionFactory* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QExtensionFactory_protectedbase_sender(const VirtualQExtensionFactory* self);
	friend int QExtensionFactory_protectedbase_senderSignalIndex(const VirtualQExtensionFactory* self);
	friend int QExtensionFactory_protectedbase_receivers(const VirtualQExtensionFactory* self, const char* signal);
	friend bool QExtensionFactory_protectedbase_isSignalConnected(const VirtualQExtensionFactory* self, QMetaMethod* signal);
};

VirtualQExtensionFactory* QExtensionFactory_new(const QExtensionFactory_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQExtensionFactory>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQExtensionFactory(vtbl) : nullptr;
}

VirtualQExtensionFactory* QExtensionFactory_new_parent(const QExtensionFactory_VTable* vtbl, size_t vdata, QExtensionManager* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQExtensionFactory>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQExtensionFactory(vtbl, parent) : nullptr;
}

void QExtensionFactory_virtbase(QExtensionFactory* src, QObject** outptr_QObject, QAbstractExtensionFactory** outptr_QAbstractExtensionFactory) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QAbstractExtensionFactory = static_cast<QAbstractExtensionFactory*>(src);
}

QMetaObject* QExtensionFactory_metaObject(const QExtensionFactory* self) {
	return (QMetaObject*) self->metaObject();
}

void* QExtensionFactory_metacast(QExtensionFactory* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QExtensionFactory_metacall(QExtensionFactory* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QExtensionFactory_tr_s(const char* s) {
	QString _ret = QExtensionFactory::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QObject* QExtensionFactory_extension(const QExtensionFactory* self, QObject* object, struct seaqt_string iid) {
	QString iid_QString = QString::fromUtf8(iid.data, iid.len);
	return self->extension(object, iid_QString);
}

QExtensionManager* QExtensionFactory_extensionManager(const QExtensionFactory* self) {
	return self->extensionManager();
}

struct seaqt_string QExtensionFactory_tr_s_c(const char* s, const char* c) {
	QString _ret = QExtensionFactory::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QExtensionFactory_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QExtensionFactory::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QExtensionFactory_staticMetaObject() { return &QExtensionFactory::staticMetaObject; }
void* QExtensionFactory_vdata(VirtualQExtensionFactory* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQExtensionFactory>()); }
VirtualQExtensionFactory* vdata_QExtensionFactory(void* vdata) { return reinterpret_cast<VirtualQExtensionFactory*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQExtensionFactory>()); }

QMetaObject* QExtensionFactory_virtualbase_metaObject(const VirtualQExtensionFactory* self) {

	return (QMetaObject*) self->QExtensionFactory::metaObject();
}

void* QExtensionFactory_virtualbase_metacast(VirtualQExtensionFactory* self, const char* param1) {

	return self->QExtensionFactory::qt_metacast(param1);
}

int QExtensionFactory_virtualbase_metacall(VirtualQExtensionFactory* self, int param1, int param2, void** param3) {

	return self->QExtensionFactory::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QObject* QExtensionFactory_virtualbase_extension(const VirtualQExtensionFactory* self, QObject* object, struct seaqt_string iid) {
	QString iid_QString = QString::fromUtf8(iid.data, iid.len);

	return self->QExtensionFactory::extension(object, iid_QString);
}

QObject* QExtensionFactory_virtualbase_createExtension(const VirtualQExtensionFactory* self, QObject* object, struct seaqt_string iid, QObject* parent) {
	QString iid_QString = QString::fromUtf8(iid.data, iid.len);

	return self->QExtensionFactory::createExtension(object, iid_QString, parent);
}

bool QExtensionFactory_virtualbase_event(VirtualQExtensionFactory* self, QEvent* event) {

	return self->QExtensionFactory::event(event);
}

bool QExtensionFactory_virtualbase_eventFilter(VirtualQExtensionFactory* self, QObject* watched, QEvent* event) {

	return self->QExtensionFactory::eventFilter(watched, event);
}

void QExtensionFactory_virtualbase_timerEvent(VirtualQExtensionFactory* self, QTimerEvent* event) {

	self->QExtensionFactory::timerEvent(event);
}

void QExtensionFactory_virtualbase_childEvent(VirtualQExtensionFactory* self, QChildEvent* event) {

	self->QExtensionFactory::childEvent(event);
}

void QExtensionFactory_virtualbase_customEvent(VirtualQExtensionFactory* self, QEvent* event) {

	self->QExtensionFactory::customEvent(event);
}

void QExtensionFactory_virtualbase_connectNotify(VirtualQExtensionFactory* self, QMetaMethod* signal) {

	self->QExtensionFactory::connectNotify(*signal);
}

void QExtensionFactory_virtualbase_disconnectNotify(VirtualQExtensionFactory* self, QMetaMethod* signal) {

	self->QExtensionFactory::disconnectNotify(*signal);
}

QObject* QExtensionFactory_protectedbase_sender(const VirtualQExtensionFactory* self) {
	return self->sender();
}

int QExtensionFactory_protectedbase_senderSignalIndex(const VirtualQExtensionFactory* self) {
	return self->senderSignalIndex();
}

int QExtensionFactory_protectedbase_receivers(const VirtualQExtensionFactory* self, const char* signal) {
	return self->receivers(signal);
}

bool QExtensionFactory_protectedbase_isSignalConnected(const VirtualQExtensionFactory* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QExtensionFactory_delete(QExtensionFactory* self) {
	delete self;
}

