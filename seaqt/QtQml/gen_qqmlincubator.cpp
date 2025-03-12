#include <QList>
#include <QMap>
#include <QObject>
#include <QQmlEngine>
#include <QQmlError>
#include <QQmlIncubationController>
#include <QQmlIncubator>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qqmlincubator.h>
#include "gen_qqmlincubator.h"
class VirtualQQmlIncubator final : public QQmlIncubator {
	const QQmlIncubator_VTable* vtbl;
	void* vdata;
public:
	friend const QQmlIncubator_VTable* QQmlIncubator_vtbl(const VirtualQQmlIncubator* self);
	friend void* QQmlIncubator_vdata(const VirtualQQmlIncubator* self);
	friend void QQmlIncubator_setVdata(VirtualQQmlIncubator* self, void* vdata);

	VirtualQQmlIncubator(const QQmlIncubator_VTable* vtbl, void* vdata): QQmlIncubator(), vtbl(vtbl), vdata(vdata) {}
	VirtualQQmlIncubator(const QQmlIncubator_VTable* vtbl, void* vdata, QQmlIncubator::IncubationMode param1): QQmlIncubator(param1), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQQmlIncubator() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual void statusChanged(QQmlIncubator::Status param1) override {
		if (vtbl->statusChanged == 0) {
			QQmlIncubator::statusChanged(param1);
			return;
		}

		QQmlIncubator::Status param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		vtbl->statusChanged(this, sigval1);

	}

	friend void QQmlIncubator_virtualbase_statusChanged(VirtualQQmlIncubator* self, int param1);

	virtual void setInitialState(QObject* initialState) override {
		if (vtbl->setInitialState == 0) {
			QQmlIncubator::setInitialState(initialState);
			return;
		}

		QObject* sigval1 = initialState;

		vtbl->setInitialState(this, sigval1);

	}

	friend void QQmlIncubator_virtualbase_setInitialState(VirtualQQmlIncubator* self, QObject* initialState);

};

VirtualQQmlIncubator* QQmlIncubator_new(const QQmlIncubator_VTable* vtbl, void* vdata) {
	return new VirtualQQmlIncubator(vtbl, vdata);
}

VirtualQQmlIncubator* QQmlIncubator_new2(const QQmlIncubator_VTable* vtbl, void* vdata, int param1) {
	return new VirtualQQmlIncubator(vtbl, vdata, static_cast<QQmlIncubator::IncubationMode>(param1));
}

void QQmlIncubator_clear(QQmlIncubator* self) {
	self->clear();
}

void QQmlIncubator_forceCompletion(QQmlIncubator* self) {
	self->forceCompletion();
}

bool QQmlIncubator_isNull(const QQmlIncubator* self) {
	return self->isNull();
}

bool QQmlIncubator_isReady(const QQmlIncubator* self) {
	return self->isReady();
}

bool QQmlIncubator_isError(const QQmlIncubator* self) {
	return self->isError();
}

bool QQmlIncubator_isLoading(const QQmlIncubator* self) {
	return self->isLoading();
}

struct miqt_array /* of QQmlError* */  QQmlIncubator_errors(const QQmlIncubator* self) {
	QList<QQmlError> _ret = self->errors();
	// Convert QList<> from C++ memory to manually-managed C memory
	QQmlError** _arr = static_cast<QQmlError**>(malloc(sizeof(QQmlError*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QQmlError(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QQmlIncubator_incubationMode(const QQmlIncubator* self) {
	QQmlIncubator::IncubationMode _ret = self->incubationMode();
	return static_cast<int>(_ret);
}

int QQmlIncubator_status(const QQmlIncubator* self) {
	QQmlIncubator::Status _ret = self->status();
	return static_cast<int>(_ret);
}

QObject* QQmlIncubator_object(const QQmlIncubator* self) {
	return self->object();
}

void QQmlIncubator_setInitialProperties(QQmlIncubator* self, struct miqt_map /* of struct miqt_string to QVariant* */  initialProperties) {
	QVariantMap initialProperties_QMap;
	struct miqt_string* initialProperties_karr = static_cast<struct miqt_string*>(initialProperties.keys);
	QVariant** initialProperties_varr = static_cast<QVariant**>(initialProperties.values);
	for(size_t i = 0; i < initialProperties.len; ++i) {
		QString initialProperties_karr_i_QString = QString::fromUtf8(initialProperties_karr[i].data, initialProperties_karr[i].len);
		initialProperties_QMap[initialProperties_karr_i_QString] = *(initialProperties_varr[i]);
	}
	self->setInitialProperties(initialProperties_QMap);
}

void QQmlIncubator_virtualbase_statusChanged(VirtualQQmlIncubator* self, int param1) {

	self->QQmlIncubator::statusChanged(static_cast<VirtualQQmlIncubator::Status>(param1));
}

void QQmlIncubator_virtualbase_setInitialState(VirtualQQmlIncubator* self, QObject* initialState) {

	self->QQmlIncubator::setInitialState(initialState);
}

const QQmlIncubator_VTable* QQmlIncubator_vtbl(const VirtualQQmlIncubator* self) { return self->vtbl; }
void* QQmlIncubator_vdata(const VirtualQQmlIncubator* self) { return self->vdata; }
void QQmlIncubator_setVdata(VirtualQQmlIncubator* self, void* vdata) { self->vdata = vdata; }

void QQmlIncubator_delete(QQmlIncubator* self) {
	delete self;
}

class VirtualQQmlIncubationController final : public QQmlIncubationController {
	const QQmlIncubationController_VTable* vtbl;
	void* vdata;
public:
	friend const QQmlIncubationController_VTable* QQmlIncubationController_vtbl(const VirtualQQmlIncubationController* self);
	friend void* QQmlIncubationController_vdata(const VirtualQQmlIncubationController* self);
	friend void QQmlIncubationController_setVdata(VirtualQQmlIncubationController* self, void* vdata);

	VirtualQQmlIncubationController(const QQmlIncubationController_VTable* vtbl, void* vdata): QQmlIncubationController(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQQmlIncubationController() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual void incubatingObjectCountChanged(int param1) override {
		if (vtbl->incubatingObjectCountChanged == 0) {
			QQmlIncubationController::incubatingObjectCountChanged(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->incubatingObjectCountChanged(this, sigval1);

	}

	friend void QQmlIncubationController_virtualbase_incubatingObjectCountChanged(VirtualQQmlIncubationController* self, int param1);

};

VirtualQQmlIncubationController* QQmlIncubationController_new(const QQmlIncubationController_VTable* vtbl, void* vdata) {
	return new VirtualQQmlIncubationController(vtbl, vdata);
}

QQmlEngine* QQmlIncubationController_engine(const QQmlIncubationController* self) {
	return self->engine();
}

int QQmlIncubationController_incubatingObjectCount(const QQmlIncubationController* self) {
	return self->incubatingObjectCount();
}

void QQmlIncubationController_incubateFor(QQmlIncubationController* self, int msecs) {
	self->incubateFor(static_cast<int>(msecs));
}

void QQmlIncubationController_incubateWhile(QQmlIncubationController* self, volatile bool* flag) {
	self->incubateWhile(flag);
}

void QQmlIncubationController_incubateWhile2(QQmlIncubationController* self, volatile bool* flag, int msecs) {
	self->incubateWhile(flag, static_cast<int>(msecs));
}

void QQmlIncubationController_virtualbase_incubatingObjectCountChanged(VirtualQQmlIncubationController* self, int param1) {

	self->QQmlIncubationController::incubatingObjectCountChanged(static_cast<int>(param1));
}

const QQmlIncubationController_VTable* QQmlIncubationController_vtbl(const VirtualQQmlIncubationController* self) { return self->vtbl; }
void* QQmlIncubationController_vdata(const VirtualQQmlIncubationController* self) { return self->vdata; }
void QQmlIncubationController_setVdata(VirtualQQmlIncubationController* self, void* vdata) { self->vdata = vdata; }

void QQmlIncubationController_delete(QQmlIncubationController* self) {
	delete self;
}

