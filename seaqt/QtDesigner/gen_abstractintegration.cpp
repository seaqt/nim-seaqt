#include <QDesignerFormWindowInterface>
#include <QDesignerIntegration>
#include <QDesignerIntegrationInterface>
#include <QDesignerResourceBrowserInterface>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <QVersionNumber>
#include <QWidget>
#include <abstractintegration.h>
#include "gen_abstractintegration.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QDesignerIntegrationInterface_virtbase(QDesignerIntegrationInterface* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QDesignerIntegrationInterface_metaObject(const QDesignerIntegrationInterface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDesignerIntegrationInterface_metacast(QDesignerIntegrationInterface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDesignerIntegrationInterface_metacall(QDesignerIntegrationInterface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDesignerIntegrationInterface_tr_s(const char* s) {
	QString _ret = QDesignerIntegrationInterface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWidget* QDesignerIntegrationInterface_containerWindow(const QDesignerIntegrationInterface* self, QWidget* widget) {
	return self->containerWindow(widget);
}

QDesignerResourceBrowserInterface* QDesignerIntegrationInterface_createResourceBrowser(QDesignerIntegrationInterface* self, QWidget* parent) {
	return self->createResourceBrowser(parent);
}

struct seaqt_string QDesignerIntegrationInterface_headerSuffix(const QDesignerIntegrationInterface* self) {
	QString _ret = self->headerSuffix();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerIntegrationInterface_setHeaderSuffix(QDesignerIntegrationInterface* self, struct seaqt_string headerSuffix) {
	QString headerSuffix_QString = QString::fromUtf8(headerSuffix.data, headerSuffix.len);
	self->setHeaderSuffix(headerSuffix_QString);
}

bool QDesignerIntegrationInterface_isHeaderLowercase(const QDesignerIntegrationInterface* self) {
	return self->isHeaderLowercase();
}

void QDesignerIntegrationInterface_setHeaderLowercase(QDesignerIntegrationInterface* self, bool headerLowerCase) {
	self->setHeaderLowercase(headerLowerCase);
}

QVersionNumber* QDesignerIntegrationInterface_qtVersion(const QDesignerIntegrationInterface* self) {
	return new QVersionNumber(self->qtVersion());
}

void QDesignerIntegrationInterface_setQtVersion(QDesignerIntegrationInterface* self, QVersionNumber* qtVersion) {
	self->setQtVersion(*qtVersion);
}

int QDesignerIntegrationInterface_features(const QDesignerIntegrationInterface* self) {
	QDesignerIntegrationInterface::Feature _ret = self->features();
	return static_cast<int>(_ret);
}

bool QDesignerIntegrationInterface_hasFeature(const QDesignerIntegrationInterface* self, int f) {
	return self->hasFeature(static_cast<QDesignerIntegrationInterface::Feature>(f));
}

int QDesignerIntegrationInterface_resourceFileWatcherBehaviour(const QDesignerIntegrationInterface* self) {
	QDesignerIntegrationInterface::ResourceFileWatcherBehaviour _ret = self->resourceFileWatcherBehaviour();
	return static_cast<int>(_ret);
}

void QDesignerIntegrationInterface_setResourceFileWatcherBehaviour(QDesignerIntegrationInterface* self, int behaviour) {
	self->setResourceFileWatcherBehaviour(static_cast<QDesignerIntegrationInterface::ResourceFileWatcherBehaviour>(behaviour));
}

struct seaqt_string QDesignerIntegrationInterface_contextHelpId(const QDesignerIntegrationInterface* self) {
	QString _ret = self->contextHelpId();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerIntegrationInterface_emitObjectNameChanged(QDesignerIntegrationInterface* self, QDesignerFormWindowInterface* formWindow, QObject* object, struct seaqt_string newName, struct seaqt_string oldName) {
	QString newName_QString = QString::fromUtf8(newName.data, newName.len);
	QString oldName_QString = QString::fromUtf8(oldName.data, oldName.len);
	self->emitObjectNameChanged(formWindow, object, newName_QString, oldName_QString);
}

void QDesignerIntegrationInterface_emitNavigateToSlot_QString_QString_QStringList(QDesignerIntegrationInterface* self, struct seaqt_string objectName, struct seaqt_string signalSignature, struct seaqt_array /* of struct seaqt_string */  parameterNames) {
	QString objectName_QString = QString::fromUtf8(objectName.data, objectName.len);
	QString signalSignature_QString = QString::fromUtf8(signalSignature.data, signalSignature.len);
	QStringList parameterNames_QList;
	parameterNames_QList.reserve(parameterNames.len);
	struct seaqt_string* parameterNames_arr = static_cast<struct seaqt_string*>(parameterNames.data);
	for(size_t i = 0; i < parameterNames.len; ++i) {
		QString parameterNames_arr_i_QString = QString::fromUtf8(parameterNames_arr[i].data, parameterNames_arr[i].len);
		parameterNames_QList.push_back(parameterNames_arr_i_QString);
	}
	self->emitNavigateToSlot(objectName_QString, signalSignature_QString, parameterNames_QList);
}

void QDesignerIntegrationInterface_emitNavigateToSlot_QString(QDesignerIntegrationInterface* self, struct seaqt_string slotSignature) {
	QString slotSignature_QString = QString::fromUtf8(slotSignature.data, slotSignature.len);
	self->emitNavigateToSlot(slotSignature_QString);
}

void QDesignerIntegrationInterface_emitHelpRequested(QDesignerIntegrationInterface* self, struct seaqt_string manual, struct seaqt_string document) {
	QString manual_QString = QString::fromUtf8(manual.data, manual.len);
	QString document_QString = QString::fromUtf8(document.data, document.len);
	self->emitHelpRequested(manual_QString, document_QString);
}

void QDesignerIntegrationInterface_propertyChanged(QDesignerIntegrationInterface* self, QDesignerFormWindowInterface* formWindow, struct seaqt_string name, QVariant* value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->propertyChanged(formWindow, name_QString, *value);
}

void QDesignerIntegrationInterface_connect_propertyChanged(QDesignerIntegrationInterface* self, intptr_t slot, void (*callback)(intptr_t, QDesignerFormWindowInterface*, struct seaqt_string, QVariant*), void (*release)(intptr_t)) {
	QDesignerIntegrationInterface::connect(self, static_cast<void (QDesignerIntegrationInterface::*)(QDesignerFormWindowInterface*, const QString&, const QVariant&)>(&QDesignerIntegrationInterface::propertyChanged), self, [callback, release = seaqt::release_callback{slot,release}](QDesignerFormWindowInterface* formWindow, const QString& name, const QVariant& value) {
			QDesignerFormWindowInterface* sigval1 = formWindow;
			const QString name_ret = name;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray name_b = name_ret.toUtf8();
			struct seaqt_string name_ms;
			name_ms.len = name_b.length();
			name_ms.data = static_cast<char*>(malloc(name_ms.len));
			memcpy(name_ms.data, name_b.data(), name_ms.len);
			struct seaqt_string sigval2 = name_ms;
			const QVariant& value_ret = value;
			// Cast returned reference into pointer
			QVariant* sigval3 = const_cast<QVariant*>(&value_ret);
			callback(release.slot, sigval1, sigval2, sigval3);
	});
}

void QDesignerIntegrationInterface_objectNameChanged(QDesignerIntegrationInterface* self, QDesignerFormWindowInterface* formWindow, QObject* object, struct seaqt_string newName, struct seaqt_string oldName) {
	QString newName_QString = QString::fromUtf8(newName.data, newName.len);
	QString oldName_QString = QString::fromUtf8(oldName.data, oldName.len);
	self->objectNameChanged(formWindow, object, newName_QString, oldName_QString);
}

void QDesignerIntegrationInterface_connect_objectNameChanged(QDesignerIntegrationInterface* self, intptr_t slot, void (*callback)(intptr_t, QDesignerFormWindowInterface*, QObject*, struct seaqt_string, struct seaqt_string), void (*release)(intptr_t)) {
	QDesignerIntegrationInterface::connect(self, static_cast<void (QDesignerIntegrationInterface::*)(QDesignerFormWindowInterface*, QObject*, const QString&, const QString&)>(&QDesignerIntegrationInterface::objectNameChanged), self, [callback, release = seaqt::release_callback{slot,release}](QDesignerFormWindowInterface* formWindow, QObject* object, const QString& newName, const QString& oldName) {
			QDesignerFormWindowInterface* sigval1 = formWindow;
			QObject* sigval2 = object;
			const QString newName_ret = newName;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray newName_b = newName_ret.toUtf8();
			struct seaqt_string newName_ms;
			newName_ms.len = newName_b.length();
			newName_ms.data = static_cast<char*>(malloc(newName_ms.len));
			memcpy(newName_ms.data, newName_b.data(), newName_ms.len);
			struct seaqt_string sigval3 = newName_ms;
			const QString oldName_ret = oldName;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray oldName_b = oldName_ret.toUtf8();
			struct seaqt_string oldName_ms;
			oldName_ms.len = oldName_b.length();
			oldName_ms.data = static_cast<char*>(malloc(oldName_ms.len));
			memcpy(oldName_ms.data, oldName_b.data(), oldName_ms.len);
			struct seaqt_string sigval4 = oldName_ms;
			callback(release.slot, sigval1, sigval2, sigval3, sigval4);
	});
}

void QDesignerIntegrationInterface_helpRequested(QDesignerIntegrationInterface* self, struct seaqt_string manual, struct seaqt_string document) {
	QString manual_QString = QString::fromUtf8(manual.data, manual.len);
	QString document_QString = QString::fromUtf8(document.data, document.len);
	self->helpRequested(manual_QString, document_QString);
}

void QDesignerIntegrationInterface_connect_helpRequested(QDesignerIntegrationInterface* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, struct seaqt_string), void (*release)(intptr_t)) {
	QDesignerIntegrationInterface::connect(self, static_cast<void (QDesignerIntegrationInterface::*)(const QString&, const QString&)>(&QDesignerIntegrationInterface::helpRequested), self, [callback, release = seaqt::release_callback{slot,release}](const QString& manual, const QString& document) {
			const QString manual_ret = manual;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray manual_b = manual_ret.toUtf8();
			struct seaqt_string manual_ms;
			manual_ms.len = manual_b.length();
			manual_ms.data = static_cast<char*>(malloc(manual_ms.len));
			memcpy(manual_ms.data, manual_b.data(), manual_ms.len);
			struct seaqt_string sigval1 = manual_ms;
			const QString document_ret = document;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray document_b = document_ret.toUtf8();
			struct seaqt_string document_ms;
			document_ms.len = document_b.length();
			document_ms.data = static_cast<char*>(malloc(document_ms.len));
			memcpy(document_ms.data, document_b.data(), document_ms.len);
			struct seaqt_string sigval2 = document_ms;
			callback(release.slot, sigval1, sigval2);
	});
}

void QDesignerIntegrationInterface_navigateToSlot_QString_QString_QStringList(QDesignerIntegrationInterface* self, struct seaqt_string objectName, struct seaqt_string signalSignature, struct seaqt_array /* of struct seaqt_string */  parameterNames) {
	QString objectName_QString = QString::fromUtf8(objectName.data, objectName.len);
	QString signalSignature_QString = QString::fromUtf8(signalSignature.data, signalSignature.len);
	QStringList parameterNames_QList;
	parameterNames_QList.reserve(parameterNames.len);
	struct seaqt_string* parameterNames_arr = static_cast<struct seaqt_string*>(parameterNames.data);
	for(size_t i = 0; i < parameterNames.len; ++i) {
		QString parameterNames_arr_i_QString = QString::fromUtf8(parameterNames_arr[i].data, parameterNames_arr[i].len);
		parameterNames_QList.push_back(parameterNames_arr_i_QString);
	}
	self->navigateToSlot(objectName_QString, signalSignature_QString, parameterNames_QList);
}

void QDesignerIntegrationInterface_connect_navigateToSlot_QString_QString_QStringList(QDesignerIntegrationInterface* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, struct seaqt_string, struct seaqt_array /* of struct seaqt_string */ ), void (*release)(intptr_t)) {
	QDesignerIntegrationInterface::connect(self, static_cast<void (QDesignerIntegrationInterface::*)(const QString&, const QString&, const QStringList&)>(&QDesignerIntegrationInterface::navigateToSlot), self, [callback, release = seaqt::release_callback{slot,release}](const QString& objectName, const QString& signalSignature, const QStringList& parameterNames) {
			const QString objectName_ret = objectName;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray objectName_b = objectName_ret.toUtf8();
			struct seaqt_string objectName_ms;
			objectName_ms.len = objectName_b.length();
			objectName_ms.data = static_cast<char*>(malloc(objectName_ms.len));
			memcpy(objectName_ms.data, objectName_b.data(), objectName_ms.len);
			struct seaqt_string sigval1 = objectName_ms;
			const QString signalSignature_ret = signalSignature;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray signalSignature_b = signalSignature_ret.toUtf8();
			struct seaqt_string signalSignature_ms;
			signalSignature_ms.len = signalSignature_b.length();
			signalSignature_ms.data = static_cast<char*>(malloc(signalSignature_ms.len));
			memcpy(signalSignature_ms.data, signalSignature_b.data(), signalSignature_ms.len);
			struct seaqt_string sigval2 = signalSignature_ms;
			const QStringList& parameterNames_ret = parameterNames;
			// Convert QList<> from C++ memory to manually-managed C memory
			struct seaqt_string* parameterNames_arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * parameterNames_ret.length()));
			for (size_t i = 0, e = parameterNames_ret.length(); i < e; ++i) {
				QString parameterNames_lv_ret = parameterNames_ret[i];
				// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
				QByteArray parameterNames_lv_b = parameterNames_lv_ret.toUtf8();
				struct seaqt_string parameterNames_lv_ms;
				parameterNames_lv_ms.len = parameterNames_lv_b.length();
				parameterNames_lv_ms.data = static_cast<char*>(malloc(parameterNames_lv_ms.len));
				memcpy(parameterNames_lv_ms.data, parameterNames_lv_b.data(), parameterNames_lv_ms.len);
				parameterNames_arr[i] = parameterNames_lv_ms;
			}
			struct seaqt_array parameterNames_out;
			parameterNames_out.len = parameterNames_ret.length();
			parameterNames_out.data = static_cast<void*>(parameterNames_arr);
			struct seaqt_array /* of struct seaqt_string */  sigval3 = parameterNames_out;
			callback(release.slot, sigval1, sigval2, sigval3);
	});
}

void QDesignerIntegrationInterface_navigateToSlot_QString(QDesignerIntegrationInterface* self, struct seaqt_string slotSignature) {
	QString slotSignature_QString = QString::fromUtf8(slotSignature.data, slotSignature.len);
	self->navigateToSlot(slotSignature_QString);
}

void QDesignerIntegrationInterface_connect_navigateToSlot_QString(QDesignerIntegrationInterface* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	QDesignerIntegrationInterface::connect(self, static_cast<void (QDesignerIntegrationInterface::*)(const QString&)>(&QDesignerIntegrationInterface::navigateToSlot), self, [callback, release = seaqt::release_callback{slot,release}](const QString& slotSignature) {
			const QString slotSignature_ret = slotSignature;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray slotSignature_b = slotSignature_ret.toUtf8();
			struct seaqt_string slotSignature_ms;
			slotSignature_ms.len = slotSignature_b.length();
			slotSignature_ms.data = static_cast<char*>(malloc(slotSignature_ms.len));
			memcpy(slotSignature_ms.data, slotSignature_b.data(), slotSignature_ms.len);
			struct seaqt_string sigval1 = slotSignature_ms;
			callback(release.slot, sigval1);
	});
}

void QDesignerIntegrationInterface_setFeatures(QDesignerIntegrationInterface* self, int f) {
	self->setFeatures(static_cast<QDesignerIntegrationInterface::Feature>(f));
}

void QDesignerIntegrationInterface_updateProperty_name_value_enableSubPropertyHandling(QDesignerIntegrationInterface* self, struct seaqt_string name, QVariant* value, bool enableSubPropertyHandling) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->updateProperty(name_QString, *value, enableSubPropertyHandling);
}

void QDesignerIntegrationInterface_updateProperty_name_value(QDesignerIntegrationInterface* self, struct seaqt_string name, QVariant* value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->updateProperty(name_QString, *value);
}

void QDesignerIntegrationInterface_resetProperty(QDesignerIntegrationInterface* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->resetProperty(name_QString);
}

void QDesignerIntegrationInterface_addDynamicProperty(QDesignerIntegrationInterface* self, struct seaqt_string name, QVariant* value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->addDynamicProperty(name_QString, *value);
}

void QDesignerIntegrationInterface_removeDynamicProperty(QDesignerIntegrationInterface* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->removeDynamicProperty(name_QString);
}

void QDesignerIntegrationInterface_updateActiveFormWindow(QDesignerIntegrationInterface* self, QDesignerFormWindowInterface* formWindow) {
	self->updateActiveFormWindow(formWindow);
}

void QDesignerIntegrationInterface_setupFormWindow(QDesignerIntegrationInterface* self, QDesignerFormWindowInterface* formWindow) {
	self->setupFormWindow(formWindow);
}

void QDesignerIntegrationInterface_updateSelection(QDesignerIntegrationInterface* self) {
	self->updateSelection();
}

void QDesignerIntegrationInterface_updateCustomWidgetPlugins(QDesignerIntegrationInterface* self) {
	self->updateCustomWidgetPlugins();
}

struct seaqt_string QDesignerIntegrationInterface_tr_s_c(const char* s, const char* c) {
	QString _ret = QDesignerIntegrationInterface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerIntegrationInterface_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QDesignerIntegrationInterface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QDesignerIntegrationInterface_staticMetaObject() { return &QDesignerIntegrationInterface::staticMetaObject; }
void QDesignerIntegrationInterface_delete(QDesignerIntegrationInterface* self) {
	delete self;
}

void QDesignerIntegration_virtbase(QDesignerIntegration* src, QDesignerIntegrationInterface** outptr_QDesignerIntegrationInterface) {
	*outptr_QDesignerIntegrationInterface = static_cast<QDesignerIntegrationInterface*>(src);
}

QMetaObject* QDesignerIntegration_metaObject(const QDesignerIntegration* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDesignerIntegration_metacast(QDesignerIntegration* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDesignerIntegration_metacall(QDesignerIntegration* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDesignerIntegration_tr_s(const char* s) {
	QString _ret = QDesignerIntegration::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerIntegration_headerSuffix(const QDesignerIntegration* self) {
	QString _ret = self->headerSuffix();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerIntegration_setHeaderSuffix(QDesignerIntegration* self, struct seaqt_string headerSuffix) {
	QString headerSuffix_QString = QString::fromUtf8(headerSuffix.data, headerSuffix.len);
	self->setHeaderSuffix(headerSuffix_QString);
}

bool QDesignerIntegration_isHeaderLowercase(const QDesignerIntegration* self) {
	return self->isHeaderLowercase();
}

void QDesignerIntegration_setHeaderLowercase(QDesignerIntegration* self, bool headerLowerCase) {
	self->setHeaderLowercase(headerLowerCase);
}

int QDesignerIntegration_features(const QDesignerIntegration* self) {
	QDesignerIntegrationInterface::Feature _ret = self->features();
	return static_cast<int>(_ret);
}

void QDesignerIntegration_setFeatures(QDesignerIntegration* self, int f) {
	self->setFeatures(static_cast<QDesignerIntegrationInterface::Feature>(f));
}

int QDesignerIntegration_resourceFileWatcherBehaviour(const QDesignerIntegration* self) {
	QDesignerIntegrationInterface::ResourceFileWatcherBehaviour _ret = self->resourceFileWatcherBehaviour();
	return static_cast<int>(_ret);
}

void QDesignerIntegration_setResourceFileWatcherBehaviour(QDesignerIntegration* self, int behaviour) {
	self->setResourceFileWatcherBehaviour(static_cast<QDesignerIntegrationInterface::ResourceFileWatcherBehaviour>(behaviour));
}

QWidget* QDesignerIntegration_containerWindow(const QDesignerIntegration* self, QWidget* widget) {
	return self->containerWindow(widget);
}

QDesignerResourceBrowserInterface* QDesignerIntegration_createResourceBrowser(QDesignerIntegration* self, QWidget* parent) {
	return self->createResourceBrowser(parent);
}

struct seaqt_string QDesignerIntegration_contextHelpId(const QDesignerIntegration* self) {
	QString _ret = self->contextHelpId();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerIntegration_updateProperty_name_value_enableSubPropertyHandling(QDesignerIntegration* self, struct seaqt_string name, QVariant* value, bool enableSubPropertyHandling) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->updateProperty(name_QString, *value, enableSubPropertyHandling);
}

void QDesignerIntegration_updateProperty_name_value(QDesignerIntegration* self, struct seaqt_string name, QVariant* value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->updateProperty(name_QString, *value);
}

void QDesignerIntegration_resetProperty(QDesignerIntegration* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->resetProperty(name_QString);
}

void QDesignerIntegration_addDynamicProperty(QDesignerIntegration* self, struct seaqt_string name, QVariant* value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->addDynamicProperty(name_QString, *value);
}

void QDesignerIntegration_removeDynamicProperty(QDesignerIntegration* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->removeDynamicProperty(name_QString);
}

void QDesignerIntegration_updateActiveFormWindow(QDesignerIntegration* self, QDesignerFormWindowInterface* formWindow) {
	self->updateActiveFormWindow(formWindow);
}

void QDesignerIntegration_setupFormWindow(QDesignerIntegration* self, QDesignerFormWindowInterface* formWindow) {
	self->setupFormWindow(formWindow);
}

void QDesignerIntegration_updateSelection(QDesignerIntegration* self) {
	self->updateSelection();
}

void QDesignerIntegration_updateCustomWidgetPlugins(QDesignerIntegration* self) {
	self->updateCustomWidgetPlugins();
}

struct seaqt_string QDesignerIntegration_tr_s_c(const char* s, const char* c) {
	QString _ret = QDesignerIntegration::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerIntegration_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QDesignerIntegration::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QDesignerIntegration_staticMetaObject() { return &QDesignerIntegration::staticMetaObject; }
void QDesignerIntegration_delete(QDesignerIntegration* self) {
	delete self;
}

