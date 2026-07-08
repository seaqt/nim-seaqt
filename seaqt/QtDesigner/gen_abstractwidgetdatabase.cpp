#include <QChildEvent>
#include <QDesignerWidgetDataBaseInterface>
#include <QDesignerWidgetDataBaseItemInterface>
#include <QEvent>
#include <QIcon>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <abstractwidgetdatabase.h>
#include "gen_abstractwidgetdatabase.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDesignerWidgetDataBaseItemInterface final : public QDesignerWidgetDataBaseItemInterface {
	const QDesignerWidgetDataBaseItemInterface_VTable* vtbl;
public:
	friend void* QDesignerWidgetDataBaseItemInterface_vdata(VirtualQDesignerWidgetDataBaseItemInterface* self);
	friend VirtualQDesignerWidgetDataBaseItemInterface* vdata_QDesignerWidgetDataBaseItemInterface(void* vdata);

	VirtualQDesignerWidgetDataBaseItemInterface(const QDesignerWidgetDataBaseItemInterface_VTable* vtbl): QDesignerWidgetDataBaseItemInterface(), vtbl(vtbl) {}

	virtual ~VirtualQDesignerWidgetDataBaseItemInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QString name() const override {
		if (vtbl->name == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		struct seaqt_string callback_return_value = vtbl->name(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual void setName(const QString& name) override {
		if (vtbl->setName == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval1 = name_ms;
		vtbl->setName(this, sigval1);
	}

	virtual QString group() const override {
		if (vtbl->group == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		struct seaqt_string callback_return_value = vtbl->group(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual void setGroup(const QString& group) override {
		if (vtbl->setGroup == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString group_ret = group;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray group_b = group_ret.toUtf8();
		struct seaqt_string group_ms;
		group_ms.len = group_b.length();
		group_ms.data = static_cast<char*>(malloc(group_ms.len));
		memcpy(group_ms.data, group_b.data(), group_ms.len);
		struct seaqt_string sigval1 = group_ms;
		vtbl->setGroup(this, sigval1);
	}

	virtual QString toolTip() const override {
		if (vtbl->toolTip == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		struct seaqt_string callback_return_value = vtbl->toolTip(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual void setToolTip(const QString& toolTip) override {
		if (vtbl->setToolTip == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString toolTip_ret = toolTip;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray toolTip_b = toolTip_ret.toUtf8();
		struct seaqt_string toolTip_ms;
		toolTip_ms.len = toolTip_b.length();
		toolTip_ms.data = static_cast<char*>(malloc(toolTip_ms.len));
		memcpy(toolTip_ms.data, toolTip_b.data(), toolTip_ms.len);
		struct seaqt_string sigval1 = toolTip_ms;
		vtbl->setToolTip(this, sigval1);
	}

	virtual QString whatsThis() const override {
		if (vtbl->whatsThis == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		struct seaqt_string callback_return_value = vtbl->whatsThis(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual void setWhatsThis(const QString& whatsThis) override {
		if (vtbl->setWhatsThis == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString whatsThis_ret = whatsThis;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray whatsThis_b = whatsThis_ret.toUtf8();
		struct seaqt_string whatsThis_ms;
		whatsThis_ms.len = whatsThis_b.length();
		whatsThis_ms.data = static_cast<char*>(malloc(whatsThis_ms.len));
		memcpy(whatsThis_ms.data, whatsThis_b.data(), whatsThis_ms.len);
		struct seaqt_string sigval1 = whatsThis_ms;
		vtbl->setWhatsThis(this, sigval1);
	}

	virtual QString includeFile() const override {
		if (vtbl->includeFile == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		struct seaqt_string callback_return_value = vtbl->includeFile(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual void setIncludeFile(const QString& includeFile) override {
		if (vtbl->setIncludeFile == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString includeFile_ret = includeFile;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray includeFile_b = includeFile_ret.toUtf8();
		struct seaqt_string includeFile_ms;
		includeFile_ms.len = includeFile_b.length();
		includeFile_ms.data = static_cast<char*>(malloc(includeFile_ms.len));
		memcpy(includeFile_ms.data, includeFile_b.data(), includeFile_ms.len);
		struct seaqt_string sigval1 = includeFile_ms;
		vtbl->setIncludeFile(this, sigval1);
	}

	virtual QIcon icon() const override {
		if (vtbl->icon == 0) {
			return QIcon(); // Pure virtual, there is no base we can call
		}

		QIcon* callback_return_value = vtbl->icon(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	virtual void setIcon(const QIcon& icon) override {
		if (vtbl->setIcon == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QIcon& icon_ret = icon;
		// Cast returned reference into pointer
		QIcon* sigval1 = const_cast<QIcon*>(&icon_ret);
		vtbl->setIcon(this, sigval1);
	}

	virtual bool isCompat() const override {
		if (vtbl->isCompat == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		bool callback_return_value = vtbl->isCompat(this);
		return callback_return_value;
	}

	virtual void setCompat(bool compat) override {
		if (vtbl->setCompat == 0) {
			return; // Pure virtual, there is no base we can call
		}

		bool sigval1 = compat;
		vtbl->setCompat(this, sigval1);
	}

	virtual bool isContainer() const override {
		if (vtbl->isContainer == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		bool callback_return_value = vtbl->isContainer(this);
		return callback_return_value;
	}

	virtual void setContainer(bool container) override {
		if (vtbl->setContainer == 0) {
			return; // Pure virtual, there is no base we can call
		}

		bool sigval1 = container;
		vtbl->setContainer(this, sigval1);
	}

	virtual bool isCustom() const override {
		if (vtbl->isCustom == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		bool callback_return_value = vtbl->isCustom(this);
		return callback_return_value;
	}

	virtual void setCustom(bool custom) override {
		if (vtbl->setCustom == 0) {
			return; // Pure virtual, there is no base we can call
		}

		bool sigval1 = custom;
		vtbl->setCustom(this, sigval1);
	}

	virtual QString pluginPath() const override {
		if (vtbl->pluginPath == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		struct seaqt_string callback_return_value = vtbl->pluginPath(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual void setPluginPath(const QString& path) override {
		if (vtbl->setPluginPath == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString path_ret = path;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray path_b = path_ret.toUtf8();
		struct seaqt_string path_ms;
		path_ms.len = path_b.length();
		path_ms.data = static_cast<char*>(malloc(path_ms.len));
		memcpy(path_ms.data, path_b.data(), path_ms.len);
		struct seaqt_string sigval1 = path_ms;
		vtbl->setPluginPath(this, sigval1);
	}

	virtual bool isPromoted() const override {
		if (vtbl->isPromoted == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		bool callback_return_value = vtbl->isPromoted(this);
		return callback_return_value;
	}

	virtual void setPromoted(bool b) override {
		if (vtbl->setPromoted == 0) {
			return; // Pure virtual, there is no base we can call
		}

		bool sigval1 = b;
		vtbl->setPromoted(this, sigval1);
	}

	virtual QString extends() const override {
		if (vtbl->extends == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		struct seaqt_string callback_return_value = vtbl->extends(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual void setExtends(const QString& s) override {
		if (vtbl->setExtends == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString s_ret = s;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray s_b = s_ret.toUtf8();
		struct seaqt_string s_ms;
		s_ms.len = s_b.length();
		s_ms.data = static_cast<char*>(malloc(s_ms.len));
		memcpy(s_ms.data, s_b.data(), s_ms.len);
		struct seaqt_string sigval1 = s_ms;
		vtbl->setExtends(this, sigval1);
	}

	virtual void setDefaultPropertyValues(const QList<QVariant>& list) override {
		if (vtbl->setDefaultPropertyValues == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QList<QVariant>& list_ret = list;
		// Convert QList<> from C++ memory to manually-managed C memory
		QVariant** list_arr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * list_ret.length()));
		for (size_t i = 0, e = list_ret.length(); i < e; ++i) {
			list_arr[i] = new QVariant(list_ret[i]);
		}
		struct seaqt_array list_out;
		list_out.len = list_ret.length();
		list_out.data = static_cast<void*>(list_arr);
		struct seaqt_array /* of QVariant* */  sigval1 = list_out;
		vtbl->setDefaultPropertyValues(this, sigval1);
	}

	virtual QList<QVariant> defaultPropertyValues() const override {
		if (vtbl->defaultPropertyValues == 0) {
			return QList<QVariant>(); // Pure virtual, there is no base we can call
		}

		struct seaqt_array /* of QVariant* */  callback_return_value = vtbl->defaultPropertyValues(this);
		QList<QVariant> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QVariant** callback_return_value_arr = static_cast<QVariant**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}
		free(callback_return_value.data);
		return callback_return_value_QList;
	}

};

VirtualQDesignerWidgetDataBaseItemInterface* QDesignerWidgetDataBaseItemInterface_new(const QDesignerWidgetDataBaseItemInterface_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerWidgetDataBaseItemInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerWidgetDataBaseItemInterface(vtbl) : nullptr;
}

struct seaqt_string QDesignerWidgetDataBaseItemInterface_name(const QDesignerWidgetDataBaseItemInterface* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerWidgetDataBaseItemInterface_setName(QDesignerWidgetDataBaseItemInterface* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setName(name_QString);
}

struct seaqt_string QDesignerWidgetDataBaseItemInterface_group(const QDesignerWidgetDataBaseItemInterface* self) {
	QString _ret = self->group();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerWidgetDataBaseItemInterface_setGroup(QDesignerWidgetDataBaseItemInterface* self, struct seaqt_string group) {
	QString group_QString = QString::fromUtf8(group.data, group.len);
	self->setGroup(group_QString);
}

struct seaqt_string QDesignerWidgetDataBaseItemInterface_toolTip(const QDesignerWidgetDataBaseItemInterface* self) {
	QString _ret = self->toolTip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerWidgetDataBaseItemInterface_setToolTip(QDesignerWidgetDataBaseItemInterface* self, struct seaqt_string toolTip) {
	QString toolTip_QString = QString::fromUtf8(toolTip.data, toolTip.len);
	self->setToolTip(toolTip_QString);
}

struct seaqt_string QDesignerWidgetDataBaseItemInterface_whatsThis(const QDesignerWidgetDataBaseItemInterface* self) {
	QString _ret = self->whatsThis();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerWidgetDataBaseItemInterface_setWhatsThis(QDesignerWidgetDataBaseItemInterface* self, struct seaqt_string whatsThis) {
	QString whatsThis_QString = QString::fromUtf8(whatsThis.data, whatsThis.len);
	self->setWhatsThis(whatsThis_QString);
}

struct seaqt_string QDesignerWidgetDataBaseItemInterface_includeFile(const QDesignerWidgetDataBaseItemInterface* self) {
	QString _ret = self->includeFile();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerWidgetDataBaseItemInterface_setIncludeFile(QDesignerWidgetDataBaseItemInterface* self, struct seaqt_string includeFile) {
	QString includeFile_QString = QString::fromUtf8(includeFile.data, includeFile.len);
	self->setIncludeFile(includeFile_QString);
}

QIcon* QDesignerWidgetDataBaseItemInterface_icon(const QDesignerWidgetDataBaseItemInterface* self) {
	return new QIcon(self->icon());
}

void QDesignerWidgetDataBaseItemInterface_setIcon(QDesignerWidgetDataBaseItemInterface* self, QIcon* icon) {
	self->setIcon(*icon);
}

bool QDesignerWidgetDataBaseItemInterface_isCompat(const QDesignerWidgetDataBaseItemInterface* self) {
	return self->isCompat();
}

void QDesignerWidgetDataBaseItemInterface_setCompat(QDesignerWidgetDataBaseItemInterface* self, bool compat) {
	self->setCompat(compat);
}

bool QDesignerWidgetDataBaseItemInterface_isContainer(const QDesignerWidgetDataBaseItemInterface* self) {
	return self->isContainer();
}

void QDesignerWidgetDataBaseItemInterface_setContainer(QDesignerWidgetDataBaseItemInterface* self, bool container) {
	self->setContainer(container);
}

bool QDesignerWidgetDataBaseItemInterface_isCustom(const QDesignerWidgetDataBaseItemInterface* self) {
	return self->isCustom();
}

void QDesignerWidgetDataBaseItemInterface_setCustom(QDesignerWidgetDataBaseItemInterface* self, bool custom) {
	self->setCustom(custom);
}

struct seaqt_string QDesignerWidgetDataBaseItemInterface_pluginPath(const QDesignerWidgetDataBaseItemInterface* self) {
	QString _ret = self->pluginPath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerWidgetDataBaseItemInterface_setPluginPath(QDesignerWidgetDataBaseItemInterface* self, struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->setPluginPath(path_QString);
}

bool QDesignerWidgetDataBaseItemInterface_isPromoted(const QDesignerWidgetDataBaseItemInterface* self) {
	return self->isPromoted();
}

void QDesignerWidgetDataBaseItemInterface_setPromoted(QDesignerWidgetDataBaseItemInterface* self, bool b) {
	self->setPromoted(b);
}

struct seaqt_string QDesignerWidgetDataBaseItemInterface_extends(const QDesignerWidgetDataBaseItemInterface* self) {
	QString _ret = self->extends();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerWidgetDataBaseItemInterface_setExtends(QDesignerWidgetDataBaseItemInterface* self, struct seaqt_string s) {
	QString s_QString = QString::fromUtf8(s.data, s.len);
	self->setExtends(s_QString);
}

void QDesignerWidgetDataBaseItemInterface_setDefaultPropertyValues(QDesignerWidgetDataBaseItemInterface* self, struct seaqt_array /* of QVariant* */  list) {
	QList<QVariant> list_QList;
	list_QList.reserve(list.len);
	QVariant** list_arr = static_cast<QVariant**>(list.data);
	for(size_t i = 0; i < list.len; ++i) {
		list_QList.push_back(*(list_arr[i]));
	}
	self->setDefaultPropertyValues(list_QList);
}

struct seaqt_array /* of QVariant* */  QDesignerWidgetDataBaseItemInterface_defaultPropertyValues(const QDesignerWidgetDataBaseItemInterface* self) {
	QList<QVariant> _ret = self->defaultPropertyValues();
	// Convert QList<> from C++ memory to manually-managed C memory
	QVariant** _arr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QVariant(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void* QDesignerWidgetDataBaseItemInterface_vdata(VirtualQDesignerWidgetDataBaseItemInterface* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerWidgetDataBaseItemInterface>()); }
VirtualQDesignerWidgetDataBaseItemInterface* vdata_QDesignerWidgetDataBaseItemInterface(void* vdata) { return reinterpret_cast<VirtualQDesignerWidgetDataBaseItemInterface*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerWidgetDataBaseItemInterface>()); }

void QDesignerWidgetDataBaseItemInterface_delete(QDesignerWidgetDataBaseItemInterface* self) {
	delete self;
}

class VirtualQDesignerWidgetDataBaseInterface final : public QDesignerWidgetDataBaseInterface {
	const QDesignerWidgetDataBaseInterface_VTable* vtbl;
public:
	friend void* QDesignerWidgetDataBaseInterface_vdata(VirtualQDesignerWidgetDataBaseInterface* self);
	friend VirtualQDesignerWidgetDataBaseInterface* vdata_QDesignerWidgetDataBaseInterface(void* vdata);

	VirtualQDesignerWidgetDataBaseInterface(const QDesignerWidgetDataBaseInterface_VTable* vtbl): QDesignerWidgetDataBaseInterface(), vtbl(vtbl) {}
	VirtualQDesignerWidgetDataBaseInterface(const QDesignerWidgetDataBaseInterface_VTable* vtbl, QObject* parent): QDesignerWidgetDataBaseInterface(parent), vtbl(vtbl) {}

	virtual ~VirtualQDesignerWidgetDataBaseInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDesignerWidgetDataBaseInterface::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QDesignerWidgetDataBaseInterface_virtualbase_metaObject(const VirtualQDesignerWidgetDataBaseInterface* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDesignerWidgetDataBaseInterface::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QDesignerWidgetDataBaseInterface_virtualbase_metacast(VirtualQDesignerWidgetDataBaseInterface* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDesignerWidgetDataBaseInterface::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerWidgetDataBaseInterface_virtualbase_metacall(VirtualQDesignerWidgetDataBaseInterface* self, int param1, int param2, void** param3);

	virtual int count() const override {
		if (vtbl->count == 0) {
			return QDesignerWidgetDataBaseInterface::count();
		}

		int callback_return_value = vtbl->count(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerWidgetDataBaseInterface_virtualbase_count(const VirtualQDesignerWidgetDataBaseInterface* self);

	virtual QDesignerWidgetDataBaseItemInterface* item(int index) const override {
		if (vtbl->item == 0) {
			return QDesignerWidgetDataBaseInterface::item(index);
		}

		int sigval1 = index;
		QDesignerWidgetDataBaseItemInterface* callback_return_value = vtbl->item(this, sigval1);
		return callback_return_value;
	}

	friend QDesignerWidgetDataBaseItemInterface* QDesignerWidgetDataBaseInterface_virtualbase_item(const VirtualQDesignerWidgetDataBaseInterface* self, int index);

	virtual int indexOf(QDesignerWidgetDataBaseItemInterface* item) const override {
		if (vtbl->indexOf == 0) {
			return QDesignerWidgetDataBaseInterface::indexOf(item);
		}

		QDesignerWidgetDataBaseItemInterface* sigval1 = item;
		int callback_return_value = vtbl->indexOf(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerWidgetDataBaseInterface_virtualbase_indexOf(const VirtualQDesignerWidgetDataBaseInterface* self, QDesignerWidgetDataBaseItemInterface* item);

	virtual void insert(int index, QDesignerWidgetDataBaseItemInterface* item) override {
		if (vtbl->insert == 0) {
			QDesignerWidgetDataBaseInterface::insert(index, item);
			return;
		}

		int sigval1 = index;
		QDesignerWidgetDataBaseItemInterface* sigval2 = item;
		vtbl->insert(this, sigval1, sigval2);
	}

	friend void QDesignerWidgetDataBaseInterface_virtualbase_insert(VirtualQDesignerWidgetDataBaseInterface* self, int index, QDesignerWidgetDataBaseItemInterface* item);

	virtual void append(QDesignerWidgetDataBaseItemInterface* item) override {
		if (vtbl->append == 0) {
			QDesignerWidgetDataBaseInterface::append(item);
			return;
		}

		QDesignerWidgetDataBaseItemInterface* sigval1 = item;
		vtbl->append(this, sigval1);
	}

	friend void QDesignerWidgetDataBaseInterface_virtualbase_append(VirtualQDesignerWidgetDataBaseInterface* self, QDesignerWidgetDataBaseItemInterface* item);

	virtual int indexOfObject(QObject* object, bool resolveName) const override {
		if (vtbl->indexOfObject == 0) {
			return QDesignerWidgetDataBaseInterface::indexOfObject(object, resolveName);
		}

		QObject* sigval1 = object;
		bool sigval2 = resolveName;
		int callback_return_value = vtbl->indexOfObject(this, sigval1, sigval2);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerWidgetDataBaseInterface_virtualbase_indexOfObject(const VirtualQDesignerWidgetDataBaseInterface* self, QObject* object, bool resolveName);

	virtual int indexOfClassName(const QString& className, bool resolveName) const override {
		if (vtbl->indexOfClassName == 0) {
			return QDesignerWidgetDataBaseInterface::indexOfClassName(className, resolveName);
		}

		const QString className_ret = className;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray className_b = className_ret.toUtf8();
		struct seaqt_string className_ms;
		className_ms.len = className_b.length();
		className_ms.data = static_cast<char*>(malloc(className_ms.len));
		memcpy(className_ms.data, className_b.data(), className_ms.len);
		struct seaqt_string sigval1 = className_ms;
		bool sigval2 = resolveName;
		int callback_return_value = vtbl->indexOfClassName(this, sigval1, sigval2);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerWidgetDataBaseInterface_virtualbase_indexOfClassName(const VirtualQDesignerWidgetDataBaseInterface* self, struct seaqt_string className, bool resolveName);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDesignerWidgetDataBaseInterface::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QDesignerWidgetDataBaseInterface_virtualbase_event(VirtualQDesignerWidgetDataBaseInterface* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDesignerWidgetDataBaseInterface::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QDesignerWidgetDataBaseInterface_virtualbase_eventFilter(VirtualQDesignerWidgetDataBaseInterface* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDesignerWidgetDataBaseInterface::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QDesignerWidgetDataBaseInterface_virtualbase_timerEvent(VirtualQDesignerWidgetDataBaseInterface* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDesignerWidgetDataBaseInterface::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QDesignerWidgetDataBaseInterface_virtualbase_childEvent(VirtualQDesignerWidgetDataBaseInterface* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDesignerWidgetDataBaseInterface::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QDesignerWidgetDataBaseInterface_virtualbase_customEvent(VirtualQDesignerWidgetDataBaseInterface* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDesignerWidgetDataBaseInterface::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QDesignerWidgetDataBaseInterface_virtualbase_connectNotify(VirtualQDesignerWidgetDataBaseInterface* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDesignerWidgetDataBaseInterface::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QDesignerWidgetDataBaseInterface_virtualbase_disconnectNotify(VirtualQDesignerWidgetDataBaseInterface* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QDesignerWidgetDataBaseInterface_protectedbase_sender(const VirtualQDesignerWidgetDataBaseInterface* self);
	friend int QDesignerWidgetDataBaseInterface_protectedbase_senderSignalIndex(const VirtualQDesignerWidgetDataBaseInterface* self);
	friend int QDesignerWidgetDataBaseInterface_protectedbase_receivers(const VirtualQDesignerWidgetDataBaseInterface* self, const char* signal);
	friend bool QDesignerWidgetDataBaseInterface_protectedbase_isSignalConnected(const VirtualQDesignerWidgetDataBaseInterface* self, QMetaMethod* signal);
};

VirtualQDesignerWidgetDataBaseInterface* QDesignerWidgetDataBaseInterface_new(const QDesignerWidgetDataBaseInterface_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerWidgetDataBaseInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerWidgetDataBaseInterface(vtbl) : nullptr;
}

VirtualQDesignerWidgetDataBaseInterface* QDesignerWidgetDataBaseInterface_new_parent(const QDesignerWidgetDataBaseInterface_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerWidgetDataBaseInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerWidgetDataBaseInterface(vtbl, parent) : nullptr;
}

void QDesignerWidgetDataBaseInterface_virtbase(QDesignerWidgetDataBaseInterface* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QDesignerWidgetDataBaseInterface_metaObject(const QDesignerWidgetDataBaseInterface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDesignerWidgetDataBaseInterface_metacast(QDesignerWidgetDataBaseInterface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDesignerWidgetDataBaseInterface_metacall(QDesignerWidgetDataBaseInterface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDesignerWidgetDataBaseInterface_tr_s(const char* s) {
	QString _ret = QDesignerWidgetDataBaseInterface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDesignerWidgetDataBaseInterface_count(const QDesignerWidgetDataBaseInterface* self) {
	return self->count();
}

QDesignerWidgetDataBaseItemInterface* QDesignerWidgetDataBaseInterface_item(const QDesignerWidgetDataBaseInterface* self, int index) {
	return self->item(static_cast<int>(index));
}

int QDesignerWidgetDataBaseInterface_indexOf(const QDesignerWidgetDataBaseInterface* self, QDesignerWidgetDataBaseItemInterface* item) {
	return self->indexOf(item);
}

void QDesignerWidgetDataBaseInterface_insert(QDesignerWidgetDataBaseInterface* self, int index, QDesignerWidgetDataBaseItemInterface* item) {
	self->insert(static_cast<int>(index), item);
}

void QDesignerWidgetDataBaseInterface_append(QDesignerWidgetDataBaseInterface* self, QDesignerWidgetDataBaseItemInterface* item) {
	self->append(item);
}

int QDesignerWidgetDataBaseInterface_indexOfObject(const QDesignerWidgetDataBaseInterface* self, QObject* object, bool resolveName) {
	return self->indexOfObject(object, resolveName);
}

int QDesignerWidgetDataBaseInterface_indexOfClassName(const QDesignerWidgetDataBaseInterface* self, struct seaqt_string className, bool resolveName) {
	QString className_QString = QString::fromUtf8(className.data, className.len);
	return self->indexOfClassName(className_QString, resolveName);
}

bool QDesignerWidgetDataBaseInterface_isContainer_object(const QDesignerWidgetDataBaseInterface* self, QObject* object) {
	return self->isContainer(object);
}

bool QDesignerWidgetDataBaseInterface_isCustom_object(const QDesignerWidgetDataBaseInterface* self, QObject* object) {
	return self->isCustom(object);
}

void QDesignerWidgetDataBaseInterface_changed(QDesignerWidgetDataBaseInterface* self) {
	self->changed();
}

void QDesignerWidgetDataBaseInterface_connect_changed(QDesignerWidgetDataBaseInterface* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QDesignerWidgetDataBaseInterface::connect(self, static_cast<void (QDesignerWidgetDataBaseInterface::*)()>(&QDesignerWidgetDataBaseInterface::changed), self, local_caller{slot, callback, release});
}

struct seaqt_string QDesignerWidgetDataBaseInterface_tr_s_c(const char* s, const char* c) {
	QString _ret = QDesignerWidgetDataBaseInterface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerWidgetDataBaseInterface_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QDesignerWidgetDataBaseInterface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QDesignerWidgetDataBaseInterface_isContainer_object_resolveName(const QDesignerWidgetDataBaseInterface* self, QObject* object, bool resolveName) {
	return self->isContainer(object, resolveName);
}

bool QDesignerWidgetDataBaseInterface_isCustom_object_resolveName(const QDesignerWidgetDataBaseInterface* self, QObject* object, bool resolveName) {
	return self->isCustom(object, resolveName);
}

const QMetaObject* QDesignerWidgetDataBaseInterface_staticMetaObject() { return &QDesignerWidgetDataBaseInterface::staticMetaObject; }
void* QDesignerWidgetDataBaseInterface_vdata(VirtualQDesignerWidgetDataBaseInterface* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerWidgetDataBaseInterface>()); }
VirtualQDesignerWidgetDataBaseInterface* vdata_QDesignerWidgetDataBaseInterface(void* vdata) { return reinterpret_cast<VirtualQDesignerWidgetDataBaseInterface*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerWidgetDataBaseInterface>()); }

QMetaObject* QDesignerWidgetDataBaseInterface_virtualbase_metaObject(const VirtualQDesignerWidgetDataBaseInterface* self) {

	return (QMetaObject*) self->QDesignerWidgetDataBaseInterface::metaObject();
}

void* QDesignerWidgetDataBaseInterface_virtualbase_metacast(VirtualQDesignerWidgetDataBaseInterface* self, const char* param1) {

	return self->QDesignerWidgetDataBaseInterface::qt_metacast(param1);
}

int QDesignerWidgetDataBaseInterface_virtualbase_metacall(VirtualQDesignerWidgetDataBaseInterface* self, int param1, int param2, void** param3) {

	return self->QDesignerWidgetDataBaseInterface::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QDesignerWidgetDataBaseInterface_virtualbase_count(const VirtualQDesignerWidgetDataBaseInterface* self) {

	return self->QDesignerWidgetDataBaseInterface::count();
}

QDesignerWidgetDataBaseItemInterface* QDesignerWidgetDataBaseInterface_virtualbase_item(const VirtualQDesignerWidgetDataBaseInterface* self, int index) {

	return self->QDesignerWidgetDataBaseInterface::item(static_cast<int>(index));
}

int QDesignerWidgetDataBaseInterface_virtualbase_indexOf(const VirtualQDesignerWidgetDataBaseInterface* self, QDesignerWidgetDataBaseItemInterface* item) {

	return self->QDesignerWidgetDataBaseInterface::indexOf(item);
}

void QDesignerWidgetDataBaseInterface_virtualbase_insert(VirtualQDesignerWidgetDataBaseInterface* self, int index, QDesignerWidgetDataBaseItemInterface* item) {

	self->QDesignerWidgetDataBaseInterface::insert(static_cast<int>(index), item);
}

void QDesignerWidgetDataBaseInterface_virtualbase_append(VirtualQDesignerWidgetDataBaseInterface* self, QDesignerWidgetDataBaseItemInterface* item) {

	self->QDesignerWidgetDataBaseInterface::append(item);
}

int QDesignerWidgetDataBaseInterface_virtualbase_indexOfObject(const VirtualQDesignerWidgetDataBaseInterface* self, QObject* object, bool resolveName) {

	return self->QDesignerWidgetDataBaseInterface::indexOfObject(object, resolveName);
}

int QDesignerWidgetDataBaseInterface_virtualbase_indexOfClassName(const VirtualQDesignerWidgetDataBaseInterface* self, struct seaqt_string className, bool resolveName) {
	QString className_QString = QString::fromUtf8(className.data, className.len);

	return self->QDesignerWidgetDataBaseInterface::indexOfClassName(className_QString, resolveName);
}

bool QDesignerWidgetDataBaseInterface_virtualbase_event(VirtualQDesignerWidgetDataBaseInterface* self, QEvent* event) {

	return self->QDesignerWidgetDataBaseInterface::event(event);
}

bool QDesignerWidgetDataBaseInterface_virtualbase_eventFilter(VirtualQDesignerWidgetDataBaseInterface* self, QObject* watched, QEvent* event) {

	return self->QDesignerWidgetDataBaseInterface::eventFilter(watched, event);
}

void QDesignerWidgetDataBaseInterface_virtualbase_timerEvent(VirtualQDesignerWidgetDataBaseInterface* self, QTimerEvent* event) {

	self->QDesignerWidgetDataBaseInterface::timerEvent(event);
}

void QDesignerWidgetDataBaseInterface_virtualbase_childEvent(VirtualQDesignerWidgetDataBaseInterface* self, QChildEvent* event) {

	self->QDesignerWidgetDataBaseInterface::childEvent(event);
}

void QDesignerWidgetDataBaseInterface_virtualbase_customEvent(VirtualQDesignerWidgetDataBaseInterface* self, QEvent* event) {

	self->QDesignerWidgetDataBaseInterface::customEvent(event);
}

void QDesignerWidgetDataBaseInterface_virtualbase_connectNotify(VirtualQDesignerWidgetDataBaseInterface* self, QMetaMethod* signal) {

	self->QDesignerWidgetDataBaseInterface::connectNotify(*signal);
}

void QDesignerWidgetDataBaseInterface_virtualbase_disconnectNotify(VirtualQDesignerWidgetDataBaseInterface* self, QMetaMethod* signal) {

	self->QDesignerWidgetDataBaseInterface::disconnectNotify(*signal);
}

QObject* QDesignerWidgetDataBaseInterface_protectedbase_sender(const VirtualQDesignerWidgetDataBaseInterface* self) {
	return self->sender();
}

int QDesignerWidgetDataBaseInterface_protectedbase_senderSignalIndex(const VirtualQDesignerWidgetDataBaseInterface* self) {
	return self->senderSignalIndex();
}

int QDesignerWidgetDataBaseInterface_protectedbase_receivers(const VirtualQDesignerWidgetDataBaseInterface* self, const char* signal) {
	return self->receivers(signal);
}

bool QDesignerWidgetDataBaseInterface_protectedbase_isSignalConnected(const VirtualQDesignerWidgetDataBaseInterface* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDesignerWidgetDataBaseInterface_delete(QDesignerWidgetDataBaseInterface* self) {
	delete self;
}

