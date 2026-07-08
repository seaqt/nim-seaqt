#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTWIDGETFACTORY_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTWIDGETFACTORY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDesignerWidgetFactoryInterface;
class QLayout;
class QMetaMethod;
class QMetaObject;
class QObject;
class QWidget;
#else
typedef struct QDesignerWidgetFactoryInterface QDesignerWidgetFactoryInterface;
typedef struct QLayout QLayout;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QWidget QWidget;
#endif

void QDesignerWidgetFactoryInterface_virtbase(QDesignerWidgetFactoryInterface* src, QObject** outptr_QObject);
QMetaObject* QDesignerWidgetFactoryInterface_metaObject(const QDesignerWidgetFactoryInterface* self);
void* QDesignerWidgetFactoryInterface_metacast(QDesignerWidgetFactoryInterface* self, const char* param1);
int QDesignerWidgetFactoryInterface_metacall(QDesignerWidgetFactoryInterface* self, int param1, int param2, void** param3);
struct seaqt_string QDesignerWidgetFactoryInterface_tr(const char* s);
QWidget* QDesignerWidgetFactoryInterface_containerOfWidget(const QDesignerWidgetFactoryInterface* self, QWidget* w);
QWidget* QDesignerWidgetFactoryInterface_widgetOfContainer(const QDesignerWidgetFactoryInterface* self, QWidget* w);
QWidget* QDesignerWidgetFactoryInterface_createWidget(const QDesignerWidgetFactoryInterface* self, struct seaqt_string name, QWidget* parentWidget);
QLayout* QDesignerWidgetFactoryInterface_createLayout(const QDesignerWidgetFactoryInterface* self, QWidget* widget, QLayout* layout, int type);
bool QDesignerWidgetFactoryInterface_isPassiveInteractor(QDesignerWidgetFactoryInterface* self, QWidget* widget);
void QDesignerWidgetFactoryInterface_initialize(const QDesignerWidgetFactoryInterface* self, QObject* object);
struct seaqt_string QDesignerWidgetFactoryInterface_tr2(const char* s, const char* c);
struct seaqt_string QDesignerWidgetFactoryInterface_tr3(const char* s, const char* c, int n);

const QMetaObject* QDesignerWidgetFactoryInterface_staticMetaObject();
void QDesignerWidgetFactoryInterface_delete(QDesignerWidgetFactoryInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
