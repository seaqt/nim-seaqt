#pragma once
#ifndef SEAQT_QTUITOOLS_GEN_QUILOADER_H
#define SEAQT_QTUITOOLS_GEN_QUILOADER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAction;
class QActionGroup;
class QChildEvent;
class QDir;
class QEvent;
class QIODevice;
class QLayout;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QUiLoader;
class QWidget;
#else
typedef struct QAction QAction;
typedef struct QActionGroup QActionGroup;
typedef struct QChildEvent QChildEvent;
typedef struct QDir QDir;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QLayout QLayout;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUiLoader QUiLoader;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQUiLoader VirtualQUiLoader;
typedef struct QUiLoader_VTable{
	void (*destructor)(VirtualQUiLoader* self);
	QMetaObject* (*metaObject)(const VirtualQUiLoader* self);
	void* (*metacast)(VirtualQUiLoader* self, const char* param1);
	int (*metacall)(VirtualQUiLoader* self, int param1, int param2, void** param3);
	QWidget* (*createWidget)(VirtualQUiLoader* self, struct seaqt_string className, QWidget* parent, struct seaqt_string name);
	QLayout* (*createLayout)(VirtualQUiLoader* self, struct seaqt_string className, QObject* parent, struct seaqt_string name);
	QActionGroup* (*createActionGroup)(VirtualQUiLoader* self, QObject* parent, struct seaqt_string name);
	QAction* (*createAction)(VirtualQUiLoader* self, QObject* parent, struct seaqt_string name);
	bool (*event)(VirtualQUiLoader* self, QEvent* event);
	bool (*eventFilter)(VirtualQUiLoader* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQUiLoader* self, QTimerEvent* event);
	void (*childEvent)(VirtualQUiLoader* self, QChildEvent* event);
	void (*customEvent)(VirtualQUiLoader* self, QEvent* event);
	void (*connectNotify)(VirtualQUiLoader* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQUiLoader* self, QMetaMethod* signal);
}QUiLoader_VTable;

void* QUiLoader_vdata(VirtualQUiLoader* self);
VirtualQUiLoader* vdata_QUiLoader(void* vdata);

VirtualQUiLoader* QUiLoader_new(const QUiLoader_VTable* vtbl, size_t vdata);
VirtualQUiLoader* QUiLoader_new2(const QUiLoader_VTable* vtbl, size_t vdata, QObject* parent);

void QUiLoader_virtbase(QUiLoader* src, QObject** outptr_QObject);
QMetaObject* QUiLoader_metaObject(const QUiLoader* self);
void* QUiLoader_metacast(QUiLoader* self, const char* param1);
int QUiLoader_metacall(QUiLoader* self, int param1, int param2, void** param3);
struct seaqt_string QUiLoader_tr(const char* s);
struct seaqt_array /* of struct seaqt_string */  QUiLoader_pluginPaths(const QUiLoader* self);
void QUiLoader_clearPluginPaths(QUiLoader* self);
void QUiLoader_addPluginPath(QUiLoader* self, struct seaqt_string path);
QWidget* QUiLoader_load(QUiLoader* self, QIODevice* device);
struct seaqt_array /* of struct seaqt_string */  QUiLoader_availableWidgets(const QUiLoader* self);
struct seaqt_array /* of struct seaqt_string */  QUiLoader_availableLayouts(const QUiLoader* self);
QWidget* QUiLoader_createWidget(QUiLoader* self, struct seaqt_string className, QWidget* parent, struct seaqt_string name);
QLayout* QUiLoader_createLayout(QUiLoader* self, struct seaqt_string className, QObject* parent, struct seaqt_string name);
QActionGroup* QUiLoader_createActionGroup(QUiLoader* self, QObject* parent, struct seaqt_string name);
QAction* QUiLoader_createAction(QUiLoader* self, QObject* parent, struct seaqt_string name);
void QUiLoader_setWorkingDirectory(QUiLoader* self, QDir* dir);
QDir* QUiLoader_workingDirectory(const QUiLoader* self);
void QUiLoader_setLanguageChangeEnabled(QUiLoader* self, bool enabled);
bool QUiLoader_isLanguageChangeEnabled(const QUiLoader* self);
void QUiLoader_setTranslationEnabled(QUiLoader* self, bool enabled);
bool QUiLoader_isTranslationEnabled(const QUiLoader* self);
struct seaqt_string QUiLoader_errorString(const QUiLoader* self);
struct seaqt_string QUiLoader_tr2(const char* s, const char* c);
struct seaqt_string QUiLoader_tr3(const char* s, const char* c, int n);
QWidget* QUiLoader_load2(QUiLoader* self, QIODevice* device, QWidget* parentWidget);

QMetaObject* QUiLoader_virtualbase_metaObject(const VirtualQUiLoader* self);
void* QUiLoader_virtualbase_metacast(VirtualQUiLoader* self, const char* param1);
int QUiLoader_virtualbase_metacall(VirtualQUiLoader* self, int param1, int param2, void** param3);
QWidget* QUiLoader_virtualbase_createWidget(VirtualQUiLoader* self, struct seaqt_string className, QWidget* parent, struct seaqt_string name);
QLayout* QUiLoader_virtualbase_createLayout(VirtualQUiLoader* self, struct seaqt_string className, QObject* parent, struct seaqt_string name);
QActionGroup* QUiLoader_virtualbase_createActionGroup(VirtualQUiLoader* self, QObject* parent, struct seaqt_string name);
QAction* QUiLoader_virtualbase_createAction(VirtualQUiLoader* self, QObject* parent, struct seaqt_string name);
bool QUiLoader_virtualbase_event(VirtualQUiLoader* self, QEvent* event);
bool QUiLoader_virtualbase_eventFilter(VirtualQUiLoader* self, QObject* watched, QEvent* event);
void QUiLoader_virtualbase_timerEvent(VirtualQUiLoader* self, QTimerEvent* event);
void QUiLoader_virtualbase_childEvent(VirtualQUiLoader* self, QChildEvent* event);
void QUiLoader_virtualbase_customEvent(VirtualQUiLoader* self, QEvent* event);
void QUiLoader_virtualbase_connectNotify(VirtualQUiLoader* self, QMetaMethod* signal);
void QUiLoader_virtualbase_disconnectNotify(VirtualQUiLoader* self, QMetaMethod* signal);

QObject* QUiLoader_protectedbase_sender(const VirtualQUiLoader* self);
int QUiLoader_protectedbase_senderSignalIndex(const VirtualQUiLoader* self);
int QUiLoader_protectedbase_receivers(const VirtualQUiLoader* self, const char* signal);
bool QUiLoader_protectedbase_isSignalConnected(const VirtualQUiLoader* self, QMetaMethod* signal);

const QMetaObject* QUiLoader_staticMetaObject();
void QUiLoader_delete(QUiLoader* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
