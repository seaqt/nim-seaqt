#pragma once
#ifndef SEAQT_QTWEBKIT_GEN_QWEBPLUGINFACTORY_H
#define SEAQT_QTWEBKIT_GEN_QWEBPLUGINFACTORY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QUrl;
class QWebPluginFactory;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QWebPluginFactory__ExtensionOption)
typedef QWebPluginFactory::ExtensionOption QWebPluginFactory__ExtensionOption;
#else
class QWebPluginFactory__ExtensionOption;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QWebPluginFactory__ExtensionReturn)
typedef QWebPluginFactory::ExtensionReturn QWebPluginFactory__ExtensionReturn;
#else
class QWebPluginFactory__ExtensionReturn;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QWebPluginFactory__MimeType)
typedef QWebPluginFactory::MimeType QWebPluginFactory__MimeType;
#else
class QWebPluginFactory__MimeType;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QWebPluginFactory__Plugin)
typedef QWebPluginFactory::Plugin QWebPluginFactory__Plugin;
#else
class QWebPluginFactory__Plugin;
#endif
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QWebPluginFactory QWebPluginFactory;
typedef struct QWebPluginFactory__ExtensionOption QWebPluginFactory__ExtensionOption;
typedef struct QWebPluginFactory__ExtensionReturn QWebPluginFactory__ExtensionReturn;
typedef struct QWebPluginFactory__MimeType QWebPluginFactory__MimeType;
typedef struct QWebPluginFactory__Plugin QWebPluginFactory__Plugin;
#endif

typedef struct VirtualQWebPluginFactory VirtualQWebPluginFactory;
typedef struct QWebPluginFactory_VTable{
	void (*destructor)(VirtualQWebPluginFactory* self);
	QMetaObject* (*metaObject)(const VirtualQWebPluginFactory* self);
	void* (*metacast)(VirtualQWebPluginFactory* self, const char* param1);
	int (*metacall)(VirtualQWebPluginFactory* self, int param1, int param2, void** param3);
	struct miqt_array /* of QWebPluginFactory__Plugin* */  (*plugins)(const VirtualQWebPluginFactory* self);
	void (*refreshPlugins)(VirtualQWebPluginFactory* self);
	QObject* (*create)(const VirtualQWebPluginFactory* self, struct miqt_string mimeType, QUrl* param2, struct miqt_array /* of struct miqt_string */  argumentNames, struct miqt_array /* of struct miqt_string */  argumentValues);
	bool (*extension)(VirtualQWebPluginFactory* self, int extension, QWebPluginFactory__ExtensionOption* option, QWebPluginFactory__ExtensionReturn* output);
	bool (*supportsExtension)(const VirtualQWebPluginFactory* self, int extension);
	bool (*event)(VirtualQWebPluginFactory* self, QEvent* event);
	bool (*eventFilter)(VirtualQWebPluginFactory* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQWebPluginFactory* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWebPluginFactory* self, QChildEvent* event);
	void (*customEvent)(VirtualQWebPluginFactory* self, QEvent* event);
	void (*connectNotify)(VirtualQWebPluginFactory* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWebPluginFactory* self, QMetaMethod* signal);
}QWebPluginFactory_VTable;

const QWebPluginFactory_VTable* QWebPluginFactory_vtbl(const VirtualQWebPluginFactory* self);
void* QWebPluginFactory_vdata(const VirtualQWebPluginFactory* self);
void QWebPluginFactory_setVdata(VirtualQWebPluginFactory* self, void* vdata);

VirtualQWebPluginFactory* QWebPluginFactory_new(const QWebPluginFactory_VTable* vtbl, void* vdata);
VirtualQWebPluginFactory* QWebPluginFactory_new2(const QWebPluginFactory_VTable* vtbl, void* vdata, QObject* parent);

void QWebPluginFactory_virtbase(QWebPluginFactory* src, QObject** outptr_QObject);
QMetaObject* QWebPluginFactory_metaObject(const QWebPluginFactory* self);
void* QWebPluginFactory_metacast(QWebPluginFactory* self, const char* param1);
int QWebPluginFactory_metacall(QWebPluginFactory* self, int param1, int param2, void** param3);
struct miqt_string QWebPluginFactory_tr(const char* s);
struct miqt_string QWebPluginFactory_trUtf8(const char* s);
struct miqt_array /* of QWebPluginFactory__Plugin* */  QWebPluginFactory_plugins(const QWebPluginFactory* self);
void QWebPluginFactory_refreshPlugins(QWebPluginFactory* self);
QObject* QWebPluginFactory_create(const QWebPluginFactory* self, struct miqt_string mimeType, QUrl* param2, struct miqt_array /* of struct miqt_string */  argumentNames, struct miqt_array /* of struct miqt_string */  argumentValues);
bool QWebPluginFactory_extension(QWebPluginFactory* self, int extension, QWebPluginFactory__ExtensionOption* option, QWebPluginFactory__ExtensionReturn* output);
bool QWebPluginFactory_supportsExtension(const QWebPluginFactory* self, int extension);
struct miqt_string QWebPluginFactory_tr2(const char* s, const char* c);
struct miqt_string QWebPluginFactory_tr3(const char* s, const char* c, int n);
struct miqt_string QWebPluginFactory_trUtf82(const char* s, const char* c);
struct miqt_string QWebPluginFactory_trUtf83(const char* s, const char* c, int n);

QMetaObject* QWebPluginFactory_virtualbase_metaObject(const VirtualQWebPluginFactory* self);
void* QWebPluginFactory_virtualbase_metacast(VirtualQWebPluginFactory* self, const char* param1);
int QWebPluginFactory_virtualbase_metacall(VirtualQWebPluginFactory* self, int param1, int param2, void** param3);
struct miqt_array /* of QWebPluginFactory__Plugin* */  QWebPluginFactory_virtualbase_plugins(const VirtualQWebPluginFactory* self);
void QWebPluginFactory_virtualbase_refreshPlugins(VirtualQWebPluginFactory* self);
QObject* QWebPluginFactory_virtualbase_create(const VirtualQWebPluginFactory* self, struct miqt_string mimeType, QUrl* param2, struct miqt_array /* of struct miqt_string */  argumentNames, struct miqt_array /* of struct miqt_string */  argumentValues);
bool QWebPluginFactory_virtualbase_extension(VirtualQWebPluginFactory* self, int extension, QWebPluginFactory__ExtensionOption* option, QWebPluginFactory__ExtensionReturn* output);
bool QWebPluginFactory_virtualbase_supportsExtension(const VirtualQWebPluginFactory* self, int extension);
bool QWebPluginFactory_virtualbase_event(VirtualQWebPluginFactory* self, QEvent* event);
bool QWebPluginFactory_virtualbase_eventFilter(VirtualQWebPluginFactory* self, QObject* watched, QEvent* event);
void QWebPluginFactory_virtualbase_timerEvent(VirtualQWebPluginFactory* self, QTimerEvent* event);
void QWebPluginFactory_virtualbase_childEvent(VirtualQWebPluginFactory* self, QChildEvent* event);
void QWebPluginFactory_virtualbase_customEvent(VirtualQWebPluginFactory* self, QEvent* event);
void QWebPluginFactory_virtualbase_connectNotify(VirtualQWebPluginFactory* self, QMetaMethod* signal);
void QWebPluginFactory_virtualbase_disconnectNotify(VirtualQWebPluginFactory* self, QMetaMethod* signal);

QObject* QWebPluginFactory_protectedbase_sender(const VirtualQWebPluginFactory* self);
int QWebPluginFactory_protectedbase_senderSignalIndex(const VirtualQWebPluginFactory* self);
int QWebPluginFactory_protectedbase_receivers(const VirtualQWebPluginFactory* self, const char* signal);
bool QWebPluginFactory_protectedbase_isSignalConnected(const VirtualQWebPluginFactory* self, QMetaMethod* signal);

const QMetaObject* QWebPluginFactory_staticMetaObject();
void QWebPluginFactory_delete(QWebPluginFactory* self);

QWebPluginFactory__MimeType* QWebPluginFactory__MimeType_new(QWebPluginFactory__MimeType* param1);

bool QWebPluginFactory__MimeType_operatorEqual(const QWebPluginFactory__MimeType* self, QWebPluginFactory__MimeType* other);
bool QWebPluginFactory__MimeType_operatorNotEqual(const QWebPluginFactory__MimeType* self, QWebPluginFactory__MimeType* other);
void QWebPluginFactory__MimeType_operatorAssign(QWebPluginFactory__MimeType* self, QWebPluginFactory__MimeType* param1);

void QWebPluginFactory__MimeType_delete(QWebPluginFactory__MimeType* self);

QWebPluginFactory__Plugin* QWebPluginFactory__Plugin_new(QWebPluginFactory__Plugin* param1);

void QWebPluginFactory__Plugin_operatorAssign(QWebPluginFactory__Plugin* self, QWebPluginFactory__Plugin* param1);

void QWebPluginFactory__Plugin_delete(QWebPluginFactory__Plugin* self);

void QWebPluginFactory__ExtensionOption_delete(QWebPluginFactory__ExtensionOption* self);

void QWebPluginFactory__ExtensionReturn_delete(QWebPluginFactory__ExtensionReturn* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
