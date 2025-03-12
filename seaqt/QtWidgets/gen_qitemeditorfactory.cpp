#include <QByteArray>
#include <QItemEditorCreatorBase>
#include <QItemEditorFactory>
#include <QWidget>
#include <qitemeditorfactory.h>
#include "gen_qitemeditorfactory.h"
QWidget* QItemEditorCreatorBase_createWidget(const QItemEditorCreatorBase* self, QWidget* parent) {
	return self->createWidget(parent);
}

struct miqt_string QItemEditorCreatorBase_valuePropertyName(const QItemEditorCreatorBase* self) {
	QByteArray _qb = self->valuePropertyName();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QItemEditorCreatorBase_operatorAssign(QItemEditorCreatorBase* self, QItemEditorCreatorBase* param1) {
	self->operator=(*param1);
}

void QItemEditorCreatorBase_delete(QItemEditorCreatorBase* self) {
	delete self;
}

class VirtualQItemEditorFactory final : public QItemEditorFactory {
	const QItemEditorFactory_VTable* vtbl;
	void* vdata;
public:
	friend const QItemEditorFactory_VTable* QItemEditorFactory_vtbl(const VirtualQItemEditorFactory* self);
	friend void* QItemEditorFactory_vdata(const VirtualQItemEditorFactory* self);
	friend void QItemEditorFactory_setVdata(VirtualQItemEditorFactory* self, void* vdata);

	VirtualQItemEditorFactory(const QItemEditorFactory_VTable* vtbl, void* vdata): QItemEditorFactory(), vtbl(vtbl), vdata(vdata) {}
	VirtualQItemEditorFactory(const QItemEditorFactory_VTable* vtbl, void* vdata, const QItemEditorFactory& param1): QItemEditorFactory(param1), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQItemEditorFactory() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QWidget* createEditor(int userType, QWidget* parent) const override {
		if (vtbl->createEditor == 0) {
			return QItemEditorFactory::createEditor(userType, parent);
		}

		int sigval1 = userType;
		QWidget* sigval2 = parent;

		QWidget* callback_return_value = vtbl->createEditor(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend QWidget* QItemEditorFactory_virtualbase_createEditor(const VirtualQItemEditorFactory* self, int userType, QWidget* parent);

	virtual QByteArray valuePropertyName(int userType) const override {
		if (vtbl->valuePropertyName == 0) {
			return QItemEditorFactory::valuePropertyName(userType);
		}

		int sigval1 = userType;

		struct miqt_string callback_return_value = vtbl->valuePropertyName(this, sigval1);
		QByteArray callback_return_value_QByteArray(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);

		return callback_return_value_QByteArray;
	}

	friend struct miqt_string QItemEditorFactory_virtualbase_valuePropertyName(const VirtualQItemEditorFactory* self, int userType);

};

VirtualQItemEditorFactory* QItemEditorFactory_new(const QItemEditorFactory_VTable* vtbl, void* vdata) {
	return new VirtualQItemEditorFactory(vtbl, vdata);
}

VirtualQItemEditorFactory* QItemEditorFactory_new2(const QItemEditorFactory_VTable* vtbl, void* vdata, QItemEditorFactory* param1) {
	return new VirtualQItemEditorFactory(vtbl, vdata, *param1);
}

QWidget* QItemEditorFactory_createEditor(const QItemEditorFactory* self, int userType, QWidget* parent) {
	return self->createEditor(static_cast<int>(userType), parent);
}

struct miqt_string QItemEditorFactory_valuePropertyName(const QItemEditorFactory* self, int userType) {
	QByteArray _qb = self->valuePropertyName(static_cast<int>(userType));
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QItemEditorFactory_registerEditor(QItemEditorFactory* self, int userType, QItemEditorCreatorBase* creator) {
	self->registerEditor(static_cast<int>(userType), creator);
}

QItemEditorFactory* QItemEditorFactory_defaultFactory() {
	return (QItemEditorFactory*) QItemEditorFactory::defaultFactory();
}

void QItemEditorFactory_setDefaultFactory(QItemEditorFactory* factory) {
	QItemEditorFactory::setDefaultFactory(factory);
}

QWidget* QItemEditorFactory_virtualbase_createEditor(const VirtualQItemEditorFactory* self, int userType, QWidget* parent) {

	return self->QItemEditorFactory::createEditor(static_cast<int>(userType), parent);
}

struct miqt_string QItemEditorFactory_virtualbase_valuePropertyName(const VirtualQItemEditorFactory* self, int userType) {

	QByteArray _qb = self->QItemEditorFactory::valuePropertyName(static_cast<int>(userType));
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

const QItemEditorFactory_VTable* QItemEditorFactory_vtbl(const VirtualQItemEditorFactory* self) { return self->vtbl; }
void* QItemEditorFactory_vdata(const VirtualQItemEditorFactory* self) { return self->vdata; }
void QItemEditorFactory_setVdata(VirtualQItemEditorFactory* self, void* vdata) { self->vdata = vdata; }

void QItemEditorFactory_delete(QItemEditorFactory* self) {
	delete self;
}

