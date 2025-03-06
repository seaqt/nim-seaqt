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

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QValidator_changed(intptr_t);
QMetaObject* miqt_exec_callback_QValidator_metaObject(const QValidator*, intptr_t);
void* miqt_exec_callback_QValidator_metacast(QValidator*, intptr_t, const char*);
int miqt_exec_callback_QValidator_metacall(QValidator*, intptr_t, int, int, void**);
int miqt_exec_callback_QValidator_validate(const QValidator*, intptr_t, struct miqt_string, int*);
void miqt_exec_callback_QValidator_fixup(const QValidator*, intptr_t, struct miqt_string);
bool miqt_exec_callback_QValidator_event(QValidator*, intptr_t, QEvent*);
bool miqt_exec_callback_QValidator_eventFilter(QValidator*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QValidator_timerEvent(QValidator*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QValidator_childEvent(QValidator*, intptr_t, QChildEvent*);
void miqt_exec_callback_QValidator_customEvent(QValidator*, intptr_t, QEvent*);
void miqt_exec_callback_QValidator_connectNotify(QValidator*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QValidator_disconnectNotify(QValidator*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QIntValidator_bottomChanged(intptr_t, int);
void miqt_exec_callback_QIntValidator_topChanged(intptr_t, int);
QMetaObject* miqt_exec_callback_QIntValidator_metaObject(const QIntValidator*, intptr_t);
void* miqt_exec_callback_QIntValidator_metacast(QIntValidator*, intptr_t, const char*);
int miqt_exec_callback_QIntValidator_metacall(QIntValidator*, intptr_t, int, int, void**);
int miqt_exec_callback_QIntValidator_validate(const QIntValidator*, intptr_t, struct miqt_string, int*);
void miqt_exec_callback_QIntValidator_fixup(const QIntValidator*, intptr_t, struct miqt_string);
void miqt_exec_callback_QIntValidator_setRange(QIntValidator*, intptr_t, int, int);
bool miqt_exec_callback_QIntValidator_event(QIntValidator*, intptr_t, QEvent*);
bool miqt_exec_callback_QIntValidator_eventFilter(QIntValidator*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QIntValidator_timerEvent(QIntValidator*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QIntValidator_childEvent(QIntValidator*, intptr_t, QChildEvent*);
void miqt_exec_callback_QIntValidator_customEvent(QIntValidator*, intptr_t, QEvent*);
void miqt_exec_callback_QIntValidator_connectNotify(QIntValidator*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QIntValidator_disconnectNotify(QIntValidator*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QDoubleValidator_bottomChanged(intptr_t, double);
void miqt_exec_callback_QDoubleValidator_topChanged(intptr_t, double);
void miqt_exec_callback_QDoubleValidator_decimalsChanged(intptr_t, int);
void miqt_exec_callback_QDoubleValidator_notationChanged(intptr_t, int);
QMetaObject* miqt_exec_callback_QDoubleValidator_metaObject(const QDoubleValidator*, intptr_t);
void* miqt_exec_callback_QDoubleValidator_metacast(QDoubleValidator*, intptr_t, const char*);
int miqt_exec_callback_QDoubleValidator_metacall(QDoubleValidator*, intptr_t, int, int, void**);
int miqt_exec_callback_QDoubleValidator_validate(const QDoubleValidator*, intptr_t, struct miqt_string, int*);
void miqt_exec_callback_QDoubleValidator_setRange(QDoubleValidator*, intptr_t, double, double, int);
void miqt_exec_callback_QDoubleValidator_fixup(const QDoubleValidator*, intptr_t, struct miqt_string);
bool miqt_exec_callback_QDoubleValidator_event(QDoubleValidator*, intptr_t, QEvent*);
bool miqt_exec_callback_QDoubleValidator_eventFilter(QDoubleValidator*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QDoubleValidator_timerEvent(QDoubleValidator*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QDoubleValidator_childEvent(QDoubleValidator*, intptr_t, QChildEvent*);
void miqt_exec_callback_QDoubleValidator_customEvent(QDoubleValidator*, intptr_t, QEvent*);
void miqt_exec_callback_QDoubleValidator_connectNotify(QDoubleValidator*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QDoubleValidator_disconnectNotify(QDoubleValidator*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QRegExpValidator_regExpChanged(intptr_t, QRegExp*);
QMetaObject* miqt_exec_callback_QRegExpValidator_metaObject(const QRegExpValidator*, intptr_t);
void* miqt_exec_callback_QRegExpValidator_metacast(QRegExpValidator*, intptr_t, const char*);
int miqt_exec_callback_QRegExpValidator_metacall(QRegExpValidator*, intptr_t, int, int, void**);
int miqt_exec_callback_QRegExpValidator_validate(const QRegExpValidator*, intptr_t, struct miqt_string, int*);
void miqt_exec_callback_QRegExpValidator_fixup(const QRegExpValidator*, intptr_t, struct miqt_string);
bool miqt_exec_callback_QRegExpValidator_event(QRegExpValidator*, intptr_t, QEvent*);
bool miqt_exec_callback_QRegExpValidator_eventFilter(QRegExpValidator*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QRegExpValidator_timerEvent(QRegExpValidator*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QRegExpValidator_childEvent(QRegExpValidator*, intptr_t, QChildEvent*);
void miqt_exec_callback_QRegExpValidator_customEvent(QRegExpValidator*, intptr_t, QEvent*);
void miqt_exec_callback_QRegExpValidator_connectNotify(QRegExpValidator*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QRegExpValidator_disconnectNotify(QRegExpValidator*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QRegularExpressionValidator_regularExpressionChanged(intptr_t, QRegularExpression*);
QMetaObject* miqt_exec_callback_QRegularExpressionValidator_metaObject(const QRegularExpressionValidator*, intptr_t);
void* miqt_exec_callback_QRegularExpressionValidator_metacast(QRegularExpressionValidator*, intptr_t, const char*);
int miqt_exec_callback_QRegularExpressionValidator_metacall(QRegularExpressionValidator*, intptr_t, int, int, void**);
int miqt_exec_callback_QRegularExpressionValidator_validate(const QRegularExpressionValidator*, intptr_t, struct miqt_string, int*);
void miqt_exec_callback_QRegularExpressionValidator_fixup(const QRegularExpressionValidator*, intptr_t, struct miqt_string);
bool miqt_exec_callback_QRegularExpressionValidator_event(QRegularExpressionValidator*, intptr_t, QEvent*);
bool miqt_exec_callback_QRegularExpressionValidator_eventFilter(QRegularExpressionValidator*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QRegularExpressionValidator_timerEvent(QRegularExpressionValidator*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QRegularExpressionValidator_childEvent(QRegularExpressionValidator*, intptr_t, QChildEvent*);
void miqt_exec_callback_QRegularExpressionValidator_customEvent(QRegularExpressionValidator*, intptr_t, QEvent*);
void miqt_exec_callback_QRegularExpressionValidator_connectNotify(QRegularExpressionValidator*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QRegularExpressionValidator_disconnectNotify(QRegularExpressionValidator*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQValidator final : public QValidator {
public:

	VirtualQValidator(): QValidator() {};
	VirtualQValidator(QObject* parent): QValidator(parent) {};

	virtual ~VirtualQValidator() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QValidator::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QValidator_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QValidator_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QValidator::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QValidator_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QValidator_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QValidator::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QValidator_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QValidator_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__validate = 0;

	// Subclass to allow providing a Go implementation
	virtual QValidator::State validate(QString& param1, int& param2) const override {
		if (handle__validate == 0) {
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

		int callback_return_value = miqt_exec_callback_QValidator_validate(this, handle__validate, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__fixup = 0;

	// Subclass to allow providing a Go implementation
	virtual void fixup(QString& param1) const override {
		if (handle__fixup == 0) {
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

		miqt_exec_callback_QValidator_fixup(this, handle__fixup, sigval1);

		
	}

	friend void QValidator_virtualbase_fixup(const void* self, struct miqt_string param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QValidator::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QValidator_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QValidator_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QValidator::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QValidator_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QValidator_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QValidator::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QValidator_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QValidator_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QValidator::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QValidator_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QValidator_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QValidator::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QValidator_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QValidator_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QValidator::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QValidator_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QValidator_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QValidator::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QValidator_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QValidator_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QValidator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QValidator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QValidator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QValidator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QValidator* QValidator_new() {
	return new VirtualQValidator();
}

QValidator* QValidator_new2(QObject* parent) {
	return new VirtualQValidator(parent);
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

void QValidator_connect_changed(QValidator* self, intptr_t slot) {
	VirtualQValidator::connect(self, static_cast<void (QValidator::*)()>(&QValidator::changed), self, [=]() {
		miqt_exec_callback_QValidator_changed(slot);
	});
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

bool QValidator_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQValidator* self_cast = dynamic_cast<VirtualQValidator*>( (QValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QValidator_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQValidator*)(self) )->QValidator::metaObject();

}

bool QValidator_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQValidator* self_cast = dynamic_cast<VirtualQValidator*>( (QValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QValidator_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQValidator*)(self) )->QValidator::qt_metacast(param1);

}

bool QValidator_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQValidator* self_cast = dynamic_cast<VirtualQValidator*>( (QValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QValidator_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQValidator*)(self) )->QValidator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QValidator_override_virtual_validate(void* self, intptr_t slot) {
	VirtualQValidator* self_cast = dynamic_cast<VirtualQValidator*>( (QValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__validate = slot;
	return true;
}

bool QValidator_override_virtual_fixup(void* self, intptr_t slot) {
	VirtualQValidator* self_cast = dynamic_cast<VirtualQValidator*>( (QValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__fixup = slot;
	return true;
}

void QValidator_virtualbase_fixup(const void* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);

	( (const VirtualQValidator*)(self) )->QValidator::fixup(param1_QString);

}

bool QValidator_override_virtual_event(void* self, intptr_t slot) {
	VirtualQValidator* self_cast = dynamic_cast<VirtualQValidator*>( (QValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QValidator_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQValidator*)(self) )->QValidator::event(event);

}

bool QValidator_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQValidator* self_cast = dynamic_cast<VirtualQValidator*>( (QValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QValidator_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQValidator*)(self) )->QValidator::eventFilter(watched, event);

}

bool QValidator_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQValidator* self_cast = dynamic_cast<VirtualQValidator*>( (QValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QValidator_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQValidator*)(self) )->QValidator::timerEvent(event);

}

bool QValidator_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQValidator* self_cast = dynamic_cast<VirtualQValidator*>( (QValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QValidator_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQValidator*)(self) )->QValidator::childEvent(event);

}

bool QValidator_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQValidator* self_cast = dynamic_cast<VirtualQValidator*>( (QValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QValidator_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQValidator*)(self) )->QValidator::customEvent(event);

}

bool QValidator_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQValidator* self_cast = dynamic_cast<VirtualQValidator*>( (QValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QValidator_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQValidator*)(self) )->QValidator::connectNotify(*signal);

}

bool QValidator_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQValidator* self_cast = dynamic_cast<VirtualQValidator*>( (QValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QValidator_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQValidator*)(self) )->QValidator::disconnectNotify(*signal);

}

const QMetaObject* QValidator_staticMetaObject() { return &QValidator::staticMetaObject; }
QObject* QValidator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQValidator* self_cast = dynamic_cast<VirtualQValidator*>( (QValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QValidator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQValidator* self_cast = dynamic_cast<VirtualQValidator*>( (QValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QValidator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQValidator* self_cast = dynamic_cast<VirtualQValidator*>( (QValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QValidator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQValidator* self_cast = dynamic_cast<VirtualQValidator*>( (QValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QValidator_delete(QValidator* self) {
	delete self;
}

class VirtualQIntValidator final : public QIntValidator {
public:

	VirtualQIntValidator(): QIntValidator() {};
	VirtualQIntValidator(int bottom, int top): QIntValidator(bottom, top) {};
	VirtualQIntValidator(QObject* parent): QIntValidator(parent) {};
	VirtualQIntValidator(int bottom, int top, QObject* parent): QIntValidator(bottom, top, parent) {};

	virtual ~VirtualQIntValidator() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QIntValidator::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QIntValidator_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QIntValidator_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QIntValidator::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QIntValidator_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QIntValidator_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QIntValidator::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QIntValidator_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QIntValidator_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__validate = 0;

	// Subclass to allow providing a Go implementation
	virtual QValidator::State validate(QString& param1, int& param2) const override {
		if (handle__validate == 0) {
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

		int callback_return_value = miqt_exec_callback_QIntValidator_validate(this, handle__validate, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QIntValidator_virtualbase_validate(const void* self, struct miqt_string param1, int* param2);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__fixup = 0;

	// Subclass to allow providing a Go implementation
	virtual void fixup(QString& input) const override {
		if (handle__fixup == 0) {
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

		miqt_exec_callback_QIntValidator_fixup(this, handle__fixup, sigval1);

		
	}

	friend void QIntValidator_virtualbase_fixup(const void* self, struct miqt_string input);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setRange = 0;

	// Subclass to allow providing a Go implementation
	virtual void setRange(int bottom, int top) override {
		if (handle__setRange == 0) {
			QIntValidator::setRange(bottom, top);
			return;
		}
		
		int sigval1 = bottom;
		int sigval2 = top;

		miqt_exec_callback_QIntValidator_setRange(this, handle__setRange, sigval1, sigval2);

		
	}

	friend void QIntValidator_virtualbase_setRange(void* self, int bottom, int top);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QIntValidator::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QIntValidator_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QIntValidator_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QIntValidator::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QIntValidator_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QIntValidator_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QIntValidator::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QIntValidator_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QIntValidator_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QIntValidator::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QIntValidator_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QIntValidator_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QIntValidator::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QIntValidator_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QIntValidator_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QIntValidator::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QIntValidator_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QIntValidator_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QIntValidator::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QIntValidator_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QIntValidator_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QIntValidator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QIntValidator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QIntValidator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QIntValidator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QIntValidator* QIntValidator_new() {
	return new VirtualQIntValidator();
}

QIntValidator* QIntValidator_new2(int bottom, int top) {
	return new VirtualQIntValidator(static_cast<int>(bottom), static_cast<int>(top));
}

QIntValidator* QIntValidator_new3(QObject* parent) {
	return new VirtualQIntValidator(parent);
}

QIntValidator* QIntValidator_new4(int bottom, int top, QObject* parent) {
	return new VirtualQIntValidator(static_cast<int>(bottom), static_cast<int>(top), parent);
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

void QIntValidator_connect_bottomChanged(QIntValidator* self, intptr_t slot) {
	VirtualQIntValidator::connect(self, static_cast<void (QIntValidator::*)(int)>(&QIntValidator::bottomChanged), self, [=](int bottom) {
		int sigval1 = bottom;
		miqt_exec_callback_QIntValidator_bottomChanged(slot, sigval1);
	});
}

void QIntValidator_topChanged(QIntValidator* self, int top) {
	self->topChanged(static_cast<int>(top));
}

void QIntValidator_connect_topChanged(QIntValidator* self, intptr_t slot) {
	VirtualQIntValidator::connect(self, static_cast<void (QIntValidator::*)(int)>(&QIntValidator::topChanged), self, [=](int top) {
		int sigval1 = top;
		miqt_exec_callback_QIntValidator_topChanged(slot, sigval1);
	});
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

bool QIntValidator_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QIntValidator_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQIntValidator*)(self) )->QIntValidator::metaObject();

}

bool QIntValidator_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QIntValidator_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQIntValidator*)(self) )->QIntValidator::qt_metacast(param1);

}

bool QIntValidator_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QIntValidator_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQIntValidator*)(self) )->QIntValidator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QIntValidator_override_virtual_validate(void* self, intptr_t slot) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__validate = slot;
	return true;
}

int QIntValidator_virtualbase_validate(const void* self, struct miqt_string param1, int* param2) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);

	VirtualQIntValidator::State _ret = ( (const VirtualQIntValidator*)(self) )->QIntValidator::validate(param1_QString, static_cast<int&>(*param2));
	return static_cast<int>(_ret);

}

bool QIntValidator_override_virtual_fixup(void* self, intptr_t slot) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__fixup = slot;
	return true;
}

void QIntValidator_virtualbase_fixup(const void* self, struct miqt_string input) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	( (const VirtualQIntValidator*)(self) )->QIntValidator::fixup(input_QString);

}

bool QIntValidator_override_virtual_setRange(void* self, intptr_t slot) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setRange = slot;
	return true;
}

void QIntValidator_virtualbase_setRange(void* self, int bottom, int top) {

	( (VirtualQIntValidator*)(self) )->QIntValidator::setRange(static_cast<int>(bottom), static_cast<int>(top));

}

bool QIntValidator_override_virtual_event(void* self, intptr_t slot) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QIntValidator_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQIntValidator*)(self) )->QIntValidator::event(event);

}

bool QIntValidator_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QIntValidator_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQIntValidator*)(self) )->QIntValidator::eventFilter(watched, event);

}

bool QIntValidator_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QIntValidator_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQIntValidator*)(self) )->QIntValidator::timerEvent(event);

}

bool QIntValidator_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QIntValidator_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQIntValidator*)(self) )->QIntValidator::childEvent(event);

}

bool QIntValidator_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QIntValidator_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQIntValidator*)(self) )->QIntValidator::customEvent(event);

}

bool QIntValidator_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QIntValidator_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQIntValidator*)(self) )->QIntValidator::connectNotify(*signal);

}

bool QIntValidator_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QIntValidator_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQIntValidator*)(self) )->QIntValidator::disconnectNotify(*signal);

}

const QMetaObject* QIntValidator_staticMetaObject() { return &QIntValidator::staticMetaObject; }
QObject* QIntValidator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QIntValidator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QIntValidator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QIntValidator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQIntValidator* self_cast = dynamic_cast<VirtualQIntValidator*>( (QIntValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QIntValidator_delete(QIntValidator* self) {
	delete self;
}

class VirtualQDoubleValidator final : public QDoubleValidator {
public:

	VirtualQDoubleValidator(): QDoubleValidator() {};
	VirtualQDoubleValidator(double bottom, double top, int decimals): QDoubleValidator(bottom, top, decimals) {};
	VirtualQDoubleValidator(QObject* parent): QDoubleValidator(parent) {};
	VirtualQDoubleValidator(double bottom, double top, int decimals, QObject* parent): QDoubleValidator(bottom, top, decimals, parent) {};

	virtual ~VirtualQDoubleValidator() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QDoubleValidator::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QDoubleValidator_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QDoubleValidator_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QDoubleValidator::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QDoubleValidator_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QDoubleValidator_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QDoubleValidator::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QDoubleValidator_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDoubleValidator_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__validate = 0;

	// Subclass to allow providing a Go implementation
	virtual QValidator::State validate(QString& param1, int& param2) const override {
		if (handle__validate == 0) {
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

		int callback_return_value = miqt_exec_callback_QDoubleValidator_validate(this, handle__validate, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QDoubleValidator_virtualbase_validate(const void* self, struct miqt_string param1, int* param2);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setRange = 0;

	// Subclass to allow providing a Go implementation
	virtual void setRange(double bottom, double top, int decimals) override {
		if (handle__setRange == 0) {
			QDoubleValidator::setRange(bottom, top, decimals);
			return;
		}
		
		double sigval1 = bottom;
		double sigval2 = top;
		int sigval3 = decimals;

		miqt_exec_callback_QDoubleValidator_setRange(this, handle__setRange, sigval1, sigval2, sigval3);

		
	}

	friend void QDoubleValidator_virtualbase_setRange(void* self, double bottom, double top, int decimals);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__fixup = 0;

	// Subclass to allow providing a Go implementation
	virtual void fixup(QString& param1) const override {
		if (handle__fixup == 0) {
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

		miqt_exec_callback_QDoubleValidator_fixup(this, handle__fixup, sigval1);

		
	}

	friend void QDoubleValidator_virtualbase_fixup(const void* self, struct miqt_string param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QDoubleValidator::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QDoubleValidator_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QDoubleValidator_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QDoubleValidator::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QDoubleValidator_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDoubleValidator_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QDoubleValidator::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QDoubleValidator_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QDoubleValidator_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QDoubleValidator::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QDoubleValidator_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QDoubleValidator_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QDoubleValidator::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QDoubleValidator_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QDoubleValidator_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QDoubleValidator::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QDoubleValidator_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QDoubleValidator_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QDoubleValidator::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QDoubleValidator_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QDoubleValidator_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QDoubleValidator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QDoubleValidator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QDoubleValidator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QDoubleValidator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QDoubleValidator* QDoubleValidator_new() {
	return new VirtualQDoubleValidator();
}

QDoubleValidator* QDoubleValidator_new2(double bottom, double top, int decimals) {
	return new VirtualQDoubleValidator(static_cast<double>(bottom), static_cast<double>(top), static_cast<int>(decimals));
}

QDoubleValidator* QDoubleValidator_new3(QObject* parent) {
	return new VirtualQDoubleValidator(parent);
}

QDoubleValidator* QDoubleValidator_new4(double bottom, double top, int decimals, QObject* parent) {
	return new VirtualQDoubleValidator(static_cast<double>(bottom), static_cast<double>(top), static_cast<int>(decimals), parent);
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

void QDoubleValidator_connect_bottomChanged(QDoubleValidator* self, intptr_t slot) {
	VirtualQDoubleValidator::connect(self, static_cast<void (QDoubleValidator::*)(double)>(&QDoubleValidator::bottomChanged), self, [=](double bottom) {
		double sigval1 = bottom;
		miqt_exec_callback_QDoubleValidator_bottomChanged(slot, sigval1);
	});
}

void QDoubleValidator_topChanged(QDoubleValidator* self, double top) {
	self->topChanged(static_cast<double>(top));
}

void QDoubleValidator_connect_topChanged(QDoubleValidator* self, intptr_t slot) {
	VirtualQDoubleValidator::connect(self, static_cast<void (QDoubleValidator::*)(double)>(&QDoubleValidator::topChanged), self, [=](double top) {
		double sigval1 = top;
		miqt_exec_callback_QDoubleValidator_topChanged(slot, sigval1);
	});
}

void QDoubleValidator_decimalsChanged(QDoubleValidator* self, int decimals) {
	self->decimalsChanged(static_cast<int>(decimals));
}

void QDoubleValidator_connect_decimalsChanged(QDoubleValidator* self, intptr_t slot) {
	VirtualQDoubleValidator::connect(self, static_cast<void (QDoubleValidator::*)(int)>(&QDoubleValidator::decimalsChanged), self, [=](int decimals) {
		int sigval1 = decimals;
		miqt_exec_callback_QDoubleValidator_decimalsChanged(slot, sigval1);
	});
}

void QDoubleValidator_notationChanged(QDoubleValidator* self, int notation) {
	self->notationChanged(static_cast<QDoubleValidator::Notation>(notation));
}

void QDoubleValidator_connect_notationChanged(QDoubleValidator* self, intptr_t slot) {
	VirtualQDoubleValidator::connect(self, static_cast<void (QDoubleValidator::*)(QDoubleValidator::Notation)>(&QDoubleValidator::notationChanged), self, [=](QDoubleValidator::Notation notation) {
		QDoubleValidator::Notation notation_ret = notation;
		int sigval1 = static_cast<int>(notation_ret);
		miqt_exec_callback_QDoubleValidator_notationChanged(slot, sigval1);
	});
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

bool QDoubleValidator_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QDoubleValidator_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQDoubleValidator*)(self) )->QDoubleValidator::metaObject();

}

bool QDoubleValidator_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QDoubleValidator_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQDoubleValidator*)(self) )->QDoubleValidator::qt_metacast(param1);

}

bool QDoubleValidator_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QDoubleValidator_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQDoubleValidator*)(self) )->QDoubleValidator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QDoubleValidator_override_virtual_validate(void* self, intptr_t slot) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__validate = slot;
	return true;
}

int QDoubleValidator_virtualbase_validate(const void* self, struct miqt_string param1, int* param2) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);

	VirtualQDoubleValidator::State _ret = ( (const VirtualQDoubleValidator*)(self) )->QDoubleValidator::validate(param1_QString, static_cast<int&>(*param2));
	return static_cast<int>(_ret);

}

bool QDoubleValidator_override_virtual_setRange(void* self, intptr_t slot) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setRange = slot;
	return true;
}

void QDoubleValidator_virtualbase_setRange(void* self, double bottom, double top, int decimals) {

	( (VirtualQDoubleValidator*)(self) )->QDoubleValidator::setRange(static_cast<double>(bottom), static_cast<double>(top), static_cast<int>(decimals));

}

bool QDoubleValidator_override_virtual_fixup(void* self, intptr_t slot) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__fixup = slot;
	return true;
}

void QDoubleValidator_virtualbase_fixup(const void* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);

	( (const VirtualQDoubleValidator*)(self) )->QDoubleValidator::fixup(param1_QString);

}

bool QDoubleValidator_override_virtual_event(void* self, intptr_t slot) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QDoubleValidator_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQDoubleValidator*)(self) )->QDoubleValidator::event(event);

}

bool QDoubleValidator_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QDoubleValidator_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQDoubleValidator*)(self) )->QDoubleValidator::eventFilter(watched, event);

}

bool QDoubleValidator_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QDoubleValidator_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQDoubleValidator*)(self) )->QDoubleValidator::timerEvent(event);

}

bool QDoubleValidator_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QDoubleValidator_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQDoubleValidator*)(self) )->QDoubleValidator::childEvent(event);

}

bool QDoubleValidator_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QDoubleValidator_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQDoubleValidator*)(self) )->QDoubleValidator::customEvent(event);

}

bool QDoubleValidator_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QDoubleValidator_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQDoubleValidator*)(self) )->QDoubleValidator::connectNotify(*signal);

}

bool QDoubleValidator_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QDoubleValidator_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQDoubleValidator*)(self) )->QDoubleValidator::disconnectNotify(*signal);

}

const QMetaObject* QDoubleValidator_staticMetaObject() { return &QDoubleValidator::staticMetaObject; }
QObject* QDoubleValidator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QDoubleValidator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QDoubleValidator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QDoubleValidator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQDoubleValidator* self_cast = dynamic_cast<VirtualQDoubleValidator*>( (QDoubleValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QDoubleValidator_delete(QDoubleValidator* self) {
	delete self;
}

class VirtualQRegExpValidator final : public QRegExpValidator {
public:

	VirtualQRegExpValidator(): QRegExpValidator() {};
	VirtualQRegExpValidator(const QRegExp& rx): QRegExpValidator(rx) {};
	VirtualQRegExpValidator(QObject* parent): QRegExpValidator(parent) {};
	VirtualQRegExpValidator(const QRegExp& rx, QObject* parent): QRegExpValidator(rx, parent) {};

	virtual ~VirtualQRegExpValidator() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QRegExpValidator::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QRegExpValidator_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QRegExpValidator_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QRegExpValidator::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QRegExpValidator_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QRegExpValidator_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QRegExpValidator::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QRegExpValidator_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QRegExpValidator_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__validate = 0;

	// Subclass to allow providing a Go implementation
	virtual QValidator::State validate(QString& input, int& pos) const override {
		if (handle__validate == 0) {
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

		int callback_return_value = miqt_exec_callback_QRegExpValidator_validate(this, handle__validate, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QRegExpValidator_virtualbase_validate(const void* self, struct miqt_string input, int* pos);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__fixup = 0;

	// Subclass to allow providing a Go implementation
	virtual void fixup(QString& param1) const override {
		if (handle__fixup == 0) {
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

		miqt_exec_callback_QRegExpValidator_fixup(this, handle__fixup, sigval1);

		
	}

	friend void QRegExpValidator_virtualbase_fixup(const void* self, struct miqt_string param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QRegExpValidator::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QRegExpValidator_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QRegExpValidator_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QRegExpValidator::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QRegExpValidator_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QRegExpValidator_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QRegExpValidator::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QRegExpValidator_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QRegExpValidator_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QRegExpValidator::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QRegExpValidator_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QRegExpValidator_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QRegExpValidator::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QRegExpValidator_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QRegExpValidator_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QRegExpValidator::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QRegExpValidator_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QRegExpValidator_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QRegExpValidator::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QRegExpValidator_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QRegExpValidator_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QRegExpValidator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QRegExpValidator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QRegExpValidator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QRegExpValidator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QRegExpValidator* QRegExpValidator_new() {
	return new VirtualQRegExpValidator();
}

QRegExpValidator* QRegExpValidator_new2(QRegExp* rx) {
	return new VirtualQRegExpValidator(*rx);
}

QRegExpValidator* QRegExpValidator_new3(QObject* parent) {
	return new VirtualQRegExpValidator(parent);
}

QRegExpValidator* QRegExpValidator_new4(QRegExp* rx, QObject* parent) {
	return new VirtualQRegExpValidator(*rx, parent);
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

void QRegExpValidator_connect_regExpChanged(QRegExpValidator* self, intptr_t slot) {
	VirtualQRegExpValidator::connect(self, static_cast<void (QRegExpValidator::*)(const QRegExp&)>(&QRegExpValidator::regExpChanged), self, [=](const QRegExp& regExp) {
		const QRegExp& regExp_ret = regExp;
		// Cast returned reference into pointer
		QRegExp* sigval1 = const_cast<QRegExp*>(&regExp_ret);
		miqt_exec_callback_QRegExpValidator_regExpChanged(slot, sigval1);
	});
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

bool QRegExpValidator_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQRegExpValidator* self_cast = dynamic_cast<VirtualQRegExpValidator*>( (QRegExpValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QRegExpValidator_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQRegExpValidator*)(self) )->QRegExpValidator::metaObject();

}

bool QRegExpValidator_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQRegExpValidator* self_cast = dynamic_cast<VirtualQRegExpValidator*>( (QRegExpValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QRegExpValidator_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQRegExpValidator*)(self) )->QRegExpValidator::qt_metacast(param1);

}

bool QRegExpValidator_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQRegExpValidator* self_cast = dynamic_cast<VirtualQRegExpValidator*>( (QRegExpValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QRegExpValidator_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQRegExpValidator*)(self) )->QRegExpValidator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QRegExpValidator_override_virtual_validate(void* self, intptr_t slot) {
	VirtualQRegExpValidator* self_cast = dynamic_cast<VirtualQRegExpValidator*>( (QRegExpValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__validate = slot;
	return true;
}

int QRegExpValidator_virtualbase_validate(const void* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	VirtualQRegExpValidator::State _ret = ( (const VirtualQRegExpValidator*)(self) )->QRegExpValidator::validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);

}

bool QRegExpValidator_override_virtual_fixup(void* self, intptr_t slot) {
	VirtualQRegExpValidator* self_cast = dynamic_cast<VirtualQRegExpValidator*>( (QRegExpValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__fixup = slot;
	return true;
}

void QRegExpValidator_virtualbase_fixup(const void* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);

	( (const VirtualQRegExpValidator*)(self) )->QRegExpValidator::fixup(param1_QString);

}

bool QRegExpValidator_override_virtual_event(void* self, intptr_t slot) {
	VirtualQRegExpValidator* self_cast = dynamic_cast<VirtualQRegExpValidator*>( (QRegExpValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QRegExpValidator_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQRegExpValidator*)(self) )->QRegExpValidator::event(event);

}

bool QRegExpValidator_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQRegExpValidator* self_cast = dynamic_cast<VirtualQRegExpValidator*>( (QRegExpValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QRegExpValidator_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQRegExpValidator*)(self) )->QRegExpValidator::eventFilter(watched, event);

}

bool QRegExpValidator_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQRegExpValidator* self_cast = dynamic_cast<VirtualQRegExpValidator*>( (QRegExpValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QRegExpValidator_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQRegExpValidator*)(self) )->QRegExpValidator::timerEvent(event);

}

bool QRegExpValidator_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQRegExpValidator* self_cast = dynamic_cast<VirtualQRegExpValidator*>( (QRegExpValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QRegExpValidator_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQRegExpValidator*)(self) )->QRegExpValidator::childEvent(event);

}

bool QRegExpValidator_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQRegExpValidator* self_cast = dynamic_cast<VirtualQRegExpValidator*>( (QRegExpValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QRegExpValidator_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQRegExpValidator*)(self) )->QRegExpValidator::customEvent(event);

}

bool QRegExpValidator_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQRegExpValidator* self_cast = dynamic_cast<VirtualQRegExpValidator*>( (QRegExpValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QRegExpValidator_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQRegExpValidator*)(self) )->QRegExpValidator::connectNotify(*signal);

}

bool QRegExpValidator_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQRegExpValidator* self_cast = dynamic_cast<VirtualQRegExpValidator*>( (QRegExpValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QRegExpValidator_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQRegExpValidator*)(self) )->QRegExpValidator::disconnectNotify(*signal);

}

const QMetaObject* QRegExpValidator_staticMetaObject() { return &QRegExpValidator::staticMetaObject; }
QObject* QRegExpValidator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQRegExpValidator* self_cast = dynamic_cast<VirtualQRegExpValidator*>( (QRegExpValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QRegExpValidator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQRegExpValidator* self_cast = dynamic_cast<VirtualQRegExpValidator*>( (QRegExpValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QRegExpValidator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQRegExpValidator* self_cast = dynamic_cast<VirtualQRegExpValidator*>( (QRegExpValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QRegExpValidator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQRegExpValidator* self_cast = dynamic_cast<VirtualQRegExpValidator*>( (QRegExpValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QRegExpValidator_delete(QRegExpValidator* self) {
	delete self;
}

class VirtualQRegularExpressionValidator final : public QRegularExpressionValidator {
public:

	VirtualQRegularExpressionValidator(): QRegularExpressionValidator() {};
	VirtualQRegularExpressionValidator(const QRegularExpression& re): QRegularExpressionValidator(re) {};
	VirtualQRegularExpressionValidator(QObject* parent): QRegularExpressionValidator(parent) {};
	VirtualQRegularExpressionValidator(const QRegularExpression& re, QObject* parent): QRegularExpressionValidator(re, parent) {};

	virtual ~VirtualQRegularExpressionValidator() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QRegularExpressionValidator::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QRegularExpressionValidator_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QRegularExpressionValidator_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QRegularExpressionValidator::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QRegularExpressionValidator_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QRegularExpressionValidator_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QRegularExpressionValidator::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QRegularExpressionValidator_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QRegularExpressionValidator_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__validate = 0;

	// Subclass to allow providing a Go implementation
	virtual QValidator::State validate(QString& input, int& pos) const override {
		if (handle__validate == 0) {
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

		int callback_return_value = miqt_exec_callback_QRegularExpressionValidator_validate(this, handle__validate, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QRegularExpressionValidator_virtualbase_validate(const void* self, struct miqt_string input, int* pos);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__fixup = 0;

	// Subclass to allow providing a Go implementation
	virtual void fixup(QString& param1) const override {
		if (handle__fixup == 0) {
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

		miqt_exec_callback_QRegularExpressionValidator_fixup(this, handle__fixup, sigval1);

		
	}

	friend void QRegularExpressionValidator_virtualbase_fixup(const void* self, struct miqt_string param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QRegularExpressionValidator::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QRegularExpressionValidator_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QRegularExpressionValidator_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QRegularExpressionValidator::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QRegularExpressionValidator_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QRegularExpressionValidator_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QRegularExpressionValidator::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QRegularExpressionValidator_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QRegularExpressionValidator_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QRegularExpressionValidator::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QRegularExpressionValidator_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QRegularExpressionValidator_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QRegularExpressionValidator::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QRegularExpressionValidator_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QRegularExpressionValidator_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QRegularExpressionValidator::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QRegularExpressionValidator_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QRegularExpressionValidator_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QRegularExpressionValidator::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QRegularExpressionValidator_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QRegularExpressionValidator_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QRegularExpressionValidator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QRegularExpressionValidator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QRegularExpressionValidator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QRegularExpressionValidator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QRegularExpressionValidator* QRegularExpressionValidator_new() {
	return new VirtualQRegularExpressionValidator();
}

QRegularExpressionValidator* QRegularExpressionValidator_new2(QRegularExpression* re) {
	return new VirtualQRegularExpressionValidator(*re);
}

QRegularExpressionValidator* QRegularExpressionValidator_new3(QObject* parent) {
	return new VirtualQRegularExpressionValidator(parent);
}

QRegularExpressionValidator* QRegularExpressionValidator_new4(QRegularExpression* re, QObject* parent) {
	return new VirtualQRegularExpressionValidator(*re, parent);
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

void QRegularExpressionValidator_connect_regularExpressionChanged(QRegularExpressionValidator* self, intptr_t slot) {
	VirtualQRegularExpressionValidator::connect(self, static_cast<void (QRegularExpressionValidator::*)(const QRegularExpression&)>(&QRegularExpressionValidator::regularExpressionChanged), self, [=](const QRegularExpression& re) {
		const QRegularExpression& re_ret = re;
		// Cast returned reference into pointer
		QRegularExpression* sigval1 = const_cast<QRegularExpression*>(&re_ret);
		miqt_exec_callback_QRegularExpressionValidator_regularExpressionChanged(slot, sigval1);
	});
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

bool QRegularExpressionValidator_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQRegularExpressionValidator* self_cast = dynamic_cast<VirtualQRegularExpressionValidator*>( (QRegularExpressionValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QRegularExpressionValidator_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQRegularExpressionValidator*)(self) )->QRegularExpressionValidator::metaObject();

}

bool QRegularExpressionValidator_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQRegularExpressionValidator* self_cast = dynamic_cast<VirtualQRegularExpressionValidator*>( (QRegularExpressionValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QRegularExpressionValidator_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQRegularExpressionValidator*)(self) )->QRegularExpressionValidator::qt_metacast(param1);

}

bool QRegularExpressionValidator_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQRegularExpressionValidator* self_cast = dynamic_cast<VirtualQRegularExpressionValidator*>( (QRegularExpressionValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QRegularExpressionValidator_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQRegularExpressionValidator*)(self) )->QRegularExpressionValidator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QRegularExpressionValidator_override_virtual_validate(void* self, intptr_t slot) {
	VirtualQRegularExpressionValidator* self_cast = dynamic_cast<VirtualQRegularExpressionValidator*>( (QRegularExpressionValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__validate = slot;
	return true;
}

int QRegularExpressionValidator_virtualbase_validate(const void* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	VirtualQRegularExpressionValidator::State _ret = ( (const VirtualQRegularExpressionValidator*)(self) )->QRegularExpressionValidator::validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);

}

bool QRegularExpressionValidator_override_virtual_fixup(void* self, intptr_t slot) {
	VirtualQRegularExpressionValidator* self_cast = dynamic_cast<VirtualQRegularExpressionValidator*>( (QRegularExpressionValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__fixup = slot;
	return true;
}

void QRegularExpressionValidator_virtualbase_fixup(const void* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);

	( (const VirtualQRegularExpressionValidator*)(self) )->QRegularExpressionValidator::fixup(param1_QString);

}

bool QRegularExpressionValidator_override_virtual_event(void* self, intptr_t slot) {
	VirtualQRegularExpressionValidator* self_cast = dynamic_cast<VirtualQRegularExpressionValidator*>( (QRegularExpressionValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QRegularExpressionValidator_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQRegularExpressionValidator*)(self) )->QRegularExpressionValidator::event(event);

}

bool QRegularExpressionValidator_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQRegularExpressionValidator* self_cast = dynamic_cast<VirtualQRegularExpressionValidator*>( (QRegularExpressionValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QRegularExpressionValidator_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQRegularExpressionValidator*)(self) )->QRegularExpressionValidator::eventFilter(watched, event);

}

bool QRegularExpressionValidator_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQRegularExpressionValidator* self_cast = dynamic_cast<VirtualQRegularExpressionValidator*>( (QRegularExpressionValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QRegularExpressionValidator_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQRegularExpressionValidator*)(self) )->QRegularExpressionValidator::timerEvent(event);

}

bool QRegularExpressionValidator_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQRegularExpressionValidator* self_cast = dynamic_cast<VirtualQRegularExpressionValidator*>( (QRegularExpressionValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QRegularExpressionValidator_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQRegularExpressionValidator*)(self) )->QRegularExpressionValidator::childEvent(event);

}

bool QRegularExpressionValidator_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQRegularExpressionValidator* self_cast = dynamic_cast<VirtualQRegularExpressionValidator*>( (QRegularExpressionValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QRegularExpressionValidator_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQRegularExpressionValidator*)(self) )->QRegularExpressionValidator::customEvent(event);

}

bool QRegularExpressionValidator_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQRegularExpressionValidator* self_cast = dynamic_cast<VirtualQRegularExpressionValidator*>( (QRegularExpressionValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QRegularExpressionValidator_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQRegularExpressionValidator*)(self) )->QRegularExpressionValidator::connectNotify(*signal);

}

bool QRegularExpressionValidator_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQRegularExpressionValidator* self_cast = dynamic_cast<VirtualQRegularExpressionValidator*>( (QRegularExpressionValidator*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QRegularExpressionValidator_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQRegularExpressionValidator*)(self) )->QRegularExpressionValidator::disconnectNotify(*signal);

}

const QMetaObject* QRegularExpressionValidator_staticMetaObject() { return &QRegularExpressionValidator::staticMetaObject; }
QObject* QRegularExpressionValidator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQRegularExpressionValidator* self_cast = dynamic_cast<VirtualQRegularExpressionValidator*>( (QRegularExpressionValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QRegularExpressionValidator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQRegularExpressionValidator* self_cast = dynamic_cast<VirtualQRegularExpressionValidator*>( (QRegularExpressionValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QRegularExpressionValidator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQRegularExpressionValidator* self_cast = dynamic_cast<VirtualQRegularExpressionValidator*>( (QRegularExpressionValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QRegularExpressionValidator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQRegularExpressionValidator* self_cast = dynamic_cast<VirtualQRegularExpressionValidator*>( (QRegularExpressionValidator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QRegularExpressionValidator_delete(QRegularExpressionValidator* self) {
	delete self;
}

