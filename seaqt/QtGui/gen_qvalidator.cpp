#include <QChildEvent>
#include <QDoubleValidator>
#include <QEvent>
#include <QIntValidator>
#include <QLocale>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRegExp>
#include <QRegExpValidator>
#include <QRegularExpression>
#include <QRegularExpressionValidator>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QValidator>
#include <qvalidator.h>
#include "gen_qvalidator.h"
class VirtualQValidator final : public QValidator {
	const QValidator_VTable* vtbl;
	void* vdata;
public:
	friend const QValidator_VTable* QValidator_vtbl(const VirtualQValidator* self);
	friend void* QValidator_vdata(const VirtualQValidator* self);
	friend void QValidator_setVdata(VirtualQValidator* self, void* vdata);

	VirtualQValidator(const QValidator_VTable* vtbl, void* vdata): QValidator(), vtbl(vtbl), vdata(vdata) {}
	VirtualQValidator(const QValidator_VTable* vtbl, void* vdata, QObject* parent): QValidator(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQValidator() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QValidator::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QValidator_virtualbase_metaObject(const VirtualQValidator* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QValidator::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QValidator_virtualbase_metacast(VirtualQValidator* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QValidator::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QValidator_virtualbase_metacall(VirtualQValidator* self, int param1, int param2, void** param3);

	virtual QValidator::State validate(QString& param1, int& param2) const override {
		if (vtbl->validate == 0) {
			return (QValidator::State)(0); // Pure virtual, there is no base we can call
		}

		QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;
		int* sigval2 = &param2;

		int callback_return_value = vtbl->validate(this, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	virtual void fixup(QString& param1) const override {
		if (vtbl->fixup == 0) {
			QValidator::fixup(param1);
			return;
		}

		QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;

		vtbl->fixup(this, sigval1);

	}

	friend void QValidator_virtualbase_fixup(const VirtualQValidator* self, struct miqt_string param1);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QValidator::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QValidator_virtualbase_event(VirtualQValidator* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QValidator::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QValidator_virtualbase_eventFilter(VirtualQValidator* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QValidator::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QValidator_virtualbase_timerEvent(VirtualQValidator* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QValidator::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QValidator_virtualbase_childEvent(VirtualQValidator* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QValidator::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QValidator_virtualbase_customEvent(VirtualQValidator* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QValidator::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QValidator_virtualbase_connectNotify(VirtualQValidator* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QValidator::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QValidator_virtualbase_disconnectNotify(VirtualQValidator* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QValidator_protectedbase_sender(const VirtualQValidator* self);
	friend int QValidator_protectedbase_senderSignalIndex(const VirtualQValidator* self);
	friend int QValidator_protectedbase_receivers(const VirtualQValidator* self, const char* signal);
	friend bool QValidator_protectedbase_isSignalConnected(const VirtualQValidator* self, QMetaMethod* signal);
};

VirtualQValidator* QValidator_new(const QValidator_VTable* vtbl, void* vdata) {
	return new VirtualQValidator(vtbl, vdata);
}

VirtualQValidator* QValidator_new2(const QValidator_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQValidator(vtbl, vdata, parent);
}

void QValidator_virtbase(QValidator* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QValidator_metaObject(const QValidator* self) {
	return (QMetaObject*) self->metaObject();
}

void* QValidator_metacast(QValidator* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QValidator_metacall(QValidator* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QValidator_tr(const char* s) {
	QString _ret = QValidator::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QValidator_trUtf8(const char* s) {
	QString _ret = QValidator::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QValidator_setLocale(QValidator* self, QLocale* locale) {
	self->setLocale(*locale);
}

QLocale* QValidator_locale(const QValidator* self) {
	return new QLocale(self->locale());
}

int QValidator_validate(const QValidator* self, struct miqt_string param1, int* param2) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	QValidator::State _ret = self->validate(param1_QString, static_cast<int&>(*param2));
	return static_cast<int>(_ret);
}

void QValidator_fixup(const QValidator* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->fixup(param1_QString);
}

void QValidator_changed(QValidator* self) {
	self->changed();
}

void QValidator_connect_changed(VirtualQValidator* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQValidator::connect(self, static_cast<void (QValidator::*)()>(&QValidator::changed), self, local_caller{slot, callback, release});
}

struct miqt_string QValidator_tr2(const char* s, const char* c) {
	QString _ret = QValidator::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QValidator_tr3(const char* s, const char* c, int n) {
	QString _ret = QValidator::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QValidator_trUtf82(const char* s, const char* c) {
	QString _ret = QValidator::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QValidator_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QValidator::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QValidator_virtualbase_metaObject(const VirtualQValidator* self) {

	return (QMetaObject*) self->QValidator::metaObject();
}

void* QValidator_virtualbase_metacast(VirtualQValidator* self, const char* param1) {

	return self->QValidator::qt_metacast(param1);
}

int QValidator_virtualbase_metacall(VirtualQValidator* self, int param1, int param2, void** param3) {

	return self->QValidator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QValidator_virtualbase_fixup(const VirtualQValidator* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);

	self->QValidator::fixup(param1_QString);
}

bool QValidator_virtualbase_event(VirtualQValidator* self, QEvent* event) {

	return self->QValidator::event(event);
}

bool QValidator_virtualbase_eventFilter(VirtualQValidator* self, QObject* watched, QEvent* event) {

	return self->QValidator::eventFilter(watched, event);
}

void QValidator_virtualbase_timerEvent(VirtualQValidator* self, QTimerEvent* event) {

	self->QValidator::timerEvent(event);
}

void QValidator_virtualbase_childEvent(VirtualQValidator* self, QChildEvent* event) {

	self->QValidator::childEvent(event);
}

void QValidator_virtualbase_customEvent(VirtualQValidator* self, QEvent* event) {

	self->QValidator::customEvent(event);
}

void QValidator_virtualbase_connectNotify(VirtualQValidator* self, QMetaMethod* signal) {

	self->QValidator::connectNotify(*signal);
}

void QValidator_virtualbase_disconnectNotify(VirtualQValidator* self, QMetaMethod* signal) {

	self->QValidator::disconnectNotify(*signal);
}

const QMetaObject* QValidator_staticMetaObject() { return &QValidator::staticMetaObject; }

const QValidator_VTable* QValidator_vtbl(const VirtualQValidator* self) { return self->vtbl; }
void* QValidator_vdata(const VirtualQValidator* self) { return self->vdata; }
void QValidator_setVdata(VirtualQValidator* self, void* vdata) { self->vdata = vdata; }

QObject* QValidator_protectedbase_sender(const VirtualQValidator* self) {
	return self->sender();
}

int QValidator_protectedbase_senderSignalIndex(const VirtualQValidator* self) {
	return self->senderSignalIndex();
}

int QValidator_protectedbase_receivers(const VirtualQValidator* self, const char* signal) {
	return self->receivers(signal);
}

bool QValidator_protectedbase_isSignalConnected(const VirtualQValidator* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QValidator_delete(QValidator* self) {
	delete self;
}

class VirtualQIntValidator final : public QIntValidator {
	const QIntValidator_VTable* vtbl;
	void* vdata;
public:
	friend const QIntValidator_VTable* QIntValidator_vtbl(const VirtualQIntValidator* self);
	friend void* QIntValidator_vdata(const VirtualQIntValidator* self);
	friend void QIntValidator_setVdata(VirtualQIntValidator* self, void* vdata);

	VirtualQIntValidator(const QIntValidator_VTable* vtbl, void* vdata): QIntValidator(), vtbl(vtbl), vdata(vdata) {}
	VirtualQIntValidator(const QIntValidator_VTable* vtbl, void* vdata, int bottom, int top): QIntValidator(bottom, top), vtbl(vtbl), vdata(vdata) {}
	VirtualQIntValidator(const QIntValidator_VTable* vtbl, void* vdata, QObject* parent): QIntValidator(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQIntValidator(const QIntValidator_VTable* vtbl, void* vdata, int bottom, int top, QObject* parent): QIntValidator(bottom, top, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQIntValidator() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QIntValidator::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QIntValidator_virtualbase_metaObject(const VirtualQIntValidator* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QIntValidator::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QIntValidator_virtualbase_metacast(VirtualQIntValidator* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QIntValidator::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QIntValidator_virtualbase_metacall(VirtualQIntValidator* self, int param1, int param2, void** param3);

	virtual QValidator::State validate(QString& param1, int& param2) const override {
		if (vtbl->validate == 0) {
			return QIntValidator::validate(param1, param2);
		}

		QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;
		int* sigval2 = &param2;

		int callback_return_value = vtbl->validate(this, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QIntValidator_virtualbase_validate(const VirtualQIntValidator* self, struct miqt_string param1, int* param2);

	virtual void fixup(QString& input) const override {
		if (vtbl->fixup == 0) {
			QIntValidator::fixup(input);
			return;
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct miqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct miqt_string sigval1 = input_ms;

		vtbl->fixup(this, sigval1);

	}

	friend void QIntValidator_virtualbase_fixup(const VirtualQIntValidator* self, struct miqt_string input);

	virtual void setRange(int bottom, int top) override {
		if (vtbl->setRange == 0) {
			QIntValidator::setRange(bottom, top);
			return;
		}

		int sigval1 = bottom;
		int sigval2 = top;

		vtbl->setRange(this, sigval1, sigval2);

	}

	friend void QIntValidator_virtualbase_setRange(VirtualQIntValidator* self, int bottom, int top);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QIntValidator::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QIntValidator_virtualbase_event(VirtualQIntValidator* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QIntValidator::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QIntValidator_virtualbase_eventFilter(VirtualQIntValidator* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QIntValidator::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QIntValidator_virtualbase_timerEvent(VirtualQIntValidator* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QIntValidator::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QIntValidator_virtualbase_childEvent(VirtualQIntValidator* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QIntValidator::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QIntValidator_virtualbase_customEvent(VirtualQIntValidator* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QIntValidator::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QIntValidator_virtualbase_connectNotify(VirtualQIntValidator* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QIntValidator::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QIntValidator_virtualbase_disconnectNotify(VirtualQIntValidator* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QIntValidator_protectedbase_sender(const VirtualQIntValidator* self);
	friend int QIntValidator_protectedbase_senderSignalIndex(const VirtualQIntValidator* self);
	friend int QIntValidator_protectedbase_receivers(const VirtualQIntValidator* self, const char* signal);
	friend bool QIntValidator_protectedbase_isSignalConnected(const VirtualQIntValidator* self, QMetaMethod* signal);
};

VirtualQIntValidator* QIntValidator_new(const QIntValidator_VTable* vtbl, void* vdata) {
	return new VirtualQIntValidator(vtbl, vdata);
}

VirtualQIntValidator* QIntValidator_new2(const QIntValidator_VTable* vtbl, void* vdata, int bottom, int top) {
	return new VirtualQIntValidator(vtbl, vdata, static_cast<int>(bottom), static_cast<int>(top));
}

VirtualQIntValidator* QIntValidator_new3(const QIntValidator_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQIntValidator(vtbl, vdata, parent);
}

VirtualQIntValidator* QIntValidator_new4(const QIntValidator_VTable* vtbl, void* vdata, int bottom, int top, QObject* parent) {
	return new VirtualQIntValidator(vtbl, vdata, static_cast<int>(bottom), static_cast<int>(top), parent);
}

void QIntValidator_virtbase(QIntValidator* src, QValidator** outptr_QValidator) {
	*outptr_QValidator = static_cast<QValidator*>(src);
}

QMetaObject* QIntValidator_metaObject(const QIntValidator* self) {
	return (QMetaObject*) self->metaObject();
}

void* QIntValidator_metacast(QIntValidator* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QIntValidator_metacall(QIntValidator* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QIntValidator_tr(const char* s) {
	QString _ret = QIntValidator::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QIntValidator_trUtf8(const char* s) {
	QString _ret = QIntValidator::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QIntValidator_validate(const QIntValidator* self, struct miqt_string param1, int* param2) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	QValidator::State _ret = self->validate(param1_QString, static_cast<int&>(*param2));
	return static_cast<int>(_ret);
}

void QIntValidator_fixup(const QIntValidator* self, struct miqt_string input) {
	QString input_QString = QString::fromUtf8(input.data, input.len);
	self->fixup(input_QString);
}

void QIntValidator_setBottom(QIntValidator* self, int bottom) {
	self->setBottom(static_cast<int>(bottom));
}

void QIntValidator_setTop(QIntValidator* self, int top) {
	self->setTop(static_cast<int>(top));
}

void QIntValidator_setRange(QIntValidator* self, int bottom, int top) {
	self->setRange(static_cast<int>(bottom), static_cast<int>(top));
}

int QIntValidator_bottom(const QIntValidator* self) {
	return self->bottom();
}

int QIntValidator_top(const QIntValidator* self) {
	return self->top();
}

void QIntValidator_bottomChanged(QIntValidator* self, int bottom) {
	self->bottomChanged(static_cast<int>(bottom));
}

void QIntValidator_connect_bottomChanged(VirtualQIntValidator* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int bottom) {
			int sigval1 = bottom;
			callback(slot, sigval1);
		}
	};
	VirtualQIntValidator::connect(self, static_cast<void (QIntValidator::*)(int)>(&QIntValidator::bottomChanged), self, local_caller{slot, callback, release});
}

void QIntValidator_topChanged(QIntValidator* self, int top) {
	self->topChanged(static_cast<int>(top));
}

void QIntValidator_connect_topChanged(VirtualQIntValidator* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int top) {
			int sigval1 = top;
			callback(slot, sigval1);
		}
	};
	VirtualQIntValidator::connect(self, static_cast<void (QIntValidator::*)(int)>(&QIntValidator::topChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QIntValidator_tr2(const char* s, const char* c) {
	QString _ret = QIntValidator::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QIntValidator_tr3(const char* s, const char* c, int n) {
	QString _ret = QIntValidator::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QIntValidator_trUtf82(const char* s, const char* c) {
	QString _ret = QIntValidator::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QIntValidator_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QIntValidator::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QIntValidator_virtualbase_metaObject(const VirtualQIntValidator* self) {

	return (QMetaObject*) self->QIntValidator::metaObject();
}

void* QIntValidator_virtualbase_metacast(VirtualQIntValidator* self, const char* param1) {

	return self->QIntValidator::qt_metacast(param1);
}

int QIntValidator_virtualbase_metacall(VirtualQIntValidator* self, int param1, int param2, void** param3) {

	return self->QIntValidator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QIntValidator_virtualbase_validate(const VirtualQIntValidator* self, struct miqt_string param1, int* param2) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);

	VirtualQIntValidator::State _ret = self->QIntValidator::validate(param1_QString, static_cast<int&>(*param2));
	return static_cast<int>(_ret);
}

void QIntValidator_virtualbase_fixup(const VirtualQIntValidator* self, struct miqt_string input) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	self->QIntValidator::fixup(input_QString);
}

void QIntValidator_virtualbase_setRange(VirtualQIntValidator* self, int bottom, int top) {

	self->QIntValidator::setRange(static_cast<int>(bottom), static_cast<int>(top));
}

bool QIntValidator_virtualbase_event(VirtualQIntValidator* self, QEvent* event) {

	return self->QIntValidator::event(event);
}

bool QIntValidator_virtualbase_eventFilter(VirtualQIntValidator* self, QObject* watched, QEvent* event) {

	return self->QIntValidator::eventFilter(watched, event);
}

void QIntValidator_virtualbase_timerEvent(VirtualQIntValidator* self, QTimerEvent* event) {

	self->QIntValidator::timerEvent(event);
}

void QIntValidator_virtualbase_childEvent(VirtualQIntValidator* self, QChildEvent* event) {

	self->QIntValidator::childEvent(event);
}

void QIntValidator_virtualbase_customEvent(VirtualQIntValidator* self, QEvent* event) {

	self->QIntValidator::customEvent(event);
}

void QIntValidator_virtualbase_connectNotify(VirtualQIntValidator* self, QMetaMethod* signal) {

	self->QIntValidator::connectNotify(*signal);
}

void QIntValidator_virtualbase_disconnectNotify(VirtualQIntValidator* self, QMetaMethod* signal) {

	self->QIntValidator::disconnectNotify(*signal);
}

const QMetaObject* QIntValidator_staticMetaObject() { return &QIntValidator::staticMetaObject; }

const QIntValidator_VTable* QIntValidator_vtbl(const VirtualQIntValidator* self) { return self->vtbl; }
void* QIntValidator_vdata(const VirtualQIntValidator* self) { return self->vdata; }
void QIntValidator_setVdata(VirtualQIntValidator* self, void* vdata) { self->vdata = vdata; }

QObject* QIntValidator_protectedbase_sender(const VirtualQIntValidator* self) {
	return self->sender();
}

int QIntValidator_protectedbase_senderSignalIndex(const VirtualQIntValidator* self) {
	return self->senderSignalIndex();
}

int QIntValidator_protectedbase_receivers(const VirtualQIntValidator* self, const char* signal) {
	return self->receivers(signal);
}

bool QIntValidator_protectedbase_isSignalConnected(const VirtualQIntValidator* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QIntValidator_delete(QIntValidator* self) {
	delete self;
}

class VirtualQDoubleValidator final : public QDoubleValidator {
	const QDoubleValidator_VTable* vtbl;
	void* vdata;
public:
	friend const QDoubleValidator_VTable* QDoubleValidator_vtbl(const VirtualQDoubleValidator* self);
	friend void* QDoubleValidator_vdata(const VirtualQDoubleValidator* self);
	friend void QDoubleValidator_setVdata(VirtualQDoubleValidator* self, void* vdata);

	VirtualQDoubleValidator(const QDoubleValidator_VTable* vtbl, void* vdata): QDoubleValidator(), vtbl(vtbl), vdata(vdata) {}
	VirtualQDoubleValidator(const QDoubleValidator_VTable* vtbl, void* vdata, double bottom, double top, int decimals): QDoubleValidator(bottom, top, decimals), vtbl(vtbl), vdata(vdata) {}
	VirtualQDoubleValidator(const QDoubleValidator_VTable* vtbl, void* vdata, QObject* parent): QDoubleValidator(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQDoubleValidator(const QDoubleValidator_VTable* vtbl, void* vdata, double bottom, double top, int decimals, QObject* parent): QDoubleValidator(bottom, top, decimals, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDoubleValidator() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDoubleValidator::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QDoubleValidator_virtualbase_metaObject(const VirtualQDoubleValidator* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDoubleValidator::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QDoubleValidator_virtualbase_metacast(VirtualQDoubleValidator* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDoubleValidator::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDoubleValidator_virtualbase_metacall(VirtualQDoubleValidator* self, int param1, int param2, void** param3);

	virtual QValidator::State validate(QString& param1, int& param2) const override {
		if (vtbl->validate == 0) {
			return QDoubleValidator::validate(param1, param2);
		}

		QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;
		int* sigval2 = &param2;

		int callback_return_value = vtbl->validate(this, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QDoubleValidator_virtualbase_validate(const VirtualQDoubleValidator* self, struct miqt_string param1, int* param2);

	virtual void setRange(double bottom, double top, int decimals) override {
		if (vtbl->setRange == 0) {
			QDoubleValidator::setRange(bottom, top, decimals);
			return;
		}

		double sigval1 = bottom;
		double sigval2 = top;
		int sigval3 = decimals;

		vtbl->setRange(this, sigval1, sigval2, sigval3);

	}

	friend void QDoubleValidator_virtualbase_setRange(VirtualQDoubleValidator* self, double bottom, double top, int decimals);

	virtual void fixup(QString& param1) const override {
		if (vtbl->fixup == 0) {
			QDoubleValidator::fixup(param1);
			return;
		}

		QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;

		vtbl->fixup(this, sigval1);

	}

	friend void QDoubleValidator_virtualbase_fixup(const VirtualQDoubleValidator* self, struct miqt_string param1);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDoubleValidator::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QDoubleValidator_virtualbase_event(VirtualQDoubleValidator* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDoubleValidator::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDoubleValidator_virtualbase_eventFilter(VirtualQDoubleValidator* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDoubleValidator::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QDoubleValidator_virtualbase_timerEvent(VirtualQDoubleValidator* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDoubleValidator::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QDoubleValidator_virtualbase_childEvent(VirtualQDoubleValidator* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDoubleValidator::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QDoubleValidator_virtualbase_customEvent(VirtualQDoubleValidator* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDoubleValidator::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QDoubleValidator_virtualbase_connectNotify(VirtualQDoubleValidator* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDoubleValidator::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QDoubleValidator_virtualbase_disconnectNotify(VirtualQDoubleValidator* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QDoubleValidator_protectedbase_sender(const VirtualQDoubleValidator* self);
	friend int QDoubleValidator_protectedbase_senderSignalIndex(const VirtualQDoubleValidator* self);
	friend int QDoubleValidator_protectedbase_receivers(const VirtualQDoubleValidator* self, const char* signal);
	friend bool QDoubleValidator_protectedbase_isSignalConnected(const VirtualQDoubleValidator* self, QMetaMethod* signal);
};

VirtualQDoubleValidator* QDoubleValidator_new(const QDoubleValidator_VTable* vtbl, void* vdata) {
	return new VirtualQDoubleValidator(vtbl, vdata);
}

VirtualQDoubleValidator* QDoubleValidator_new2(const QDoubleValidator_VTable* vtbl, void* vdata, double bottom, double top, int decimals) {
	return new VirtualQDoubleValidator(vtbl, vdata, static_cast<double>(bottom), static_cast<double>(top), static_cast<int>(decimals));
}

VirtualQDoubleValidator* QDoubleValidator_new3(const QDoubleValidator_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQDoubleValidator(vtbl, vdata, parent);
}

VirtualQDoubleValidator* QDoubleValidator_new4(const QDoubleValidator_VTable* vtbl, void* vdata, double bottom, double top, int decimals, QObject* parent) {
	return new VirtualQDoubleValidator(vtbl, vdata, static_cast<double>(bottom), static_cast<double>(top), static_cast<int>(decimals), parent);
}

void QDoubleValidator_virtbase(QDoubleValidator* src, QValidator** outptr_QValidator) {
	*outptr_QValidator = static_cast<QValidator*>(src);
}

QMetaObject* QDoubleValidator_metaObject(const QDoubleValidator* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDoubleValidator_metacast(QDoubleValidator* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDoubleValidator_metacall(QDoubleValidator* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDoubleValidator_tr(const char* s) {
	QString _ret = QDoubleValidator::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDoubleValidator_trUtf8(const char* s) {
	QString _ret = QDoubleValidator::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDoubleValidator_validate(const QDoubleValidator* self, struct miqt_string param1, int* param2) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	QValidator::State _ret = self->validate(param1_QString, static_cast<int&>(*param2));
	return static_cast<int>(_ret);
}

void QDoubleValidator_setRange(QDoubleValidator* self, double bottom, double top, int decimals) {
	self->setRange(static_cast<double>(bottom), static_cast<double>(top), static_cast<int>(decimals));
}

void QDoubleValidator_setBottom(QDoubleValidator* self, double bottom) {
	self->setBottom(static_cast<double>(bottom));
}

void QDoubleValidator_setTop(QDoubleValidator* self, double top) {
	self->setTop(static_cast<double>(top));
}

void QDoubleValidator_setDecimals(QDoubleValidator* self, int decimals) {
	self->setDecimals(static_cast<int>(decimals));
}

void QDoubleValidator_setNotation(QDoubleValidator* self, int notation) {
	self->setNotation(static_cast<QDoubleValidator::Notation>(notation));
}

double QDoubleValidator_bottom(const QDoubleValidator* self) {
	return self->bottom();
}

double QDoubleValidator_top(const QDoubleValidator* self) {
	return self->top();
}

int QDoubleValidator_decimals(const QDoubleValidator* self) {
	return self->decimals();
}

int QDoubleValidator_notation(const QDoubleValidator* self) {
	QDoubleValidator::Notation _ret = self->notation();
	return static_cast<int>(_ret);
}

void QDoubleValidator_bottomChanged(QDoubleValidator* self, double bottom) {
	self->bottomChanged(static_cast<double>(bottom));
}

void QDoubleValidator_connect_bottomChanged(VirtualQDoubleValidator* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, double);
		void operator()(double bottom) {
			double sigval1 = bottom;
			callback(slot, sigval1);
		}
	};
	VirtualQDoubleValidator::connect(self, static_cast<void (QDoubleValidator::*)(double)>(&QDoubleValidator::bottomChanged), self, local_caller{slot, callback, release});
}

void QDoubleValidator_topChanged(QDoubleValidator* self, double top) {
	self->topChanged(static_cast<double>(top));
}

void QDoubleValidator_connect_topChanged(VirtualQDoubleValidator* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, double);
		void operator()(double top) {
			double sigval1 = top;
			callback(slot, sigval1);
		}
	};
	VirtualQDoubleValidator::connect(self, static_cast<void (QDoubleValidator::*)(double)>(&QDoubleValidator::topChanged), self, local_caller{slot, callback, release});
}

void QDoubleValidator_decimalsChanged(QDoubleValidator* self, int decimals) {
	self->decimalsChanged(static_cast<int>(decimals));
}

void QDoubleValidator_connect_decimalsChanged(VirtualQDoubleValidator* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int decimals) {
			int sigval1 = decimals;
			callback(slot, sigval1);
		}
	};
	VirtualQDoubleValidator::connect(self, static_cast<void (QDoubleValidator::*)(int)>(&QDoubleValidator::decimalsChanged), self, local_caller{slot, callback, release});
}

void QDoubleValidator_notationChanged(QDoubleValidator* self, int notation) {
	self->notationChanged(static_cast<QDoubleValidator::Notation>(notation));
}

void QDoubleValidator_connect_notationChanged(VirtualQDoubleValidator* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QDoubleValidator::Notation notation) {
			QDoubleValidator::Notation notation_ret = notation;
			int sigval1 = static_cast<int>(notation_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQDoubleValidator::connect(self, static_cast<void (QDoubleValidator::*)(QDoubleValidator::Notation)>(&QDoubleValidator::notationChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QDoubleValidator_tr2(const char* s, const char* c) {
	QString _ret = QDoubleValidator::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDoubleValidator_tr3(const char* s, const char* c, int n) {
	QString _ret = QDoubleValidator::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDoubleValidator_trUtf82(const char* s, const char* c) {
	QString _ret = QDoubleValidator::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDoubleValidator_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QDoubleValidator::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDoubleValidator_virtualbase_metaObject(const VirtualQDoubleValidator* self) {

	return (QMetaObject*) self->QDoubleValidator::metaObject();
}

void* QDoubleValidator_virtualbase_metacast(VirtualQDoubleValidator* self, const char* param1) {

	return self->QDoubleValidator::qt_metacast(param1);
}

int QDoubleValidator_virtualbase_metacall(VirtualQDoubleValidator* self, int param1, int param2, void** param3) {

	return self->QDoubleValidator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QDoubleValidator_virtualbase_validate(const VirtualQDoubleValidator* self, struct miqt_string param1, int* param2) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);

	VirtualQDoubleValidator::State _ret = self->QDoubleValidator::validate(param1_QString, static_cast<int&>(*param2));
	return static_cast<int>(_ret);
}

void QDoubleValidator_virtualbase_setRange(VirtualQDoubleValidator* self, double bottom, double top, int decimals) {

	self->QDoubleValidator::setRange(static_cast<double>(bottom), static_cast<double>(top), static_cast<int>(decimals));
}

void QDoubleValidator_virtualbase_fixup(const VirtualQDoubleValidator* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);

	self->QDoubleValidator::fixup(param1_QString);
}

bool QDoubleValidator_virtualbase_event(VirtualQDoubleValidator* self, QEvent* event) {

	return self->QDoubleValidator::event(event);
}

bool QDoubleValidator_virtualbase_eventFilter(VirtualQDoubleValidator* self, QObject* watched, QEvent* event) {

	return self->QDoubleValidator::eventFilter(watched, event);
}

void QDoubleValidator_virtualbase_timerEvent(VirtualQDoubleValidator* self, QTimerEvent* event) {

	self->QDoubleValidator::timerEvent(event);
}

void QDoubleValidator_virtualbase_childEvent(VirtualQDoubleValidator* self, QChildEvent* event) {

	self->QDoubleValidator::childEvent(event);
}

void QDoubleValidator_virtualbase_customEvent(VirtualQDoubleValidator* self, QEvent* event) {

	self->QDoubleValidator::customEvent(event);
}

void QDoubleValidator_virtualbase_connectNotify(VirtualQDoubleValidator* self, QMetaMethod* signal) {

	self->QDoubleValidator::connectNotify(*signal);
}

void QDoubleValidator_virtualbase_disconnectNotify(VirtualQDoubleValidator* self, QMetaMethod* signal) {

	self->QDoubleValidator::disconnectNotify(*signal);
}

const QMetaObject* QDoubleValidator_staticMetaObject() { return &QDoubleValidator::staticMetaObject; }

const QDoubleValidator_VTable* QDoubleValidator_vtbl(const VirtualQDoubleValidator* self) { return self->vtbl; }
void* QDoubleValidator_vdata(const VirtualQDoubleValidator* self) { return self->vdata; }
void QDoubleValidator_setVdata(VirtualQDoubleValidator* self, void* vdata) { self->vdata = vdata; }

QObject* QDoubleValidator_protectedbase_sender(const VirtualQDoubleValidator* self) {
	return self->sender();
}

int QDoubleValidator_protectedbase_senderSignalIndex(const VirtualQDoubleValidator* self) {
	return self->senderSignalIndex();
}

int QDoubleValidator_protectedbase_receivers(const VirtualQDoubleValidator* self, const char* signal) {
	return self->receivers(signal);
}

bool QDoubleValidator_protectedbase_isSignalConnected(const VirtualQDoubleValidator* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDoubleValidator_delete(QDoubleValidator* self) {
	delete self;
}

class VirtualQRegExpValidator final : public QRegExpValidator {
	const QRegExpValidator_VTable* vtbl;
	void* vdata;
public:
	friend const QRegExpValidator_VTable* QRegExpValidator_vtbl(const VirtualQRegExpValidator* self);
	friend void* QRegExpValidator_vdata(const VirtualQRegExpValidator* self);
	friend void QRegExpValidator_setVdata(VirtualQRegExpValidator* self, void* vdata);

	VirtualQRegExpValidator(const QRegExpValidator_VTable* vtbl, void* vdata): QRegExpValidator(), vtbl(vtbl), vdata(vdata) {}
	VirtualQRegExpValidator(const QRegExpValidator_VTable* vtbl, void* vdata, const QRegExp& rx): QRegExpValidator(rx), vtbl(vtbl), vdata(vdata) {}
	VirtualQRegExpValidator(const QRegExpValidator_VTable* vtbl, void* vdata, QObject* parent): QRegExpValidator(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQRegExpValidator(const QRegExpValidator_VTable* vtbl, void* vdata, const QRegExp& rx, QObject* parent): QRegExpValidator(rx, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQRegExpValidator() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRegExpValidator::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QRegExpValidator_virtualbase_metaObject(const VirtualQRegExpValidator* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRegExpValidator::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QRegExpValidator_virtualbase_metacast(VirtualQRegExpValidator* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRegExpValidator::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QRegExpValidator_virtualbase_metacall(VirtualQRegExpValidator* self, int param1, int param2, void** param3);

	virtual QValidator::State validate(QString& input, int& pos) const override {
		if (vtbl->validate == 0) {
			return QRegExpValidator::validate(input, pos);
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct miqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct miqt_string sigval1 = input_ms;
		int* sigval2 = &pos;

		int callback_return_value = vtbl->validate(this, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QRegExpValidator_virtualbase_validate(const VirtualQRegExpValidator* self, struct miqt_string input, int* pos);

	virtual void fixup(QString& param1) const override {
		if (vtbl->fixup == 0) {
			QRegExpValidator::fixup(param1);
			return;
		}

		QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;

		vtbl->fixup(this, sigval1);

	}

	friend void QRegExpValidator_virtualbase_fixup(const VirtualQRegExpValidator* self, struct miqt_string param1);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QRegExpValidator::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QRegExpValidator_virtualbase_event(VirtualQRegExpValidator* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRegExpValidator::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QRegExpValidator_virtualbase_eventFilter(VirtualQRegExpValidator* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QRegExpValidator::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QRegExpValidator_virtualbase_timerEvent(VirtualQRegExpValidator* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRegExpValidator::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QRegExpValidator_virtualbase_childEvent(VirtualQRegExpValidator* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRegExpValidator::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QRegExpValidator_virtualbase_customEvent(VirtualQRegExpValidator* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRegExpValidator::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QRegExpValidator_virtualbase_connectNotify(VirtualQRegExpValidator* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRegExpValidator::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QRegExpValidator_virtualbase_disconnectNotify(VirtualQRegExpValidator* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QRegExpValidator_protectedbase_sender(const VirtualQRegExpValidator* self);
	friend int QRegExpValidator_protectedbase_senderSignalIndex(const VirtualQRegExpValidator* self);
	friend int QRegExpValidator_protectedbase_receivers(const VirtualQRegExpValidator* self, const char* signal);
	friend bool QRegExpValidator_protectedbase_isSignalConnected(const VirtualQRegExpValidator* self, QMetaMethod* signal);
};

VirtualQRegExpValidator* QRegExpValidator_new(const QRegExpValidator_VTable* vtbl, void* vdata) {
	return new VirtualQRegExpValidator(vtbl, vdata);
}

VirtualQRegExpValidator* QRegExpValidator_new2(const QRegExpValidator_VTable* vtbl, void* vdata, QRegExp* rx) {
	return new VirtualQRegExpValidator(vtbl, vdata, *rx);
}

VirtualQRegExpValidator* QRegExpValidator_new3(const QRegExpValidator_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQRegExpValidator(vtbl, vdata, parent);
}

VirtualQRegExpValidator* QRegExpValidator_new4(const QRegExpValidator_VTable* vtbl, void* vdata, QRegExp* rx, QObject* parent) {
	return new VirtualQRegExpValidator(vtbl, vdata, *rx, parent);
}

void QRegExpValidator_virtbase(QRegExpValidator* src, QValidator** outptr_QValidator) {
	*outptr_QValidator = static_cast<QValidator*>(src);
}

QMetaObject* QRegExpValidator_metaObject(const QRegExpValidator* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRegExpValidator_metacast(QRegExpValidator* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRegExpValidator_metacall(QRegExpValidator* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QRegExpValidator_tr(const char* s) {
	QString _ret = QRegExpValidator::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRegExpValidator_trUtf8(const char* s) {
	QString _ret = QRegExpValidator::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QRegExpValidator_validate(const QRegExpValidator* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);
	QValidator::State _ret = self->validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);
}

void QRegExpValidator_setRegExp(QRegExpValidator* self, QRegExp* rx) {
	self->setRegExp(*rx);
}

QRegExp* QRegExpValidator_regExp(const QRegExpValidator* self) {
	const QRegExp& _ret = self->regExp();
	// Cast returned reference into pointer
	return const_cast<QRegExp*>(&_ret);
}

void QRegExpValidator_regExpChanged(QRegExpValidator* self, QRegExp* regExp) {
	self->regExpChanged(*regExp);
}

void QRegExpValidator_connect_regExpChanged(VirtualQRegExpValidator* self, intptr_t slot, void (*callback)(intptr_t, QRegExp*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QRegExp*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QRegExp*);
		void operator()(const QRegExp& regExp) {
			const QRegExp& regExp_ret = regExp;
			// Cast returned reference into pointer
			QRegExp* sigval1 = const_cast<QRegExp*>(&regExp_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQRegExpValidator::connect(self, static_cast<void (QRegExpValidator::*)(const QRegExp&)>(&QRegExpValidator::regExpChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QRegExpValidator_tr2(const char* s, const char* c) {
	QString _ret = QRegExpValidator::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRegExpValidator_tr3(const char* s, const char* c, int n) {
	QString _ret = QRegExpValidator::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRegExpValidator_trUtf82(const char* s, const char* c) {
	QString _ret = QRegExpValidator::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRegExpValidator_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QRegExpValidator::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QRegExpValidator_virtualbase_metaObject(const VirtualQRegExpValidator* self) {

	return (QMetaObject*) self->QRegExpValidator::metaObject();
}

void* QRegExpValidator_virtualbase_metacast(VirtualQRegExpValidator* self, const char* param1) {

	return self->QRegExpValidator::qt_metacast(param1);
}

int QRegExpValidator_virtualbase_metacall(VirtualQRegExpValidator* self, int param1, int param2, void** param3) {

	return self->QRegExpValidator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QRegExpValidator_virtualbase_validate(const VirtualQRegExpValidator* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	VirtualQRegExpValidator::State _ret = self->QRegExpValidator::validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);
}

void QRegExpValidator_virtualbase_fixup(const VirtualQRegExpValidator* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);

	self->QRegExpValidator::fixup(param1_QString);
}

bool QRegExpValidator_virtualbase_event(VirtualQRegExpValidator* self, QEvent* event) {

	return self->QRegExpValidator::event(event);
}

bool QRegExpValidator_virtualbase_eventFilter(VirtualQRegExpValidator* self, QObject* watched, QEvent* event) {

	return self->QRegExpValidator::eventFilter(watched, event);
}

void QRegExpValidator_virtualbase_timerEvent(VirtualQRegExpValidator* self, QTimerEvent* event) {

	self->QRegExpValidator::timerEvent(event);
}

void QRegExpValidator_virtualbase_childEvent(VirtualQRegExpValidator* self, QChildEvent* event) {

	self->QRegExpValidator::childEvent(event);
}

void QRegExpValidator_virtualbase_customEvent(VirtualQRegExpValidator* self, QEvent* event) {

	self->QRegExpValidator::customEvent(event);
}

void QRegExpValidator_virtualbase_connectNotify(VirtualQRegExpValidator* self, QMetaMethod* signal) {

	self->QRegExpValidator::connectNotify(*signal);
}

void QRegExpValidator_virtualbase_disconnectNotify(VirtualQRegExpValidator* self, QMetaMethod* signal) {

	self->QRegExpValidator::disconnectNotify(*signal);
}

const QMetaObject* QRegExpValidator_staticMetaObject() { return &QRegExpValidator::staticMetaObject; }

const QRegExpValidator_VTable* QRegExpValidator_vtbl(const VirtualQRegExpValidator* self) { return self->vtbl; }
void* QRegExpValidator_vdata(const VirtualQRegExpValidator* self) { return self->vdata; }
void QRegExpValidator_setVdata(VirtualQRegExpValidator* self, void* vdata) { self->vdata = vdata; }

QObject* QRegExpValidator_protectedbase_sender(const VirtualQRegExpValidator* self) {
	return self->sender();
}

int QRegExpValidator_protectedbase_senderSignalIndex(const VirtualQRegExpValidator* self) {
	return self->senderSignalIndex();
}

int QRegExpValidator_protectedbase_receivers(const VirtualQRegExpValidator* self, const char* signal) {
	return self->receivers(signal);
}

bool QRegExpValidator_protectedbase_isSignalConnected(const VirtualQRegExpValidator* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QRegExpValidator_delete(QRegExpValidator* self) {
	delete self;
}

class VirtualQRegularExpressionValidator final : public QRegularExpressionValidator {
	const QRegularExpressionValidator_VTable* vtbl;
	void* vdata;
public:
	friend const QRegularExpressionValidator_VTable* QRegularExpressionValidator_vtbl(const VirtualQRegularExpressionValidator* self);
	friend void* QRegularExpressionValidator_vdata(const VirtualQRegularExpressionValidator* self);
	friend void QRegularExpressionValidator_setVdata(VirtualQRegularExpressionValidator* self, void* vdata);

	VirtualQRegularExpressionValidator(const QRegularExpressionValidator_VTable* vtbl, void* vdata): QRegularExpressionValidator(), vtbl(vtbl), vdata(vdata) {}
	VirtualQRegularExpressionValidator(const QRegularExpressionValidator_VTable* vtbl, void* vdata, const QRegularExpression& re): QRegularExpressionValidator(re), vtbl(vtbl), vdata(vdata) {}
	VirtualQRegularExpressionValidator(const QRegularExpressionValidator_VTable* vtbl, void* vdata, QObject* parent): QRegularExpressionValidator(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQRegularExpressionValidator(const QRegularExpressionValidator_VTable* vtbl, void* vdata, const QRegularExpression& re, QObject* parent): QRegularExpressionValidator(re, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQRegularExpressionValidator() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRegularExpressionValidator::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QRegularExpressionValidator_virtualbase_metaObject(const VirtualQRegularExpressionValidator* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRegularExpressionValidator::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QRegularExpressionValidator_virtualbase_metacast(VirtualQRegularExpressionValidator* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRegularExpressionValidator::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QRegularExpressionValidator_virtualbase_metacall(VirtualQRegularExpressionValidator* self, int param1, int param2, void** param3);

	virtual QValidator::State validate(QString& input, int& pos) const override {
		if (vtbl->validate == 0) {
			return QRegularExpressionValidator::validate(input, pos);
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct miqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct miqt_string sigval1 = input_ms;
		int* sigval2 = &pos;

		int callback_return_value = vtbl->validate(this, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QRegularExpressionValidator_virtualbase_validate(const VirtualQRegularExpressionValidator* self, struct miqt_string input, int* pos);

	virtual void fixup(QString& param1) const override {
		if (vtbl->fixup == 0) {
			QRegularExpressionValidator::fixup(param1);
			return;
		}

		QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;

		vtbl->fixup(this, sigval1);

	}

	friend void QRegularExpressionValidator_virtualbase_fixup(const VirtualQRegularExpressionValidator* self, struct miqt_string param1);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QRegularExpressionValidator::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QRegularExpressionValidator_virtualbase_event(VirtualQRegularExpressionValidator* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRegularExpressionValidator::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QRegularExpressionValidator_virtualbase_eventFilter(VirtualQRegularExpressionValidator* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QRegularExpressionValidator::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QRegularExpressionValidator_virtualbase_timerEvent(VirtualQRegularExpressionValidator* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRegularExpressionValidator::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QRegularExpressionValidator_virtualbase_childEvent(VirtualQRegularExpressionValidator* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRegularExpressionValidator::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QRegularExpressionValidator_virtualbase_customEvent(VirtualQRegularExpressionValidator* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRegularExpressionValidator::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QRegularExpressionValidator_virtualbase_connectNotify(VirtualQRegularExpressionValidator* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRegularExpressionValidator::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QRegularExpressionValidator_virtualbase_disconnectNotify(VirtualQRegularExpressionValidator* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QRegularExpressionValidator_protectedbase_sender(const VirtualQRegularExpressionValidator* self);
	friend int QRegularExpressionValidator_protectedbase_senderSignalIndex(const VirtualQRegularExpressionValidator* self);
	friend int QRegularExpressionValidator_protectedbase_receivers(const VirtualQRegularExpressionValidator* self, const char* signal);
	friend bool QRegularExpressionValidator_protectedbase_isSignalConnected(const VirtualQRegularExpressionValidator* self, QMetaMethod* signal);
};

VirtualQRegularExpressionValidator* QRegularExpressionValidator_new(const QRegularExpressionValidator_VTable* vtbl, void* vdata) {
	return new VirtualQRegularExpressionValidator(vtbl, vdata);
}

VirtualQRegularExpressionValidator* QRegularExpressionValidator_new2(const QRegularExpressionValidator_VTable* vtbl, void* vdata, QRegularExpression* re) {
	return new VirtualQRegularExpressionValidator(vtbl, vdata, *re);
}

VirtualQRegularExpressionValidator* QRegularExpressionValidator_new3(const QRegularExpressionValidator_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQRegularExpressionValidator(vtbl, vdata, parent);
}

VirtualQRegularExpressionValidator* QRegularExpressionValidator_new4(const QRegularExpressionValidator_VTable* vtbl, void* vdata, QRegularExpression* re, QObject* parent) {
	return new VirtualQRegularExpressionValidator(vtbl, vdata, *re, parent);
}

void QRegularExpressionValidator_virtbase(QRegularExpressionValidator* src, QValidator** outptr_QValidator) {
	*outptr_QValidator = static_cast<QValidator*>(src);
}

QMetaObject* QRegularExpressionValidator_metaObject(const QRegularExpressionValidator* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRegularExpressionValidator_metacast(QRegularExpressionValidator* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRegularExpressionValidator_metacall(QRegularExpressionValidator* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QRegularExpressionValidator_tr(const char* s) {
	QString _ret = QRegularExpressionValidator::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRegularExpressionValidator_trUtf8(const char* s) {
	QString _ret = QRegularExpressionValidator::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QRegularExpressionValidator_validate(const QRegularExpressionValidator* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);
	QValidator::State _ret = self->validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);
}

QRegularExpression* QRegularExpressionValidator_regularExpression(const QRegularExpressionValidator* self) {
	return new QRegularExpression(self->regularExpression());
}

void QRegularExpressionValidator_setRegularExpression(QRegularExpressionValidator* self, QRegularExpression* re) {
	self->setRegularExpression(*re);
}

void QRegularExpressionValidator_regularExpressionChanged(QRegularExpressionValidator* self, QRegularExpression* re) {
	self->regularExpressionChanged(*re);
}

void QRegularExpressionValidator_connect_regularExpressionChanged(VirtualQRegularExpressionValidator* self, intptr_t slot, void (*callback)(intptr_t, QRegularExpression*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QRegularExpression*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QRegularExpression*);
		void operator()(const QRegularExpression& re) {
			const QRegularExpression& re_ret = re;
			// Cast returned reference into pointer
			QRegularExpression* sigval1 = const_cast<QRegularExpression*>(&re_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQRegularExpressionValidator::connect(self, static_cast<void (QRegularExpressionValidator::*)(const QRegularExpression&)>(&QRegularExpressionValidator::regularExpressionChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QRegularExpressionValidator_tr2(const char* s, const char* c) {
	QString _ret = QRegularExpressionValidator::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRegularExpressionValidator_tr3(const char* s, const char* c, int n) {
	QString _ret = QRegularExpressionValidator::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRegularExpressionValidator_trUtf82(const char* s, const char* c) {
	QString _ret = QRegularExpressionValidator::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRegularExpressionValidator_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QRegularExpressionValidator::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QRegularExpressionValidator_virtualbase_metaObject(const VirtualQRegularExpressionValidator* self) {

	return (QMetaObject*) self->QRegularExpressionValidator::metaObject();
}

void* QRegularExpressionValidator_virtualbase_metacast(VirtualQRegularExpressionValidator* self, const char* param1) {

	return self->QRegularExpressionValidator::qt_metacast(param1);
}

int QRegularExpressionValidator_virtualbase_metacall(VirtualQRegularExpressionValidator* self, int param1, int param2, void** param3) {

	return self->QRegularExpressionValidator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QRegularExpressionValidator_virtualbase_validate(const VirtualQRegularExpressionValidator* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	VirtualQRegularExpressionValidator::State _ret = self->QRegularExpressionValidator::validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);
}

void QRegularExpressionValidator_virtualbase_fixup(const VirtualQRegularExpressionValidator* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);

	self->QRegularExpressionValidator::fixup(param1_QString);
}

bool QRegularExpressionValidator_virtualbase_event(VirtualQRegularExpressionValidator* self, QEvent* event) {

	return self->QRegularExpressionValidator::event(event);
}

bool QRegularExpressionValidator_virtualbase_eventFilter(VirtualQRegularExpressionValidator* self, QObject* watched, QEvent* event) {

	return self->QRegularExpressionValidator::eventFilter(watched, event);
}

void QRegularExpressionValidator_virtualbase_timerEvent(VirtualQRegularExpressionValidator* self, QTimerEvent* event) {

	self->QRegularExpressionValidator::timerEvent(event);
}

void QRegularExpressionValidator_virtualbase_childEvent(VirtualQRegularExpressionValidator* self, QChildEvent* event) {

	self->QRegularExpressionValidator::childEvent(event);
}

void QRegularExpressionValidator_virtualbase_customEvent(VirtualQRegularExpressionValidator* self, QEvent* event) {

	self->QRegularExpressionValidator::customEvent(event);
}

void QRegularExpressionValidator_virtualbase_connectNotify(VirtualQRegularExpressionValidator* self, QMetaMethod* signal) {

	self->QRegularExpressionValidator::connectNotify(*signal);
}

void QRegularExpressionValidator_virtualbase_disconnectNotify(VirtualQRegularExpressionValidator* self, QMetaMethod* signal) {

	self->QRegularExpressionValidator::disconnectNotify(*signal);
}

const QMetaObject* QRegularExpressionValidator_staticMetaObject() { return &QRegularExpressionValidator::staticMetaObject; }

const QRegularExpressionValidator_VTable* QRegularExpressionValidator_vtbl(const VirtualQRegularExpressionValidator* self) { return self->vtbl; }
void* QRegularExpressionValidator_vdata(const VirtualQRegularExpressionValidator* self) { return self->vdata; }
void QRegularExpressionValidator_setVdata(VirtualQRegularExpressionValidator* self, void* vdata) { self->vdata = vdata; }

QObject* QRegularExpressionValidator_protectedbase_sender(const VirtualQRegularExpressionValidator* self) {
	return self->sender();
}

int QRegularExpressionValidator_protectedbase_senderSignalIndex(const VirtualQRegularExpressionValidator* self) {
	return self->senderSignalIndex();
}

int QRegularExpressionValidator_protectedbase_receivers(const VirtualQRegularExpressionValidator* self, const char* signal) {
	return self->receivers(signal);
}

bool QRegularExpressionValidator_protectedbase_isSignalConnected(const VirtualQRegularExpressionValidator* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QRegularExpressionValidator_delete(QRegularExpressionValidator* self) {
	delete self;
}

