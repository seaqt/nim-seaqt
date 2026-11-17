#include <QAbstractFormBuilder>
#include <QAction>
#include <QActionGroup>
#include <QDir>
#include <QIODevice>
#include <QLayout>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <QWidget>
#include <abstractformbuilder.h>
#include "gen_abstractformbuilder.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQAbstractFormBuilder final : public QAbstractFormBuilder {
	const QAbstractFormBuilder_VTable* vtbl;
public:
	friend void* QAbstractFormBuilder_vdata(VirtualQAbstractFormBuilder* self);
	friend VirtualQAbstractFormBuilder* vdata_QAbstractFormBuilder(void* vdata);

	VirtualQAbstractFormBuilder(const QAbstractFormBuilder_VTable* vtbl): QAbstractFormBuilder(), vtbl(vtbl) {}

	virtual ~VirtualQAbstractFormBuilder() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QWidget* load(QIODevice* dev, QWidget* parentWidget) override {
		if (vtbl->load == 0) {
			return QAbstractFormBuilder::load(dev, parentWidget);
		}

		QIODevice* sigval1 = dev;
		QWidget* sigval2 = parentWidget;
		QWidget* callback_return_value = vtbl->load(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend QWidget* QAbstractFormBuilder_virtualbase_load(VirtualQAbstractFormBuilder* self, QIODevice* dev, QWidget* parentWidget);

	virtual void save(QIODevice* dev, QWidget* widget) override {
		if (vtbl->save == 0) {
			QAbstractFormBuilder::save(dev, widget);
			return;
		}

		QIODevice* sigval1 = dev;
		QWidget* sigval2 = widget;
		vtbl->save(this, sigval1, sigval2);
	}

	friend void QAbstractFormBuilder_virtualbase_save(VirtualQAbstractFormBuilder* self, QIODevice* dev, QWidget* widget);

	virtual void addMenuAction(QAction* action) override {
		if (vtbl->addMenuAction == 0) {
			QAbstractFormBuilder::addMenuAction(action);
			return;
		}

		QAction* sigval1 = action;
		vtbl->addMenuAction(this, sigval1);
	}

	friend void QAbstractFormBuilder_virtualbase_addMenuAction(VirtualQAbstractFormBuilder* self, QAction* action);

	virtual QWidget* createWidget(const QString& widgetName, QWidget* parentWidget, const QString& name) override {
		if (vtbl->createWidget == 0) {
			return QAbstractFormBuilder::createWidget(widgetName, parentWidget, name);
		}

		const QString widgetName_ret = widgetName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray widgetName_b = widgetName_ret.toUtf8();
		struct seaqt_string widgetName_ms;
		widgetName_ms.len = widgetName_b.length();
		widgetName_ms.data = static_cast<char*>(malloc(widgetName_ms.len));
		memcpy(widgetName_ms.data, widgetName_b.data(), widgetName_ms.len);
		struct seaqt_string sigval1 = widgetName_ms;
		QWidget* sigval2 = parentWidget;
		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval3 = name_ms;
		QWidget* callback_return_value = vtbl->createWidget(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend QWidget* QAbstractFormBuilder_virtualbase_createWidget(VirtualQAbstractFormBuilder* self, struct seaqt_string widgetName, QWidget* parentWidget, struct seaqt_string name);

	virtual QLayout* createLayout(const QString& layoutName, QObject* parent, const QString& name) override {
		if (vtbl->createLayout == 0) {
			return QAbstractFormBuilder::createLayout(layoutName, parent, name);
		}

		const QString layoutName_ret = layoutName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray layoutName_b = layoutName_ret.toUtf8();
		struct seaqt_string layoutName_ms;
		layoutName_ms.len = layoutName_b.length();
		layoutName_ms.data = static_cast<char*>(malloc(layoutName_ms.len));
		memcpy(layoutName_ms.data, layoutName_b.data(), layoutName_ms.len);
		struct seaqt_string sigval1 = layoutName_ms;
		QObject* sigval2 = parent;
		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval3 = name_ms;
		QLayout* callback_return_value = vtbl->createLayout(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend QLayout* QAbstractFormBuilder_virtualbase_createLayout(VirtualQAbstractFormBuilder* self, struct seaqt_string layoutName, QObject* parent, struct seaqt_string name);

	virtual QAction* createAction(QObject* parent, const QString& name) override {
		if (vtbl->createAction == 0) {
			return QAbstractFormBuilder::createAction(parent, name);
		}

		QObject* sigval1 = parent;
		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval2 = name_ms;
		QAction* callback_return_value = vtbl->createAction(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend QAction* QAbstractFormBuilder_virtualbase_createAction(VirtualQAbstractFormBuilder* self, QObject* parent, struct seaqt_string name);

	virtual QActionGroup* createActionGroup(QObject* parent, const QString& name) override {
		if (vtbl->createActionGroup == 0) {
			return QAbstractFormBuilder::createActionGroup(parent, name);
		}

		QObject* sigval1 = parent;
		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval2 = name_ms;
		QActionGroup* callback_return_value = vtbl->createActionGroup(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend QActionGroup* QAbstractFormBuilder_virtualbase_createActionGroup(VirtualQAbstractFormBuilder* self, QObject* parent, struct seaqt_string name);

	virtual bool checkProperty(QObject* obj, const QString& prop) const override {
		if (vtbl->checkProperty == 0) {
			return QAbstractFormBuilder::checkProperty(obj, prop);
		}

		QObject* sigval1 = obj;
		const QString prop_ret = prop;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray prop_b = prop_ret.toUtf8();
		struct seaqt_string prop_ms;
		prop_ms.len = prop_b.length();
		prop_ms.data = static_cast<char*>(malloc(prop_ms.len));
		memcpy(prop_ms.data, prop_b.data(), prop_ms.len);
		struct seaqt_string sigval2 = prop_ms;
		bool callback_return_value = vtbl->checkProperty(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QAbstractFormBuilder_virtualbase_checkProperty(const VirtualQAbstractFormBuilder* self, QObject* obj, struct seaqt_string prop);

	// Wrappers to allow calling protected methods:
	friend bool QAbstractFormBuilder_protectedbase_applyPropertyInternally(VirtualQAbstractFormBuilder* self, QObject* o, struct seaqt_string propertyName, QVariant* value);
	friend void QAbstractFormBuilder_protectedbase_reset(VirtualQAbstractFormBuilder* self);
};

VirtualQAbstractFormBuilder* QAbstractFormBuilder_new(const QAbstractFormBuilder_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAbstractFormBuilder>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAbstractFormBuilder(vtbl) : nullptr;
}

QDir* QAbstractFormBuilder_workingDirectory(const QAbstractFormBuilder* self) {
	return new QDir(self->workingDirectory());
}

void QAbstractFormBuilder_setWorkingDirectory(QAbstractFormBuilder* self, QDir* directory) {
	self->setWorkingDirectory(*directory);
}

QWidget* QAbstractFormBuilder_load(QAbstractFormBuilder* self, QIODevice* dev, QWidget* parentWidget) {
	return self->load(dev, parentWidget);
}

void QAbstractFormBuilder_save(QAbstractFormBuilder* self, QIODevice* dev, QWidget* widget) {
	self->save(dev, widget);
}

struct seaqt_string QAbstractFormBuilder_errorString(const QAbstractFormBuilder* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void* QAbstractFormBuilder_vdata(VirtualQAbstractFormBuilder* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAbstractFormBuilder>()); }
VirtualQAbstractFormBuilder* vdata_QAbstractFormBuilder(void* vdata) { return reinterpret_cast<VirtualQAbstractFormBuilder*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAbstractFormBuilder>()); }

QWidget* QAbstractFormBuilder_virtualbase_load(VirtualQAbstractFormBuilder* self, QIODevice* dev, QWidget* parentWidget) {

	return self->QAbstractFormBuilder::load(dev, parentWidget);
}

void QAbstractFormBuilder_virtualbase_save(VirtualQAbstractFormBuilder* self, QIODevice* dev, QWidget* widget) {

	self->QAbstractFormBuilder::save(dev, widget);
}

void QAbstractFormBuilder_virtualbase_addMenuAction(VirtualQAbstractFormBuilder* self, QAction* action) {

	self->QAbstractFormBuilder::addMenuAction(action);
}

QWidget* QAbstractFormBuilder_virtualbase_createWidget(VirtualQAbstractFormBuilder* self, struct seaqt_string widgetName, QWidget* parentWidget, struct seaqt_string name) {
	QString widgetName_QString = QString::fromUtf8(widgetName.data, widgetName.len);
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QAbstractFormBuilder::createWidget(widgetName_QString, parentWidget, name_QString);
}

QLayout* QAbstractFormBuilder_virtualbase_createLayout(VirtualQAbstractFormBuilder* self, struct seaqt_string layoutName, QObject* parent, struct seaqt_string name) {
	QString layoutName_QString = QString::fromUtf8(layoutName.data, layoutName.len);
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QAbstractFormBuilder::createLayout(layoutName_QString, parent, name_QString);
}

QAction* QAbstractFormBuilder_virtualbase_createAction(VirtualQAbstractFormBuilder* self, QObject* parent, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QAbstractFormBuilder::createAction(parent, name_QString);
}

QActionGroup* QAbstractFormBuilder_virtualbase_createActionGroup(VirtualQAbstractFormBuilder* self, QObject* parent, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QAbstractFormBuilder::createActionGroup(parent, name_QString);
}

bool QAbstractFormBuilder_virtualbase_checkProperty(const VirtualQAbstractFormBuilder* self, QObject* obj, struct seaqt_string prop) {
	QString prop_QString = QString::fromUtf8(prop.data, prop.len);

	return self->QAbstractFormBuilder::checkProperty(obj, prop_QString);
}

bool QAbstractFormBuilder_protectedbase_applyPropertyInternally(VirtualQAbstractFormBuilder* self, QObject* o, struct seaqt_string propertyName, QVariant* value) {
		QString propertyName_QString = QString::fromUtf8(propertyName.data, propertyName.len);
	return self->applyPropertyInternally(o, propertyName_QString, *value);
}

void QAbstractFormBuilder_protectedbase_reset(VirtualQAbstractFormBuilder* self) {
	self->reset();
}

void QAbstractFormBuilder_delete(QAbstractFormBuilder* self) {
	delete self;
}

