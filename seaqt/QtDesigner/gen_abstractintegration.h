#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTINTEGRATION_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTINTEGRATION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDesignerFormWindowInterface;
class QDesignerIntegration;
class QDesignerIntegrationInterface;
class QDesignerResourceBrowserInterface;
class QMetaMethod;
class QMetaObject;
class QObject;
class QVariant;
class QWidget;
#else
typedef struct QDesignerFormWindowInterface QDesignerFormWindowInterface;
typedef struct QDesignerIntegration QDesignerIntegration;
typedef struct QDesignerIntegrationInterface QDesignerIntegrationInterface;
typedef struct QDesignerResourceBrowserInterface QDesignerResourceBrowserInterface;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

void QDesignerIntegrationInterface_virtbase(QDesignerIntegrationInterface* src, QObject** outptr_QObject);
QMetaObject* QDesignerIntegrationInterface_metaObject(const QDesignerIntegrationInterface* self);
void* QDesignerIntegrationInterface_metacast(QDesignerIntegrationInterface* self, const char* param1);
int QDesignerIntegrationInterface_metacall(QDesignerIntegrationInterface* self, int param1, int param2, void** param3);
struct seaqt_string QDesignerIntegrationInterface_tr_s(const char* s);
QWidget* QDesignerIntegrationInterface_containerWindow(const QDesignerIntegrationInterface* self, QWidget* widget);
QDesignerResourceBrowserInterface* QDesignerIntegrationInterface_createResourceBrowser(QDesignerIntegrationInterface* self, QWidget* parent);
struct seaqt_string QDesignerIntegrationInterface_headerSuffix(const QDesignerIntegrationInterface* self);
void QDesignerIntegrationInterface_setHeaderSuffix(QDesignerIntegrationInterface* self, struct seaqt_string headerSuffix);
bool QDesignerIntegrationInterface_isHeaderLowercase(const QDesignerIntegrationInterface* self);
void QDesignerIntegrationInterface_setHeaderLowercase(QDesignerIntegrationInterface* self, bool headerLowerCase);
int QDesignerIntegrationInterface_features(const QDesignerIntegrationInterface* self);
bool QDesignerIntegrationInterface_hasFeature(const QDesignerIntegrationInterface* self, int f);
int QDesignerIntegrationInterface_resourceFileWatcherBehaviour(const QDesignerIntegrationInterface* self);
void QDesignerIntegrationInterface_setResourceFileWatcherBehaviour(QDesignerIntegrationInterface* self, int behaviour);
struct seaqt_string QDesignerIntegrationInterface_contextHelpId(const QDesignerIntegrationInterface* self);
void QDesignerIntegrationInterface_emitObjectNameChanged(QDesignerIntegrationInterface* self, QDesignerFormWindowInterface* formWindow, QObject* object, struct seaqt_string newName, struct seaqt_string oldName);
void QDesignerIntegrationInterface_emitNavigateToSlot_QString_QString_QStringList(QDesignerIntegrationInterface* self, struct seaqt_string objectName, struct seaqt_string signalSignature, struct seaqt_array /* of struct seaqt_string */  parameterNames);
void QDesignerIntegrationInterface_emitNavigateToSlot_QString(QDesignerIntegrationInterface* self, struct seaqt_string slotSignature);
void QDesignerIntegrationInterface_emitHelpRequested(QDesignerIntegrationInterface* self, struct seaqt_string manual, struct seaqt_string document);
void QDesignerIntegrationInterface_propertyChanged(QDesignerIntegrationInterface* self, QDesignerFormWindowInterface* formWindow, struct seaqt_string name, QVariant* value);
void QDesignerIntegrationInterface_connect_propertyChanged(QDesignerIntegrationInterface* self, intptr_t slot, void (*callback)(intptr_t, QDesignerFormWindowInterface*, struct seaqt_string, QVariant*), void (*release)(intptr_t));
void QDesignerIntegrationInterface_objectNameChanged(QDesignerIntegrationInterface* self, QDesignerFormWindowInterface* formWindow, QObject* object, struct seaqt_string newName, struct seaqt_string oldName);
void QDesignerIntegrationInterface_connect_objectNameChanged(QDesignerIntegrationInterface* self, intptr_t slot, void (*callback)(intptr_t, QDesignerFormWindowInterface*, QObject*, struct seaqt_string, struct seaqt_string), void (*release)(intptr_t));
void QDesignerIntegrationInterface_helpRequested(QDesignerIntegrationInterface* self, struct seaqt_string manual, struct seaqt_string document);
void QDesignerIntegrationInterface_connect_helpRequested(QDesignerIntegrationInterface* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, struct seaqt_string), void (*release)(intptr_t));
void QDesignerIntegrationInterface_navigateToSlot_QString_QString_QStringList(QDesignerIntegrationInterface* self, struct seaqt_string objectName, struct seaqt_string signalSignature, struct seaqt_array /* of struct seaqt_string */  parameterNames);
void QDesignerIntegrationInterface_connect_navigateToSlot_QString_QString_QStringList(QDesignerIntegrationInterface* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, struct seaqt_string, struct seaqt_array /* of struct seaqt_string */ ), void (*release)(intptr_t));
void QDesignerIntegrationInterface_navigateToSlot_QString(QDesignerIntegrationInterface* self, struct seaqt_string slotSignature);
void QDesignerIntegrationInterface_connect_navigateToSlot_QString(QDesignerIntegrationInterface* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));
void QDesignerIntegrationInterface_setFeatures(QDesignerIntegrationInterface* self, int f);
void QDesignerIntegrationInterface_updateProperty_name_value_enableSubPropertyHandling(QDesignerIntegrationInterface* self, struct seaqt_string name, QVariant* value, bool enableSubPropertyHandling);
void QDesignerIntegrationInterface_updateProperty_name_value(QDesignerIntegrationInterface* self, struct seaqt_string name, QVariant* value);
void QDesignerIntegrationInterface_resetProperty(QDesignerIntegrationInterface* self, struct seaqt_string name);
void QDesignerIntegrationInterface_addDynamicProperty(QDesignerIntegrationInterface* self, struct seaqt_string name, QVariant* value);
void QDesignerIntegrationInterface_removeDynamicProperty(QDesignerIntegrationInterface* self, struct seaqt_string name);
void QDesignerIntegrationInterface_updateActiveFormWindow(QDesignerIntegrationInterface* self, QDesignerFormWindowInterface* formWindow);
void QDesignerIntegrationInterface_setupFormWindow(QDesignerIntegrationInterface* self, QDesignerFormWindowInterface* formWindow);
void QDesignerIntegrationInterface_updateSelection(QDesignerIntegrationInterface* self);
void QDesignerIntegrationInterface_updateCustomWidgetPlugins(QDesignerIntegrationInterface* self);
struct seaqt_string QDesignerIntegrationInterface_tr_s_c(const char* s, const char* c);
struct seaqt_string QDesignerIntegrationInterface_tr_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QDesignerIntegrationInterface_staticMetaObject();
void QDesignerIntegrationInterface_delete(QDesignerIntegrationInterface* self);

void QDesignerIntegration_virtbase(QDesignerIntegration* src, QDesignerIntegrationInterface** outptr_QDesignerIntegrationInterface);
QMetaObject* QDesignerIntegration_metaObject(const QDesignerIntegration* self);
void* QDesignerIntegration_metacast(QDesignerIntegration* self, const char* param1);
int QDesignerIntegration_metacall(QDesignerIntegration* self, int param1, int param2, void** param3);
struct seaqt_string QDesignerIntegration_tr_s(const char* s);
struct seaqt_string QDesignerIntegration_headerSuffix(const QDesignerIntegration* self);
void QDesignerIntegration_setHeaderSuffix(QDesignerIntegration* self, struct seaqt_string headerSuffix);
bool QDesignerIntegration_isHeaderLowercase(const QDesignerIntegration* self);
void QDesignerIntegration_setHeaderLowercase(QDesignerIntegration* self, bool headerLowerCase);
int QDesignerIntegration_features(const QDesignerIntegration* self);
void QDesignerIntegration_setFeatures(QDesignerIntegration* self, int f);
int QDesignerIntegration_resourceFileWatcherBehaviour(const QDesignerIntegration* self);
void QDesignerIntegration_setResourceFileWatcherBehaviour(QDesignerIntegration* self, int behaviour);
QWidget* QDesignerIntegration_containerWindow(const QDesignerIntegration* self, QWidget* widget);
QDesignerResourceBrowserInterface* QDesignerIntegration_createResourceBrowser(QDesignerIntegration* self, QWidget* parent);
struct seaqt_string QDesignerIntegration_contextHelpId(const QDesignerIntegration* self);
void QDesignerIntegration_updateProperty_name_value_enableSubPropertyHandling(QDesignerIntegration* self, struct seaqt_string name, QVariant* value, bool enableSubPropertyHandling);
void QDesignerIntegration_updateProperty_name_value(QDesignerIntegration* self, struct seaqt_string name, QVariant* value);
void QDesignerIntegration_resetProperty(QDesignerIntegration* self, struct seaqt_string name);
void QDesignerIntegration_addDynamicProperty(QDesignerIntegration* self, struct seaqt_string name, QVariant* value);
void QDesignerIntegration_removeDynamicProperty(QDesignerIntegration* self, struct seaqt_string name);
void QDesignerIntegration_updateActiveFormWindow(QDesignerIntegration* self, QDesignerFormWindowInterface* formWindow);
void QDesignerIntegration_setupFormWindow(QDesignerIntegration* self, QDesignerFormWindowInterface* formWindow);
void QDesignerIntegration_updateSelection(QDesignerIntegration* self);
void QDesignerIntegration_updateCustomWidgetPlugins(QDesignerIntegration* self);
struct seaqt_string QDesignerIntegration_tr_s_c(const char* s, const char* c);
struct seaqt_string QDesignerIntegration_tr_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QDesignerIntegration_staticMetaObject();
void QDesignerIntegration_delete(QDesignerIntegration* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
