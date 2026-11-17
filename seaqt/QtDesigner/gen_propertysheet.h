#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_PROPERTYSHEET_H
#define SEAQT_QTDESIGNER_GEN_PROPERTYSHEET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDesignerPropertySheetExtension;
class QVariant;
#else
typedef struct QDesignerPropertySheetExtension QDesignerPropertySheetExtension;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQDesignerPropertySheetExtension VirtualQDesignerPropertySheetExtension;
typedef struct QDesignerPropertySheetExtension_VTable{
	void (*destructor)(VirtualQDesignerPropertySheetExtension* self);
	int (*count)(const VirtualQDesignerPropertySheetExtension* self);
	int (*indexOf)(const VirtualQDesignerPropertySheetExtension* self, struct seaqt_string name);
	struct seaqt_string (*propertyName)(const VirtualQDesignerPropertySheetExtension* self, int index);
	struct seaqt_string (*propertyGroup)(const VirtualQDesignerPropertySheetExtension* self, int index);
	void (*setPropertyGroup)(VirtualQDesignerPropertySheetExtension* self, int index, struct seaqt_string group);
	bool (*hasReset)(const VirtualQDesignerPropertySheetExtension* self, int index);
	bool (*reset)(VirtualQDesignerPropertySheetExtension* self, int index);
	bool (*isVisible)(const VirtualQDesignerPropertySheetExtension* self, int index);
	void (*setVisible)(VirtualQDesignerPropertySheetExtension* self, int index, bool b);
	bool (*isAttribute)(const VirtualQDesignerPropertySheetExtension* self, int index);
	void (*setAttribute)(VirtualQDesignerPropertySheetExtension* self, int index, bool b);
	QVariant* (*property)(const VirtualQDesignerPropertySheetExtension* self, int index);
	void (*setProperty)(VirtualQDesignerPropertySheetExtension* self, int index, QVariant* value);
	bool (*isChanged)(const VirtualQDesignerPropertySheetExtension* self, int index);
	void (*setChanged)(VirtualQDesignerPropertySheetExtension* self, int index, bool changed);
	bool (*isEnabled)(const VirtualQDesignerPropertySheetExtension* self, int index);
}QDesignerPropertySheetExtension_VTable;

void* QDesignerPropertySheetExtension_vdata(VirtualQDesignerPropertySheetExtension* self);
VirtualQDesignerPropertySheetExtension* vdata_QDesignerPropertySheetExtension(void* vdata);

VirtualQDesignerPropertySheetExtension* QDesignerPropertySheetExtension_new(const QDesignerPropertySheetExtension_VTable* vtbl, size_t vdata);

int QDesignerPropertySheetExtension_count(const QDesignerPropertySheetExtension* self);
int QDesignerPropertySheetExtension_indexOf(const QDesignerPropertySheetExtension* self, struct seaqt_string name);
struct seaqt_string QDesignerPropertySheetExtension_propertyName(const QDesignerPropertySheetExtension* self, int index);
struct seaqt_string QDesignerPropertySheetExtension_propertyGroup(const QDesignerPropertySheetExtension* self, int index);
void QDesignerPropertySheetExtension_setPropertyGroup(QDesignerPropertySheetExtension* self, int index, struct seaqt_string group);
bool QDesignerPropertySheetExtension_hasReset(const QDesignerPropertySheetExtension* self, int index);
bool QDesignerPropertySheetExtension_reset(QDesignerPropertySheetExtension* self, int index);
bool QDesignerPropertySheetExtension_isVisible(const QDesignerPropertySheetExtension* self, int index);
void QDesignerPropertySheetExtension_setVisible(QDesignerPropertySheetExtension* self, int index, bool b);
bool QDesignerPropertySheetExtension_isAttribute(const QDesignerPropertySheetExtension* self, int index);
void QDesignerPropertySheetExtension_setAttribute(QDesignerPropertySheetExtension* self, int index, bool b);
QVariant* QDesignerPropertySheetExtension_property(const QDesignerPropertySheetExtension* self, int index);
void QDesignerPropertySheetExtension_setProperty(QDesignerPropertySheetExtension* self, int index, QVariant* value);
bool QDesignerPropertySheetExtension_isChanged(const QDesignerPropertySheetExtension* self, int index);
void QDesignerPropertySheetExtension_setChanged(QDesignerPropertySheetExtension* self, int index, bool changed);
bool QDesignerPropertySheetExtension_isEnabled(const QDesignerPropertySheetExtension* self, int index);

int QDesignerPropertySheetExtension_virtualbase_count(const VirtualQDesignerPropertySheetExtension* self);
int QDesignerPropertySheetExtension_virtualbase_indexOf(const VirtualQDesignerPropertySheetExtension* self, struct seaqt_string name);
struct seaqt_string QDesignerPropertySheetExtension_virtualbase_propertyName(const VirtualQDesignerPropertySheetExtension* self, int index);
struct seaqt_string QDesignerPropertySheetExtension_virtualbase_propertyGroup(const VirtualQDesignerPropertySheetExtension* self, int index);
void QDesignerPropertySheetExtension_virtualbase_setPropertyGroup(VirtualQDesignerPropertySheetExtension* self, int index, struct seaqt_string group);
bool QDesignerPropertySheetExtension_virtualbase_hasReset(const VirtualQDesignerPropertySheetExtension* self, int index);
bool QDesignerPropertySheetExtension_virtualbase_reset(VirtualQDesignerPropertySheetExtension* self, int index);
bool QDesignerPropertySheetExtension_virtualbase_isVisible(const VirtualQDesignerPropertySheetExtension* self, int index);
void QDesignerPropertySheetExtension_virtualbase_setVisible(VirtualQDesignerPropertySheetExtension* self, int index, bool b);
bool QDesignerPropertySheetExtension_virtualbase_isAttribute(const VirtualQDesignerPropertySheetExtension* self, int index);
void QDesignerPropertySheetExtension_virtualbase_setAttribute(VirtualQDesignerPropertySheetExtension* self, int index, bool b);
QVariant* QDesignerPropertySheetExtension_virtualbase_property(const VirtualQDesignerPropertySheetExtension* self, int index);
void QDesignerPropertySheetExtension_virtualbase_setProperty(VirtualQDesignerPropertySheetExtension* self, int index, QVariant* value);
bool QDesignerPropertySheetExtension_virtualbase_isChanged(const VirtualQDesignerPropertySheetExtension* self, int index);
void QDesignerPropertySheetExtension_virtualbase_setChanged(VirtualQDesignerPropertySheetExtension* self, int index, bool changed);
bool QDesignerPropertySheetExtension_virtualbase_isEnabled(const VirtualQDesignerPropertySheetExtension* self, int index);

void QDesignerPropertySheetExtension_delete(QDesignerPropertySheetExtension* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
