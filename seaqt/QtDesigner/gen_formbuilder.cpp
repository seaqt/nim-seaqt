#include <QAbstractFormBuilder>
#include <QAction>
#include <QActionGroup>
#include <QFormBuilder>
#include <QIODevice>
#include <QLayout>
#include <QList>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <QWidget>
#include <formbuilder.h>
#include "gen_formbuilder.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQFormBuilder final : public QFormBuilder {
	const QFormBuilder_VTable* vtbl;
public:
	friend void* QFormBuilder_vdata(VirtualQFormBuilder* self);
	friend VirtualQFormBuilder* vdata_QFormBuilder(void* vdata);

	VirtualQFormBuilder(const QFormBuilder_VTable* vtbl): QFormBuilder(), vtbl(vtbl) {}

	virtual ~VirtualQFormBuilder() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QWidget* createWidget(const QString& widgetName, QWidget* parentWidget, const QString& name) override {
		if (vtbl->createWidget == 0) {
			return QFormBuilder::createWidget(widgetName, parentWidget, name);
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

	friend QWidget* QFormBuilder_virtualbase_createWidget(VirtualQFormBuilder* self, struct seaqt_string widgetName, QWidget* parentWidget, struct seaqt_string name);

	virtual QLayout* createLayout(const QString& layoutName, QObject* parent, const QString& name) override {
		if (vtbl->createLayout == 0) {
			return QFormBuilder::createLayout(layoutName, parent, name);
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

	friend QLayout* QFormBuilder_virtualbase_createLayout(VirtualQFormBuilder* self, struct seaqt_string layoutName, QObject* parent, struct seaqt_string name);

	virtual void updateCustomWidgets() override {
		if (vtbl->updateCustomWidgets == 0) {
			QFormBuilder::updateCustomWidgets();
			return;
		}

		vtbl->updateCustomWidgets(this);
	}

	friend void QFormBuilder_virtualbase_updateCustomWidgets(VirtualQFormBuilder* self);

	virtual QWidget* load(QIODevice* dev, QWidget* parentWidget) override {
		if (vtbl->load == 0) {
			return QFormBuilder::load(dev, parentWidget);
		}

		QIODevice* sigval1 = dev;
		QWidget* sigval2 = parentWidget;
		QWidget* callback_return_value = vtbl->load(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend QWidget* QFormBuilder_virtualbase_load(VirtualQFormBuilder* self, QIODevice* dev, QWidget* parentWidget);

	virtual void save(QIODevice* dev, QWidget* widget) override {
		if (vtbl->save == 0) {
			QFormBuilder::save(dev, widget);
			return;
		}

		QIODevice* sigval1 = dev;
		QWidget* sigval2 = widget;
		vtbl->save(this, sigval1, sigval2);
	}

	friend void QFormBuilder_virtualbase_save(VirtualQFormBuilder* self, QIODevice* dev, QWidget* widget);

	virtual void addMenuAction(QAction* action) override {
		if (vtbl->addMenuAction == 0) {
			QFormBuilder::addMenuAction(action);
			return;
		}

		QAction* sigval1 = action;
		vtbl->addMenuAction(this, sigval1);
	}

	friend void QFormBuilder_virtualbase_addMenuAction(VirtualQFormBuilder* self, QAction* action);

	virtual QAction* createAction(QObject* parent, const QString& name) override {
		if (vtbl->createAction == 0) {
			return QFormBuilder::createAction(parent, name);
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

	friend QAction* QFormBuilder_virtualbase_createAction(VirtualQFormBuilder* self, QObject* parent, struct seaqt_string name);

	virtual QActionGroup* createActionGroup(QObject* parent, const QString& name) override {
		if (vtbl->createActionGroup == 0) {
			return QFormBuilder::createActionGroup(parent, name);
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

	friend QActionGroup* QFormBuilder_virtualbase_createActionGroup(VirtualQFormBuilder* self, QObject* parent, struct seaqt_string name);

	virtual bool checkProperty(QObject* obj, const QString& prop) const override {
		if (vtbl->checkProperty == 0) {
			return QFormBuilder::checkProperty(obj, prop);
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

	friend bool QFormBuilder_virtualbase_checkProperty(const VirtualQFormBuilder* self, QObject* obj, struct seaqt_string prop);

	// Wrappers to allow calling protected methods:
	friend bool QFormBuilder_protectedbase_applyPropertyInternally(VirtualQFormBuilder* self, QObject* o, struct seaqt_string propertyName, QVariant* value);
	friend void QFormBuilder_protectedbase_reset(VirtualQFormBuilder* self);
};

VirtualQFormBuilder* QFormBuilder_new(const QFormBuilder_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQFormBuilder>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQFormBuilder(vtbl) : nullptr;
}

void QFormBuilder_virtbase(QFormBuilder* src, QAbstractFormBuilder** outptr_QAbstractFormBuilder) {
	*outptr_QAbstractFormBuilder = static_cast<QAbstractFormBuilder*>(src);
}

struct seaqt_array /* of struct seaqt_string */  QFormBuilder_pluginPaths(const QFormBuilder* self) {
	QStringList _ret = self->pluginPaths();
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

void QFormBuilder_clearPluginPaths(QFormBuilder* self) {
	self->clearPluginPaths();
}

void QFormBuilder_addPluginPath(QFormBuilder* self, struct seaqt_string pluginPath) {
	QString pluginPath_QString = QString::fromUtf8(pluginPath.data, pluginPath.len);
	self->addPluginPath(pluginPath_QString);
}

void QFormBuilder_setPluginPath(QFormBuilder* self, struct seaqt_array /* of struct seaqt_string */  pluginPaths) {
	QStringList pluginPaths_QList;
	pluginPaths_QList.reserve(pluginPaths.len);
	struct seaqt_string* pluginPaths_arr = static_cast<struct seaqt_string*>(pluginPaths.data);
	for(size_t i = 0; i < pluginPaths.len; ++i) {
		QString pluginPaths_arr_i_QString = QString::fromUtf8(pluginPaths_arr[i].data, pluginPaths_arr[i].len);
		pluginPaths_QList.push_back(pluginPaths_arr_i_QString);
	}
	self->setPluginPath(pluginPaths_QList);
}

void* QFormBuilder_vdata(VirtualQFormBuilder* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQFormBuilder>()); }
VirtualQFormBuilder* vdata_QFormBuilder(void* vdata) { return reinterpret_cast<VirtualQFormBuilder*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQFormBuilder>()); }

QWidget* QFormBuilder_virtualbase_createWidget(VirtualQFormBuilder* self, struct seaqt_string widgetName, QWidget* parentWidget, struct seaqt_string name) {
	QString widgetName_QString = QString::fromUtf8(widgetName.data, widgetName.len);
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QFormBuilder::createWidget(widgetName_QString, parentWidget, name_QString);
}

QLayout* QFormBuilder_virtualbase_createLayout(VirtualQFormBuilder* self, struct seaqt_string layoutName, QObject* parent, struct seaqt_string name) {
	QString layoutName_QString = QString::fromUtf8(layoutName.data, layoutName.len);
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QFormBuilder::createLayout(layoutName_QString, parent, name_QString);
}

void QFormBuilder_virtualbase_updateCustomWidgets(VirtualQFormBuilder* self) {

	self->QFormBuilder::updateCustomWidgets();
}

QWidget* QFormBuilder_virtualbase_load(VirtualQFormBuilder* self, QIODevice* dev, QWidget* parentWidget) {

	return self->QFormBuilder::load(dev, parentWidget);
}

void QFormBuilder_virtualbase_save(VirtualQFormBuilder* self, QIODevice* dev, QWidget* widget) {

	self->QFormBuilder::save(dev, widget);
}

void QFormBuilder_virtualbase_addMenuAction(VirtualQFormBuilder* self, QAction* action) {

	self->QFormBuilder::addMenuAction(action);
}

QAction* QFormBuilder_virtualbase_createAction(VirtualQFormBuilder* self, QObject* parent, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QFormBuilder::createAction(parent, name_QString);
}

QActionGroup* QFormBuilder_virtualbase_createActionGroup(VirtualQFormBuilder* self, QObject* parent, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QFormBuilder::createActionGroup(parent, name_QString);
}

bool QFormBuilder_virtualbase_checkProperty(const VirtualQFormBuilder* self, QObject* obj, struct seaqt_string prop) {
	QString prop_QString = QString::fromUtf8(prop.data, prop.len);

	return self->QFormBuilder::checkProperty(obj, prop_QString);
}

bool QFormBuilder_protectedbase_applyPropertyInternally(VirtualQFormBuilder* self, QObject* o, struct seaqt_string propertyName, QVariant* value) {
		QString propertyName_QString = QString::fromUtf8(propertyName.data, propertyName.len);
	return self->QFormBuilder::applyPropertyInternally(o, propertyName_QString, *value);
}

void QFormBuilder_protectedbase_reset(VirtualQFormBuilder* self) {
	self->QFormBuilder::reset();
}

void QFormBuilder_delete(QFormBuilder* self) {
	delete self;
}

