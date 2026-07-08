#include <QByteArray>
#include <QItemEditorCreatorBase>
#include <QItemEditorFactory>
#include <QWidget>
#include <qitemeditorfactory.h>
#include "gen_qitemeditorfactory.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWidget* QItemEditorCreatorBase_createWidget(const QItemEditorCreatorBase* self, QWidget* parent) {
	return self->createWidget(parent);
}

struct seaqt_string QItemEditorCreatorBase_valuePropertyName(const QItemEditorCreatorBase* self) {
	QByteArray _qb = self->valuePropertyName();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QItemEditorCreatorBase_operatorAssign(QItemEditorCreatorBase* self, QItemEditorCreatorBase* from) {
	self->operator=(*from);
}

void QItemEditorCreatorBase_delete(QItemEditorCreatorBase* self) {
	delete self;
}

class VirtualQItemEditorFactory final : public QItemEditorFactory {
	const QItemEditorFactory_VTable* vtbl;
public:
	friend void* QItemEditorFactory_vdata(VirtualQItemEditorFactory* self);
	friend VirtualQItemEditorFactory* vdata_QItemEditorFactory(void* vdata);

	VirtualQItemEditorFactory(const QItemEditorFactory_VTable* vtbl): QItemEditorFactory(), vtbl(vtbl) {}
	VirtualQItemEditorFactory(const QItemEditorFactory_VTable* vtbl, const QItemEditorFactory& from): QItemEditorFactory(from), vtbl(vtbl) {}

	virtual ~VirtualQItemEditorFactory() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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
		struct seaqt_string callback_return_value = vtbl->valuePropertyName(this, sigval1);
		QByteArray callback_return_value_QByteArray(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QByteArray;
	}

	friend struct seaqt_string QItemEditorFactory_virtualbase_valuePropertyName(const VirtualQItemEditorFactory* self, int userType);

};

VirtualQItemEditorFactory* QItemEditorFactory_new(const QItemEditorFactory_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQItemEditorFactory>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQItemEditorFactory(vtbl) : nullptr;
}

VirtualQItemEditorFactory* QItemEditorFactory_new_from(const QItemEditorFactory_VTable* vtbl, size_t vdata, QItemEditorFactory* from) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQItemEditorFactory>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQItemEditorFactory(vtbl, *from) : nullptr;
}

QWidget* QItemEditorFactory_createEditor(const QItemEditorFactory* self, int userType, QWidget* parent) {
	return self->createEditor(static_cast<int>(userType), parent);
}

struct seaqt_string QItemEditorFactory_valuePropertyName(const QItemEditorFactory* self, int userType) {
	QByteArray _qb = self->valuePropertyName(static_cast<int>(userType));
	struct seaqt_string _ms;
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

void QItemEditorFactory_operatorAssign(QItemEditorFactory* self, QItemEditorFactory* from) {
	self->operator=(*from);
}

void* QItemEditorFactory_vdata(VirtualQItemEditorFactory* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQItemEditorFactory>()); }
VirtualQItemEditorFactory* vdata_QItemEditorFactory(void* vdata) { return reinterpret_cast<VirtualQItemEditorFactory*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQItemEditorFactory>()); }

QWidget* QItemEditorFactory_virtualbase_createEditor(const VirtualQItemEditorFactory* self, int userType, QWidget* parent) {

	return self->QItemEditorFactory::createEditor(static_cast<int>(userType), parent);
}

struct seaqt_string QItemEditorFactory_virtualbase_valuePropertyName(const VirtualQItemEditorFactory* self, int userType) {

	QByteArray _qb = self->QItemEditorFactory::valuePropertyName(static_cast<int>(userType));
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QItemEditorFactory_delete(QItemEditorFactory* self) {
	delete self;
}

