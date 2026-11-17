#include <QChildEvent>
#include <QEvent>
#include <QFactoryInterface>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QScriptEngine>
#include <QScriptExtensionInterface>
#include <QScriptExtensionPlugin>
#include <QScriptValue>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qscriptextensionplugin.h>
#include "gen_qscriptextensionplugin.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQScriptExtensionPlugin final : public QScriptExtensionPlugin {
	const QScriptExtensionPlugin_VTable* vtbl;
public:
	friend void* QScriptExtensionPlugin_vdata(VirtualQScriptExtensionPlugin* self);
	friend VirtualQScriptExtensionPlugin* vdata_QScriptExtensionPlugin(void* vdata);

	VirtualQScriptExtensionPlugin(const QScriptExtensionPlugin_VTable* vtbl): QScriptExtensionPlugin(), vtbl(vtbl) {}
	VirtualQScriptExtensionPlugin(const QScriptExtensionPlugin_VTable* vtbl, QObject* parent): QScriptExtensionPlugin(parent), vtbl(vtbl) {}

	virtual ~VirtualQScriptExtensionPlugin() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QScriptExtensionPlugin::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QScriptExtensionPlugin_virtualbase_metaObject(const VirtualQScriptExtensionPlugin* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QScriptExtensionPlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QScriptExtensionPlugin_virtualbase_metacast(VirtualQScriptExtensionPlugin* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QScriptExtensionPlugin::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QScriptExtensionPlugin_virtualbase_metacall(VirtualQScriptExtensionPlugin* self, int param1, int param2, void** param3);

	virtual QStringList keys() const override {
		if (vtbl->keys == 0) {
			return QStringList(); // Pure virtual, there is no base we can call
		}

		struct seaqt_array /* of struct seaqt_string */  callback_return_value = vtbl->keys(this);
		QStringList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct seaqt_string* callback_return_value_arr = static_cast<struct seaqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QString callback_return_value_arr_i_QString = QString::fromUtf8(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			free(callback_return_value_arr[i].data);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QString);
		}
		free(callback_return_value.data);
		return callback_return_value_QList;
	}

	virtual void initialize(const QString& key, QScriptEngine* engine) override {
		if (vtbl->initialize == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString key_ret = key;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray key_b = key_ret.toUtf8();
		struct seaqt_string key_ms;
		key_ms.len = key_b.length();
		key_ms.data = static_cast<char*>(malloc(key_ms.len));
		memcpy(key_ms.data, key_b.data(), key_ms.len);
		struct seaqt_string sigval1 = key_ms;
		QScriptEngine* sigval2 = engine;
		vtbl->initialize(this, sigval1, sigval2);
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QScriptExtensionPlugin::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QScriptExtensionPlugin_virtualbase_event(VirtualQScriptExtensionPlugin* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QScriptExtensionPlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QScriptExtensionPlugin_virtualbase_eventFilter(VirtualQScriptExtensionPlugin* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QScriptExtensionPlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QScriptExtensionPlugin_virtualbase_timerEvent(VirtualQScriptExtensionPlugin* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QScriptExtensionPlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QScriptExtensionPlugin_virtualbase_childEvent(VirtualQScriptExtensionPlugin* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QScriptExtensionPlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QScriptExtensionPlugin_virtualbase_customEvent(VirtualQScriptExtensionPlugin* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QScriptExtensionPlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QScriptExtensionPlugin_virtualbase_connectNotify(VirtualQScriptExtensionPlugin* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QScriptExtensionPlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QScriptExtensionPlugin_virtualbase_disconnectNotify(VirtualQScriptExtensionPlugin* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QScriptExtensionPlugin_protectedbase_sender(const VirtualQScriptExtensionPlugin* self);
	friend int QScriptExtensionPlugin_protectedbase_senderSignalIndex(const VirtualQScriptExtensionPlugin* self);
	friend int QScriptExtensionPlugin_protectedbase_receivers(const VirtualQScriptExtensionPlugin* self, const char* signal);
	friend bool QScriptExtensionPlugin_protectedbase_isSignalConnected(const VirtualQScriptExtensionPlugin* self, QMetaMethod* signal);
};

VirtualQScriptExtensionPlugin* QScriptExtensionPlugin_new(const QScriptExtensionPlugin_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQScriptExtensionPlugin>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQScriptExtensionPlugin(vtbl) : nullptr;
}

VirtualQScriptExtensionPlugin* QScriptExtensionPlugin_new2(const QScriptExtensionPlugin_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQScriptExtensionPlugin>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQScriptExtensionPlugin(vtbl, parent) : nullptr;
}

void QScriptExtensionPlugin_virtbase(QScriptExtensionPlugin* src, QObject** outptr_QObject, QScriptExtensionInterface** outptr_QScriptExtensionInterface) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QScriptExtensionInterface = static_cast<QScriptExtensionInterface*>(src);
}

QMetaObject* QScriptExtensionPlugin_metaObject(const QScriptExtensionPlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QScriptExtensionPlugin_metacast(QScriptExtensionPlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QScriptExtensionPlugin_metacall(QScriptExtensionPlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QScriptExtensionPlugin_tr(const char* s) {
	QString _ret = QScriptExtensionPlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QScriptExtensionPlugin_trUtf8(const char* s) {
	QString _ret = QScriptExtensionPlugin::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  QScriptExtensionPlugin_keys(const QScriptExtensionPlugin* self) {
	QStringList _ret = self->keys();
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

void QScriptExtensionPlugin_initialize(QScriptExtensionPlugin* self, struct seaqt_string key, QScriptEngine* engine) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->initialize(key_QString, engine);
}

QScriptValue* QScriptExtensionPlugin_setupPackage(const QScriptExtensionPlugin* self, struct seaqt_string key, QScriptEngine* engine) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QScriptValue(self->setupPackage(key_QString, engine));
}

struct seaqt_string QScriptExtensionPlugin_tr2(const char* s, const char* c) {
	QString _ret = QScriptExtensionPlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QScriptExtensionPlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QScriptExtensionPlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QScriptExtensionPlugin_trUtf82(const char* s, const char* c) {
	QString _ret = QScriptExtensionPlugin::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QScriptExtensionPlugin_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QScriptExtensionPlugin::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QScriptExtensionPlugin_staticMetaObject() { return &QScriptExtensionPlugin::staticMetaObject; }
void* QScriptExtensionPlugin_vdata(VirtualQScriptExtensionPlugin* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQScriptExtensionPlugin>()); }
VirtualQScriptExtensionPlugin* vdata_QScriptExtensionPlugin(void* vdata) { return reinterpret_cast<VirtualQScriptExtensionPlugin*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQScriptExtensionPlugin>()); }

QMetaObject* QScriptExtensionPlugin_virtualbase_metaObject(const VirtualQScriptExtensionPlugin* self) {

	return (QMetaObject*) self->QScriptExtensionPlugin::metaObject();
}

void* QScriptExtensionPlugin_virtualbase_metacast(VirtualQScriptExtensionPlugin* self, const char* param1) {

	return self->QScriptExtensionPlugin::qt_metacast(param1);
}

int QScriptExtensionPlugin_virtualbase_metacall(VirtualQScriptExtensionPlugin* self, int param1, int param2, void** param3) {

	return self->QScriptExtensionPlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QScriptExtensionPlugin_virtualbase_event(VirtualQScriptExtensionPlugin* self, QEvent* event) {

	return self->QScriptExtensionPlugin::event(event);
}

bool QScriptExtensionPlugin_virtualbase_eventFilter(VirtualQScriptExtensionPlugin* self, QObject* watched, QEvent* event) {

	return self->QScriptExtensionPlugin::eventFilter(watched, event);
}

void QScriptExtensionPlugin_virtualbase_timerEvent(VirtualQScriptExtensionPlugin* self, QTimerEvent* event) {

	self->QScriptExtensionPlugin::timerEvent(event);
}

void QScriptExtensionPlugin_virtualbase_childEvent(VirtualQScriptExtensionPlugin* self, QChildEvent* event) {

	self->QScriptExtensionPlugin::childEvent(event);
}

void QScriptExtensionPlugin_virtualbase_customEvent(VirtualQScriptExtensionPlugin* self, QEvent* event) {

	self->QScriptExtensionPlugin::customEvent(event);
}

void QScriptExtensionPlugin_virtualbase_connectNotify(VirtualQScriptExtensionPlugin* self, QMetaMethod* signal) {

	self->QScriptExtensionPlugin::connectNotify(*signal);
}

void QScriptExtensionPlugin_virtualbase_disconnectNotify(VirtualQScriptExtensionPlugin* self, QMetaMethod* signal) {

	self->QScriptExtensionPlugin::disconnectNotify(*signal);
}

QObject* QScriptExtensionPlugin_protectedbase_sender(const VirtualQScriptExtensionPlugin* self) {
	return self->sender();
}

int QScriptExtensionPlugin_protectedbase_senderSignalIndex(const VirtualQScriptExtensionPlugin* self) {
	return self->senderSignalIndex();
}

int QScriptExtensionPlugin_protectedbase_receivers(const VirtualQScriptExtensionPlugin* self, const char* signal) {
	return self->receivers(signal);
}

bool QScriptExtensionPlugin_protectedbase_isSignalConnected(const VirtualQScriptExtensionPlugin* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QScriptExtensionPlugin_delete(QScriptExtensionPlugin* self) {
	delete self;
}

