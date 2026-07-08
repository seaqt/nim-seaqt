#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTFORMBUILDER_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTFORMBUILDER_H

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
class QDir;
class QIODevice;
class QLayout;
class QObject;
class QVariant;
class QWidget;
#else
typedef struct QAbstractFormBuilder QAbstractFormBuilder;
typedef struct QAction QAction;
typedef struct QActionGroup QActionGroup;
typedef struct QDir QDir;
typedef struct QIODevice QIODevice;
typedef struct QLayout QLayout;
typedef struct QObject QObject;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQAbstractFormBuilder VirtualQAbstractFormBuilder;
typedef struct QAbstractFormBuilder_VTable{
	void (*destructor)(VirtualQAbstractFormBuilder* self);
	QWidget* (*load)(VirtualQAbstractFormBuilder* self, QIODevice* dev, QWidget* parentWidget);
	void (*save)(VirtualQAbstractFormBuilder* self, QIODevice* dev, QWidget* widget);
	void (*addMenuAction)(VirtualQAbstractFormBuilder* self, QAction* action);
	QWidget* (*createWidget)(VirtualQAbstractFormBuilder* self, struct seaqt_string widgetName, QWidget* parentWidget, struct seaqt_string name);
	QLayout* (*createLayout)(VirtualQAbstractFormBuilder* self, struct seaqt_string layoutName, QObject* parent, struct seaqt_string name);
	QAction* (*createAction)(VirtualQAbstractFormBuilder* self, QObject* parent, struct seaqt_string name);
	QActionGroup* (*createActionGroup)(VirtualQAbstractFormBuilder* self, QObject* parent, struct seaqt_string name);
	bool (*checkProperty)(const VirtualQAbstractFormBuilder* self, QObject* obj, struct seaqt_string prop);
}QAbstractFormBuilder_VTable;

void* QAbstractFormBuilder_vdata(VirtualQAbstractFormBuilder* self);
VirtualQAbstractFormBuilder* vdata_QAbstractFormBuilder(void* vdata);

VirtualQAbstractFormBuilder* QAbstractFormBuilder_new(const QAbstractFormBuilder_VTable* vtbl, size_t vdata);

QDir* QAbstractFormBuilder_workingDirectory(const QAbstractFormBuilder* self);
void QAbstractFormBuilder_setWorkingDirectory(QAbstractFormBuilder* self, QDir* directory);
QWidget* QAbstractFormBuilder_load(QAbstractFormBuilder* self, QIODevice* dev, QWidget* parentWidget);
void QAbstractFormBuilder_save(QAbstractFormBuilder* self, QIODevice* dev, QWidget* widget);
struct seaqt_string QAbstractFormBuilder_errorString(const QAbstractFormBuilder* self);
void QAbstractFormBuilder_addMenuAction(QAbstractFormBuilder* self, QAction* action);
QWidget* QAbstractFormBuilder_createWidget(QAbstractFormBuilder* self, struct seaqt_string widgetName, QWidget* parentWidget, struct seaqt_string name);
QLayout* QAbstractFormBuilder_createLayout(QAbstractFormBuilder* self, struct seaqt_string layoutName, QObject* parent, struct seaqt_string name);
QAction* QAbstractFormBuilder_createAction(QAbstractFormBuilder* self, QObject* parent, struct seaqt_string name);
QActionGroup* QAbstractFormBuilder_createActionGroup(QAbstractFormBuilder* self, QObject* parent, struct seaqt_string name);
bool QAbstractFormBuilder_checkProperty(const QAbstractFormBuilder* self, QObject* obj, struct seaqt_string prop);

QWidget* QAbstractFormBuilder_virtualbase_load(VirtualQAbstractFormBuilder* self, QIODevice* dev, QWidget* parentWidget);
void QAbstractFormBuilder_virtualbase_save(VirtualQAbstractFormBuilder* self, QIODevice* dev, QWidget* widget);
void QAbstractFormBuilder_virtualbase_addMenuAction(VirtualQAbstractFormBuilder* self, QAction* action);
QWidget* QAbstractFormBuilder_virtualbase_createWidget(VirtualQAbstractFormBuilder* self, struct seaqt_string widgetName, QWidget* parentWidget, struct seaqt_string name);
QLayout* QAbstractFormBuilder_virtualbase_createLayout(VirtualQAbstractFormBuilder* self, struct seaqt_string layoutName, QObject* parent, struct seaqt_string name);
QAction* QAbstractFormBuilder_virtualbase_createAction(VirtualQAbstractFormBuilder* self, QObject* parent, struct seaqt_string name);
QActionGroup* QAbstractFormBuilder_virtualbase_createActionGroup(VirtualQAbstractFormBuilder* self, QObject* parent, struct seaqt_string name);
bool QAbstractFormBuilder_virtualbase_checkProperty(const VirtualQAbstractFormBuilder* self, QObject* obj, struct seaqt_string prop);

bool QAbstractFormBuilder_protectedbase_applyPropertyInternally(VirtualQAbstractFormBuilder* self, QObject* o, struct seaqt_string propertyName, QVariant* value);
void QAbstractFormBuilder_protectedbase_reset(VirtualQAbstractFormBuilder* self);

void QAbstractFormBuilder_delete(QAbstractFormBuilder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
