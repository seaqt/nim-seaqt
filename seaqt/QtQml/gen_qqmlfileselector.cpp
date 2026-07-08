#include <QChildEvent>
#include <QEvent>
#include <QFileSelector>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQmlEngine>
#include <QQmlFileSelector>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qqmlfileselector.h>
#include "gen_qqmlfileselector.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQQmlFileSelector final : public QQmlFileSelector {
	const QQmlFileSelector_VTable* vtbl;
public:
	friend void* QQmlFileSelector_vdata(VirtualQQmlFileSelector* self);
	friend VirtualQQmlFileSelector* vdata_QQmlFileSelector(void* vdata);

	VirtualQQmlFileSelector(const QQmlFileSelector_VTable* vtbl, QQmlEngine* engine): QQmlFileSelector(engine), vtbl(vtbl) {}
	VirtualQQmlFileSelector(const QQmlFileSelector_VTable* vtbl, QQmlEngine* engine, QObject* parent): QQmlFileSelector(engine, parent), vtbl(vtbl) {}

	virtual ~VirtualQQmlFileSelector() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQmlFileSelector::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QQmlFileSelector_virtualbase_metaObject(const VirtualQQmlFileSelector* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQmlFileSelector::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QQmlFileSelector_virtualbase_metacast(VirtualQQmlFileSelector* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQmlFileSelector::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QQmlFileSelector_virtualbase_metacall(VirtualQQmlFileSelector* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQmlFileSelector::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QQmlFileSelector_virtualbase_event(VirtualQQmlFileSelector* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQmlFileSelector::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QQmlFileSelector_virtualbase_eventFilter(VirtualQQmlFileSelector* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQmlFileSelector::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QQmlFileSelector_virtualbase_timerEvent(VirtualQQmlFileSelector* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQmlFileSelector::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QQmlFileSelector_virtualbase_childEvent(VirtualQQmlFileSelector* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQmlFileSelector::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QQmlFileSelector_virtualbase_customEvent(VirtualQQmlFileSelector* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQmlFileSelector::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QQmlFileSelector_virtualbase_connectNotify(VirtualQQmlFileSelector* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQmlFileSelector::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QQmlFileSelector_virtualbase_disconnectNotify(VirtualQQmlFileSelector* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQmlFileSelector_protectedbase_sender(const VirtualQQmlFileSelector* self);
	friend int QQmlFileSelector_protectedbase_senderSignalIndex(const VirtualQQmlFileSelector* self);
	friend int QQmlFileSelector_protectedbase_receivers(const VirtualQQmlFileSelector* self, const char* signal);
	friend bool QQmlFileSelector_protectedbase_isSignalConnected(const VirtualQQmlFileSelector* self, QMetaMethod* signal);
};

VirtualQQmlFileSelector* QQmlFileSelector_new_engine(const QQmlFileSelector_VTable* vtbl, size_t vdata, QQmlEngine* engine) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlFileSelector>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlFileSelector(vtbl, engine) : nullptr;
}

VirtualQQmlFileSelector* QQmlFileSelector_new_engine_parent(const QQmlFileSelector_VTable* vtbl, size_t vdata, QQmlEngine* engine, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQmlFileSelector>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQmlFileSelector(vtbl, engine, parent) : nullptr;
}

void QQmlFileSelector_virtbase(QQmlFileSelector* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQmlFileSelector_metaObject(const QQmlFileSelector* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQmlFileSelector_metacast(QQmlFileSelector* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQmlFileSelector_metacall(QQmlFileSelector* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QQmlFileSelector_tr_s(const char* s) {
	QString _ret = QQmlFileSelector::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QFileSelector* QQmlFileSelector_selector(const QQmlFileSelector* self) {
	return self->selector();
}

void QQmlFileSelector_setSelector(QQmlFileSelector* self, QFileSelector* selector) {
	self->setSelector(selector);
}

void QQmlFileSelector_setExtraSelectors(QQmlFileSelector* self, struct seaqt_array /* of struct seaqt_string */  strings) {
	QStringList strings_QList;
	strings_QList.reserve(strings.len);
	struct seaqt_string* strings_arr = static_cast<struct seaqt_string*>(strings.data);
	for(size_t i = 0; i < strings.len; ++i) {
		QString strings_arr_i_QString = QString::fromUtf8(strings_arr[i].data, strings_arr[i].len);
		strings_QList.push_back(strings_arr_i_QString);
	}
	self->setExtraSelectors(strings_QList);
}

QQmlFileSelector* QQmlFileSelector_get(QQmlEngine* param1) {
	return QQmlFileSelector::get(param1);
}

struct seaqt_string QQmlFileSelector_tr_s_c(const char* s, const char* c) {
	QString _ret = QQmlFileSelector::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQmlFileSelector_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QQmlFileSelector::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QQmlFileSelector_staticMetaObject() { return &QQmlFileSelector::staticMetaObject; }
void* QQmlFileSelector_vdata(VirtualQQmlFileSelector* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQQmlFileSelector>()); }
VirtualQQmlFileSelector* vdata_QQmlFileSelector(void* vdata) { return reinterpret_cast<VirtualQQmlFileSelector*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQQmlFileSelector>()); }

QMetaObject* QQmlFileSelector_virtualbase_metaObject(const VirtualQQmlFileSelector* self) {

	return (QMetaObject*) self->QQmlFileSelector::metaObject();
}

void* QQmlFileSelector_virtualbase_metacast(VirtualQQmlFileSelector* self, const char* param1) {

	return self->QQmlFileSelector::qt_metacast(param1);
}

int QQmlFileSelector_virtualbase_metacall(VirtualQQmlFileSelector* self, int param1, int param2, void** param3) {

	return self->QQmlFileSelector::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QQmlFileSelector_virtualbase_event(VirtualQQmlFileSelector* self, QEvent* event) {

	return self->QQmlFileSelector::event(event);
}

bool QQmlFileSelector_virtualbase_eventFilter(VirtualQQmlFileSelector* self, QObject* watched, QEvent* event) {

	return self->QQmlFileSelector::eventFilter(watched, event);
}

void QQmlFileSelector_virtualbase_timerEvent(VirtualQQmlFileSelector* self, QTimerEvent* event) {

	self->QQmlFileSelector::timerEvent(event);
}

void QQmlFileSelector_virtualbase_childEvent(VirtualQQmlFileSelector* self, QChildEvent* event) {

	self->QQmlFileSelector::childEvent(event);
}

void QQmlFileSelector_virtualbase_customEvent(VirtualQQmlFileSelector* self, QEvent* event) {

	self->QQmlFileSelector::customEvent(event);
}

void QQmlFileSelector_virtualbase_connectNotify(VirtualQQmlFileSelector* self, QMetaMethod* signal) {

	self->QQmlFileSelector::connectNotify(*signal);
}

void QQmlFileSelector_virtualbase_disconnectNotify(VirtualQQmlFileSelector* self, QMetaMethod* signal) {

	self->QQmlFileSelector::disconnectNotify(*signal);
}

QObject* QQmlFileSelector_protectedbase_sender(const VirtualQQmlFileSelector* self) {
	return self->QQmlFileSelector::sender();
}

int QQmlFileSelector_protectedbase_senderSignalIndex(const VirtualQQmlFileSelector* self) {
	return self->QQmlFileSelector::senderSignalIndex();
}

int QQmlFileSelector_protectedbase_receivers(const VirtualQQmlFileSelector* self, const char* signal) {
	return self->QQmlFileSelector::receivers(signal);
}

bool QQmlFileSelector_protectedbase_isSignalConnected(const VirtualQQmlFileSelector* self, QMetaMethod* signal) {
	return self->QQmlFileSelector::isSignalConnected(*signal);
}

void QQmlFileSelector_delete(QQmlFileSelector* self) {
	delete self;
}

