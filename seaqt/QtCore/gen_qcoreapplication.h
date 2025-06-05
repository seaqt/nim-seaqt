#pragma once
#ifndef SEAQT_QTCORE_GEN_QCOREAPPLICATION_H
#define SEAQT_QTCORE_GEN_QCOREAPPLICATION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractEventDispatcher;
class QAbstractNativeEventFilter;
class QChildEvent;
class QCoreApplication;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QTranslator;
#else
typedef struct QAbstractEventDispatcher QAbstractEventDispatcher;
typedef struct QAbstractNativeEventFilter QAbstractNativeEventFilter;
typedef struct QChildEvent QChildEvent;
typedef struct QCoreApplication QCoreApplication;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTranslator QTranslator;
#endif

typedef struct VirtualQCoreApplication VirtualQCoreApplication;
typedef struct QCoreApplication_VTable{
	void (*destructor)(VirtualQCoreApplication* self);
	QMetaObject* (*metaObject)(const VirtualQCoreApplication* self);
	void* (*metacast)(VirtualQCoreApplication* self, const char* param1);
	int (*metacall)(VirtualQCoreApplication* self, int param1, int param2, void** param3);
	bool (*notify)(VirtualQCoreApplication* self, QObject* param1, QEvent* param2);
	bool (*event)(VirtualQCoreApplication* self, QEvent* param1);
	bool (*eventFilter)(VirtualQCoreApplication* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQCoreApplication* self, QTimerEvent* event);
	void (*childEvent)(VirtualQCoreApplication* self, QChildEvent* event);
	void (*customEvent)(VirtualQCoreApplication* self, QEvent* event);
	void (*connectNotify)(VirtualQCoreApplication* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQCoreApplication* self, QMetaMethod* signal);
}QCoreApplication_VTable;

void* QCoreApplication_vdata(VirtualQCoreApplication* self);
VirtualQCoreApplication* vdata_QCoreApplication(void* vdata);

VirtualQCoreApplication* QCoreApplication_new(const QCoreApplication_VTable* vtbl, size_t vdata, int* argc, char** argv);
VirtualQCoreApplication* QCoreApplication_new2(const QCoreApplication_VTable* vtbl, size_t vdata, int* argc, char** argv, int param3);

void QCoreApplication_virtbase(QCoreApplication* src, QObject** outptr_QObject);
QMetaObject* QCoreApplication_metaObject(const QCoreApplication* self);
void* QCoreApplication_metacast(QCoreApplication* self, const char* param1);
int QCoreApplication_metacall(QCoreApplication* self, int param1, int param2, void** param3);
struct seaqt_string QCoreApplication_tr(const char* s);
struct seaqt_string QCoreApplication_trUtf8(const char* s);
struct seaqt_array /* of struct seaqt_string */  QCoreApplication_arguments();
void QCoreApplication_setAttribute(int attribute);
bool QCoreApplication_testAttribute(int attribute);
void QCoreApplication_setOrganizationDomain(struct seaqt_string orgDomain);
struct seaqt_string QCoreApplication_organizationDomain();
void QCoreApplication_setOrganizationName(struct seaqt_string orgName);
struct seaqt_string QCoreApplication_organizationName();
void QCoreApplication_setApplicationName(struct seaqt_string application);
struct seaqt_string QCoreApplication_applicationName();
void QCoreApplication_setApplicationVersion(struct seaqt_string version);
struct seaqt_string QCoreApplication_applicationVersion();
void QCoreApplication_setSetuidAllowed(bool allow);
bool QCoreApplication_isSetuidAllowed();
QCoreApplication* QCoreApplication_instance();
int QCoreApplication_exec();
void QCoreApplication_processEvents();
void QCoreApplication_processEvents2(int flags, int maxtime);
void QCoreApplication_exit();
bool QCoreApplication_sendEvent(QObject* receiver, QEvent* event);
void QCoreApplication_postEvent(QObject* receiver, QEvent* event);
void QCoreApplication_sendPostedEvents();
void QCoreApplication_removePostedEvents(QObject* receiver);
bool QCoreApplication_hasPendingEvents();
QAbstractEventDispatcher* QCoreApplication_eventDispatcher();
void QCoreApplication_setEventDispatcher(QAbstractEventDispatcher* eventDispatcher);
bool QCoreApplication_notify(QCoreApplication* self, QObject* param1, QEvent* param2);
bool QCoreApplication_startingUp();
bool QCoreApplication_closingDown();
struct seaqt_string QCoreApplication_applicationDirPath();
struct seaqt_string QCoreApplication_applicationFilePath();
long long QCoreApplication_applicationPid();
void QCoreApplication_setLibraryPaths(struct seaqt_array /* of struct seaqt_string */  libraryPaths);
struct seaqt_array /* of struct seaqt_string */  QCoreApplication_libraryPaths();
void QCoreApplication_addLibraryPath(struct seaqt_string param1);
void QCoreApplication_removeLibraryPath(struct seaqt_string param1);
bool QCoreApplication_installTranslator(QTranslator* messageFile);
bool QCoreApplication_removeTranslator(QTranslator* messageFile);
struct seaqt_string QCoreApplication_translate(const char* context, const char* key);
void QCoreApplication_flush();
void QCoreApplication_installNativeEventFilter(QCoreApplication* self, QAbstractNativeEventFilter* filterObj);
void QCoreApplication_removeNativeEventFilter(QCoreApplication* self, QAbstractNativeEventFilter* filterObj);
bool QCoreApplication_isQuitLockEnabled();
void QCoreApplication_setQuitLockEnabled(bool enabled);
void QCoreApplication_quit();
void QCoreApplication_organizationNameChanged(QCoreApplication* self);
void QCoreApplication_connect_organizationNameChanged(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCoreApplication_organizationDomainChanged(QCoreApplication* self);
void QCoreApplication_connect_organizationDomainChanged(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCoreApplication_applicationNameChanged(QCoreApplication* self);
void QCoreApplication_connect_applicationNameChanged(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCoreApplication_applicationVersionChanged(QCoreApplication* self);
void QCoreApplication_connect_applicationVersionChanged(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
bool QCoreApplication_event(QCoreApplication* self, QEvent* param1);
struct seaqt_string QCoreApplication_tr2(const char* s, const char* c);
struct seaqt_string QCoreApplication_tr3(const char* s, const char* c, int n);
struct seaqt_string QCoreApplication_trUtf82(const char* s, const char* c);
struct seaqt_string QCoreApplication_trUtf83(const char* s, const char* c, int n);
void QCoreApplication_setAttribute2(int attribute, bool on);
void QCoreApplication_processEventsWithFlags(int flags);
void QCoreApplication_exitWithRetcode(int retcode);
void QCoreApplication_postEvent2(QObject* receiver, QEvent* event, int priority);
void QCoreApplication_sendPostedEventsWithReceiver(QObject* receiver);
void QCoreApplication_sendPostedEvents2(QObject* receiver, int event_type);
void QCoreApplication_removePostedEvents2(QObject* receiver, int eventType);
struct seaqt_string QCoreApplication_translate2(const char* context, const char* key, const char* disambiguation);
struct seaqt_string QCoreApplication_translate3(const char* context, const char* key, const char* disambiguation, int n);

QMetaObject* QCoreApplication_virtualbase_metaObject(const VirtualQCoreApplication* self);
void* QCoreApplication_virtualbase_metacast(VirtualQCoreApplication* self, const char* param1);
int QCoreApplication_virtualbase_metacall(VirtualQCoreApplication* self, int param1, int param2, void** param3);
bool QCoreApplication_virtualbase_notify(VirtualQCoreApplication* self, QObject* param1, QEvent* param2);
bool QCoreApplication_virtualbase_event(VirtualQCoreApplication* self, QEvent* param1);
bool QCoreApplication_virtualbase_eventFilter(VirtualQCoreApplication* self, QObject* watched, QEvent* event);
void QCoreApplication_virtualbase_timerEvent(VirtualQCoreApplication* self, QTimerEvent* event);
void QCoreApplication_virtualbase_childEvent(VirtualQCoreApplication* self, QChildEvent* event);
void QCoreApplication_virtualbase_customEvent(VirtualQCoreApplication* self, QEvent* event);
void QCoreApplication_virtualbase_connectNotify(VirtualQCoreApplication* self, QMetaMethod* signal);
void QCoreApplication_virtualbase_disconnectNotify(VirtualQCoreApplication* self, QMetaMethod* signal);

QObject* QCoreApplication_protectedbase_sender(const VirtualQCoreApplication* self);
int QCoreApplication_protectedbase_senderSignalIndex(const VirtualQCoreApplication* self);
int QCoreApplication_protectedbase_receivers(const VirtualQCoreApplication* self, const char* signal);
bool QCoreApplication_protectedbase_isSignalConnected(const VirtualQCoreApplication* self, QMetaMethod* signal);

const QMetaObject* QCoreApplication_staticMetaObject();
void QCoreApplication_delete(QCoreApplication* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
