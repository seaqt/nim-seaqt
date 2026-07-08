#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTMETADATABASE_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTMETADATABASE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDesignerMetaDataBaseInterface;
class QDesignerMetaDataBaseItemInterface;
class QMetaMethod;
class QMetaObject;
class QObject;
class QWidget;
#else
typedef struct QDesignerMetaDataBaseInterface QDesignerMetaDataBaseInterface;
typedef struct QDesignerMetaDataBaseItemInterface QDesignerMetaDataBaseItemInterface;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQDesignerMetaDataBaseItemInterface VirtualQDesignerMetaDataBaseItemInterface;
typedef struct QDesignerMetaDataBaseItemInterface_VTable{
	void (*destructor)(VirtualQDesignerMetaDataBaseItemInterface* self);
	struct seaqt_string (*name)(const VirtualQDesignerMetaDataBaseItemInterface* self);
	void (*setName)(VirtualQDesignerMetaDataBaseItemInterface* self, struct seaqt_string name);
	struct seaqt_array /* of QWidget* */  (*tabOrder)(const VirtualQDesignerMetaDataBaseItemInterface* self);
	void (*setTabOrder)(VirtualQDesignerMetaDataBaseItemInterface* self, struct seaqt_array /* of QWidget* */  tabOrder);
	bool (*enabled)(const VirtualQDesignerMetaDataBaseItemInterface* self);
	void (*setEnabled)(VirtualQDesignerMetaDataBaseItemInterface* self, bool b);
}QDesignerMetaDataBaseItemInterface_VTable;

void* QDesignerMetaDataBaseItemInterface_vdata(VirtualQDesignerMetaDataBaseItemInterface* self);
VirtualQDesignerMetaDataBaseItemInterface* vdata_QDesignerMetaDataBaseItemInterface(void* vdata);

VirtualQDesignerMetaDataBaseItemInterface* QDesignerMetaDataBaseItemInterface_new(const QDesignerMetaDataBaseItemInterface_VTable* vtbl, size_t vdata);

struct seaqt_string QDesignerMetaDataBaseItemInterface_name(const QDesignerMetaDataBaseItemInterface* self);
void QDesignerMetaDataBaseItemInterface_setName(QDesignerMetaDataBaseItemInterface* self, struct seaqt_string name);
struct seaqt_array /* of QWidget* */  QDesignerMetaDataBaseItemInterface_tabOrder(const QDesignerMetaDataBaseItemInterface* self);
void QDesignerMetaDataBaseItemInterface_setTabOrder(QDesignerMetaDataBaseItemInterface* self, struct seaqt_array /* of QWidget* */  tabOrder);
bool QDesignerMetaDataBaseItemInterface_enabled(const QDesignerMetaDataBaseItemInterface* self);
void QDesignerMetaDataBaseItemInterface_setEnabled(QDesignerMetaDataBaseItemInterface* self, bool b);

struct seaqt_string QDesignerMetaDataBaseItemInterface_virtualbase_name(const VirtualQDesignerMetaDataBaseItemInterface* self);
void QDesignerMetaDataBaseItemInterface_virtualbase_setName(VirtualQDesignerMetaDataBaseItemInterface* self, struct seaqt_string name);
struct seaqt_array /* of QWidget* */  QDesignerMetaDataBaseItemInterface_virtualbase_tabOrder(const VirtualQDesignerMetaDataBaseItemInterface* self);
void QDesignerMetaDataBaseItemInterface_virtualbase_setTabOrder(VirtualQDesignerMetaDataBaseItemInterface* self, struct seaqt_array /* of QWidget* */  tabOrder);
bool QDesignerMetaDataBaseItemInterface_virtualbase_enabled(const VirtualQDesignerMetaDataBaseItemInterface* self);
void QDesignerMetaDataBaseItemInterface_virtualbase_setEnabled(VirtualQDesignerMetaDataBaseItemInterface* self, bool b);

void QDesignerMetaDataBaseItemInterface_delete(QDesignerMetaDataBaseItemInterface* self);

void QDesignerMetaDataBaseInterface_virtbase(QDesignerMetaDataBaseInterface* src, QObject** outptr_QObject);
QMetaObject* QDesignerMetaDataBaseInterface_metaObject(const QDesignerMetaDataBaseInterface* self);
void* QDesignerMetaDataBaseInterface_metacast(QDesignerMetaDataBaseInterface* self, const char* param1);
int QDesignerMetaDataBaseInterface_metacall(QDesignerMetaDataBaseInterface* self, int param1, int param2, void** param3);
struct seaqt_string QDesignerMetaDataBaseInterface_tr(const char* s);
QDesignerMetaDataBaseItemInterface* QDesignerMetaDataBaseInterface_item(const QDesignerMetaDataBaseInterface* self, QObject* object);
void QDesignerMetaDataBaseInterface_add(QDesignerMetaDataBaseInterface* self, QObject* object);
void QDesignerMetaDataBaseInterface_remove(QDesignerMetaDataBaseInterface* self, QObject* object);
struct seaqt_array /* of QObject* */  QDesignerMetaDataBaseInterface_objects(const QDesignerMetaDataBaseInterface* self);
void QDesignerMetaDataBaseInterface_changed(QDesignerMetaDataBaseInterface* self);
void QDesignerMetaDataBaseInterface_connect_changed(QDesignerMetaDataBaseInterface* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QDesignerMetaDataBaseInterface_tr2(const char* s, const char* c);
struct seaqt_string QDesignerMetaDataBaseInterface_tr3(const char* s, const char* c, int n);

const QMetaObject* QDesignerMetaDataBaseInterface_staticMetaObject();
void QDesignerMetaDataBaseInterface_delete(QDesignerMetaDataBaseInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
