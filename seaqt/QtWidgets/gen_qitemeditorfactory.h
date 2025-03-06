#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QITEMEDITORFACTORY_H
#define SEAQT_QTWIDGETS_GEN_QITEMEDITORFACTORY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QItemEditorCreatorBase;
class QItemEditorFactory;
class QWidget;
#else
typedef struct QItemEditorCreatorBase QItemEditorCreatorBase;
typedef struct QItemEditorFactory QItemEditorFactory;
typedef struct QWidget QWidget;
#endif

QWidget* QItemEditorCreatorBase_createWidget(const QItemEditorCreatorBase* self, QWidget* parent);
struct miqt_string QItemEditorCreatorBase_valuePropertyName(const QItemEditorCreatorBase* self);
void QItemEditorCreatorBase_operatorAssign(QItemEditorCreatorBase* self, QItemEditorCreatorBase* param1);
void QItemEditorCreatorBase_delete(QItemEditorCreatorBase* self);

struct QItemEditorFactory_VTable {
	void (*destructor)(struct QItemEditorFactory_VTable* vtbl, QItemEditorFactory* self);
	QWidget* (*createEditor)(struct QItemEditorFactory_VTable* vtbl, const QItemEditorFactory* self, int userType, QWidget* parent);
	struct miqt_string (*valuePropertyName)(struct QItemEditorFactory_VTable* vtbl, const QItemEditorFactory* self, int userType);
};
QItemEditorFactory* QItemEditorFactory_new(struct QItemEditorFactory_VTable* vtbl);
QItemEditorFactory* QItemEditorFactory_new2(struct QItemEditorFactory_VTable* vtbl, QItemEditorFactory* param1);
QWidget* QItemEditorFactory_createEditor(const QItemEditorFactory* self, int userType, QWidget* parent);
struct miqt_string QItemEditorFactory_valuePropertyName(const QItemEditorFactory* self, int userType);
void QItemEditorFactory_registerEditor(QItemEditorFactory* self, int userType, QItemEditorCreatorBase* creator);
QItemEditorFactory* QItemEditorFactory_defaultFactory();
void QItemEditorFactory_setDefaultFactory(QItemEditorFactory* factory);
QWidget* QItemEditorFactory_virtualbase_createEditor(const void* self, int userType, QWidget* parent);
struct miqt_string QItemEditorFactory_virtualbase_valuePropertyName(const void* self, int userType);
void QItemEditorFactory_delete(QItemEditorFactory* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
