#pragma once
#ifndef SEAQT_QTCORE_GEN_QOBJECT_H
#define SEAQT_QTCORE_GEN_QOBJECT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

// Based on the macro from Qt (LGPL v3), see https://www.qt.io/qt-licensing
// Macro is trivial and used here under fair use
// Usage does not imply derivation
#ifndef QT_VERSION_CHECK
#define QT_VERSION_CHECK(major, minor, patch) ((major<<16)|(minor<<8)|(patch))
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMetaObject__Connection)
typedef QMetaObject::Connection QMetaObject__Connection;
#else
class QMetaObject__Connection;
#endif
class QObject;
class QObjectData;
class QObjectUserData;
class QSignalBlocker;
class QThread;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaObject__Connection QMetaObject__Connection;
typedef struct QObject QObject;
typedef struct QObjectData QObjectData;
typedef struct QObjectUserData QObjectUserData;
typedef struct QSignalBlocker QSignalBlocker;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QObject* QObjectData_q_ptr(const QObjectData* self);
void QObjectData_setQ_ptr(QObjectData* self, QObject* q_ptr);
QObject* QObjectData_parent(const QObjectData* self);
void QObjectData_setParent(QObjectData* self, QObject* parent);
struct seaqt_array /* of QObject* */  QObjectData_children(const QObjectData* self);
void QObjectData_setChildren(QObjectData* self, struct seaqt_array /* of QObject* */  children);
unsigned int QObjectData_isWidget(const QObjectData* self);
void QObjectData_setIsWidget(QObjectData* self, unsigned int isWidget);
unsigned int QObjectData_blockSig(const QObjectData* self);
void QObjectData_setBlockSig(QObjectData* self, unsigned int blockSig);
unsigned int QObjectData_wasDeleted(const QObjectData* self);
void QObjectData_setWasDeleted(QObjectData* self, unsigned int wasDeleted);
unsigned int QObjectData_isDeletingChildren(const QObjectData* self);
void QObjectData_setIsDeletingChildren(QObjectData* self, unsigned int isDeletingChildren);
unsigned int QObjectData_sendChildEvents(const QObjectData* self);
void QObjectData_setSendChildEvents(QObjectData* self, unsigned int sendChildEvents);
unsigned int QObjectData_receiveChildEvents(const QObjectData* self);
void QObjectData_setReceiveChildEvents(QObjectData* self, unsigned int receiveChildEvents);
unsigned int QObjectData_isWindow(const QObjectData* self);
void QObjectData_setIsWindow(QObjectData* self, unsigned int isWindow);
unsigned int QObjectData_deleteLaterCalled(const QObjectData* self);
void QObjectData_setDeleteLaterCalled(QObjectData* self, unsigned int deleteLaterCalled);
unsigned int QObjectData_unused(const QObjectData* self);
void QObjectData_setUnused(QObjectData* self, unsigned int unused);
int QObjectData_postedEvents(const QObjectData* self);
void QObjectData_setPostedEvents(QObjectData* self, int postedEvents);
QMetaObject* QObjectData_dynamicMetaObject(const QObjectData* self);

void QObjectData_delete(QObjectData* self);

typedef struct VirtualQObject VirtualQObject;
typedef struct QObject_VTable{
	void (*destructor)(VirtualQObject* self);
	QMetaObject* (*metaObject)(const VirtualQObject* self);
	void* (*metacast)(VirtualQObject* self, const char* param1);
	int (*metacall)(VirtualQObject* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQObject* self, QEvent* event);
	bool (*eventFilter)(VirtualQObject* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQObject* self, QTimerEvent* event);
	void (*childEvent)(VirtualQObject* self, QChildEvent* event);
	void (*customEvent)(VirtualQObject* self, QEvent* event);
	void (*connectNotify)(VirtualQObject* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQObject* self, QMetaMethod* signal);
}QObject_VTable;

void* QObject_vdata(VirtualQObject* self);
VirtualQObject* vdata_QObject(void* vdata);

VirtualQObject* QObject_new(const QObject_VTable* vtbl, size_t vdata);
VirtualQObject* QObject_new_parent(const QObject_VTable* vtbl, size_t vdata, QObject* parent);

QMetaObject* QObject_metaObject(const QObject* self);
void* QObject_metacast(QObject* self, const char* param1);
int QObject_metacall(QObject* self, int param1, int param2, void** param3);
struct seaqt_string QObject_tr_s(const char* s);
struct seaqt_string QObject_trUtf8_s(const char* s);
bool QObject_event(QObject* self, QEvent* event);
bool QObject_eventFilter(QObject* self, QObject* watched, QEvent* event);
struct seaqt_string QObject_objectName(const QObject* self);
void QObject_setObjectName(QObject* self, struct seaqt_string name);
bool QObject_isWidgetType(const QObject* self);
bool QObject_isWindowType(const QObject* self);
bool QObject_signalsBlocked(const QObject* self);
bool QObject_blockSignals(QObject* self, bool b);
QThread* QObject_thread(const QObject* self);
void QObject_moveToThread(QObject* self, QThread* thread);
int QObject_startTimer_interval(QObject* self, int interval);
void QObject_killTimer(QObject* self, int id);
struct seaqt_array /* of QObject* */  QObject_children(const QObject* self);
void QObject_setParent(QObject* self, QObject* parent);
void QObject_installEventFilter(QObject* self, QObject* filterObj);
void QObject_removeEventFilter(QObject* self, QObject* obj);
QMetaObject__Connection* QObject_connect_sender_signal_receiver_method(QObject* sender, QMetaMethod* signal, QObject* receiver, QMetaMethod* method);
QMetaObject__Connection* QObject_connect_sender_signal_member(const QObject* self, QObject* sender, const char* signal, const char* member);
bool QObject_disconnect_QObject_QMetaMethod_QObject_QMetaMethod(QObject* sender, QMetaMethod* signal, QObject* receiver, QMetaMethod* member);
bool QObject_disconnect_QMetaObject_Connection(QMetaObject__Connection* param1);
void QObject_dumpObjectTree(QObject* self);
void QObject_dumpObjectInfo(QObject* self);
void QObject_dumpObjectTree_const(const QObject* self);
void QObject_dumpObjectInfo_const(const QObject* self);
bool QObject_setProperty(QObject* self, const char* name, QVariant* value);
QVariant* QObject_property(const QObject* self, const char* name);
struct seaqt_array /* of struct seaqt_string */  QObject_dynamicPropertyNames(const QObject* self);
unsigned int QObject_registerUserData();
void QObject_setUserData(QObject* self, unsigned int id, QObjectUserData* data);
QObjectUserData* QObject_userData(const QObject* self, unsigned int id);
void QObject_destroyed(QObject* self);
void QObject_connect_destroyed(QObject* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
QObject* QObject_parent(const QObject* self);
bool QObject_inherits(const QObject* self, const char* classname);
void QObject_deleteLater(QObject* self);
void QObject_timerEvent(QObject* self, QTimerEvent* event);
void QObject_childEvent(QObject* self, QChildEvent* event);
void QObject_customEvent(QObject* self, QEvent* event);
void QObject_connectNotify(QObject* self, QMetaMethod* signal);
void QObject_disconnectNotify(QObject* self, QMetaMethod* signal);
struct seaqt_string QObject_tr_s_c(const char* s, const char* c);
struct seaqt_string QObject_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QObject_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QObject_trUtf8_s_c_n(const char* s, const char* c, int n);
int QObject_startTimer_interval_timerType(QObject* self, int interval, int timerType);
QMetaObject__Connection* QObject_connect_sender_signal_receiver_method_type(QObject* sender, QMetaMethod* signal, QObject* receiver, QMetaMethod* method, int type);
QMetaObject__Connection* QObject_connect_sender_signal_member_type(const QObject* self, QObject* sender, const char* signal, const char* member, int type);
void QObject_destroyed_QObject(QObject* self, QObject* param1);
void QObject_connect_destroyed_QObject(QObject* self, intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t));

QMetaObject* QObject_virtualbase_metaObject(const VirtualQObject* self);
void* QObject_virtualbase_metacast(VirtualQObject* self, const char* param1);
int QObject_virtualbase_metacall(VirtualQObject* self, int param1, int param2, void** param3);
bool QObject_virtualbase_event(VirtualQObject* self, QEvent* event);
bool QObject_virtualbase_eventFilter(VirtualQObject* self, QObject* watched, QEvent* event);
void QObject_virtualbase_timerEvent(VirtualQObject* self, QTimerEvent* event);
void QObject_virtualbase_childEvent(VirtualQObject* self, QChildEvent* event);
void QObject_virtualbase_customEvent(VirtualQObject* self, QEvent* event);
void QObject_virtualbase_connectNotify(VirtualQObject* self, QMetaMethod* signal);
void QObject_virtualbase_disconnectNotify(VirtualQObject* self, QMetaMethod* signal);

QObject* QObject_protectedbase_sender(const VirtualQObject* self);
int QObject_protectedbase_senderSignalIndex(const VirtualQObject* self);
int QObject_protectedbase_receivers(const VirtualQObject* self, const char* signal);
bool QObject_protectedbase_isSignalConnected(const VirtualQObject* self, QMetaMethod* signal);

void QObject_connect_objectNameChanged(QObject* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t));

void QObject_delete(QObject* self);

QObjectUserData* QObjectUserData_new();

void QObjectUserData_delete(QObjectUserData* self);

QSignalBlocker* QSignalBlocker_new_pQObject(QObject* o);
QSignalBlocker* QSignalBlocker_new_QObject(QObject* o);

void QSignalBlocker_reblock(QSignalBlocker* self);
void QSignalBlocker_unblock(QSignalBlocker* self);

void QSignalBlocker_delete(QSignalBlocker* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
