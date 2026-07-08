#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTFORMWINDOWCURSOR_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTFORMWINDOWCURSOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDesignerFormWindowCursorInterface;
class QDesignerFormWindowInterface;
class QVariant;
class QWidget;
#else
typedef struct QDesignerFormWindowCursorInterface QDesignerFormWindowCursorInterface;
typedef struct QDesignerFormWindowInterface QDesignerFormWindowInterface;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQDesignerFormWindowCursorInterface VirtualQDesignerFormWindowCursorInterface;
typedef struct QDesignerFormWindowCursorInterface_VTable{
	void (*destructor)(VirtualQDesignerFormWindowCursorInterface* self);
	QDesignerFormWindowInterface* (*formWindow)(const VirtualQDesignerFormWindowCursorInterface* self);
	bool (*movePosition)(VirtualQDesignerFormWindowCursorInterface* self, int op, int mode);
	int (*position)(const VirtualQDesignerFormWindowCursorInterface* self);
	void (*setPosition)(VirtualQDesignerFormWindowCursorInterface* self, int pos, int mode);
	QWidget* (*current)(const VirtualQDesignerFormWindowCursorInterface* self);
	int (*widgetCount)(const VirtualQDesignerFormWindowCursorInterface* self);
	QWidget* (*widget)(const VirtualQDesignerFormWindowCursorInterface* self, int index);
	bool (*hasSelection)(const VirtualQDesignerFormWindowCursorInterface* self);
	int (*selectedWidgetCount)(const VirtualQDesignerFormWindowCursorInterface* self);
	QWidget* (*selectedWidget)(const VirtualQDesignerFormWindowCursorInterface* self, int index);
	void (*setProperty)(VirtualQDesignerFormWindowCursorInterface* self, struct seaqt_string name, QVariant* value);
	void (*setWidgetProperty)(VirtualQDesignerFormWindowCursorInterface* self, QWidget* widget, struct seaqt_string name, QVariant* value);
	void (*resetWidgetProperty)(VirtualQDesignerFormWindowCursorInterface* self, QWidget* widget, struct seaqt_string name);
}QDesignerFormWindowCursorInterface_VTable;

void* QDesignerFormWindowCursorInterface_vdata(VirtualQDesignerFormWindowCursorInterface* self);
VirtualQDesignerFormWindowCursorInterface* vdata_QDesignerFormWindowCursorInterface(void* vdata);

VirtualQDesignerFormWindowCursorInterface* QDesignerFormWindowCursorInterface_new(const QDesignerFormWindowCursorInterface_VTable* vtbl, size_t vdata);

QDesignerFormWindowInterface* QDesignerFormWindowCursorInterface_formWindow(const QDesignerFormWindowCursorInterface* self);
bool QDesignerFormWindowCursorInterface_movePosition(QDesignerFormWindowCursorInterface* self, int op, int mode);
int QDesignerFormWindowCursorInterface_position(const QDesignerFormWindowCursorInterface* self);
void QDesignerFormWindowCursorInterface_setPosition(QDesignerFormWindowCursorInterface* self, int pos, int mode);
QWidget* QDesignerFormWindowCursorInterface_current(const QDesignerFormWindowCursorInterface* self);
int QDesignerFormWindowCursorInterface_widgetCount(const QDesignerFormWindowCursorInterface* self);
QWidget* QDesignerFormWindowCursorInterface_widget(const QDesignerFormWindowCursorInterface* self, int index);
bool QDesignerFormWindowCursorInterface_hasSelection(const QDesignerFormWindowCursorInterface* self);
int QDesignerFormWindowCursorInterface_selectedWidgetCount(const QDesignerFormWindowCursorInterface* self);
QWidget* QDesignerFormWindowCursorInterface_selectedWidget(const QDesignerFormWindowCursorInterface* self, int index);
void QDesignerFormWindowCursorInterface_setProperty(QDesignerFormWindowCursorInterface* self, struct seaqt_string name, QVariant* value);
void QDesignerFormWindowCursorInterface_setWidgetProperty(QDesignerFormWindowCursorInterface* self, QWidget* widget, struct seaqt_string name, QVariant* value);
void QDesignerFormWindowCursorInterface_resetWidgetProperty(QDesignerFormWindowCursorInterface* self, QWidget* widget, struct seaqt_string name);
bool QDesignerFormWindowCursorInterface_isWidgetSelected(const QDesignerFormWindowCursorInterface* self, QWidget* widget);

QDesignerFormWindowInterface* QDesignerFormWindowCursorInterface_virtualbase_formWindow(const VirtualQDesignerFormWindowCursorInterface* self);
bool QDesignerFormWindowCursorInterface_virtualbase_movePosition(VirtualQDesignerFormWindowCursorInterface* self, int op, int mode);
int QDesignerFormWindowCursorInterface_virtualbase_position(const VirtualQDesignerFormWindowCursorInterface* self);
void QDesignerFormWindowCursorInterface_virtualbase_setPosition(VirtualQDesignerFormWindowCursorInterface* self, int pos, int mode);
QWidget* QDesignerFormWindowCursorInterface_virtualbase_current(const VirtualQDesignerFormWindowCursorInterface* self);
int QDesignerFormWindowCursorInterface_virtualbase_widgetCount(const VirtualQDesignerFormWindowCursorInterface* self);
QWidget* QDesignerFormWindowCursorInterface_virtualbase_widget(const VirtualQDesignerFormWindowCursorInterface* self, int index);
bool QDesignerFormWindowCursorInterface_virtualbase_hasSelection(const VirtualQDesignerFormWindowCursorInterface* self);
int QDesignerFormWindowCursorInterface_virtualbase_selectedWidgetCount(const VirtualQDesignerFormWindowCursorInterface* self);
QWidget* QDesignerFormWindowCursorInterface_virtualbase_selectedWidget(const VirtualQDesignerFormWindowCursorInterface* self, int index);
void QDesignerFormWindowCursorInterface_virtualbase_setProperty(VirtualQDesignerFormWindowCursorInterface* self, struct seaqt_string name, QVariant* value);
void QDesignerFormWindowCursorInterface_virtualbase_setWidgetProperty(VirtualQDesignerFormWindowCursorInterface* self, QWidget* widget, struct seaqt_string name, QVariant* value);
void QDesignerFormWindowCursorInterface_virtualbase_resetWidgetProperty(VirtualQDesignerFormWindowCursorInterface* self, QWidget* widget, struct seaqt_string name);

void QDesignerFormWindowCursorInterface_delete(QDesignerFormWindowCursorInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
