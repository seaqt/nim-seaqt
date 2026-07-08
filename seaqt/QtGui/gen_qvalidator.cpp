#include <QChildEvent>
#include <QDoubleValidator>
#include <QEvent>
#include <QIntValidator>
#include <QLocale>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRegularExpression>
#include <QRegularExpressionValidator>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QValidator>
#include <qvalidator.h>
#include "gen_qvalidator.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQValidator final : public QValidator {
	const QValidator_VTable* vtbl;
public:
	friend void* QValidator_vdata(VirtualQValidator* self);
	friend VirtualQValidator* vdata_QValidator(void* vdata);

	VirtualQValidator(const QValidator_VTable* vtbl): QValidator(), vtbl(vtbl) {}
	VirtualQValidator(const QValidator_VTable* vtbl, QObject* parent): QValidator(parent), vtbl(vtbl) {}

	virtual ~VirtualQValidator() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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
		struct seaqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct seaqt_string sigval1 = param1_ms;
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
		struct seaqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct seaqt_string sigval1 = param1_ms;
		vtbl->fixup(this, sigval1);
	}

	friend void QValidator_virtualbase_fixup(const VirtualQValidator* self, struct seaqt_string param1);

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

VirtualQValidator* QValidator_new(const QValidator_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQValidator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQValidator(vtbl) : nullptr;
}

VirtualQValidator* QValidator_new_parent(const QValidator_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQValidator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQValidator(vtbl, parent) : nullptr;
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

struct seaqt_string QValidator_tr_s(const char* s) {
	QString _ret = QValidator::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
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

int QValidator_validate(const QValidator* self, struct seaqt_string param1, int* param2) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	QValidator::State _ret = self->validate(param1_QString, static_cast<int&>(*param2));
	return static_cast<int>(_ret);
}

void QValidator_fixup(const QValidator* self, struct seaqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->fixup(param1_QString);
}

void QValidator_changed(QValidator* self) {
	self->changed();
}

void QValidator_connect_changed(QValidator* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QValidator::connect(self, static_cast<void (QValidator::*)()>(&QValidator::changed), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QValidator_tr_s_c(const char* s, const char* c) {
	QString _ret = QValidator::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QValidator_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QValidator::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QValidator_staticMetaObject() { return &QValidator::staticMetaObject; }
void* QValidator_vdata(VirtualQValidator* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQValidator>()); }
VirtualQValidator* vdata_QValidator(void* vdata) { return reinterpret_cast<VirtualQValidator*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQValidator>()); }

QMetaObject* QValidator_virtualbase_metaObject(const VirtualQValidator* self) {

	return (QMetaObject*) self->QValidator::metaObject();
}

void* QValidator_virtualbase_metacast(VirtualQValidator* self, const char* param1) {

	return self->QValidator::qt_metacast(param1);
}

int QValidator_virtualbase_metacall(VirtualQValidator* self, int param1, int param2, void** param3) {

	return self->QValidator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QValidator_virtualbase_fixup(const VirtualQValidator* self, struct seaqt_string param1) {
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

QObject* QValidator_protectedbase_sender(const VirtualQValidator* self) {
	return self->QValidator::sender();
}

int QValidator_protectedbase_senderSignalIndex(const VirtualQValidator* self) {
	return self->QValidator::senderSignalIndex();
}

int QValidator_protectedbase_receivers(const VirtualQValidator* self, const char* signal) {
	return self->QValidator::receivers(signal);
}

bool QValidator_protectedbase_isSignalConnected(const VirtualQValidator* self, QMetaMethod* signal) {
	return self->QValidator::isSignalConnected(*signal);
}

void QValidator_delete(QValidator* self) {
	delete self;
}

class VirtualQIntValidator final : public QIntValidator {
	const QIntValidator_VTable* vtbl;
public:
	friend void* QIntValidator_vdata(VirtualQIntValidator* self);
	friend VirtualQIntValidator* vdata_QIntValidator(void* vdata);

	VirtualQIntValidator(const QIntValidator_VTable* vtbl): QIntValidator(), vtbl(vtbl) {}
	VirtualQIntValidator(const QIntValidator_VTable* vtbl, int bottom, int top): QIntValidator(bottom, top), vtbl(vtbl) {}
	VirtualQIntValidator(const QIntValidator_VTable* vtbl, QObject* parent): QIntValidator(parent), vtbl(vtbl) {}
	VirtualQIntValidator(const QIntValidator_VTable* vtbl, int bottom, int top, QObject* parent): QIntValidator(bottom, top, parent), vtbl(vtbl) {}

	virtual ~VirtualQIntValidator() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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
		struct seaqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct seaqt_string sigval1 = param1_ms;
		int* sigval2 = &param2;
		int callback_return_value = vtbl->validate(this, sigval1, sigval2);
		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QIntValidator_virtualbase_validate(const VirtualQIntValidator* self, struct seaqt_string param1, int* param2);

	virtual void fixup(QString& input) const override {
		if (vtbl->fixup == 0) {
			QIntValidator::fixup(input);
			return;
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct seaqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct seaqt_string sigval1 = input_ms;
		vtbl->fixup(this, sigval1);
	}

	friend void QIntValidator_virtualbase_fixup(const VirtualQIntValidator* self, struct seaqt_string input);

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

VirtualQIntValidator* QIntValidator_new(const QIntValidator_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQIntValidator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQIntValidator(vtbl) : nullptr;
}

VirtualQIntValidator* QIntValidator_new_bottom_top(const QIntValidator_VTable* vtbl, size_t vdata, int bottom, int top) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQIntValidator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQIntValidator(vtbl, static_cast<int>(bottom), static_cast<int>(top)) : nullptr;
}

VirtualQIntValidator* QIntValidator_new_parent(const QIntValidator_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQIntValidator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQIntValidator(vtbl, parent) : nullptr;
}

VirtualQIntValidator* QIntValidator_new_bottom_top_parent(const QIntValidator_VTable* vtbl, size_t vdata, int bottom, int top, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQIntValidator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQIntValidator(vtbl, static_cast<int>(bottom), static_cast<int>(top), parent) : nullptr;
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

struct seaqt_string QIntValidator_tr_s(const char* s) {
	QString _ret = QIntValidator::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QIntValidator_validate(const QIntValidator* self, struct seaqt_string param1, int* param2) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	QValidator::State _ret = self->validate(param1_QString, static_cast<int&>(*param2));
	return static_cast<int>(_ret);
}

void QIntValidator_fixup(const QIntValidator* self, struct seaqt_string input) {
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

void QIntValidator_connect_bottomChanged(QIntValidator* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QIntValidator::connect(self, static_cast<void (QIntValidator::*)(int)>(&QIntValidator::bottomChanged), self, [callback, release = seaqt::release_callback{slot,release}](int bottom) {
			int sigval1 = bottom;
			callback(release.slot, sigval1);
	});
}

void QIntValidator_topChanged(QIntValidator* self, int top) {
	self->topChanged(static_cast<int>(top));
}

void QIntValidator_connect_topChanged(QIntValidator* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QIntValidator::connect(self, static_cast<void (QIntValidator::*)(int)>(&QIntValidator::topChanged), self, [callback, release = seaqt::release_callback{slot,release}](int top) {
			int sigval1 = top;
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QIntValidator_tr_s_c(const char* s, const char* c) {
	QString _ret = QIntValidator::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QIntValidator_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QIntValidator::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QIntValidator_staticMetaObject() { return &QIntValidator::staticMetaObject; }
void* QIntValidator_vdata(VirtualQIntValidator* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQIntValidator>()); }
VirtualQIntValidator* vdata_QIntValidator(void* vdata) { return reinterpret_cast<VirtualQIntValidator*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQIntValidator>()); }

QMetaObject* QIntValidator_virtualbase_metaObject(const VirtualQIntValidator* self) {

	return (QMetaObject*) self->QIntValidator::metaObject();
}

void* QIntValidator_virtualbase_metacast(VirtualQIntValidator* self, const char* param1) {

	return self->QIntValidator::qt_metacast(param1);
}

int QIntValidator_virtualbase_metacall(VirtualQIntValidator* self, int param1, int param2, void** param3) {

	return self->QIntValidator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QIntValidator_virtualbase_validate(const VirtualQIntValidator* self, struct seaqt_string param1, int* param2) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);

	VirtualQIntValidator::State _ret = self->QIntValidator::validate(param1_QString, static_cast<int&>(*param2));
	return static_cast<int>(_ret);
}

void QIntValidator_virtualbase_fixup(const VirtualQIntValidator* self, struct seaqt_string input) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	self->QIntValidator::fixup(input_QString);
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

QObject* QIntValidator_protectedbase_sender(const VirtualQIntValidator* self) {
	return self->QIntValidator::sender();
}

int QIntValidator_protectedbase_senderSignalIndex(const VirtualQIntValidator* self) {
	return self->QIntValidator::senderSignalIndex();
}

int QIntValidator_protectedbase_receivers(const VirtualQIntValidator* self, const char* signal) {
	return self->QIntValidator::receivers(signal);
}

bool QIntValidator_protectedbase_isSignalConnected(const VirtualQIntValidator* self, QMetaMethod* signal) {
	return self->QIntValidator::isSignalConnected(*signal);
}

void QIntValidator_delete(QIntValidator* self) {
	delete self;
}

class VirtualQDoubleValidator final : public QDoubleValidator {
	const QDoubleValidator_VTable* vtbl;
public:
	friend void* QDoubleValidator_vdata(VirtualQDoubleValidator* self);
	friend VirtualQDoubleValidator* vdata_QDoubleValidator(void* vdata);

	VirtualQDoubleValidator(const QDoubleValidator_VTable* vtbl): QDoubleValidator(), vtbl(vtbl) {}
	VirtualQDoubleValidator(const QDoubleValidator_VTable* vtbl, double bottom, double top, int decimals): QDoubleValidator(bottom, top, decimals), vtbl(vtbl) {}
	VirtualQDoubleValidator(const QDoubleValidator_VTable* vtbl, QObject* parent): QDoubleValidator(parent), vtbl(vtbl) {}
	VirtualQDoubleValidator(const QDoubleValidator_VTable* vtbl, double bottom, double top, int decimals, QObject* parent): QDoubleValidator(bottom, top, decimals, parent), vtbl(vtbl) {}

	virtual ~VirtualQDoubleValidator() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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
		struct seaqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct seaqt_string sigval1 = param1_ms;
		int* sigval2 = &param2;
		int callback_return_value = vtbl->validate(this, sigval1, sigval2);
		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QDoubleValidator_virtualbase_validate(const VirtualQDoubleValidator* self, struct seaqt_string param1, int* param2);

	virtual void fixup(QString& input) const override {
		if (vtbl->fixup == 0) {
			QDoubleValidator::fixup(input);
			return;
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct seaqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct seaqt_string sigval1 = input_ms;
		vtbl->fixup(this, sigval1);
	}

	friend void QDoubleValidator_virtualbase_fixup(const VirtualQDoubleValidator* self, struct seaqt_string input);

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

VirtualQDoubleValidator* QDoubleValidator_new(const QDoubleValidator_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDoubleValidator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDoubleValidator(vtbl) : nullptr;
}

VirtualQDoubleValidator* QDoubleValidator_new_bottom_top_decimals(const QDoubleValidator_VTable* vtbl, size_t vdata, double bottom, double top, int decimals) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDoubleValidator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDoubleValidator(vtbl, static_cast<double>(bottom), static_cast<double>(top), static_cast<int>(decimals)) : nullptr;
}

VirtualQDoubleValidator* QDoubleValidator_new_parent(const QDoubleValidator_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDoubleValidator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDoubleValidator(vtbl, parent) : nullptr;
}

VirtualQDoubleValidator* QDoubleValidator_new_bottom_top_decimals_parent(const QDoubleValidator_VTable* vtbl, size_t vdata, double bottom, double top, int decimals, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDoubleValidator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDoubleValidator(vtbl, static_cast<double>(bottom), static_cast<double>(top), static_cast<int>(decimals), parent) : nullptr;
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

struct seaqt_string QDoubleValidator_tr_s(const char* s) {
	QString _ret = QDoubleValidator::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDoubleValidator_validate(const QDoubleValidator* self, struct seaqt_string param1, int* param2) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	QValidator::State _ret = self->validate(param1_QString, static_cast<int&>(*param2));
	return static_cast<int>(_ret);
}

void QDoubleValidator_fixup(const QDoubleValidator* self, struct seaqt_string input) {
	QString input_QString = QString::fromUtf8(input.data, input.len);
	self->fixup(input_QString);
}

void QDoubleValidator_setRange_bottom_top_decimals(QDoubleValidator* self, double bottom, double top, int decimals) {
	self->setRange(static_cast<double>(bottom), static_cast<double>(top), static_cast<int>(decimals));
}

void QDoubleValidator_setRange_bottom_top(QDoubleValidator* self, double bottom, double top) {
	self->setRange(static_cast<double>(bottom), static_cast<double>(top));
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

void QDoubleValidator_connect_bottomChanged(QDoubleValidator* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	QDoubleValidator::connect(self, static_cast<void (QDoubleValidator::*)(double)>(&QDoubleValidator::bottomChanged), self, [callback, release = seaqt::release_callback{slot,release}](double bottom) {
			double sigval1 = bottom;
			callback(release.slot, sigval1);
	});
}

void QDoubleValidator_topChanged(QDoubleValidator* self, double top) {
	self->topChanged(static_cast<double>(top));
}

void QDoubleValidator_connect_topChanged(QDoubleValidator* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	QDoubleValidator::connect(self, static_cast<void (QDoubleValidator::*)(double)>(&QDoubleValidator::topChanged), self, [callback, release = seaqt::release_callback{slot,release}](double top) {
			double sigval1 = top;
			callback(release.slot, sigval1);
	});
}

void QDoubleValidator_decimalsChanged(QDoubleValidator* self, int decimals) {
	self->decimalsChanged(static_cast<int>(decimals));
}

void QDoubleValidator_connect_decimalsChanged(QDoubleValidator* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QDoubleValidator::connect(self, static_cast<void (QDoubleValidator::*)(int)>(&QDoubleValidator::decimalsChanged), self, [callback, release = seaqt::release_callback{slot,release}](int decimals) {
			int sigval1 = decimals;
			callback(release.slot, sigval1);
	});
}

void QDoubleValidator_notationChanged(QDoubleValidator* self, int notation) {
	self->notationChanged(static_cast<QDoubleValidator::Notation>(notation));
}

void QDoubleValidator_connect_notationChanged(QDoubleValidator* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QDoubleValidator::connect(self, static_cast<void (QDoubleValidator::*)(QDoubleValidator::Notation)>(&QDoubleValidator::notationChanged), self, [callback, release = seaqt::release_callback{slot,release}](QDoubleValidator::Notation notation) {
			QDoubleValidator::Notation notation_ret = notation;
			int sigval1 = static_cast<int>(notation_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QDoubleValidator_tr_s_c(const char* s, const char* c) {
	QString _ret = QDoubleValidator::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDoubleValidator_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QDoubleValidator::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QDoubleValidator_staticMetaObject() { return &QDoubleValidator::staticMetaObject; }
void* QDoubleValidator_vdata(VirtualQDoubleValidator* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDoubleValidator>()); }
VirtualQDoubleValidator* vdata_QDoubleValidator(void* vdata) { return reinterpret_cast<VirtualQDoubleValidator*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDoubleValidator>()); }

QMetaObject* QDoubleValidator_virtualbase_metaObject(const VirtualQDoubleValidator* self) {

	return (QMetaObject*) self->QDoubleValidator::metaObject();
}

void* QDoubleValidator_virtualbase_metacast(VirtualQDoubleValidator* self, const char* param1) {

	return self->QDoubleValidator::qt_metacast(param1);
}

int QDoubleValidator_virtualbase_metacall(VirtualQDoubleValidator* self, int param1, int param2, void** param3) {

	return self->QDoubleValidator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QDoubleValidator_virtualbase_validate(const VirtualQDoubleValidator* self, struct seaqt_string param1, int* param2) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);

	VirtualQDoubleValidator::State _ret = self->QDoubleValidator::validate(param1_QString, static_cast<int&>(*param2));
	return static_cast<int>(_ret);
}

void QDoubleValidator_virtualbase_fixup(const VirtualQDoubleValidator* self, struct seaqt_string input) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	self->QDoubleValidator::fixup(input_QString);
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

QObject* QDoubleValidator_protectedbase_sender(const VirtualQDoubleValidator* self) {
	return self->QDoubleValidator::sender();
}

int QDoubleValidator_protectedbase_senderSignalIndex(const VirtualQDoubleValidator* self) {
	return self->QDoubleValidator::senderSignalIndex();
}

int QDoubleValidator_protectedbase_receivers(const VirtualQDoubleValidator* self, const char* signal) {
	return self->QDoubleValidator::receivers(signal);
}

bool QDoubleValidator_protectedbase_isSignalConnected(const VirtualQDoubleValidator* self, QMetaMethod* signal) {
	return self->QDoubleValidator::isSignalConnected(*signal);
}

void QDoubleValidator_delete(QDoubleValidator* self) {
	delete self;
}

class VirtualQRegularExpressionValidator final : public QRegularExpressionValidator {
	const QRegularExpressionValidator_VTable* vtbl;
public:
	friend void* QRegularExpressionValidator_vdata(VirtualQRegularExpressionValidator* self);
	friend VirtualQRegularExpressionValidator* vdata_QRegularExpressionValidator(void* vdata);

	VirtualQRegularExpressionValidator(const QRegularExpressionValidator_VTable* vtbl): QRegularExpressionValidator(), vtbl(vtbl) {}
	VirtualQRegularExpressionValidator(const QRegularExpressionValidator_VTable* vtbl, const QRegularExpression& re): QRegularExpressionValidator(re), vtbl(vtbl) {}
	VirtualQRegularExpressionValidator(const QRegularExpressionValidator_VTable* vtbl, QObject* parent): QRegularExpressionValidator(parent), vtbl(vtbl) {}
	VirtualQRegularExpressionValidator(const QRegularExpressionValidator_VTable* vtbl, const QRegularExpression& re, QObject* parent): QRegularExpressionValidator(re, parent), vtbl(vtbl) {}

	virtual ~VirtualQRegularExpressionValidator() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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
		struct seaqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct seaqt_string sigval1 = input_ms;
		int* sigval2 = &pos;
		int callback_return_value = vtbl->validate(this, sigval1, sigval2);
		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QRegularExpressionValidator_virtualbase_validate(const VirtualQRegularExpressionValidator* self, struct seaqt_string input, int* pos);

	virtual void fixup(QString& param1) const override {
		if (vtbl->fixup == 0) {
			QRegularExpressionValidator::fixup(param1);
			return;
		}

		QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct seaqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct seaqt_string sigval1 = param1_ms;
		vtbl->fixup(this, sigval1);
	}

	friend void QRegularExpressionValidator_virtualbase_fixup(const VirtualQRegularExpressionValidator* self, struct seaqt_string param1);

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

VirtualQRegularExpressionValidator* QRegularExpressionValidator_new(const QRegularExpressionValidator_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRegularExpressionValidator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRegularExpressionValidator(vtbl) : nullptr;
}

VirtualQRegularExpressionValidator* QRegularExpressionValidator_new_re(const QRegularExpressionValidator_VTable* vtbl, size_t vdata, QRegularExpression* re) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRegularExpressionValidator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRegularExpressionValidator(vtbl, *re) : nullptr;
}

VirtualQRegularExpressionValidator* QRegularExpressionValidator_new_parent(const QRegularExpressionValidator_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRegularExpressionValidator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRegularExpressionValidator(vtbl, parent) : nullptr;
}

VirtualQRegularExpressionValidator* QRegularExpressionValidator_new_re_parent(const QRegularExpressionValidator_VTable* vtbl, size_t vdata, QRegularExpression* re, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRegularExpressionValidator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRegularExpressionValidator(vtbl, *re, parent) : nullptr;
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

struct seaqt_string QRegularExpressionValidator_tr_s(const char* s) {
	QString _ret = QRegularExpressionValidator::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QRegularExpressionValidator_validate(const QRegularExpressionValidator* self, struct seaqt_string input, int* pos) {
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

void QRegularExpressionValidator_connect_regularExpressionChanged(QRegularExpressionValidator* self, intptr_t slot, void (*callback)(intptr_t, QRegularExpression*), void (*release)(intptr_t)) {
	QRegularExpressionValidator::connect(self, static_cast<void (QRegularExpressionValidator::*)(const QRegularExpression&)>(&QRegularExpressionValidator::regularExpressionChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QRegularExpression& re) {
			const QRegularExpression& re_ret = re;
			// Cast returned reference into pointer
			QRegularExpression* sigval1 = const_cast<QRegularExpression*>(&re_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QRegularExpressionValidator_tr_s_c(const char* s, const char* c) {
	QString _ret = QRegularExpressionValidator::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRegularExpressionValidator_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QRegularExpressionValidator::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QRegularExpressionValidator_staticMetaObject() { return &QRegularExpressionValidator::staticMetaObject; }
void* QRegularExpressionValidator_vdata(VirtualQRegularExpressionValidator* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQRegularExpressionValidator>()); }
VirtualQRegularExpressionValidator* vdata_QRegularExpressionValidator(void* vdata) { return reinterpret_cast<VirtualQRegularExpressionValidator*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQRegularExpressionValidator>()); }

QMetaObject* QRegularExpressionValidator_virtualbase_metaObject(const VirtualQRegularExpressionValidator* self) {

	return (QMetaObject*) self->QRegularExpressionValidator::metaObject();
}

void* QRegularExpressionValidator_virtualbase_metacast(VirtualQRegularExpressionValidator* self, const char* param1) {

	return self->QRegularExpressionValidator::qt_metacast(param1);
}

int QRegularExpressionValidator_virtualbase_metacall(VirtualQRegularExpressionValidator* self, int param1, int param2, void** param3) {

	return self->QRegularExpressionValidator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QRegularExpressionValidator_virtualbase_validate(const VirtualQRegularExpressionValidator* self, struct seaqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	VirtualQRegularExpressionValidator::State _ret = self->QRegularExpressionValidator::validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);
}

void QRegularExpressionValidator_virtualbase_fixup(const VirtualQRegularExpressionValidator* self, struct seaqt_string param1) {
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

QObject* QRegularExpressionValidator_protectedbase_sender(const VirtualQRegularExpressionValidator* self) {
	return self->QRegularExpressionValidator::sender();
}

int QRegularExpressionValidator_protectedbase_senderSignalIndex(const VirtualQRegularExpressionValidator* self) {
	return self->QRegularExpressionValidator::senderSignalIndex();
}

int QRegularExpressionValidator_protectedbase_receivers(const VirtualQRegularExpressionValidator* self, const char* signal) {
	return self->QRegularExpressionValidator::receivers(signal);
}

bool QRegularExpressionValidator_protectedbase_isSignalConnected(const VirtualQRegularExpressionValidator* self, QMetaMethod* signal) {
	return self->QRegularExpressionValidator::isSignalConnected(*signal);
}

void QRegularExpressionValidator_delete(QRegularExpressionValidator* self) {
	delete self;
}

