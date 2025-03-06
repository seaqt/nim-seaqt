#include <QByteArray>
#include <QItemEditorCreatorBase>
#include <QItemEditorFactory>
#include <QWidget>
#include <qitemeditorfactory.h>
#include "gen_qitemeditorfactory.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

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
	struct QItemEditorFactory_VTable* vtbl;
public:

	VirtualQItemEditorFactory(struct QItemEditorFactory_VTable* vtbl): QItemEditorFactory(), vtbl(vtbl) {};
	VirtualQItemEditorFactory(struct QItemEditorFactory_VTable* vtbl, const QItemEditorFactory& param1): QItemEditorFactory(param1), vtbl(vtbl) {};

	virtual ~VirtualQItemEditorFactory() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QWidget* createEditor(int userType, QWidget* parent) const override {
		if (vtbl->createEditor == 0) {
			return QItemEditorFactory::createEditor(userType, parent);
		}

		int sigval1 = userType;
		QWidget* sigval2 = parent;

		QWidget* callback_return_value = vtbl->createEditor(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend QWidget* QItemEditorFactory_virtualbase_createEditor(const void* self, int userType, QWidget* parent);

	// Subclass to allow providing a Go implementation
	virtual QByteArray valuePropertyName(int userType) const override {
		if (vtbl->valuePropertyName == 0) {
			return QItemEditorFactory::valuePropertyName(userType);
		}

		int sigval1 = userType;

		struct miqt_string callback_return_value = vtbl->valuePropertyName(vtbl, this, sigval1);
		QByteArray callback_return_value_QByteArray(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);

		return callback_return_value_QByteArray;
	}

	friend struct miqt_string QItemEditorFactory_virtualbase_valuePropertyName(const void* self, int userType);

};

QItemEditorFactory* QItemEditorFactory_new(struct QItemEditorFactory_VTable* vtbl) {
	return new VirtualQItemEditorFactory(vtbl);
}

QItemEditorFactory* QItemEditorFactory_new2(struct QItemEditorFactory_VTable* vtbl, QItemEditorFactory* param1) {
	return new VirtualQItemEditorFactory(vtbl, *param1);
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

QWidget* QItemEditorFactory_virtualbase_createEditor(const void* self, int userType, QWidget* parent) {

	return ( (const VirtualQItemEditorFactory*)(self) )->QItemEditorFactory::createEditor(static_cast<int>(userType), parent);

}

struct miqt_string QItemEditorFactory_virtualbase_valuePropertyName(const void* self, int userType) {

	QByteArray _qb = ( (const VirtualQItemEditorFactory*)(self) )->QItemEditorFactory::valuePropertyName(static_cast<int>(userType));
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;

}

void QItemEditorFactory_delete(QItemEditorFactory* self) {
	delete self;
}

