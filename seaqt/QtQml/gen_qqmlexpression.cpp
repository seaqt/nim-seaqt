#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQmlContext>
#include <QQmlEngine>
#include <QQmlError>
#include <QQmlExpression>
#include <QQmlScriptString>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qqmlexpression.h>
#include "gen_qqmlexpression.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQQmlExpression final : public QQmlExpression {
	const QQmlExpression_VTable* vtbl;
public:
	friend void* QQmlExpression_vdata(VirtualQQmlExpression* self);
	friend VirtualQQmlExpression* vdata_QQmlExpression(void* vdata);

	VirtualQQmlExpression(const QQmlExpression_VTable* vtbl): QQmlExpression(), vtbl(vtbl) {}
	VirtualQQmlExpression(const QQmlExpression_VTable* vtbl, QQmlContext* param1, QObject* param2, const QString& param3): QQmlExpression(param1, param2, param3), vtbl(vtbl) {}
	VirtualQQmlExpression(const QQmlExpression_VTable* vtbl, const QQmlScriptString& param1): QQmlExpression(param1), vtbl(vtbl) {}
	VirtualQQmlExpression(const QQmlExpression_VTable* vtbl, QQmlContext* param1, QObject* param2, const QString& param3, QObject* param4): QQmlExpression(param1, param2, param3, param4), vtbl(vtbl) {}
	VirtualQQmlExpression(const QQmlExpression_VTable* vtbl, const QQmlScriptString& param1, QQmlContext* param2): QQmlExpression(param1, param2), vtbl(vtbl) {}
	VirtualQQmlExpression(const QQmlExpression_VTable* vtbl, const QQmlScriptString& param1, QQmlContext* param2, QObject* param3): QQmlExpression(param1, param2, param3), vtbl(vtbl) {}
	VirtualQQmlExpression(const QQmlExpression_VTable* vtbl, const QQmlScriptString& param1, QQmlContext* param2, QObject* param3, QObject* param4): QQmlExpression(param1, param2, param3, param4), vtbl(vtbl) {}

	virtual ~VirtualQQmlExpression() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQmlExpression::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QQmlExpression_virtualbase_metaObject(const VirtualQQmlExpression* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQmlExpression::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QQmlExpression_virtualbase_metacast(VirtualQQmlExpression* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQmlExpression::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QQmlExpression_virtualbase_metacall(VirtualQQmlExpression* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQmlExpression::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QQmlExpression_virtualbase_event(VirtualQQmlExpression* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQmlExpression::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QQmlExpression_virtualbase_eventFilter(VirtualQQmlExpression* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQmlExpression::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QQmlExpression_virtualbase_timerEvent(VirtualQQmlExpression* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQmlExpression::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QQmlExpression_virtualbase_childEvent(VirtualQQmlExpression* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQmlExpression::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QQmlExpression_virtualbase_customEvent(VirtualQQmlExpression* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQmlExpression::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QQmlExpression_virtualbase_connectNotify(VirtualQQmlExpression* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQmlExpression::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QQmlExpression_virtualbase_disconnectNotify(VirtualQQmlExpression* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQmlExpression_protectedbase_sender(const VirtualQQmlExpression* self);
	friend int QQmlExpression_protectedbase_senderSignalIndex(const VirtualQQmlExpression* self);
	friend int QQmlExpression_protectedbase_receivers(const VirtualQQmlExpression* self, const char* signal);
	friend bool QQmlExpression_protectedbase_isSignalConnected(const VirtualQQmlExpression* self, QMetaMethod* signal);
};

VirtualQQmlExpression* QQmlExpression_new(const QQmlExpression_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlExpression>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlExpression(vtbl) : nullptr;
}

VirtualQQmlExpression* QQmlExpression_new_QQmlContext_QObject_QString(const QQmlExpression_VTable* vtbl, size_t vdata, QQmlContext* param1, QObject* param2, struct seaqt_string param3) {
	QString param3_QString = QString::fromUtf8(param3.data, param3.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlExpression>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlExpression(vtbl, param1, param2, param3_QString) : nullptr;
}

VirtualQQmlExpression* QQmlExpression_new_QQmlScriptString(const QQmlExpression_VTable* vtbl, size_t vdata, QQmlScriptString* param1) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlExpression>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlExpression(vtbl, *param1) : nullptr;
}

VirtualQQmlExpression* QQmlExpression_new_QQmlContext_QObject_QString_QObject(const QQmlExpression_VTable* vtbl, size_t vdata, QQmlContext* param1, QObject* param2, struct seaqt_string param3, QObject* param4) {
	QString param3_QString = QString::fromUtf8(param3.data, param3.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlExpression>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlExpression(vtbl, param1, param2, param3_QString, param4) : nullptr;
}

VirtualQQmlExpression* QQmlExpression_new_QQmlScriptString_QQmlContext(const QQmlExpression_VTable* vtbl, size_t vdata, QQmlScriptString* param1, QQmlContext* param2) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlExpression>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlExpression(vtbl, *param1, param2) : nullptr;
}

VirtualQQmlExpression* QQmlExpression_new_QQmlScriptString_QQmlContext_QObject(const QQmlExpression_VTable* vtbl, size_t vdata, QQmlScriptString* param1, QQmlContext* param2, QObject* param3) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlExpression>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlExpression(vtbl, *param1, param2, param3) : nullptr;
}

VirtualQQmlExpression* QQmlExpression_new_QQmlScriptString_QQmlContext_QObject_QObject(const QQmlExpression_VTable* vtbl, size_t vdata, QQmlScriptString* param1, QQmlContext* param2, QObject* param3, QObject* param4) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlExpression>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlExpression(vtbl, *param1, param2, param3, param4) : nullptr;
}

void QQmlExpression_virtbase(QQmlExpression* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQmlExpression_metaObject(const QQmlExpression* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQmlExpression_metacast(QQmlExpression* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQmlExpression_metacall(QQmlExpression* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QQmlExpression_tr_s(const char* s) {
	QString _ret = QQmlExpression::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QQmlEngine* QQmlExpression_engine(const QQmlExpression* self) {
	return self->engine();
}

QQmlContext* QQmlExpression_context(const QQmlExpression* self) {
	return self->context();
}

struct seaqt_string QQmlExpression_expression(const QQmlExpression* self) {
	QString _ret = self->expression();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQmlExpression_setExpression(QQmlExpression* self, struct seaqt_string expression) {
	QString expression_QString = QString::fromUtf8(expression.data, expression.len);
	self->setExpression(expression_QString);
}

bool QQmlExpression_notifyOnValueChanged(const QQmlExpression* self) {
	return self->notifyOnValueChanged();
}

void QQmlExpression_setNotifyOnValueChanged(QQmlExpression* self, bool notifyOnValueChanged) {
	self->setNotifyOnValueChanged(notifyOnValueChanged);
}

struct seaqt_string QQmlExpression_sourceFile(const QQmlExpression* self) {
	QString _ret = self->sourceFile();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QQmlExpression_lineNumber(const QQmlExpression* self) {
	return self->lineNumber();
}

int QQmlExpression_columnNumber(const QQmlExpression* self) {
	return self->columnNumber();
}

void QQmlExpression_setSourceLocation_fileName_line(QQmlExpression* self, struct seaqt_string fileName, int line) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setSourceLocation(fileName_QString, static_cast<int>(line));
}

QObject* QQmlExpression_scopeObject(const QQmlExpression* self) {
	return self->scopeObject();
}

bool QQmlExpression_hasError(const QQmlExpression* self) {
	return self->hasError();
}

void QQmlExpression_clearError(QQmlExpression* self) {
	self->clearError();
}

QQmlError* QQmlExpression_error(const QQmlExpression* self) {
	return new QQmlError(self->error());
}

QVariant* QQmlExpression_evaluate(QQmlExpression* self) {
	return new QVariant(self->evaluate());
}

void QQmlExpression_valueChanged(QQmlExpression* self) {
	self->valueChanged();
}

void QQmlExpression_connect_valueChanged(QQmlExpression* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QQmlExpression::connect(self, static_cast<void (QQmlExpression::*)()>(&QQmlExpression::valueChanged), self, local_caller{slot, callback, release});
}

struct seaqt_string QQmlExpression_tr_s_c(const char* s, const char* c) {
	QString _ret = QQmlExpression::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQmlExpression_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QQmlExpression::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQmlExpression_setSourceLocation_fileName_line_column(QQmlExpression* self, struct seaqt_string fileName, int line, int column) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setSourceLocation(fileName_QString, static_cast<int>(line), static_cast<int>(column));
}

QVariant* QQmlExpression_evaluate_valueIsUndefined(QQmlExpression* self, bool* valueIsUndefined) {
	return new QVariant(self->evaluate(valueIsUndefined));
}

const QMetaObject* QQmlExpression_staticMetaObject() { return &QQmlExpression::staticMetaObject; }
void* QQmlExpression_vdata(VirtualQQmlExpression* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQQmlExpression>()); }
VirtualQQmlExpression* vdata_QQmlExpression(void* vdata) { return reinterpret_cast<VirtualQQmlExpression*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQQmlExpression>()); }

QMetaObject* QQmlExpression_virtualbase_metaObject(const VirtualQQmlExpression* self) {

	return (QMetaObject*) self->QQmlExpression::metaObject();
}

void* QQmlExpression_virtualbase_metacast(VirtualQQmlExpression* self, const char* param1) {

	return self->QQmlExpression::qt_metacast(param1);
}

int QQmlExpression_virtualbase_metacall(VirtualQQmlExpression* self, int param1, int param2, void** param3) {

	return self->QQmlExpression::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QQmlExpression_virtualbase_event(VirtualQQmlExpression* self, QEvent* event) {

	return self->QQmlExpression::event(event);
}

bool QQmlExpression_virtualbase_eventFilter(VirtualQQmlExpression* self, QObject* watched, QEvent* event) {

	return self->QQmlExpression::eventFilter(watched, event);
}

void QQmlExpression_virtualbase_timerEvent(VirtualQQmlExpression* self, QTimerEvent* event) {

	self->QQmlExpression::timerEvent(event);
}

void QQmlExpression_virtualbase_childEvent(VirtualQQmlExpression* self, QChildEvent* event) {

	self->QQmlExpression::childEvent(event);
}

void QQmlExpression_virtualbase_customEvent(VirtualQQmlExpression* self, QEvent* event) {

	self->QQmlExpression::customEvent(event);
}

void QQmlExpression_virtualbase_connectNotify(VirtualQQmlExpression* self, QMetaMethod* signal) {

	self->QQmlExpression::connectNotify(*signal);
}

void QQmlExpression_virtualbase_disconnectNotify(VirtualQQmlExpression* self, QMetaMethod* signal) {

	self->QQmlExpression::disconnectNotify(*signal);
}

QObject* QQmlExpression_protectedbase_sender(const VirtualQQmlExpression* self) {
	return self->sender();
}

int QQmlExpression_protectedbase_senderSignalIndex(const VirtualQQmlExpression* self) {
	return self->senderSignalIndex();
}

int QQmlExpression_protectedbase_receivers(const VirtualQQmlExpression* self, const char* signal) {
	return self->receivers(signal);
}

bool QQmlExpression_protectedbase_isSignalConnected(const VirtualQQmlExpression* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QQmlExpression_delete(QQmlExpression* self) {
	delete self;
}

