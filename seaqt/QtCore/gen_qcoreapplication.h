#pragma once
#ifndef SEAQT_QTCORE_GEN_QCOREAPPLICATION_H
#define SEAQT_QTCORE_GEN_QCOREAPPLICATION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

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

struct QCoreApplication_VTable {
	void (*destructor)(struct QCoreApplication_VTable* vtbl, QCoreApplication* self);
	QMetaObject* (*metaObject)(struct QCoreApplication_VTable* vtbl, const QCoreApplication* self);
	void* (*metacast)(struct QCoreApplication_VTable* vtbl, QCoreApplication* self, const char* param1);
	int (*metacall)(struct QCoreApplication_VTable* vtbl, QCoreApplication* self, int param1, int param2, void** param3);
	bool (*notify)(struct QCoreApplication_VTable* vtbl, QCoreApplication* self, QObject* param1, QEvent* param2);
	bool (*event)(struct QCoreApplication_VTable* vtbl, QCoreApplication* self, QEvent* param1);
	bool (*eventFilter)(struct QCoreApplication_VTable* vtbl, QCoreApplication* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QCoreApplication_VTable* vtbl, QCoreApplication* self, QTimerEvent* event);
	void (*childEvent)(struct QCoreApplication_VTable* vtbl, QCoreApplication* self, QChildEvent* event);
	void (*customEvent)(struct QCoreApplication_VTable* vtbl, QCoreApplication* self, QEvent* event);
	void (*connectNotify)(struct QCoreApplication_VTable* vtbl, QCoreApplication* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QCoreApplication_VTable* vtbl, QCoreApplication* self, QMetaMethod* signal);
};
QCoreApplication* QCoreApplication_new(struct QCoreApplication_VTable* vtbl, int* argc, char** argv);
QCoreApplication* QCoreApplication_new2(struct QCoreApplication_VTable* vtbl, int* argc, char** argv, int param3);
void QCoreApplication_virtbase(QCoreApplication* src, QObject** outptr_QObject);
QMetaObject* QCoreApplication_metaObject(const QCoreApplication* self);
void* QCoreApplication_metacast(QCoreApplication* self, const char* param1);
int QCoreApplication_metacall(QCoreApplication* self, int param1, int param2, void** param3);
struct miqt_string QCoreApplication_tr(const char* s);
struct miqt_array /* of struct miqt_string */  QCoreApplication_arguments();
void QCoreApplication_setAttribute(int attribute);
bool QCoreApplication_testAttribute(int attribute);
void QCoreApplication_setOrganizationDomain(struct miqt_string orgDomain);
struct miqt_string QCoreApplication_organizationDomain();
void QCoreApplication_setOrganizationName(struct miqt_string orgName);
struct miqt_string QCoreApplication_organizationName();
void QCoreApplication_setApplicationName(struct miqt_string application);
struct miqt_string QCoreApplication_applicationName();
void QCoreApplication_setApplicationVersion(struct miqt_string version);
struct miqt_string QCoreApplication_applicationVersion();
void QCoreApplication_setSetuidAllowed(bool allow);
bool QCoreApplication_isSetuidAllowed();
QCoreApplication* QCoreApplication_instance();
int QCoreApplication_exec();
void QCoreApplication_processEvents();
void QCoreApplication_processEvents2(int flags, int maxtime);
bool QCoreApplication_sendEvent(QObject* receiver, QEvent* event);
void QCoreApplication_postEvent(QObject* receiver, QEvent* event);
void QCoreApplication_sendPostedEvents();
void QCoreApplication_removePostedEvents(QObject* receiver);
QAbstractEventDispatcher* QCoreApplication_eventDispatcher();
void QCoreApplication_setEventDispatcher(QAbstractEventDispatcher* eventDispatcher);
bool QCoreApplication_notify(QCoreApplication* self, QObject* param1, QEvent* param2);
bool QCoreApplication_startingUp();
bool QCoreApplication_closingDown();
struct miqt_string QCoreApplication_applicationDirPath();
struct miqt_string QCoreApplication_applicationFilePath();
long long QCoreApplication_applicationPid();
void QCoreApplication_setLibraryPaths(struct miqt_array /* of struct miqt_string */  libraryPaths);
struct miqt_array /* of struct miqt_string */  QCoreApplication_libraryPaths();
void QCoreApplication_addLibraryPath(struct miqt_string param1);
void QCoreApplication_removeLibraryPath(struct miqt_string param1);
bool QCoreApplication_installTranslator(QTranslator* messageFile);
bool QCoreApplication_removeTranslator(QTranslator* messageFile);
struct miqt_string QCoreApplication_translate(const char* context, const char* key);
void QCoreApplication_installNativeEventFilter(QCoreApplication* self, QAbstractNativeEventFilter* filterObj);
void QCoreApplication_connect_installNativeEventFilter(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t, QAbstractNativeEventFilter*), void (*release)(intptr_t));
void QCoreApplication_removeNativeEventFilter(QCoreApplication* self, QAbstractNativeEventFilter* filterObj);
void QCoreApplication_connect_removeNativeEventFilter(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t, QAbstractNativeEventFilter*), void (*release)(intptr_t));
bool QCoreApplication_isQuitLockEnabled();
void QCoreApplication_setQuitLockEnabled(bool enabled);
void QCoreApplication_quit();
void QCoreApplication_exit();
void QCoreApplication_organizationNameChanged(QCoreApplication* self);
void QCoreApplication_connect_organizationNameChanged(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCoreApplication_organizationDomainChanged(QCoreApplication* self);
void QCoreApplication_connect_organizationDomainChanged(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCoreApplication_applicationNameChanged(QCoreApplication* self);
void QCoreApplication_connect_applicationNameChanged(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCoreApplication_applicationVersionChanged(QCoreApplication* self);
void QCoreApplication_connect_applicationVersionChanged(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
bool QCoreApplication_event(QCoreApplication* self, QEvent* param1);
struct miqt_string QCoreApplication_tr2(const char* s, const char* c);
struct miqt_string QCoreApplication_tr3(const char* s, const char* c, int n);
void QCoreApplication_setAttribute2(int attribute, bool on);
void QCoreApplication_processEvents1(int flags);
void QCoreApplication_postEvent3(QObject* receiver, QEvent* event, int priority);
void QCoreApplication_sendPostedEvents1(QObject* receiver);
void QCoreApplication_sendPostedEvents2(QObject* receiver, int event_type);
void QCoreApplication_removePostedEvents2(QObject* receiver, int eventType);
struct miqt_string QCoreApplication_translate3(const char* context, const char* key, const char* disambiguation);
struct miqt_string QCoreApplication_translate4(const char* context, const char* key, const char* disambiguation, int n);
void QCoreApplication_exit1(int retcode);
QMetaObject* QCoreApplication_virtualbase_metaObject(const void* self);
void* QCoreApplication_virtualbase_metacast(void* self, const char* param1);
int QCoreApplication_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QCoreApplication_virtualbase_notify(void* self, QObject* param1, QEvent* param2);
bool QCoreApplication_virtualbase_event(void* self, QEvent* param1);
bool QCoreApplication_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QCoreApplication_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QCoreApplication_virtualbase_childEvent(void* self, QChildEvent* event);
void QCoreApplication_virtualbase_customEvent(void* self, QEvent* event);
void QCoreApplication_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QCoreApplication_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void* QCoreApplication_protectedbase_resolveInterface(const void* self, const char* name, int revision);
QObject* QCoreApplication_protectedbase_sender(const void* self);
int QCoreApplication_protectedbase_senderSignalIndex(const void* self);
int QCoreApplication_protectedbase_receivers(const void* self, const char* signal);
bool QCoreApplication_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QCoreApplication_staticMetaObject();
void QCoreApplication_delete(QCoreApplication* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
