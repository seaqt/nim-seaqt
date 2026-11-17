#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_DYNAMICPROPERTYSHEET_H
#define SEAQT_QTDESIGNER_GEN_DYNAMICPROPERTYSHEET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDesignerDynamicPropertySheetExtension;
class QVariant;
#else
typedef struct QDesignerDynamicPropertySheetExtension QDesignerDynamicPropertySheetExtension;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQDesignerDynamicPropertySheetExtension VirtualQDesignerDynamicPropertySheetExtension;
typedef struct QDesignerDynamicPropertySheetExtension_VTable{
	void (*destructor)(VirtualQDesignerDynamicPropertySheetExtension* self);
	bool (*dynamicPropertiesAllowed)(const VirtualQDesignerDynamicPropertySheetExtension* self);
	int (*addDynamicProperty)(VirtualQDesignerDynamicPropertySheetExtension* self, struct seaqt_string propertyName, QVariant* value);
	bool (*removeDynamicProperty)(VirtualQDesignerDynamicPropertySheetExtension* self, int index);
	bool (*isDynamicProperty)(const VirtualQDesignerDynamicPropertySheetExtension* self, int index);
	bool (*canAddDynamicProperty)(const VirtualQDesignerDynamicPropertySheetExtension* self, struct seaqt_string propertyName);
}QDesignerDynamicPropertySheetExtension_VTable;

void* QDesignerDynamicPropertySheetExtension_vdata(VirtualQDesignerDynamicPropertySheetExtension* self);
VirtualQDesignerDynamicPropertySheetExtension* vdata_QDesignerDynamicPropertySheetExtension(void* vdata);

VirtualQDesignerDynamicPropertySheetExtension* QDesignerDynamicPropertySheetExtension_new(const QDesignerDynamicPropertySheetExtension_VTable* vtbl, size_t vdata);

bool QDesignerDynamicPropertySheetExtension_dynamicPropertiesAllowed(const QDesignerDynamicPropertySheetExtension* self);
int QDesignerDynamicPropertySheetExtension_addDynamicProperty(QDesignerDynamicPropertySheetExtension* self, struct seaqt_string propertyName, QVariant* value);
bool QDesignerDynamicPropertySheetExtension_removeDynamicProperty(QDesignerDynamicPropertySheetExtension* self, int index);
bool QDesignerDynamicPropertySheetExtension_isDynamicProperty(const QDesignerDynamicPropertySheetExtension* self, int index);
bool QDesignerDynamicPropertySheetExtension_canAddDynamicProperty(const QDesignerDynamicPropertySheetExtension* self, struct seaqt_string propertyName);

bool QDesignerDynamicPropertySheetExtension_virtualbase_dynamicPropertiesAllowed(const VirtualQDesignerDynamicPropertySheetExtension* self);
int QDesignerDynamicPropertySheetExtension_virtualbase_addDynamicProperty(VirtualQDesignerDynamicPropertySheetExtension* self, struct seaqt_string propertyName, QVariant* value);
bool QDesignerDynamicPropertySheetExtension_virtualbase_removeDynamicProperty(VirtualQDesignerDynamicPropertySheetExtension* self, int index);
bool QDesignerDynamicPropertySheetExtension_virtualbase_isDynamicProperty(const VirtualQDesignerDynamicPropertySheetExtension* self, int index);
bool QDesignerDynamicPropertySheetExtension_virtualbase_canAddDynamicProperty(const VirtualQDesignerDynamicPropertySheetExtension* self, struct seaqt_string propertyName);

void QDesignerDynamicPropertySheetExtension_delete(QDesignerDynamicPropertySheetExtension* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
