#include <QAbstractItemDelegate>
#include <QAbstractItemModel>
#include <QByteArray>
#include <QChildEvent>
#include <QDataWidgetMapper>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QModelIndex>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWidget>
#include <qdatawidgetmapper.h>
#include "gen_qdatawidgetmapper.h"
class VirtualQDataWidgetMapper final : public QDataWidgetMapper {
	const QDataWidgetMapper_VTable* vtbl;
	void* vdata;
public:
	friend const QDataWidgetMapper_VTable* QDataWidgetMapper_vtbl(const VirtualQDataWidgetMapper* self);
	friend void* QDataWidgetMapper_vdata(const VirtualQDataWidgetMapper* self);
	friend void QDataWidgetMapper_setVdata(VirtualQDataWidgetMapper* self, void* vdata);

	VirtualQDataWidgetMapper(const QDataWidgetMapper_VTable* vtbl, void* vdata): QDataWidgetMapper(), vtbl(vtbl), vdata(vdata) {}
	VirtualQDataWidgetMapper(const QDataWidgetMapper_VTable* vtbl, void* vdata, QObject* parent): QDataWidgetMapper(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDataWidgetMapper() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDataWidgetMapper::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QDataWidgetMapper_virtualbase_metaObject(const VirtualQDataWidgetMapper* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDataWidgetMapper::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QDataWidgetMapper_virtualbase_metacast(VirtualQDataWidgetMapper* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDataWidgetMapper::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDataWidgetMapper_virtualbase_metacall(VirtualQDataWidgetMapper* self, int param1, int param2, void** param3);

	virtual void setCurrentIndex(int index) override {
		if (vtbl->setCurrentIndex == 0) {
			QDataWidgetMapper::setCurrentIndex(index);
			return;
		}

		int sigval1 = index;

		vtbl->setCurrentIndex(this, sigval1);

	}

	friend void QDataWidgetMapper_virtualbase_setCurrentIndex(VirtualQDataWidgetMapper* self, int index);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDataWidgetMapper::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QDataWidgetMapper_virtualbase_event(VirtualQDataWidgetMapper* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDataWidgetMapper::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDataWidgetMapper_virtualbase_eventFilter(VirtualQDataWidgetMapper* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDataWidgetMapper::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QDataWidgetMapper_virtualbase_timerEvent(VirtualQDataWidgetMapper* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDataWidgetMapper::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QDataWidgetMapper_virtualbase_childEvent(VirtualQDataWidgetMapper* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDataWidgetMapper::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QDataWidgetMapper_virtualbase_customEvent(VirtualQDataWidgetMapper* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDataWidgetMapper::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QDataWidgetMapper_virtualbase_connectNotify(VirtualQDataWidgetMapper* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDataWidgetMapper::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QDataWidgetMapper_virtualbase_disconnectNotify(VirtualQDataWidgetMapper* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QDataWidgetMapper_protectedbase_sender(const VirtualQDataWidgetMapper* self);
	friend int QDataWidgetMapper_protectedbase_senderSignalIndex(const VirtualQDataWidgetMapper* self);
	friend int QDataWidgetMapper_protectedbase_receivers(const VirtualQDataWidgetMapper* self, const char* signal);
	friend bool QDataWidgetMapper_protectedbase_isSignalConnected(const VirtualQDataWidgetMapper* self, QMetaMethod* signal);
};

VirtualQDataWidgetMapper* QDataWidgetMapper_new(const QDataWidgetMapper_VTable* vtbl, void* vdata) {
	return new VirtualQDataWidgetMapper(vtbl, vdata);
}

VirtualQDataWidgetMapper* QDataWidgetMapper_new2(const QDataWidgetMapper_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQDataWidgetMapper(vtbl, vdata, parent);
}

void QDataWidgetMapper_virtbase(QDataWidgetMapper* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QDataWidgetMapper_metaObject(const QDataWidgetMapper* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDataWidgetMapper_metacast(QDataWidgetMapper* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDataWidgetMapper_metacall(QDataWidgetMapper* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDataWidgetMapper_tr(const char* s) {
	QString _ret = QDataWidgetMapper::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDataWidgetMapper_trUtf8(const char* s) {
	QString _ret = QDataWidgetMapper::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDataWidgetMapper_setModel(QDataWidgetMapper* self, QAbstractItemModel* model) {
	self->setModel(model);
}

QAbstractItemModel* QDataWidgetMapper_model(const QDataWidgetMapper* self) {
	return self->model();
}

void QDataWidgetMapper_setItemDelegate(QDataWidgetMapper* self, QAbstractItemDelegate* delegate) {
	self->setItemDelegate(delegate);
}

QAbstractItemDelegate* QDataWidgetMapper_itemDelegate(const QDataWidgetMapper* self) {
	return self->itemDelegate();
}

void QDataWidgetMapper_setRootIndex(QDataWidgetMapper* self, QModelIndex* index) {
	self->setRootIndex(*index);
}

QModelIndex* QDataWidgetMapper_rootIndex(const QDataWidgetMapper* self) {
	return new QModelIndex(self->rootIndex());
}

void QDataWidgetMapper_setOrientation(QDataWidgetMapper* self, int aOrientation) {
	self->setOrientation(static_cast<Qt::Orientation>(aOrientation));
}

int QDataWidgetMapper_orientation(const QDataWidgetMapper* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QDataWidgetMapper_setSubmitPolicy(QDataWidgetMapper* self, int policy) {
	self->setSubmitPolicy(static_cast<QDataWidgetMapper::SubmitPolicy>(policy));
}

int QDataWidgetMapper_submitPolicy(const QDataWidgetMapper* self) {
	QDataWidgetMapper::SubmitPolicy _ret = self->submitPolicy();
	return static_cast<int>(_ret);
}

void QDataWidgetMapper_addMapping(QDataWidgetMapper* self, QWidget* widget, int section) {
	self->addMapping(widget, static_cast<int>(section));
}

void QDataWidgetMapper_addMapping2(QDataWidgetMapper* self, QWidget* widget, int section, struct miqt_string propertyName) {
	QByteArray propertyName_QByteArray(propertyName.data, propertyName.len);
	self->addMapping(widget, static_cast<int>(section), propertyName_QByteArray);
}

void QDataWidgetMapper_removeMapping(QDataWidgetMapper* self, QWidget* widget) {
	self->removeMapping(widget);
}

int QDataWidgetMapper_mappedSection(const QDataWidgetMapper* self, QWidget* widget) {
	return self->mappedSection(widget);
}

struct miqt_string QDataWidgetMapper_mappedPropertyName(const QDataWidgetMapper* self, QWidget* widget) {
	QByteArray _qb = self->mappedPropertyName(widget);
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

QWidget* QDataWidgetMapper_mappedWidgetAt(const QDataWidgetMapper* self, int section) {
	return self->mappedWidgetAt(static_cast<int>(section));
}

void QDataWidgetMapper_clearMapping(QDataWidgetMapper* self) {
	self->clearMapping();
}

int QDataWidgetMapper_currentIndex(const QDataWidgetMapper* self) {
	return self->currentIndex();
}

void QDataWidgetMapper_revert(QDataWidgetMapper* self) {
	self->revert();
}

bool QDataWidgetMapper_submit(QDataWidgetMapper* self) {
	return self->submit();
}

void QDataWidgetMapper_toFirst(QDataWidgetMapper* self) {
	self->toFirst();
}

void QDataWidgetMapper_toLast(QDataWidgetMapper* self) {
	self->toLast();
}

void QDataWidgetMapper_toNext(QDataWidgetMapper* self) {
	self->toNext();
}

void QDataWidgetMapper_toPrevious(QDataWidgetMapper* self) {
	self->toPrevious();
}

void QDataWidgetMapper_setCurrentIndex(QDataWidgetMapper* self, int index) {
	self->setCurrentIndex(static_cast<int>(index));
}

void QDataWidgetMapper_setCurrentModelIndex(QDataWidgetMapper* self, QModelIndex* index) {
	self->setCurrentModelIndex(*index);
}

void QDataWidgetMapper_currentIndexChanged(QDataWidgetMapper* self, int index) {
	self->currentIndexChanged(static_cast<int>(index));
}

void QDataWidgetMapper_connect_currentIndexChanged(VirtualQDataWidgetMapper* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQDataWidgetMapper::connect(self, static_cast<void (QDataWidgetMapper::*)(int)>(&QDataWidgetMapper::currentIndexChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QDataWidgetMapper_tr2(const char* s, const char* c) {
	QString _ret = QDataWidgetMapper::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDataWidgetMapper_tr3(const char* s, const char* c, int n) {
	QString _ret = QDataWidgetMapper::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDataWidgetMapper_trUtf82(const char* s, const char* c) {
	QString _ret = QDataWidgetMapper::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDataWidgetMapper_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QDataWidgetMapper::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDataWidgetMapper_virtualbase_metaObject(const VirtualQDataWidgetMapper* self) {

	return (QMetaObject*) self->QDataWidgetMapper::metaObject();
}

void* QDataWidgetMapper_virtualbase_metacast(VirtualQDataWidgetMapper* self, const char* param1) {

	return self->QDataWidgetMapper::qt_metacast(param1);
}

int QDataWidgetMapper_virtualbase_metacall(VirtualQDataWidgetMapper* self, int param1, int param2, void** param3) {

	return self->QDataWidgetMapper::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QDataWidgetMapper_virtualbase_setCurrentIndex(VirtualQDataWidgetMapper* self, int index) {

	self->QDataWidgetMapper::setCurrentIndex(static_cast<int>(index));
}

bool QDataWidgetMapper_virtualbase_event(VirtualQDataWidgetMapper* self, QEvent* event) {

	return self->QDataWidgetMapper::event(event);
}

bool QDataWidgetMapper_virtualbase_eventFilter(VirtualQDataWidgetMapper* self, QObject* watched, QEvent* event) {

	return self->QDataWidgetMapper::eventFilter(watched, event);
}

void QDataWidgetMapper_virtualbase_timerEvent(VirtualQDataWidgetMapper* self, QTimerEvent* event) {

	self->QDataWidgetMapper::timerEvent(event);
}

void QDataWidgetMapper_virtualbase_childEvent(VirtualQDataWidgetMapper* self, QChildEvent* event) {

	self->QDataWidgetMapper::childEvent(event);
}

void QDataWidgetMapper_virtualbase_customEvent(VirtualQDataWidgetMapper* self, QEvent* event) {

	self->QDataWidgetMapper::customEvent(event);
}

void QDataWidgetMapper_virtualbase_connectNotify(VirtualQDataWidgetMapper* self, QMetaMethod* signal) {

	self->QDataWidgetMapper::connectNotify(*signal);
}

void QDataWidgetMapper_virtualbase_disconnectNotify(VirtualQDataWidgetMapper* self, QMetaMethod* signal) {

	self->QDataWidgetMapper::disconnectNotify(*signal);
}

const QMetaObject* QDataWidgetMapper_staticMetaObject() { return &QDataWidgetMapper::staticMetaObject; }

const QDataWidgetMapper_VTable* QDataWidgetMapper_vtbl(const VirtualQDataWidgetMapper* self) { return self->vtbl; }
void* QDataWidgetMapper_vdata(const VirtualQDataWidgetMapper* self) { return self->vdata; }
void QDataWidgetMapper_setVdata(VirtualQDataWidgetMapper* self, void* vdata) { self->vdata = vdata; }

QObject* QDataWidgetMapper_protectedbase_sender(const VirtualQDataWidgetMapper* self) {
	return self->sender();
}

int QDataWidgetMapper_protectedbase_senderSignalIndex(const VirtualQDataWidgetMapper* self) {
	return self->senderSignalIndex();
}

int QDataWidgetMapper_protectedbase_receivers(const VirtualQDataWidgetMapper* self, const char* signal) {
	return self->receivers(signal);
}

bool QDataWidgetMapper_protectedbase_isSignalConnected(const VirtualQDataWidgetMapper* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDataWidgetMapper_delete(QDataWidgetMapper* self) {
	delete self;
}

