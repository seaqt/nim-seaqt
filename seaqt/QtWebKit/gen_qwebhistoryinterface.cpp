#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWebHistoryInterface>
#include <qwebhistoryinterface.h>
#include "gen_qwebhistoryinterface.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQWebHistoryInterface final : public QWebHistoryInterface {
	const QWebHistoryInterface_VTable* vtbl;
public:
	friend void* QWebHistoryInterface_vdata(VirtualQWebHistoryInterface* self);
	friend VirtualQWebHistoryInterface* vdata_QWebHistoryInterface(void* vdata);

	VirtualQWebHistoryInterface(const QWebHistoryInterface_VTable* vtbl): QWebHistoryInterface(), vtbl(vtbl) {}
	VirtualQWebHistoryInterface(const QWebHistoryInterface_VTable* vtbl, QObject* parent): QWebHistoryInterface(parent), vtbl(vtbl) {}

	virtual ~VirtualQWebHistoryInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebHistoryInterface::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QWebHistoryInterface_virtualbase_metaObject(const VirtualQWebHistoryInterface* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebHistoryInterface::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QWebHistoryInterface_virtualbase_metacast(VirtualQWebHistoryInterface* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebHistoryInterface::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QWebHistoryInterface_virtualbase_metacall(VirtualQWebHistoryInterface* self, int param1, int param2, void** param3);

	virtual bool historyContains(const QString& url) const override {
		if (vtbl->historyContains == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		const QString url_ret = url;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray url_b = url_ret.toUtf8();
		struct seaqt_string url_ms;
		url_ms.len = url_b.length();
		url_ms.data = static_cast<char*>(malloc(url_ms.len));
		memcpy(url_ms.data, url_b.data(), url_ms.len);
		struct seaqt_string sigval1 = url_ms;
		bool callback_return_value = vtbl->historyContains(this, sigval1);
		return callback_return_value;
	}

	virtual void addHistoryEntry(const QString& url) override {
		if (vtbl->addHistoryEntry == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString url_ret = url;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray url_b = url_ret.toUtf8();
		struct seaqt_string url_ms;
		url_ms.len = url_b.length();
		url_ms.data = static_cast<char*>(malloc(url_ms.len));
		memcpy(url_ms.data, url_b.data(), url_ms.len);
		struct seaqt_string sigval1 = url_ms;
		vtbl->addHistoryEntry(this, sigval1);
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWebHistoryInterface::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QWebHistoryInterface_virtualbase_event(VirtualQWebHistoryInterface* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebHistoryInterface::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QWebHistoryInterface_virtualbase_eventFilter(VirtualQWebHistoryInterface* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebHistoryInterface::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QWebHistoryInterface_virtualbase_timerEvent(VirtualQWebHistoryInterface* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebHistoryInterface::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QWebHistoryInterface_virtualbase_childEvent(VirtualQWebHistoryInterface* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebHistoryInterface::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QWebHistoryInterface_virtualbase_customEvent(VirtualQWebHistoryInterface* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebHistoryInterface::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QWebHistoryInterface_virtualbase_connectNotify(VirtualQWebHistoryInterface* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebHistoryInterface::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QWebHistoryInterface_virtualbase_disconnectNotify(VirtualQWebHistoryInterface* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QWebHistoryInterface_protectedbase_sender(const VirtualQWebHistoryInterface* self);
	friend int QWebHistoryInterface_protectedbase_senderSignalIndex(const VirtualQWebHistoryInterface* self);
	friend int QWebHistoryInterface_protectedbase_receivers(const VirtualQWebHistoryInterface* self, const char* signal);
	friend bool QWebHistoryInterface_protectedbase_isSignalConnected(const VirtualQWebHistoryInterface* self, QMetaMethod* signal);
};

VirtualQWebHistoryInterface* QWebHistoryInterface_new(const QWebHistoryInterface_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQWebHistoryInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQWebHistoryInterface(vtbl) : nullptr;
}

VirtualQWebHistoryInterface* QWebHistoryInterface_new_parent(const QWebHistoryInterface_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQWebHistoryInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQWebHistoryInterface(vtbl, parent) : nullptr;
}

void QWebHistoryInterface_virtbase(QWebHistoryInterface* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebHistoryInterface_metaObject(const QWebHistoryInterface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebHistoryInterface_metacast(QWebHistoryInterface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebHistoryInterface_metacall(QWebHistoryInterface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QWebHistoryInterface_tr_s(const char* s) {
	QString _ret = QWebHistoryInterface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebHistoryInterface_trUtf8_s(const char* s) {
	QString _ret = QWebHistoryInterface::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebHistoryInterface_setDefaultInterface(QWebHistoryInterface* defaultInterface) {
	QWebHistoryInterface::setDefaultInterface(defaultInterface);
}

QWebHistoryInterface* QWebHistoryInterface_defaultInterface() {
	return QWebHistoryInterface::defaultInterface();
}

bool QWebHistoryInterface_historyContains(const QWebHistoryInterface* self, struct seaqt_string url) {
	QString url_QString = QString::fromUtf8(url.data, url.len);
	return self->historyContains(url_QString);
}

void QWebHistoryInterface_addHistoryEntry(QWebHistoryInterface* self, struct seaqt_string url) {
	QString url_QString = QString::fromUtf8(url.data, url.len);
	self->addHistoryEntry(url_QString);
}

struct seaqt_string QWebHistoryInterface_tr_s_c(const char* s, const char* c) {
	QString _ret = QWebHistoryInterface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebHistoryInterface_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebHistoryInterface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebHistoryInterface_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QWebHistoryInterface::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebHistoryInterface_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebHistoryInterface::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QWebHistoryInterface_staticMetaObject() { return &QWebHistoryInterface::staticMetaObject; }
void* QWebHistoryInterface_vdata(VirtualQWebHistoryInterface* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQWebHistoryInterface>()); }
VirtualQWebHistoryInterface* vdata_QWebHistoryInterface(void* vdata) { return reinterpret_cast<VirtualQWebHistoryInterface*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQWebHistoryInterface>()); }

QMetaObject* QWebHistoryInterface_virtualbase_metaObject(const VirtualQWebHistoryInterface* self) {

	return (QMetaObject*) self->QWebHistoryInterface::metaObject();
}

void* QWebHistoryInterface_virtualbase_metacast(VirtualQWebHistoryInterface* self, const char* param1) {

	return self->QWebHistoryInterface::qt_metacast(param1);
}

int QWebHistoryInterface_virtualbase_metacall(VirtualQWebHistoryInterface* self, int param1, int param2, void** param3) {

	return self->QWebHistoryInterface::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QWebHistoryInterface_virtualbase_event(VirtualQWebHistoryInterface* self, QEvent* event) {

	return self->QWebHistoryInterface::event(event);
}

bool QWebHistoryInterface_virtualbase_eventFilter(VirtualQWebHistoryInterface* self, QObject* watched, QEvent* event) {

	return self->QWebHistoryInterface::eventFilter(watched, event);
}

void QWebHistoryInterface_virtualbase_timerEvent(VirtualQWebHistoryInterface* self, QTimerEvent* event) {

	self->QWebHistoryInterface::timerEvent(event);
}

void QWebHistoryInterface_virtualbase_childEvent(VirtualQWebHistoryInterface* self, QChildEvent* event) {

	self->QWebHistoryInterface::childEvent(event);
}

void QWebHistoryInterface_virtualbase_customEvent(VirtualQWebHistoryInterface* self, QEvent* event) {

	self->QWebHistoryInterface::customEvent(event);
}

void QWebHistoryInterface_virtualbase_connectNotify(VirtualQWebHistoryInterface* self, QMetaMethod* signal) {

	self->QWebHistoryInterface::connectNotify(*signal);
}

void QWebHistoryInterface_virtualbase_disconnectNotify(VirtualQWebHistoryInterface* self, QMetaMethod* signal) {

	self->QWebHistoryInterface::disconnectNotify(*signal);
}

QObject* QWebHistoryInterface_protectedbase_sender(const VirtualQWebHistoryInterface* self) {
	return self->sender();
}

int QWebHistoryInterface_protectedbase_senderSignalIndex(const VirtualQWebHistoryInterface* self) {
	return self->senderSignalIndex();
}

int QWebHistoryInterface_protectedbase_receivers(const VirtualQWebHistoryInterface* self, const char* signal) {
	return self->receivers(signal);
}

bool QWebHistoryInterface_protectedbase_isSignalConnected(const VirtualQWebHistoryInterface* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QWebHistoryInterface_delete(QWebHistoryInterface* self) {
	delete self;
}

