#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQmlPropertyMap>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qqmlpropertymap.h>
#include "gen_qqmlpropertymap.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQQmlPropertyMap final : public QQmlPropertyMap {
	struct QQmlPropertyMap_VTable* vtbl;
public:

	VirtualQQmlPropertyMap(struct QQmlPropertyMap_VTable* vtbl): QQmlPropertyMap(), vtbl(vtbl) {};
	VirtualQQmlPropertyMap(struct QQmlPropertyMap_VTable* vtbl, QObject* parent): QQmlPropertyMap(parent), vtbl(vtbl) {};

	virtual ~VirtualQQmlPropertyMap() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQmlPropertyMap::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QQmlPropertyMap_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQmlPropertyMap::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QQmlPropertyMap_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQmlPropertyMap::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QQmlPropertyMap_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QVariant updateValue(const QString& key, const QVariant& input) override {
		if (vtbl->updateValue == 0) {
			return QQmlPropertyMap::updateValue(key, input);
		}

		const QString key_ret = key;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray key_b = key_ret.toUtf8();
		struct miqt_string key_ms;
		key_ms.len = key_b.length();
		key_ms.data = static_cast<char*>(malloc(key_ms.len));
		memcpy(key_ms.data, key_b.data(), key_ms.len);
		struct miqt_string sigval1 = key_ms;
		const QVariant& input_ret = input;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&input_ret);

		QVariant* callback_return_value = vtbl->updateValue(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	friend QVariant* QQmlPropertyMap_virtualbase_updateValue(void* self, struct miqt_string key, QVariant* input);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQmlPropertyMap::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QQmlPropertyMap_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQmlPropertyMap::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QQmlPropertyMap_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQmlPropertyMap::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QQmlPropertyMap_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQmlPropertyMap::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QQmlPropertyMap_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQmlPropertyMap::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QQmlPropertyMap_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQmlPropertyMap::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QQmlPropertyMap_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQmlPropertyMap::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QQmlPropertyMap_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQmlPropertyMap_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QQmlPropertyMap_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QQmlPropertyMap_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QQmlPropertyMap_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QQmlPropertyMap* QQmlPropertyMap_new(struct QQmlPropertyMap_VTable* vtbl) {
	return new VirtualQQmlPropertyMap(vtbl);
}

QQmlPropertyMap* QQmlPropertyMap_new2(struct QQmlPropertyMap_VTable* vtbl, QObject* parent) {
	return new VirtualQQmlPropertyMap(vtbl, parent);
}

void QQmlPropertyMap_virtbase(QQmlPropertyMap* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQmlPropertyMap_metaObject(const QQmlPropertyMap* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQmlPropertyMap_metacast(QQmlPropertyMap* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQmlPropertyMap_metacall(QQmlPropertyMap* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQmlPropertyMap_tr(const char* s) {
	QString _ret = QQmlPropertyMap::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlPropertyMap_trUtf8(const char* s) {
	QString _ret = QQmlPropertyMap::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVariant* QQmlPropertyMap_value(const QQmlPropertyMap* self, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QVariant(self->value(key_QString));
}

void QQmlPropertyMap_insert(QQmlPropertyMap* self, struct miqt_string key, QVariant* value) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->insert(key_QString, *value);
}

void QQmlPropertyMap_clear(QQmlPropertyMap* self, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->clear(key_QString);
}

struct miqt_array /* of struct miqt_string */  QQmlPropertyMap_keys(const QQmlPropertyMap* self) {
	QStringList _ret = self->keys();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QQmlPropertyMap_count(const QQmlPropertyMap* self) {
	return self->count();
}

int QQmlPropertyMap_size(const QQmlPropertyMap* self) {
	return self->size();
}

bool QQmlPropertyMap_isEmpty(const QQmlPropertyMap* self) {
	return self->isEmpty();
}

bool QQmlPropertyMap_contains(const QQmlPropertyMap* self, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return self->contains(key_QString);
}

QVariant* QQmlPropertyMap_operatorSubscript(QQmlPropertyMap* self, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	QVariant& _ret = self->operator[](key_QString);
	// Cast returned reference into pointer
	return &_ret;
}

QVariant* QQmlPropertyMap_operatorSubscriptWithKey(const QQmlPropertyMap* self, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QVariant(self->operator[](key_QString));
}

void QQmlPropertyMap_valueChanged(QQmlPropertyMap* self, struct miqt_string key, QVariant* value) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->valueChanged(key_QString, *value);
}

void QQmlPropertyMap_connect_valueChanged(QQmlPropertyMap* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string, QVariant*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string, QVariant*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string, QVariant*);
		void operator()(const QString& key, const QVariant& value) {
			const QString key_ret = key;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray key_b = key_ret.toUtf8();
			struct miqt_string key_ms;
			key_ms.len = key_b.length();
			key_ms.data = static_cast<char*>(malloc(key_ms.len));
			memcpy(key_ms.data, key_b.data(), key_ms.len);
			struct miqt_string sigval1 = key_ms;
			const QVariant& value_ret = value;
			// Cast returned reference into pointer
			QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQQmlPropertyMap::connect(self, static_cast<void (QQmlPropertyMap::*)(const QString&, const QVariant&)>(&QQmlPropertyMap::valueChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QQmlPropertyMap_tr2(const char* s, const char* c) {
	QString _ret = QQmlPropertyMap::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlPropertyMap_tr3(const char* s, const char* c, int n) {
	QString _ret = QQmlPropertyMap::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlPropertyMap_trUtf82(const char* s, const char* c) {
	QString _ret = QQmlPropertyMap::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlPropertyMap_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQmlPropertyMap::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QQmlPropertyMap_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQQmlPropertyMap*)(self) )->QQmlPropertyMap::metaObject();

}

void* QQmlPropertyMap_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQQmlPropertyMap*)(self) )->QQmlPropertyMap::qt_metacast(param1);

}

int QQmlPropertyMap_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQQmlPropertyMap*)(self) )->QQmlPropertyMap::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QVariant* QQmlPropertyMap_virtualbase_updateValue(void* self, struct miqt_string key, QVariant* input) {
	QString key_QString = QString::fromUtf8(key.data, key.len);

	return new QVariant(( (VirtualQQmlPropertyMap*)(self) )->QQmlPropertyMap::updateValue(key_QString, *input));

}

bool QQmlPropertyMap_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQQmlPropertyMap*)(self) )->QQmlPropertyMap::event(event);

}

bool QQmlPropertyMap_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQQmlPropertyMap*)(self) )->QQmlPropertyMap::eventFilter(watched, event);

}

void QQmlPropertyMap_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQQmlPropertyMap*)(self) )->QQmlPropertyMap::timerEvent(event);

}

void QQmlPropertyMap_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQQmlPropertyMap*)(self) )->QQmlPropertyMap::childEvent(event);

}

void QQmlPropertyMap_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQQmlPropertyMap*)(self) )->QQmlPropertyMap::customEvent(event);

}

void QQmlPropertyMap_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQmlPropertyMap*)(self) )->QQmlPropertyMap::connectNotify(*signal);

}

void QQmlPropertyMap_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQQmlPropertyMap*)(self) )->QQmlPropertyMap::disconnectNotify(*signal);

}

const QMetaObject* QQmlPropertyMap_staticMetaObject() { return &QQmlPropertyMap::staticMetaObject; }
QObject* QQmlPropertyMap_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQmlPropertyMap* self_cast = dynamic_cast<VirtualQQmlPropertyMap*>( (QQmlPropertyMap*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QQmlPropertyMap_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQQmlPropertyMap* self_cast = dynamic_cast<VirtualQQmlPropertyMap*>( (QQmlPropertyMap*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QQmlPropertyMap_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQQmlPropertyMap* self_cast = dynamic_cast<VirtualQQmlPropertyMap*>( (QQmlPropertyMap*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QQmlPropertyMap_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQQmlPropertyMap* self_cast = dynamic_cast<VirtualQQmlPropertyMap*>( (QQmlPropertyMap*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QQmlPropertyMap_delete(QQmlPropertyMap* self) {
	delete self;
}

