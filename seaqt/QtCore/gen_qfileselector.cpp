#include <QChildEvent>
#include <QEvent>
#include <QFileSelector>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <qfileselector.h>
#include "gen_qfileselector.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQFileSelector final : public QFileSelector {
	const QFileSelector_VTable* vtbl;
public:
	friend void* QFileSelector_vdata(VirtualQFileSelector* self);
	friend VirtualQFileSelector* vdata_QFileSelector(void* vdata);

	VirtualQFileSelector(const QFileSelector_VTable* vtbl): QFileSelector(), vtbl(vtbl) {}
	VirtualQFileSelector(const QFileSelector_VTable* vtbl, QObject* parent): QFileSelector(parent), vtbl(vtbl) {}

	virtual ~VirtualQFileSelector() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFileSelector::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QFileSelector_virtualbase_metaObject(const VirtualQFileSelector* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFileSelector::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QFileSelector_virtualbase_metacast(VirtualQFileSelector* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFileSelector::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QFileSelector_virtualbase_metacall(VirtualQFileSelector* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QFileSelector::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QFileSelector_virtualbase_event(VirtualQFileSelector* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFileSelector::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QFileSelector_virtualbase_eventFilter(VirtualQFileSelector* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFileSelector::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QFileSelector_virtualbase_timerEvent(VirtualQFileSelector* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFileSelector::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QFileSelector_virtualbase_childEvent(VirtualQFileSelector* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFileSelector::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QFileSelector_virtualbase_customEvent(VirtualQFileSelector* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFileSelector::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QFileSelector_virtualbase_connectNotify(VirtualQFileSelector* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFileSelector::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QFileSelector_virtualbase_disconnectNotify(VirtualQFileSelector* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QFileSelector_protectedbase_sender(const VirtualQFileSelector* self);
	friend int QFileSelector_protectedbase_senderSignalIndex(const VirtualQFileSelector* self);
	friend int QFileSelector_protectedbase_receivers(const VirtualQFileSelector* self, const char* signal);
	friend bool QFileSelector_protectedbase_isSignalConnected(const VirtualQFileSelector* self, QMetaMethod* signal);
};

VirtualQFileSelector* QFileSelector_new(const QFileSelector_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQFileSelector>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQFileSelector(vtbl) : nullptr;
}

VirtualQFileSelector* QFileSelector_new_parent(const QFileSelector_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQFileSelector>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQFileSelector(vtbl, parent) : nullptr;
}

void QFileSelector_virtbase(QFileSelector* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QFileSelector_metaObject(const QFileSelector* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFileSelector_metacast(QFileSelector* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFileSelector_metacall(QFileSelector* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QFileSelector_tr_s(const char* s) {
	QString _ret = QFileSelector::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QFileSelector_trUtf8_s(const char* s) {
	QString _ret = QFileSelector::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QFileSelector_select_QString(const QFileSelector* self, struct seaqt_string filePath) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	QString _ret = self->select(filePath_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QFileSelector_select_QUrl(const QFileSelector* self, QUrl* filePath) {
	return new QUrl(self->select(*filePath));
}

struct seaqt_array /* of struct seaqt_string */  QFileSelector_extraSelectors(const QFileSelector* self) {
	QStringList _ret = self->extraSelectors();
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

void QFileSelector_setExtraSelectors(QFileSelector* self, struct seaqt_array /* of struct seaqt_string */  list) {
	QStringList list_QList;
	list_QList.reserve(list.len);
	struct seaqt_string* list_arr = static_cast<struct seaqt_string*>(list.data);
	for(size_t i = 0; i < list.len; ++i) {
		QString list_arr_i_QString = QString::fromUtf8(list_arr[i].data, list_arr[i].len);
		list_QList.push_back(list_arr_i_QString);
	}
	self->setExtraSelectors(list_QList);
}

struct seaqt_array /* of struct seaqt_string */  QFileSelector_allSelectors(const QFileSelector* self) {
	QStringList _ret = self->allSelectors();
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

struct seaqt_string QFileSelector_tr_s_c(const char* s, const char* c) {
	QString _ret = QFileSelector::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QFileSelector_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QFileSelector::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QFileSelector_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QFileSelector::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QFileSelector_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QFileSelector::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QFileSelector_staticMetaObject() { return &QFileSelector::staticMetaObject; }
void* QFileSelector_vdata(VirtualQFileSelector* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQFileSelector>()); }
VirtualQFileSelector* vdata_QFileSelector(void* vdata) { return reinterpret_cast<VirtualQFileSelector*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQFileSelector>()); }

QMetaObject* QFileSelector_virtualbase_metaObject(const VirtualQFileSelector* self) {

	return (QMetaObject*) self->QFileSelector::metaObject();
}

void* QFileSelector_virtualbase_metacast(VirtualQFileSelector* self, const char* param1) {

	return self->QFileSelector::qt_metacast(param1);
}

int QFileSelector_virtualbase_metacall(VirtualQFileSelector* self, int param1, int param2, void** param3) {

	return self->QFileSelector::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QFileSelector_virtualbase_event(VirtualQFileSelector* self, QEvent* event) {

	return self->QFileSelector::event(event);
}

bool QFileSelector_virtualbase_eventFilter(VirtualQFileSelector* self, QObject* watched, QEvent* event) {

	return self->QFileSelector::eventFilter(watched, event);
}

void QFileSelector_virtualbase_timerEvent(VirtualQFileSelector* self, QTimerEvent* event) {

	self->QFileSelector::timerEvent(event);
}

void QFileSelector_virtualbase_childEvent(VirtualQFileSelector* self, QChildEvent* event) {

	self->QFileSelector::childEvent(event);
}

void QFileSelector_virtualbase_customEvent(VirtualQFileSelector* self, QEvent* event) {

	self->QFileSelector::customEvent(event);
}

void QFileSelector_virtualbase_connectNotify(VirtualQFileSelector* self, QMetaMethod* signal) {

	self->QFileSelector::connectNotify(*signal);
}

void QFileSelector_virtualbase_disconnectNotify(VirtualQFileSelector* self, QMetaMethod* signal) {

	self->QFileSelector::disconnectNotify(*signal);
}

QObject* QFileSelector_protectedbase_sender(const VirtualQFileSelector* self) {
	return self->QFileSelector::sender();
}

int QFileSelector_protectedbase_senderSignalIndex(const VirtualQFileSelector* self) {
	return self->QFileSelector::senderSignalIndex();
}

int QFileSelector_protectedbase_receivers(const VirtualQFileSelector* self, const char* signal) {
	return self->QFileSelector::receivers(signal);
}

bool QFileSelector_protectedbase_isSignalConnected(const VirtualQFileSelector* self, QMetaMethod* signal) {
	return self->QFileSelector::isSignalConnected(*signal);
}

void QFileSelector_delete(QFileSelector* self) {
	delete self;
}

