#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSignalMapper>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qsignalmapper.h>
#include "gen_qsignalmapper.h"
class VirtualQSignalMapper final : public QSignalMapper {
	const QSignalMapper_VTable* vtbl;
	void* vdata;
public:
	friend const QSignalMapper_VTable* QSignalMapper_vtbl(const VirtualQSignalMapper* self);
	friend void* QSignalMapper_vdata(const VirtualQSignalMapper* self);
	friend void QSignalMapper_setVdata(VirtualQSignalMapper* self, void* vdata);

	VirtualQSignalMapper(const QSignalMapper_VTable* vtbl, void* vdata): QSignalMapper(), vtbl(vtbl), vdata(vdata) {}
	VirtualQSignalMapper(const QSignalMapper_VTable* vtbl, void* vdata, QObject* parent): QSignalMapper(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSignalMapper() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSignalMapper::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSignalMapper_virtualbase_metaObject(const VirtualQSignalMapper* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSignalMapper::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSignalMapper_virtualbase_metacast(VirtualQSignalMapper* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSignalMapper::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSignalMapper_virtualbase_metacall(VirtualQSignalMapper* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSignalMapper::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSignalMapper_virtualbase_event(VirtualQSignalMapper* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSignalMapper::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSignalMapper_virtualbase_eventFilter(VirtualQSignalMapper* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSignalMapper::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSignalMapper_virtualbase_timerEvent(VirtualQSignalMapper* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSignalMapper::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSignalMapper_virtualbase_childEvent(VirtualQSignalMapper* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSignalMapper::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSignalMapper_virtualbase_customEvent(VirtualQSignalMapper* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSignalMapper::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSignalMapper_virtualbase_connectNotify(VirtualQSignalMapper* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSignalMapper::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSignalMapper_virtualbase_disconnectNotify(VirtualQSignalMapper* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSignalMapper_protectedbase_sender(const VirtualQSignalMapper* self);
	friend int QSignalMapper_protectedbase_senderSignalIndex(const VirtualQSignalMapper* self);
	friend int QSignalMapper_protectedbase_receivers(const VirtualQSignalMapper* self, const char* signal);
	friend bool QSignalMapper_protectedbase_isSignalConnected(const VirtualQSignalMapper* self, QMetaMethod* signal);
};

VirtualQSignalMapper* QSignalMapper_new(const QSignalMapper_VTable* vtbl, void* vdata) {
	return new VirtualQSignalMapper(vtbl, vdata);
}

VirtualQSignalMapper* QSignalMapper_new2(const QSignalMapper_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQSignalMapper(vtbl, vdata, parent);
}

void QSignalMapper_virtbase(QSignalMapper* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSignalMapper_metaObject(const QSignalMapper* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSignalMapper_metacast(QSignalMapper* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSignalMapper_metacall(QSignalMapper* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSignalMapper_tr(const char* s) {
	QString _ret = QSignalMapper::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSignalMapper_trUtf8(const char* s) {
	QString _ret = QSignalMapper::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSignalMapper_setMapping(QSignalMapper* self, QObject* sender, int id) {
	self->setMapping(sender, static_cast<int>(id));
}

void QSignalMapper_setMapping2(QSignalMapper* self, QObject* sender, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setMapping(sender, text_QString);
}

void QSignalMapper_setMapping3(QSignalMapper* self, QObject* sender, QObject* object) {
	self->setMapping(sender, object);
}

void QSignalMapper_removeMappings(QSignalMapper* self, QObject* sender) {
	self->removeMappings(sender);
}

QObject* QSignalMapper_mapping(const QSignalMapper* self, int id) {
	return self->mapping(static_cast<int>(id));
}

QObject* QSignalMapper_mappingWithText(const QSignalMapper* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->mapping(text_QString);
}

QObject* QSignalMapper_mappingWithObject(const QSignalMapper* self, QObject* object) {
	return self->mapping(object);
}

void QSignalMapper_mapped(QSignalMapper* self, int param1) {
	self->mapped(static_cast<int>(param1));
}

void QSignalMapper_connect_mapped(VirtualQSignalMapper* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int param1) {
			int sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQSignalMapper::connect(self, static_cast<void (QSignalMapper::*)(int)>(&QSignalMapper::mapped), self, local_caller{slot, callback, release});
}

void QSignalMapper_mappedWithQString(QSignalMapper* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->mapped(param1_QString);
}

void QSignalMapper_connect_mappedWithQString(VirtualQSignalMapper* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& param1) {
			const QString param1_ret = param1;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray param1_b = param1_ret.toUtf8();
			struct miqt_string param1_ms;
			param1_ms.len = param1_b.length();
			param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
			memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
			struct miqt_string sigval1 = param1_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQSignalMapper::connect(self, static_cast<void (QSignalMapper::*)(const QString&)>(&QSignalMapper::mapped), self, local_caller{slot, callback, release});
}

void QSignalMapper_mappedWithQObject(QSignalMapper* self, QObject* param1) {
	self->mapped(param1);
}

void QSignalMapper_connect_mappedWithQObject(VirtualQSignalMapper* self, intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QObject*);
		void operator()(QObject* param1) {
			QObject* sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQSignalMapper::connect(self, static_cast<void (QSignalMapper::*)(QObject*)>(&QSignalMapper::mapped), self, local_caller{slot, callback, release});
}

void QSignalMapper_mappedInt(QSignalMapper* self, int param1) {
	self->mappedInt(static_cast<int>(param1));
}

void QSignalMapper_connect_mappedInt(VirtualQSignalMapper* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int param1) {
			int sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQSignalMapper::connect(self, static_cast<void (QSignalMapper::*)(int)>(&QSignalMapper::mappedInt), self, local_caller{slot, callback, release});
}

void QSignalMapper_mappedString(QSignalMapper* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->mappedString(param1_QString);
}

void QSignalMapper_connect_mappedString(VirtualQSignalMapper* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& param1) {
			const QString param1_ret = param1;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray param1_b = param1_ret.toUtf8();
			struct miqt_string param1_ms;
			param1_ms.len = param1_b.length();
			param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
			memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
			struct miqt_string sigval1 = param1_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQSignalMapper::connect(self, static_cast<void (QSignalMapper::*)(const QString&)>(&QSignalMapper::mappedString), self, local_caller{slot, callback, release});
}

void QSignalMapper_mappedObject(QSignalMapper* self, QObject* param1) {
	self->mappedObject(param1);
}

void QSignalMapper_connect_mappedObject(VirtualQSignalMapper* self, intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QObject*);
		void operator()(QObject* param1) {
			QObject* sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQSignalMapper::connect(self, static_cast<void (QSignalMapper::*)(QObject*)>(&QSignalMapper::mappedObject), self, local_caller{slot, callback, release});
}

void QSignalMapper_map(QSignalMapper* self) {
	self->map();
}

void QSignalMapper_mapWithSender(QSignalMapper* self, QObject* sender) {
	self->map(sender);
}

struct miqt_string QSignalMapper_tr2(const char* s, const char* c) {
	QString _ret = QSignalMapper::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSignalMapper_tr3(const char* s, const char* c, int n) {
	QString _ret = QSignalMapper::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSignalMapper_trUtf82(const char* s, const char* c) {
	QString _ret = QSignalMapper::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSignalMapper_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSignalMapper::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSignalMapper_virtualbase_metaObject(const VirtualQSignalMapper* self) {

	return (QMetaObject*) self->QSignalMapper::metaObject();
}

void* QSignalMapper_virtualbase_metacast(VirtualQSignalMapper* self, const char* param1) {

	return self->QSignalMapper::qt_metacast(param1);
}

int QSignalMapper_virtualbase_metacall(VirtualQSignalMapper* self, int param1, int param2, void** param3) {

	return self->QSignalMapper::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QSignalMapper_virtualbase_event(VirtualQSignalMapper* self, QEvent* event) {

	return self->QSignalMapper::event(event);
}

bool QSignalMapper_virtualbase_eventFilter(VirtualQSignalMapper* self, QObject* watched, QEvent* event) {

	return self->QSignalMapper::eventFilter(watched, event);
}

void QSignalMapper_virtualbase_timerEvent(VirtualQSignalMapper* self, QTimerEvent* event) {

	self->QSignalMapper::timerEvent(event);
}

void QSignalMapper_virtualbase_childEvent(VirtualQSignalMapper* self, QChildEvent* event) {

	self->QSignalMapper::childEvent(event);
}

void QSignalMapper_virtualbase_customEvent(VirtualQSignalMapper* self, QEvent* event) {

	self->QSignalMapper::customEvent(event);
}

void QSignalMapper_virtualbase_connectNotify(VirtualQSignalMapper* self, QMetaMethod* signal) {

	self->QSignalMapper::connectNotify(*signal);
}

void QSignalMapper_virtualbase_disconnectNotify(VirtualQSignalMapper* self, QMetaMethod* signal) {

	self->QSignalMapper::disconnectNotify(*signal);
}

const QMetaObject* QSignalMapper_staticMetaObject() { return &QSignalMapper::staticMetaObject; }

const QSignalMapper_VTable* QSignalMapper_vtbl(const VirtualQSignalMapper* self) { return self->vtbl; }
void* QSignalMapper_vdata(const VirtualQSignalMapper* self) { return self->vdata; }
void QSignalMapper_setVdata(VirtualQSignalMapper* self, void* vdata) { self->vdata = vdata; }

QObject* QSignalMapper_protectedbase_sender(const VirtualQSignalMapper* self) {
	return self->sender();
}

int QSignalMapper_protectedbase_senderSignalIndex(const VirtualQSignalMapper* self) {
	return self->senderSignalIndex();
}

int QSignalMapper_protectedbase_receivers(const VirtualQSignalMapper* self, const char* signal) {
	return self->receivers(signal);
}

bool QSignalMapper_protectedbase_isSignalConnected(const VirtualQSignalMapper* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSignalMapper_delete(QSignalMapper* self) {
	delete self;
}

