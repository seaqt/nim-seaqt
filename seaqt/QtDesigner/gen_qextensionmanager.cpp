#include <QAbstractExtensionFactory>
#include <QAbstractExtensionManager>
#include <QChildEvent>
#include <QEvent>
#include <QExtensionManager>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qextensionmanager.h>
#include "gen_qextensionmanager.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQExtensionManager final : public QExtensionManager {
	const QExtensionManager_VTable* vtbl;
public:
	friend void* QExtensionManager_vdata(VirtualQExtensionManager* self);
	friend VirtualQExtensionManager* vdata_QExtensionManager(void* vdata);

	VirtualQExtensionManager(const QExtensionManager_VTable* vtbl): QExtensionManager(), vtbl(vtbl) {}
	VirtualQExtensionManager(const QExtensionManager_VTable* vtbl, QObject* parent): QExtensionManager(parent), vtbl(vtbl) {}

	virtual ~VirtualQExtensionManager() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QExtensionManager::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QExtensionManager_virtualbase_metaObject(const VirtualQExtensionManager* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QExtensionManager::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QExtensionManager_virtualbase_metacast(VirtualQExtensionManager* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QExtensionManager::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QExtensionManager_virtualbase_metacall(VirtualQExtensionManager* self, int param1, int param2, void** param3);

	virtual void registerExtensions(QAbstractExtensionFactory* factory, const QString& iid) override {
		if (vtbl->registerExtensions == 0) {
			QExtensionManager::registerExtensions(factory, iid);
			return;
		}

		QAbstractExtensionFactory* sigval1 = factory;
		const QString iid_ret = iid;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray iid_b = iid_ret.toUtf8();
		struct seaqt_string iid_ms;
		iid_ms.len = iid_b.length();
		iid_ms.data = static_cast<char*>(malloc(iid_ms.len));
		memcpy(iid_ms.data, iid_b.data(), iid_ms.len);
		struct seaqt_string sigval2 = iid_ms;
		vtbl->registerExtensions(this, sigval1, sigval2);
	}

	friend void QExtensionManager_virtualbase_registerExtensions(VirtualQExtensionManager* self, QAbstractExtensionFactory* factory, struct seaqt_string iid);

	virtual void unregisterExtensions(QAbstractExtensionFactory* factory, const QString& iid) override {
		if (vtbl->unregisterExtensions == 0) {
			QExtensionManager::unregisterExtensions(factory, iid);
			return;
		}

		QAbstractExtensionFactory* sigval1 = factory;
		const QString iid_ret = iid;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray iid_b = iid_ret.toUtf8();
		struct seaqt_string iid_ms;
		iid_ms.len = iid_b.length();
		iid_ms.data = static_cast<char*>(malloc(iid_ms.len));
		memcpy(iid_ms.data, iid_b.data(), iid_ms.len);
		struct seaqt_string sigval2 = iid_ms;
		vtbl->unregisterExtensions(this, sigval1, sigval2);
	}

	friend void QExtensionManager_virtualbase_unregisterExtensions(VirtualQExtensionManager* self, QAbstractExtensionFactory* factory, struct seaqt_string iid);

	virtual QObject* extension(QObject* object, const QString& iid) const override {
		if (vtbl->extension == 0) {
			return QExtensionManager::extension(object, iid);
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

	friend QObject* QExtensionManager_virtualbase_extension(const VirtualQExtensionManager* self, QObject* object, struct seaqt_string iid);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QExtensionManager::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QExtensionManager_virtualbase_event(VirtualQExtensionManager* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QExtensionManager::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QExtensionManager_virtualbase_eventFilter(VirtualQExtensionManager* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QExtensionManager::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QExtensionManager_virtualbase_timerEvent(VirtualQExtensionManager* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QExtensionManager::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QExtensionManager_virtualbase_childEvent(VirtualQExtensionManager* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QExtensionManager::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QExtensionManager_virtualbase_customEvent(VirtualQExtensionManager* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QExtensionManager::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QExtensionManager_virtualbase_connectNotify(VirtualQExtensionManager* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QExtensionManager::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QExtensionManager_virtualbase_disconnectNotify(VirtualQExtensionManager* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QExtensionManager_protectedbase_sender(const VirtualQExtensionManager* self);
	friend int QExtensionManager_protectedbase_senderSignalIndex(const VirtualQExtensionManager* self);
	friend int QExtensionManager_protectedbase_receivers(const VirtualQExtensionManager* self, const char* signal);
	friend bool QExtensionManager_protectedbase_isSignalConnected(const VirtualQExtensionManager* self, QMetaMethod* signal);
};

VirtualQExtensionManager* QExtensionManager_new(const QExtensionManager_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQExtensionManager>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQExtensionManager(vtbl) : nullptr;
}

VirtualQExtensionManager* QExtensionManager_new2(const QExtensionManager_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQExtensionManager>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQExtensionManager(vtbl, parent) : nullptr;
}

void QExtensionManager_virtbase(QExtensionManager* src, QObject** outptr_QObject, QAbstractExtensionManager** outptr_QAbstractExtensionManager) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QAbstractExtensionManager = static_cast<QAbstractExtensionManager*>(src);
}

QMetaObject* QExtensionManager_metaObject(const QExtensionManager* self) {
	return (QMetaObject*) self->metaObject();
}

void* QExtensionManager_metacast(QExtensionManager* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QExtensionManager_metacall(QExtensionManager* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QExtensionManager_tr(const char* s) {
	QString _ret = QExtensionManager::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QExtensionManager_registerExtensions(QExtensionManager* self, QAbstractExtensionFactory* factory, struct seaqt_string iid) {
	QString iid_QString = QString::fromUtf8(iid.data, iid.len);
	self->registerExtensions(factory, iid_QString);
}

void QExtensionManager_unregisterExtensions(QExtensionManager* self, QAbstractExtensionFactory* factory, struct seaqt_string iid) {
	QString iid_QString = QString::fromUtf8(iid.data, iid.len);
	self->unregisterExtensions(factory, iid_QString);
}

QObject* QExtensionManager_extension(const QExtensionManager* self, QObject* object, struct seaqt_string iid) {
	QString iid_QString = QString::fromUtf8(iid.data, iid.len);
	return self->extension(object, iid_QString);
}

struct seaqt_string QExtensionManager_tr2(const char* s, const char* c) {
	QString _ret = QExtensionManager::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QExtensionManager_tr3(const char* s, const char* c, int n) {
	QString _ret = QExtensionManager::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QExtensionManager_staticMetaObject() { return &QExtensionManager::staticMetaObject; }
void* QExtensionManager_vdata(VirtualQExtensionManager* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQExtensionManager>()); }
VirtualQExtensionManager* vdata_QExtensionManager(void* vdata) { return reinterpret_cast<VirtualQExtensionManager*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQExtensionManager>()); }

QMetaObject* QExtensionManager_virtualbase_metaObject(const VirtualQExtensionManager* self) {

	return (QMetaObject*) self->QExtensionManager::metaObject();
}

void* QExtensionManager_virtualbase_metacast(VirtualQExtensionManager* self, const char* param1) {

	return self->QExtensionManager::qt_metacast(param1);
}

int QExtensionManager_virtualbase_metacall(VirtualQExtensionManager* self, int param1, int param2, void** param3) {

	return self->QExtensionManager::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QExtensionManager_virtualbase_registerExtensions(VirtualQExtensionManager* self, QAbstractExtensionFactory* factory, struct seaqt_string iid) {
	QString iid_QString = QString::fromUtf8(iid.data, iid.len);

	self->QExtensionManager::registerExtensions(factory, iid_QString);
}

void QExtensionManager_virtualbase_unregisterExtensions(VirtualQExtensionManager* self, QAbstractExtensionFactory* factory, struct seaqt_string iid) {
	QString iid_QString = QString::fromUtf8(iid.data, iid.len);

	self->QExtensionManager::unregisterExtensions(factory, iid_QString);
}

QObject* QExtensionManager_virtualbase_extension(const VirtualQExtensionManager* self, QObject* object, struct seaqt_string iid) {
	QString iid_QString = QString::fromUtf8(iid.data, iid.len);

	return self->QExtensionManager::extension(object, iid_QString);
}

bool QExtensionManager_virtualbase_event(VirtualQExtensionManager* self, QEvent* event) {

	return self->QExtensionManager::event(event);
}

bool QExtensionManager_virtualbase_eventFilter(VirtualQExtensionManager* self, QObject* watched, QEvent* event) {

	return self->QExtensionManager::eventFilter(watched, event);
}

void QExtensionManager_virtualbase_timerEvent(VirtualQExtensionManager* self, QTimerEvent* event) {

	self->QExtensionManager::timerEvent(event);
}

void QExtensionManager_virtualbase_childEvent(VirtualQExtensionManager* self, QChildEvent* event) {

	self->QExtensionManager::childEvent(event);
}

void QExtensionManager_virtualbase_customEvent(VirtualQExtensionManager* self, QEvent* event) {

	self->QExtensionManager::customEvent(event);
}

void QExtensionManager_virtualbase_connectNotify(VirtualQExtensionManager* self, QMetaMethod* signal) {

	self->QExtensionManager::connectNotify(*signal);
}

void QExtensionManager_virtualbase_disconnectNotify(VirtualQExtensionManager* self, QMetaMethod* signal) {

	self->QExtensionManager::disconnectNotify(*signal);
}

QObject* QExtensionManager_protectedbase_sender(const VirtualQExtensionManager* self) {
	return self->sender();
}

int QExtensionManager_protectedbase_senderSignalIndex(const VirtualQExtensionManager* self) {
	return self->senderSignalIndex();
}

int QExtensionManager_protectedbase_receivers(const VirtualQExtensionManager* self, const char* signal) {
	return self->receivers(signal);
}

bool QExtensionManager_protectedbase_isSignalConnected(const VirtualQExtensionManager* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QExtensionManager_delete(QExtensionManager* self) {
	delete self;
}

