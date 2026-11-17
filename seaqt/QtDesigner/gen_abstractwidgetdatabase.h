#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_ABSTRACTWIDGETDATABASE_H
#define SEAQT_QTDESIGNER_GEN_ABSTRACTWIDGETDATABASE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QDesignerWidgetDataBaseInterface;
class QDesignerWidgetDataBaseItemInterface;
class QEvent;
class QIcon;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QDesignerWidgetDataBaseInterface QDesignerWidgetDataBaseInterface;
typedef struct QDesignerWidgetDataBaseItemInterface QDesignerWidgetDataBaseItemInterface;
typedef struct QEvent QEvent;
typedef struct QIcon QIcon;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQDesignerWidgetDataBaseItemInterface VirtualQDesignerWidgetDataBaseItemInterface;
typedef struct QDesignerWidgetDataBaseItemInterface_VTable{
	void (*destructor)(VirtualQDesignerWidgetDataBaseItemInterface* self);
	struct seaqt_string (*name)(const VirtualQDesignerWidgetDataBaseItemInterface* self);
	void (*setName)(VirtualQDesignerWidgetDataBaseItemInterface* self, struct seaqt_string name);
	struct seaqt_string (*group)(const VirtualQDesignerWidgetDataBaseItemInterface* self);
	void (*setGroup)(VirtualQDesignerWidgetDataBaseItemInterface* self, struct seaqt_string group);
	struct seaqt_string (*toolTip)(const VirtualQDesignerWidgetDataBaseItemInterface* self);
	void (*setToolTip)(VirtualQDesignerWidgetDataBaseItemInterface* self, struct seaqt_string toolTip);
	struct seaqt_string (*whatsThis)(const VirtualQDesignerWidgetDataBaseItemInterface* self);
	void (*setWhatsThis)(VirtualQDesignerWidgetDataBaseItemInterface* self, struct seaqt_string whatsThis);
	struct seaqt_string (*includeFile)(const VirtualQDesignerWidgetDataBaseItemInterface* self);
	void (*setIncludeFile)(VirtualQDesignerWidgetDataBaseItemInterface* self, struct seaqt_string includeFile);
	QIcon* (*icon)(const VirtualQDesignerWidgetDataBaseItemInterface* self);
	void (*setIcon)(VirtualQDesignerWidgetDataBaseItemInterface* self, QIcon* icon);
	bool (*isCompat)(const VirtualQDesignerWidgetDataBaseItemInterface* self);
	void (*setCompat)(VirtualQDesignerWidgetDataBaseItemInterface* self, bool compat);
	bool (*isContainer)(const VirtualQDesignerWidgetDataBaseItemInterface* self);
	void (*setContainer)(VirtualQDesignerWidgetDataBaseItemInterface* self, bool container);
	bool (*isCustom)(const VirtualQDesignerWidgetDataBaseItemInterface* self);
	void (*setCustom)(VirtualQDesignerWidgetDataBaseItemInterface* self, bool custom);
	struct seaqt_string (*pluginPath)(const VirtualQDesignerWidgetDataBaseItemInterface* self);
	void (*setPluginPath)(VirtualQDesignerWidgetDataBaseItemInterface* self, struct seaqt_string path);
	bool (*isPromoted)(const VirtualQDesignerWidgetDataBaseItemInterface* self);
	void (*setPromoted)(VirtualQDesignerWidgetDataBaseItemInterface* self, bool b);
	struct seaqt_string (*extends)(const VirtualQDesignerWidgetDataBaseItemInterface* self);
	void (*setExtends)(VirtualQDesignerWidgetDataBaseItemInterface* self, struct seaqt_string s);
	void (*setDefaultPropertyValues)(VirtualQDesignerWidgetDataBaseItemInterface* self, struct seaqt_array /* of QVariant* */  list);
	struct seaqt_array /* of QVariant* */  (*defaultPropertyValues)(const VirtualQDesignerWidgetDataBaseItemInterface* self);
}QDesignerWidgetDataBaseItemInterface_VTable;

void* QDesignerWidgetDataBaseItemInterface_vdata(VirtualQDesignerWidgetDataBaseItemInterface* self);
VirtualQDesignerWidgetDataBaseItemInterface* vdata_QDesignerWidgetDataBaseItemInterface(void* vdata);

VirtualQDesignerWidgetDataBaseItemInterface* QDesignerWidgetDataBaseItemInterface_new(const QDesignerWidgetDataBaseItemInterface_VTable* vtbl, size_t vdata);

struct seaqt_string QDesignerWidgetDataBaseItemInterface_name(const QDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_setName(QDesignerWidgetDataBaseItemInterface* self, struct seaqt_string name);
struct seaqt_string QDesignerWidgetDataBaseItemInterface_group(const QDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_setGroup(QDesignerWidgetDataBaseItemInterface* self, struct seaqt_string group);
struct seaqt_string QDesignerWidgetDataBaseItemInterface_toolTip(const QDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_setToolTip(QDesignerWidgetDataBaseItemInterface* self, struct seaqt_string toolTip);
struct seaqt_string QDesignerWidgetDataBaseItemInterface_whatsThis(const QDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_setWhatsThis(QDesignerWidgetDataBaseItemInterface* self, struct seaqt_string whatsThis);
struct seaqt_string QDesignerWidgetDataBaseItemInterface_includeFile(const QDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_setIncludeFile(QDesignerWidgetDataBaseItemInterface* self, struct seaqt_string includeFile);
QIcon* QDesignerWidgetDataBaseItemInterface_icon(const QDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_setIcon(QDesignerWidgetDataBaseItemInterface* self, QIcon* icon);
bool QDesignerWidgetDataBaseItemInterface_isCompat(const QDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_setCompat(QDesignerWidgetDataBaseItemInterface* self, bool compat);
bool QDesignerWidgetDataBaseItemInterface_isContainer(const QDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_setContainer(QDesignerWidgetDataBaseItemInterface* self, bool container);
bool QDesignerWidgetDataBaseItemInterface_isCustom(const QDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_setCustom(QDesignerWidgetDataBaseItemInterface* self, bool custom);
struct seaqt_string QDesignerWidgetDataBaseItemInterface_pluginPath(const QDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_setPluginPath(QDesignerWidgetDataBaseItemInterface* self, struct seaqt_string path);
bool QDesignerWidgetDataBaseItemInterface_isPromoted(const QDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_setPromoted(QDesignerWidgetDataBaseItemInterface* self, bool b);
struct seaqt_string QDesignerWidgetDataBaseItemInterface_extends(const QDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_setExtends(QDesignerWidgetDataBaseItemInterface* self, struct seaqt_string s);
void QDesignerWidgetDataBaseItemInterface_setDefaultPropertyValues(QDesignerWidgetDataBaseItemInterface* self, struct seaqt_array /* of QVariant* */  list);
struct seaqt_array /* of QVariant* */  QDesignerWidgetDataBaseItemInterface_defaultPropertyValues(const QDesignerWidgetDataBaseItemInterface* self);

struct seaqt_string QDesignerWidgetDataBaseItemInterface_virtualbase_name(const VirtualQDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_virtualbase_setName(VirtualQDesignerWidgetDataBaseItemInterface* self, struct seaqt_string name);
struct seaqt_string QDesignerWidgetDataBaseItemInterface_virtualbase_group(const VirtualQDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_virtualbase_setGroup(VirtualQDesignerWidgetDataBaseItemInterface* self, struct seaqt_string group);
struct seaqt_string QDesignerWidgetDataBaseItemInterface_virtualbase_toolTip(const VirtualQDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_virtualbase_setToolTip(VirtualQDesignerWidgetDataBaseItemInterface* self, struct seaqt_string toolTip);
struct seaqt_string QDesignerWidgetDataBaseItemInterface_virtualbase_whatsThis(const VirtualQDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_virtualbase_setWhatsThis(VirtualQDesignerWidgetDataBaseItemInterface* self, struct seaqt_string whatsThis);
struct seaqt_string QDesignerWidgetDataBaseItemInterface_virtualbase_includeFile(const VirtualQDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_virtualbase_setIncludeFile(VirtualQDesignerWidgetDataBaseItemInterface* self, struct seaqt_string includeFile);
QIcon* QDesignerWidgetDataBaseItemInterface_virtualbase_icon(const VirtualQDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_virtualbase_setIcon(VirtualQDesignerWidgetDataBaseItemInterface* self, QIcon* icon);
bool QDesignerWidgetDataBaseItemInterface_virtualbase_isCompat(const VirtualQDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_virtualbase_setCompat(VirtualQDesignerWidgetDataBaseItemInterface* self, bool compat);
bool QDesignerWidgetDataBaseItemInterface_virtualbase_isContainer(const VirtualQDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_virtualbase_setContainer(VirtualQDesignerWidgetDataBaseItemInterface* self, bool container);
bool QDesignerWidgetDataBaseItemInterface_virtualbase_isCustom(const VirtualQDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_virtualbase_setCustom(VirtualQDesignerWidgetDataBaseItemInterface* self, bool custom);
struct seaqt_string QDesignerWidgetDataBaseItemInterface_virtualbase_pluginPath(const VirtualQDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_virtualbase_setPluginPath(VirtualQDesignerWidgetDataBaseItemInterface* self, struct seaqt_string path);
bool QDesignerWidgetDataBaseItemInterface_virtualbase_isPromoted(const VirtualQDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_virtualbase_setPromoted(VirtualQDesignerWidgetDataBaseItemInterface* self, bool b);
struct seaqt_string QDesignerWidgetDataBaseItemInterface_virtualbase_extends(const VirtualQDesignerWidgetDataBaseItemInterface* self);
void QDesignerWidgetDataBaseItemInterface_virtualbase_setExtends(VirtualQDesignerWidgetDataBaseItemInterface* self, struct seaqt_string s);
void QDesignerWidgetDataBaseItemInterface_virtualbase_setDefaultPropertyValues(VirtualQDesignerWidgetDataBaseItemInterface* self, struct seaqt_array /* of QVariant* */  list);
struct seaqt_array /* of QVariant* */  QDesignerWidgetDataBaseItemInterface_virtualbase_defaultPropertyValues(const VirtualQDesignerWidgetDataBaseItemInterface* self);

void QDesignerWidgetDataBaseItemInterface_delete(QDesignerWidgetDataBaseItemInterface* self);

typedef struct VirtualQDesignerWidgetDataBaseInterface VirtualQDesignerWidgetDataBaseInterface;
typedef struct QDesignerWidgetDataBaseInterface_VTable{
	void (*destructor)(VirtualQDesignerWidgetDataBaseInterface* self);
	QMetaObject* (*metaObject)(const VirtualQDesignerWidgetDataBaseInterface* self);
	void* (*metacast)(VirtualQDesignerWidgetDataBaseInterface* self, const char* param1);
	int (*metacall)(VirtualQDesignerWidgetDataBaseInterface* self, int param1, int param2, void** param3);
	int (*count)(const VirtualQDesignerWidgetDataBaseInterface* self);
	QDesignerWidgetDataBaseItemInterface* (*item)(const VirtualQDesignerWidgetDataBaseInterface* self, int index);
	int (*indexOf)(const VirtualQDesignerWidgetDataBaseInterface* self, QDesignerWidgetDataBaseItemInterface* item);
	void (*insert)(VirtualQDesignerWidgetDataBaseInterface* self, int index, QDesignerWidgetDataBaseItemInterface* item);
	void (*append)(VirtualQDesignerWidgetDataBaseInterface* self, QDesignerWidgetDataBaseItemInterface* item);
	int (*indexOfObject)(const VirtualQDesignerWidgetDataBaseInterface* self, QObject* object, bool resolveName);
	int (*indexOfClassName)(const VirtualQDesignerWidgetDataBaseInterface* self, struct seaqt_string className, bool resolveName);
	bool (*event)(VirtualQDesignerWidgetDataBaseInterface* self, QEvent* event);
	bool (*eventFilter)(VirtualQDesignerWidgetDataBaseInterface* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQDesignerWidgetDataBaseInterface* self, QTimerEvent* event);
	void (*childEvent)(VirtualQDesignerWidgetDataBaseInterface* self, QChildEvent* event);
	void (*customEvent)(VirtualQDesignerWidgetDataBaseInterface* self, QEvent* event);
	void (*connectNotify)(VirtualQDesignerWidgetDataBaseInterface* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDesignerWidgetDataBaseInterface* self, QMetaMethod* signal);
}QDesignerWidgetDataBaseInterface_VTable;

void* QDesignerWidgetDataBaseInterface_vdata(VirtualQDesignerWidgetDataBaseInterface* self);
VirtualQDesignerWidgetDataBaseInterface* vdata_QDesignerWidgetDataBaseInterface(void* vdata);

VirtualQDesignerWidgetDataBaseInterface* QDesignerWidgetDataBaseInterface_new(const QDesignerWidgetDataBaseInterface_VTable* vtbl, size_t vdata);
VirtualQDesignerWidgetDataBaseInterface* QDesignerWidgetDataBaseInterface_new_parent(const QDesignerWidgetDataBaseInterface_VTable* vtbl, size_t vdata, QObject* parent);

void QDesignerWidgetDataBaseInterface_virtbase(QDesignerWidgetDataBaseInterface* src, QObject** outptr_QObject);
QMetaObject* QDesignerWidgetDataBaseInterface_metaObject(const QDesignerWidgetDataBaseInterface* self);
void* QDesignerWidgetDataBaseInterface_metacast(QDesignerWidgetDataBaseInterface* self, const char* param1);
int QDesignerWidgetDataBaseInterface_metacall(QDesignerWidgetDataBaseInterface* self, int param1, int param2, void** param3);
struct seaqt_string QDesignerWidgetDataBaseInterface_tr_s(const char* s);
int QDesignerWidgetDataBaseInterface_count(const QDesignerWidgetDataBaseInterface* self);
QDesignerWidgetDataBaseItemInterface* QDesignerWidgetDataBaseInterface_item(const QDesignerWidgetDataBaseInterface* self, int index);
int QDesignerWidgetDataBaseInterface_indexOf(const QDesignerWidgetDataBaseInterface* self, QDesignerWidgetDataBaseItemInterface* item);
void QDesignerWidgetDataBaseInterface_insert(QDesignerWidgetDataBaseInterface* self, int index, QDesignerWidgetDataBaseItemInterface* item);
void QDesignerWidgetDataBaseInterface_append(QDesignerWidgetDataBaseInterface* self, QDesignerWidgetDataBaseItemInterface* item);
int QDesignerWidgetDataBaseInterface_indexOfObject(const QDesignerWidgetDataBaseInterface* self, QObject* object, bool resolveName);
int QDesignerWidgetDataBaseInterface_indexOfClassName(const QDesignerWidgetDataBaseInterface* self, struct seaqt_string className, bool resolveName);
bool QDesignerWidgetDataBaseInterface_isContainer_object(const QDesignerWidgetDataBaseInterface* self, QObject* object);
bool QDesignerWidgetDataBaseInterface_isCustom_object(const QDesignerWidgetDataBaseInterface* self, QObject* object);
void QDesignerWidgetDataBaseInterface_changed(QDesignerWidgetDataBaseInterface* self);
void QDesignerWidgetDataBaseInterface_connect_changed(QDesignerWidgetDataBaseInterface* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QDesignerWidgetDataBaseInterface_tr_s_c(const char* s, const char* c);
struct seaqt_string QDesignerWidgetDataBaseInterface_tr_s_c_n(const char* s, const char* c, int n);
bool QDesignerWidgetDataBaseInterface_isContainer_object_resolveName(const QDesignerWidgetDataBaseInterface* self, QObject* object, bool resolveName);
bool QDesignerWidgetDataBaseInterface_isCustom_object_resolveName(const QDesignerWidgetDataBaseInterface* self, QObject* object, bool resolveName);

QMetaObject* QDesignerWidgetDataBaseInterface_virtualbase_metaObject(const VirtualQDesignerWidgetDataBaseInterface* self);
void* QDesignerWidgetDataBaseInterface_virtualbase_metacast(VirtualQDesignerWidgetDataBaseInterface* self, const char* param1);
int QDesignerWidgetDataBaseInterface_virtualbase_metacall(VirtualQDesignerWidgetDataBaseInterface* self, int param1, int param2, void** param3);
int QDesignerWidgetDataBaseInterface_virtualbase_count(const VirtualQDesignerWidgetDataBaseInterface* self);
QDesignerWidgetDataBaseItemInterface* QDesignerWidgetDataBaseInterface_virtualbase_item(const VirtualQDesignerWidgetDataBaseInterface* self, int index);
int QDesignerWidgetDataBaseInterface_virtualbase_indexOf(const VirtualQDesignerWidgetDataBaseInterface* self, QDesignerWidgetDataBaseItemInterface* item);
void QDesignerWidgetDataBaseInterface_virtualbase_insert(VirtualQDesignerWidgetDataBaseInterface* self, int index, QDesignerWidgetDataBaseItemInterface* item);
void QDesignerWidgetDataBaseInterface_virtualbase_append(VirtualQDesignerWidgetDataBaseInterface* self, QDesignerWidgetDataBaseItemInterface* item);
int QDesignerWidgetDataBaseInterface_virtualbase_indexOfObject(const VirtualQDesignerWidgetDataBaseInterface* self, QObject* object, bool resolveName);
int QDesignerWidgetDataBaseInterface_virtualbase_indexOfClassName(const VirtualQDesignerWidgetDataBaseInterface* self, struct seaqt_string className, bool resolveName);
bool QDesignerWidgetDataBaseInterface_virtualbase_event(VirtualQDesignerWidgetDataBaseInterface* self, QEvent* event);
bool QDesignerWidgetDataBaseInterface_virtualbase_eventFilter(VirtualQDesignerWidgetDataBaseInterface* self, QObject* watched, QEvent* event);
void QDesignerWidgetDataBaseInterface_virtualbase_timerEvent(VirtualQDesignerWidgetDataBaseInterface* self, QTimerEvent* event);
void QDesignerWidgetDataBaseInterface_virtualbase_childEvent(VirtualQDesignerWidgetDataBaseInterface* self, QChildEvent* event);
void QDesignerWidgetDataBaseInterface_virtualbase_customEvent(VirtualQDesignerWidgetDataBaseInterface* self, QEvent* event);
void QDesignerWidgetDataBaseInterface_virtualbase_connectNotify(VirtualQDesignerWidgetDataBaseInterface* self, QMetaMethod* signal);
void QDesignerWidgetDataBaseInterface_virtualbase_disconnectNotify(VirtualQDesignerWidgetDataBaseInterface* self, QMetaMethod* signal);

QObject* QDesignerWidgetDataBaseInterface_protectedbase_sender(const VirtualQDesignerWidgetDataBaseInterface* self);
int QDesignerWidgetDataBaseInterface_protectedbase_senderSignalIndex(const VirtualQDesignerWidgetDataBaseInterface* self);
int QDesignerWidgetDataBaseInterface_protectedbase_receivers(const VirtualQDesignerWidgetDataBaseInterface* self, const char* signal);
bool QDesignerWidgetDataBaseInterface_protectedbase_isSignalConnected(const VirtualQDesignerWidgetDataBaseInterface* self, QMetaMethod* signal);

const QMetaObject* QDesignerWidgetDataBaseInterface_staticMetaObject();
void QDesignerWidgetDataBaseInterface_delete(QDesignerWidgetDataBaseInterface* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
