#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTSETTINGS_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTSETTINGS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDesignerSettingsInterface;
class QVariant;
#else
typedef struct QDesignerSettingsInterface QDesignerSettingsInterface;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQDesignerSettingsInterface VirtualQDesignerSettingsInterface;
typedef struct QDesignerSettingsInterface_VTable{
	void (*destructor)(VirtualQDesignerSettingsInterface* self);
	void (*beginGroup)(VirtualQDesignerSettingsInterface* self, struct seaqt_string prefix);
	void (*endGroup)(VirtualQDesignerSettingsInterface* self);
	bool (*contains)(const VirtualQDesignerSettingsInterface* self, struct seaqt_string key);
	void (*setValue)(VirtualQDesignerSettingsInterface* self, struct seaqt_string key, QVariant* value);
	QVariant* (*value)(const VirtualQDesignerSettingsInterface* self, struct seaqt_string key, QVariant* defaultValue);
	void (*remove)(VirtualQDesignerSettingsInterface* self, struct seaqt_string key);
}QDesignerSettingsInterface_VTable;

void* QDesignerSettingsInterface_vdata(VirtualQDesignerSettingsInterface* self);
VirtualQDesignerSettingsInterface* vdata_QDesignerSettingsInterface(void* vdata);

VirtualQDesignerSettingsInterface* QDesignerSettingsInterface_new(const QDesignerSettingsInterface_VTable* vtbl, size_t vdata);

void QDesignerSettingsInterface_beginGroup(QDesignerSettingsInterface* self, struct seaqt_string prefix);
void QDesignerSettingsInterface_endGroup(QDesignerSettingsInterface* self);
bool QDesignerSettingsInterface_contains(const QDesignerSettingsInterface* self, struct seaqt_string key);
void QDesignerSettingsInterface_setValue(QDesignerSettingsInterface* self, struct seaqt_string key, QVariant* value);
QVariant* QDesignerSettingsInterface_value(const QDesignerSettingsInterface* self, struct seaqt_string key, QVariant* defaultValue);
void QDesignerSettingsInterface_remove(QDesignerSettingsInterface* self, struct seaqt_string key);

void QDesignerSettingsInterface_virtualbase_beginGroup(VirtualQDesignerSettingsInterface* self, struct seaqt_string prefix);
void QDesignerSettingsInterface_virtualbase_endGroup(VirtualQDesignerSettingsInterface* self);
bool QDesignerSettingsInterface_virtualbase_contains(const VirtualQDesignerSettingsInterface* self, struct seaqt_string key);
void QDesignerSettingsInterface_virtualbase_setValue(VirtualQDesignerSettingsInterface* self, struct seaqt_string key, QVariant* value);
QVariant* QDesignerSettingsInterface_virtualbase_value(const VirtualQDesignerSettingsInterface* self, struct seaqt_string key, QVariant* defaultValue);
void QDesignerSettingsInterface_virtualbase_remove(VirtualQDesignerSettingsInterface* self, struct seaqt_string key);

void QDesignerSettingsInterface_delete(QDesignerSettingsInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
