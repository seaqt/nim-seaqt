#include <QByteArray>
#include <QChildEvent>
#include <QDnsDomainNameRecord>
#include <QDnsHostAddressRecord>
#include <QDnsLookup>
#include <QDnsMailExchangeRecord>
#include <QDnsServiceRecord>
#include <QDnsTextRecord>
#include <QEvent>
#include <QHostAddress>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qdnslookup.h>
#include "gen_qdnslookup.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QDnsDomainNameRecord* QDnsDomainNameRecord_new() {
	return new (std::nothrow) QDnsDomainNameRecord();
}

QDnsDomainNameRecord* QDnsDomainNameRecord_new_from(QDnsDomainNameRecord* from) {
	return new (std::nothrow) QDnsDomainNameRecord(*from);
}

void QDnsDomainNameRecord_operatorAssign(QDnsDomainNameRecord* self, QDnsDomainNameRecord* from) {
	self->operator=(*from);
}

void QDnsDomainNameRecord_swap(QDnsDomainNameRecord* self, QDnsDomainNameRecord* other) {
	self->swap(*other);
}

struct seaqt_string QDnsDomainNameRecord_name(const QDnsDomainNameRecord* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

unsigned int QDnsDomainNameRecord_timeToLive(const QDnsDomainNameRecord* self) {
	quint32 _ret = self->timeToLive();
	return static_cast<unsigned int>(_ret);
}

struct seaqt_string QDnsDomainNameRecord_value(const QDnsDomainNameRecord* self) {
	QString _ret = self->value();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDnsDomainNameRecord_delete(QDnsDomainNameRecord* self) {
	delete self;
}

QDnsHostAddressRecord* QDnsHostAddressRecord_new() {
	return new (std::nothrow) QDnsHostAddressRecord();
}

QDnsHostAddressRecord* QDnsHostAddressRecord_new_from(QDnsHostAddressRecord* from) {
	return new (std::nothrow) QDnsHostAddressRecord(*from);
}

void QDnsHostAddressRecord_operatorAssign(QDnsHostAddressRecord* self, QDnsHostAddressRecord* from) {
	self->operator=(*from);
}

void QDnsHostAddressRecord_swap(QDnsHostAddressRecord* self, QDnsHostAddressRecord* other) {
	self->swap(*other);
}

struct seaqt_string QDnsHostAddressRecord_name(const QDnsHostAddressRecord* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

unsigned int QDnsHostAddressRecord_timeToLive(const QDnsHostAddressRecord* self) {
	quint32 _ret = self->timeToLive();
	return static_cast<unsigned int>(_ret);
}

QHostAddress* QDnsHostAddressRecord_value(const QDnsHostAddressRecord* self) {
	return new QHostAddress(self->value());
}

void QDnsHostAddressRecord_delete(QDnsHostAddressRecord* self) {
	delete self;
}

QDnsMailExchangeRecord* QDnsMailExchangeRecord_new() {
	return new (std::nothrow) QDnsMailExchangeRecord();
}

QDnsMailExchangeRecord* QDnsMailExchangeRecord_new_from(QDnsMailExchangeRecord* from) {
	return new (std::nothrow) QDnsMailExchangeRecord(*from);
}

void QDnsMailExchangeRecord_operatorAssign(QDnsMailExchangeRecord* self, QDnsMailExchangeRecord* from) {
	self->operator=(*from);
}

void QDnsMailExchangeRecord_swap(QDnsMailExchangeRecord* self, QDnsMailExchangeRecord* other) {
	self->swap(*other);
}

struct seaqt_string QDnsMailExchangeRecord_exchange(const QDnsMailExchangeRecord* self) {
	QString _ret = self->exchange();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDnsMailExchangeRecord_name(const QDnsMailExchangeRecord* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

unsigned short QDnsMailExchangeRecord_preference(const QDnsMailExchangeRecord* self) {
	quint16 _ret = self->preference();
	return static_cast<unsigned short>(_ret);
}

unsigned int QDnsMailExchangeRecord_timeToLive(const QDnsMailExchangeRecord* self) {
	quint32 _ret = self->timeToLive();
	return static_cast<unsigned int>(_ret);
}

void QDnsMailExchangeRecord_delete(QDnsMailExchangeRecord* self) {
	delete self;
}

QDnsServiceRecord* QDnsServiceRecord_new() {
	return new (std::nothrow) QDnsServiceRecord();
}

QDnsServiceRecord* QDnsServiceRecord_new_from(QDnsServiceRecord* from) {
	return new (std::nothrow) QDnsServiceRecord(*from);
}

void QDnsServiceRecord_operatorAssign(QDnsServiceRecord* self, QDnsServiceRecord* from) {
	self->operator=(*from);
}

void QDnsServiceRecord_swap(QDnsServiceRecord* self, QDnsServiceRecord* other) {
	self->swap(*other);
}

struct seaqt_string QDnsServiceRecord_name(const QDnsServiceRecord* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

unsigned short QDnsServiceRecord_port(const QDnsServiceRecord* self) {
	quint16 _ret = self->port();
	return static_cast<unsigned short>(_ret);
}

unsigned short QDnsServiceRecord_priority(const QDnsServiceRecord* self) {
	quint16 _ret = self->priority();
	return static_cast<unsigned short>(_ret);
}

struct seaqt_string QDnsServiceRecord_target(const QDnsServiceRecord* self) {
	QString _ret = self->target();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

unsigned int QDnsServiceRecord_timeToLive(const QDnsServiceRecord* self) {
	quint32 _ret = self->timeToLive();
	return static_cast<unsigned int>(_ret);
}

unsigned short QDnsServiceRecord_weight(const QDnsServiceRecord* self) {
	quint16 _ret = self->weight();
	return static_cast<unsigned short>(_ret);
}

void QDnsServiceRecord_delete(QDnsServiceRecord* self) {
	delete self;
}

QDnsTextRecord* QDnsTextRecord_new() {
	return new (std::nothrow) QDnsTextRecord();
}

QDnsTextRecord* QDnsTextRecord_new_from(QDnsTextRecord* from) {
	return new (std::nothrow) QDnsTextRecord(*from);
}

void QDnsTextRecord_operatorAssign(QDnsTextRecord* self, QDnsTextRecord* from) {
	self->operator=(*from);
}

void QDnsTextRecord_swap(QDnsTextRecord* self, QDnsTextRecord* other) {
	self->swap(*other);
}

struct seaqt_string QDnsTextRecord_name(const QDnsTextRecord* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

unsigned int QDnsTextRecord_timeToLive(const QDnsTextRecord* self) {
	quint32 _ret = self->timeToLive();
	return static_cast<unsigned int>(_ret);
}

struct seaqt_array /* of struct seaqt_string */  QDnsTextRecord_values(const QDnsTextRecord* self) {
	QList<QByteArray> _ret = self->values();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QByteArray _lv_qb = _ret[i];
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_qb.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_qb.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QDnsTextRecord_delete(QDnsTextRecord* self) {
	delete self;
}

class VirtualQDnsLookup final : public QDnsLookup {
	const QDnsLookup_VTable* vtbl;
public:
	friend void* QDnsLookup_vdata(VirtualQDnsLookup* self);
	friend VirtualQDnsLookup* vdata_QDnsLookup(void* vdata);

	VirtualQDnsLookup(const QDnsLookup_VTable* vtbl): QDnsLookup(), vtbl(vtbl) {}
	VirtualQDnsLookup(const QDnsLookup_VTable* vtbl, QDnsLookup::Type type, const QString& name): QDnsLookup(type, name), vtbl(vtbl) {}
	VirtualQDnsLookup(const QDnsLookup_VTable* vtbl, QDnsLookup::Type type, const QString& name, const QHostAddress& nameserver): QDnsLookup(type, name, nameserver), vtbl(vtbl) {}
	VirtualQDnsLookup(const QDnsLookup_VTable* vtbl, QObject* parent): QDnsLookup(parent), vtbl(vtbl) {}
	VirtualQDnsLookup(const QDnsLookup_VTable* vtbl, QDnsLookup::Type type, const QString& name, QObject* parent): QDnsLookup(type, name, parent), vtbl(vtbl) {}
	VirtualQDnsLookup(const QDnsLookup_VTable* vtbl, QDnsLookup::Type type, const QString& name, const QHostAddress& nameserver, QObject* parent): QDnsLookup(type, name, nameserver, parent), vtbl(vtbl) {}

	virtual ~VirtualQDnsLookup() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDnsLookup::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QDnsLookup_virtualbase_metaObject(const VirtualQDnsLookup* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDnsLookup::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QDnsLookup_virtualbase_metacast(VirtualQDnsLookup* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDnsLookup::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QDnsLookup_virtualbase_metacall(VirtualQDnsLookup* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDnsLookup::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QDnsLookup_virtualbase_event(VirtualQDnsLookup* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDnsLookup::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QDnsLookup_virtualbase_eventFilter(VirtualQDnsLookup* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDnsLookup::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QDnsLookup_virtualbase_timerEvent(VirtualQDnsLookup* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDnsLookup::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QDnsLookup_virtualbase_childEvent(VirtualQDnsLookup* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDnsLookup::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QDnsLookup_virtualbase_customEvent(VirtualQDnsLookup* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDnsLookup::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QDnsLookup_virtualbase_connectNotify(VirtualQDnsLookup* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDnsLookup::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QDnsLookup_virtualbase_disconnectNotify(VirtualQDnsLookup* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QDnsLookup_protectedbase_sender(const VirtualQDnsLookup* self);
	friend int QDnsLookup_protectedbase_senderSignalIndex(const VirtualQDnsLookup* self);
	friend int QDnsLookup_protectedbase_receivers(const VirtualQDnsLookup* self, const char* signal);
	friend bool QDnsLookup_protectedbase_isSignalConnected(const VirtualQDnsLookup* self, QMetaMethod* signal);
};

VirtualQDnsLookup* QDnsLookup_new(const QDnsLookup_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDnsLookup>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDnsLookup(vtbl) : nullptr;
}

VirtualQDnsLookup* QDnsLookup_new_type_name(const QDnsLookup_VTable* vtbl, size_t vdata, int type, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDnsLookup>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDnsLookup(vtbl, static_cast<QDnsLookup::Type>(type), name_QString) : nullptr;
}

VirtualQDnsLookup* QDnsLookup_new_type_name_nameserver(const QDnsLookup_VTable* vtbl, size_t vdata, int type, struct seaqt_string name, QHostAddress* nameserver) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDnsLookup>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDnsLookup(vtbl, static_cast<QDnsLookup::Type>(type), name_QString, *nameserver) : nullptr;
}

VirtualQDnsLookup* QDnsLookup_new_parent(const QDnsLookup_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDnsLookup>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDnsLookup(vtbl, parent) : nullptr;
}

VirtualQDnsLookup* QDnsLookup_new_type_name_parent(const QDnsLookup_VTable* vtbl, size_t vdata, int type, struct seaqt_string name, QObject* parent) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDnsLookup>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDnsLookup(vtbl, static_cast<QDnsLookup::Type>(type), name_QString, parent) : nullptr;
}

VirtualQDnsLookup* QDnsLookup_new_type_name_nameserver_parent(const QDnsLookup_VTable* vtbl, size_t vdata, int type, struct seaqt_string name, QHostAddress* nameserver, QObject* parent) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDnsLookup>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDnsLookup(vtbl, static_cast<QDnsLookup::Type>(type), name_QString, *nameserver, parent) : nullptr;
}

void QDnsLookup_virtbase(QDnsLookup* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QDnsLookup_metaObject(const QDnsLookup* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDnsLookup_metacast(QDnsLookup* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDnsLookup_metacall(QDnsLookup* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDnsLookup_tr_s(const char* s) {
	QString _ret = QDnsLookup::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDnsLookup_error(const QDnsLookup* self) {
	QDnsLookup::Error _ret = self->error();
	return static_cast<int>(_ret);
}

struct seaqt_string QDnsLookup_errorString(const QDnsLookup* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QDnsLookup_isFinished(const QDnsLookup* self) {
	return self->isFinished();
}

struct seaqt_string QDnsLookup_name(const QDnsLookup* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDnsLookup_setName(QDnsLookup* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setName(name_QString);
}

int QDnsLookup_type(const QDnsLookup* self) {
	QDnsLookup::Type _ret = self->type();
	return static_cast<int>(_ret);
}

void QDnsLookup_setType(QDnsLookup* self, int type) {
	self->setType(static_cast<QDnsLookup::Type>(type));
}

QHostAddress* QDnsLookup_nameserver(const QDnsLookup* self) {
	return new QHostAddress(self->nameserver());
}

void QDnsLookup_setNameserver(QDnsLookup* self, QHostAddress* nameserver) {
	self->setNameserver(*nameserver);
}

struct seaqt_array /* of QDnsDomainNameRecord* */  QDnsLookup_canonicalNameRecords(const QDnsLookup* self) {
	QList<QDnsDomainNameRecord> _ret = self->canonicalNameRecords();
	// Convert QList<> from C++ memory to manually-managed C memory
	QDnsDomainNameRecord** _arr = static_cast<QDnsDomainNameRecord**>(malloc(sizeof(QDnsDomainNameRecord*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QDnsDomainNameRecord(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of QDnsHostAddressRecord* */  QDnsLookup_hostAddressRecords(const QDnsLookup* self) {
	QList<QDnsHostAddressRecord> _ret = self->hostAddressRecords();
	// Convert QList<> from C++ memory to manually-managed C memory
	QDnsHostAddressRecord** _arr = static_cast<QDnsHostAddressRecord**>(malloc(sizeof(QDnsHostAddressRecord*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QDnsHostAddressRecord(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of QDnsMailExchangeRecord* */  QDnsLookup_mailExchangeRecords(const QDnsLookup* self) {
	QList<QDnsMailExchangeRecord> _ret = self->mailExchangeRecords();
	// Convert QList<> from C++ memory to manually-managed C memory
	QDnsMailExchangeRecord** _arr = static_cast<QDnsMailExchangeRecord**>(malloc(sizeof(QDnsMailExchangeRecord*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QDnsMailExchangeRecord(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of QDnsDomainNameRecord* */  QDnsLookup_nameServerRecords(const QDnsLookup* self) {
	QList<QDnsDomainNameRecord> _ret = self->nameServerRecords();
	// Convert QList<> from C++ memory to manually-managed C memory
	QDnsDomainNameRecord** _arr = static_cast<QDnsDomainNameRecord**>(malloc(sizeof(QDnsDomainNameRecord*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QDnsDomainNameRecord(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of QDnsDomainNameRecord* */  QDnsLookup_pointerRecords(const QDnsLookup* self) {
	QList<QDnsDomainNameRecord> _ret = self->pointerRecords();
	// Convert QList<> from C++ memory to manually-managed C memory
	QDnsDomainNameRecord** _arr = static_cast<QDnsDomainNameRecord**>(malloc(sizeof(QDnsDomainNameRecord*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QDnsDomainNameRecord(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of QDnsServiceRecord* */  QDnsLookup_serviceRecords(const QDnsLookup* self) {
	QList<QDnsServiceRecord> _ret = self->serviceRecords();
	// Convert QList<> from C++ memory to manually-managed C memory
	QDnsServiceRecord** _arr = static_cast<QDnsServiceRecord**>(malloc(sizeof(QDnsServiceRecord*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QDnsServiceRecord(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of QDnsTextRecord* */  QDnsLookup_textRecords(const QDnsLookup* self) {
	QList<QDnsTextRecord> _ret = self->textRecords();
	// Convert QList<> from C++ memory to manually-managed C memory
	QDnsTextRecord** _arr = static_cast<QDnsTextRecord**>(malloc(sizeof(QDnsTextRecord*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QDnsTextRecord(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QDnsLookup_abort(QDnsLookup* self) {
	self->abort();
}

void QDnsLookup_lookup(QDnsLookup* self) {
	self->lookup();
}

void QDnsLookup_finished(QDnsLookup* self) {
	self->finished();
}

void QDnsLookup_connect_finished(QDnsLookup* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QDnsLookup::connect(self, static_cast<void (QDnsLookup::*)()>(&QDnsLookup::finished), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QDnsLookup_nameChanged(QDnsLookup* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->nameChanged(name_QString);
}

void QDnsLookup_connect_nameChanged(QDnsLookup* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	QDnsLookup::connect(self, static_cast<void (QDnsLookup::*)(const QString&)>(&QDnsLookup::nameChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QString& name) {
			const QString name_ret = name;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray name_b = name_ret.toUtf8();
			struct seaqt_string name_ms;
			name_ms.len = name_b.length();
			name_ms.data = static_cast<char*>(malloc(name_ms.len));
			memcpy(name_ms.data, name_b.data(), name_ms.len);
			struct seaqt_string sigval1 = name_ms;
			callback(release.slot, sigval1);
	});
}

void QDnsLookup_typeChanged(QDnsLookup* self, int type) {
	self->typeChanged(static_cast<QDnsLookup::Type>(type));
}

void QDnsLookup_connect_typeChanged(QDnsLookup* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QDnsLookup::connect(self, static_cast<void (QDnsLookup::*)(QDnsLookup::Type)>(&QDnsLookup::typeChanged), self, [callback, release = seaqt::release_callback{slot,release}](QDnsLookup::Type type) {
			QDnsLookup::Type type_ret = type;
			int sigval1 = static_cast<int>(type_ret);
			callback(release.slot, sigval1);
	});
}

void QDnsLookup_nameserverChanged(QDnsLookup* self, QHostAddress* nameserver) {
	self->nameserverChanged(*nameserver);
}

void QDnsLookup_connect_nameserverChanged(QDnsLookup* self, intptr_t slot, void (*callback)(intptr_t, QHostAddress*), void (*release)(intptr_t)) {
	QDnsLookup::connect(self, static_cast<void (QDnsLookup::*)(const QHostAddress&)>(&QDnsLookup::nameserverChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QHostAddress& nameserver) {
			const QHostAddress& nameserver_ret = nameserver;
			// Cast returned reference into pointer
			QHostAddress* sigval1 = const_cast<QHostAddress*>(&nameserver_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QDnsLookup_tr_s_c(const char* s, const char* c) {
	QString _ret = QDnsLookup::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDnsLookup_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QDnsLookup::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QDnsLookup_staticMetaObject() { return &QDnsLookup::staticMetaObject; }
void* QDnsLookup_vdata(VirtualQDnsLookup* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDnsLookup>()); }
VirtualQDnsLookup* vdata_QDnsLookup(void* vdata) { return reinterpret_cast<VirtualQDnsLookup*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDnsLookup>()); }

QMetaObject* QDnsLookup_virtualbase_metaObject(const VirtualQDnsLookup* self) {

	return (QMetaObject*) self->QDnsLookup::metaObject();
}

void* QDnsLookup_virtualbase_metacast(VirtualQDnsLookup* self, const char* param1) {

	return self->QDnsLookup::qt_metacast(param1);
}

int QDnsLookup_virtualbase_metacall(VirtualQDnsLookup* self, int param1, int param2, void** param3) {

	return self->QDnsLookup::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QDnsLookup_virtualbase_event(VirtualQDnsLookup* self, QEvent* event) {

	return self->QDnsLookup::event(event);
}

bool QDnsLookup_virtualbase_eventFilter(VirtualQDnsLookup* self, QObject* watched, QEvent* event) {

	return self->QDnsLookup::eventFilter(watched, event);
}

void QDnsLookup_virtualbase_timerEvent(VirtualQDnsLookup* self, QTimerEvent* event) {

	self->QDnsLookup::timerEvent(event);
}

void QDnsLookup_virtualbase_childEvent(VirtualQDnsLookup* self, QChildEvent* event) {

	self->QDnsLookup::childEvent(event);
}

void QDnsLookup_virtualbase_customEvent(VirtualQDnsLookup* self, QEvent* event) {

	self->QDnsLookup::customEvent(event);
}

void QDnsLookup_virtualbase_connectNotify(VirtualQDnsLookup* self, QMetaMethod* signal) {

	self->QDnsLookup::connectNotify(*signal);
}

void QDnsLookup_virtualbase_disconnectNotify(VirtualQDnsLookup* self, QMetaMethod* signal) {

	self->QDnsLookup::disconnectNotify(*signal);
}

QObject* QDnsLookup_protectedbase_sender(const VirtualQDnsLookup* self) {
	return self->QDnsLookup::sender();
}

int QDnsLookup_protectedbase_senderSignalIndex(const VirtualQDnsLookup* self) {
	return self->QDnsLookup::senderSignalIndex();
}

int QDnsLookup_protectedbase_receivers(const VirtualQDnsLookup* self, const char* signal) {
	return self->QDnsLookup::receivers(signal);
}

bool QDnsLookup_protectedbase_isSignalConnected(const VirtualQDnsLookup* self, QMetaMethod* signal) {
	return self->QDnsLookup::isSignalConnected(*signal);
}

void QDnsLookup_delete(QDnsLookup* self) {
	delete self;
}

