#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_FORMBUILDER_H
#define SEAQT_QTDESIGNER_GEN_FORMBUILDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractFormBuilder;
class QAction;
class QActionGroup;
class QFormBuilder;
class QIODevice;
class QLayout;
class QObject;
class QVariant;
class QWidget;
#else
typedef struct QAbstractFormBuilder QAbstractFormBuilder;
typedef struct QAction QAction;
typedef struct QActionGroup QActionGroup;
typedef struct QFormBuilder QFormBuilder;
typedef struct QIODevice QIODevice;
typedef struct QLayout QLayout;
typedef struct QObject QObject;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQFormBuilder VirtualQFormBuilder;
typedef struct QFormBuilder_VTable{
	void (*destructor)(VirtualQFormBuilder* self);
	QWidget* (*createWidget)(VirtualQFormBuilder* self, struct seaqt_string widgetName, QWidget* parentWidget, struct seaqt_string name);
	QLayout* (*createLayout)(VirtualQFormBuilder* self, struct seaqt_string layoutName, QObject* parent, struct seaqt_string name);
	void (*updateCustomWidgets)(VirtualQFormBuilder* self);
	QWidget* (*load)(VirtualQFormBuilder* self, QIODevice* dev, QWidget* parentWidget);
	void (*save)(VirtualQFormBuilder* self, QIODevice* dev, QWidget* widget);
	void (*addMenuAction)(VirtualQFormBuilder* self, QAction* action);
	QAction* (*createAction)(VirtualQFormBuilder* self, QObject* parent, struct seaqt_string name);
	QActionGroup* (*createActionGroup)(VirtualQFormBuilder* self, QObject* parent, struct seaqt_string name);
	bool (*checkProperty)(const VirtualQFormBuilder* self, QObject* obj, struct seaqt_string prop);
}QFormBuilder_VTable;

void* QFormBuilder_vdata(VirtualQFormBuilder* self);
VirtualQFormBuilder* vdata_QFormBuilder(void* vdata);

VirtualQFormBuilder* QFormBuilder_new(const QFormBuilder_VTable* vtbl, size_t vdata);

void QFormBuilder_virtbase(QFormBuilder* src, QAbstractFormBuilder** outptr_QAbstractFormBuilder);
struct seaqt_array /* of struct seaqt_string */  QFormBuilder_pluginPaths(const QFormBuilder* self);
void QFormBuilder_clearPluginPaths(QFormBuilder* self);
void QFormBuilder_addPluginPath(QFormBuilder* self, struct seaqt_string pluginPath);
void QFormBuilder_setPluginPath(QFormBuilder* self, struct seaqt_array /* of struct seaqt_string */  pluginPaths);
QWidget* QFormBuilder_createWidget(QFormBuilder* self, struct seaqt_string widgetName, QWidget* parentWidget, struct seaqt_string name);
QLayout* QFormBuilder_createLayout(QFormBuilder* self, struct seaqt_string layoutName, QObject* parent, struct seaqt_string name);
void QFormBuilder_updateCustomWidgets(QFormBuilder* self);

QWidget* QFormBuilder_virtualbase_createWidget(VirtualQFormBuilder* self, struct seaqt_string widgetName, QWidget* parentWidget, struct seaqt_string name);
QLayout* QFormBuilder_virtualbase_createLayout(VirtualQFormBuilder* self, struct seaqt_string layoutName, QObject* parent, struct seaqt_string name);
void QFormBuilder_virtualbase_updateCustomWidgets(VirtualQFormBuilder* self);
QWidget* QFormBuilder_virtualbase_load(VirtualQFormBuilder* self, QIODevice* dev, QWidget* parentWidget);
void QFormBuilder_virtualbase_save(VirtualQFormBuilder* self, QIODevice* dev, QWidget* widget);
void QFormBuilder_virtualbase_addMenuAction(VirtualQFormBuilder* self, QAction* action);
QAction* QFormBuilder_virtualbase_createAction(VirtualQFormBuilder* self, QObject* parent, struct seaqt_string name);
QActionGroup* QFormBuilder_virtualbase_createActionGroup(VirtualQFormBuilder* self, QObject* parent, struct seaqt_string name);
bool QFormBuilder_virtualbase_checkProperty(const VirtualQFormBuilder* self, QObject* obj, struct seaqt_string prop);

bool QFormBuilder_protectedbase_applyPropertyInternally(VirtualQFormBuilder* self, QObject* o, struct seaqt_string propertyName, QVariant* value);
void QFormBuilder_protectedbase_reset(VirtualQFormBuilder* self);

void QFormBuilder_delete(QFormBuilder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
