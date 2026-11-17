#include <QChildEvent>
#include <QEvent>
#include <QIconEngine>
#include <QIconEnginePlugin>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qiconengineplugin.h>
#include "gen_qiconengineplugin.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQIconEnginePlugin final : public QIconEnginePlugin {
	const QIconEnginePlugin_VTable* vtbl;
public:
	friend void* QIconEnginePlugin_vdata(VirtualQIconEnginePlugin* self);
	friend VirtualQIconEnginePlugin* vdata_QIconEnginePlugin(void* vdata);

	VirtualQIconEnginePlugin(const QIconEnginePlugin_VTable* vtbl): QIconEnginePlugin(), vtbl(vtbl) {}
	VirtualQIconEnginePlugin(const QIconEnginePlugin_VTable* vtbl, QObject* parent): QIconEnginePlugin(parent), vtbl(vtbl) {}

	virtual ~VirtualQIconEnginePlugin() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QIconEnginePlugin::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QIconEnginePlugin_virtualbase_metaObject(const VirtualQIconEnginePlugin* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QIconEnginePlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QIconEnginePlugin_virtualbase_metacast(VirtualQIconEnginePlugin* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QIconEnginePlugin::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QIconEnginePlugin_virtualbase_metacall(VirtualQIconEnginePlugin* self, int param1, int param2, void** param3);

	virtual QIconEngine* create(const QString& filename) override {
		if (vtbl->create == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		const QString filename_ret = filename;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray filename_b = filename_ret.toUtf8();
		struct seaqt_string filename_ms;
		filename_ms.len = filename_b.length();
		filename_ms.data = static_cast<char*>(malloc(filename_ms.len));
		memcpy(filename_ms.data, filename_b.data(), filename_ms.len);
		struct seaqt_string sigval1 = filename_ms;
		QIconEngine* callback_return_value = vtbl->create(this, sigval1);
		return callback_return_value;
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QIconEnginePlugin::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QIconEnginePlugin_virtualbase_event(VirtualQIconEnginePlugin* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QIconEnginePlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QIconEnginePlugin_virtualbase_eventFilter(VirtualQIconEnginePlugin* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QIconEnginePlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QIconEnginePlugin_virtualbase_timerEvent(VirtualQIconEnginePlugin* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QIconEnginePlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QIconEnginePlugin_virtualbase_childEvent(VirtualQIconEnginePlugin* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QIconEnginePlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QIconEnginePlugin_virtualbase_customEvent(VirtualQIconEnginePlugin* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QIconEnginePlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QIconEnginePlugin_virtualbase_connectNotify(VirtualQIconEnginePlugin* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QIconEnginePlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QIconEnginePlugin_virtualbase_disconnectNotify(VirtualQIconEnginePlugin* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QIconEnginePlugin_protectedbase_sender(const VirtualQIconEnginePlugin* self);
	friend int QIconEnginePlugin_protectedbase_senderSignalIndex(const VirtualQIconEnginePlugin* self);
	friend int QIconEnginePlugin_protectedbase_receivers(const VirtualQIconEnginePlugin* self, const char* signal);
	friend bool QIconEnginePlugin_protectedbase_isSignalConnected(const VirtualQIconEnginePlugin* self, QMetaMethod* signal);
};

VirtualQIconEnginePlugin* QIconEnginePlugin_new(const QIconEnginePlugin_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQIconEnginePlugin>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQIconEnginePlugin(vtbl) : nullptr;
}

VirtualQIconEnginePlugin* QIconEnginePlugin_new_parent(const QIconEnginePlugin_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQIconEnginePlugin>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQIconEnginePlugin(vtbl, parent) : nullptr;
}

void QIconEnginePlugin_virtbase(QIconEnginePlugin* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QIconEnginePlugin_metaObject(const QIconEnginePlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QIconEnginePlugin_metacast(QIconEnginePlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QIconEnginePlugin_metacall(QIconEnginePlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QIconEnginePlugin_tr_s(const char* s) {
	QString _ret = QIconEnginePlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QIconEngine* QIconEnginePlugin_create(QIconEnginePlugin* self, struct seaqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return self->create(filename_QString);
}

struct seaqt_string QIconEnginePlugin_tr_s_c(const char* s, const char* c) {
	QString _ret = QIconEnginePlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QIconEnginePlugin_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QIconEnginePlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QIconEnginePlugin_staticMetaObject() { return &QIconEnginePlugin::staticMetaObject; }
void* QIconEnginePlugin_vdata(VirtualQIconEnginePlugin* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQIconEnginePlugin>()); }
VirtualQIconEnginePlugin* vdata_QIconEnginePlugin(void* vdata) { return reinterpret_cast<VirtualQIconEnginePlugin*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQIconEnginePlugin>()); }

QMetaObject* QIconEnginePlugin_virtualbase_metaObject(const VirtualQIconEnginePlugin* self) {

	return (QMetaObject*) self->QIconEnginePlugin::metaObject();
}

void* QIconEnginePlugin_virtualbase_metacast(VirtualQIconEnginePlugin* self, const char* param1) {

	return self->QIconEnginePlugin::qt_metacast(param1);
}

int QIconEnginePlugin_virtualbase_metacall(VirtualQIconEnginePlugin* self, int param1, int param2, void** param3) {

	return self->QIconEnginePlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QIconEnginePlugin_virtualbase_event(VirtualQIconEnginePlugin* self, QEvent* event) {

	return self->QIconEnginePlugin::event(event);
}

bool QIconEnginePlugin_virtualbase_eventFilter(VirtualQIconEnginePlugin* self, QObject* watched, QEvent* event) {

	return self->QIconEnginePlugin::eventFilter(watched, event);
}

void QIconEnginePlugin_virtualbase_timerEvent(VirtualQIconEnginePlugin* self, QTimerEvent* event) {

	self->QIconEnginePlugin::timerEvent(event);
}

void QIconEnginePlugin_virtualbase_childEvent(VirtualQIconEnginePlugin* self, QChildEvent* event) {

	self->QIconEnginePlugin::childEvent(event);
}

void QIconEnginePlugin_virtualbase_customEvent(VirtualQIconEnginePlugin* self, QEvent* event) {

	self->QIconEnginePlugin::customEvent(event);
}

void QIconEnginePlugin_virtualbase_connectNotify(VirtualQIconEnginePlugin* self, QMetaMethod* signal) {

	self->QIconEnginePlugin::connectNotify(*signal);
}

void QIconEnginePlugin_virtualbase_disconnectNotify(VirtualQIconEnginePlugin* self, QMetaMethod* signal) {

	self->QIconEnginePlugin::disconnectNotify(*signal);
}

QObject* QIconEnginePlugin_protectedbase_sender(const VirtualQIconEnginePlugin* self) {
	return self->sender();
}

int QIconEnginePlugin_protectedbase_senderSignalIndex(const VirtualQIconEnginePlugin* self) {
	return self->senderSignalIndex();
}

int QIconEnginePlugin_protectedbase_receivers(const VirtualQIconEnginePlugin* self, const char* signal) {
	return self->receivers(signal);
}

bool QIconEnginePlugin_protectedbase_isSignalConnected(const VirtualQIconEnginePlugin* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QIconEnginePlugin_delete(QIconEnginePlugin* self) {
	delete self;
}

