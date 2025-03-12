#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QBUTTONGROUP_H
#define SEAQT_QTWIDGETS_GEN_QBUTTONGROUP_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractButton;
class QButtonGroup;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAbstractButton QAbstractButton;
typedef struct QButtonGroup QButtonGroup;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQButtonGroup VirtualQButtonGroup;
typedef struct QButtonGroup_VTable{
	void (*destructor)(VirtualQButtonGroup* self);
	QMetaObject* (*metaObject)(const VirtualQButtonGroup* self);
	void* (*metacast)(VirtualQButtonGroup* self, const char* param1);
	int (*metacall)(VirtualQButtonGroup* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQButtonGroup* self, QEvent* event);
	bool (*eventFilter)(VirtualQButtonGroup* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQButtonGroup* self, QTimerEvent* event);
	void (*childEvent)(VirtualQButtonGroup* self, QChildEvent* event);
	void (*customEvent)(VirtualQButtonGroup* self, QEvent* event);
	void (*connectNotify)(VirtualQButtonGroup* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQButtonGroup* self, QMetaMethod* signal);
}QButtonGroup_VTable;

const QButtonGroup_VTable* QButtonGroup_vtbl(const VirtualQButtonGroup* self);
void* QButtonGroup_vdata(const VirtualQButtonGroup* self);
void QButtonGroup_setVdata(VirtualQButtonGroup* self, void* vdata);

VirtualQButtonGroup* QButtonGroup_new(const QButtonGroup_VTable* vtbl, void* vdata);
VirtualQButtonGroup* QButtonGroup_new2(const QButtonGroup_VTable* vtbl, void* vdata, QObject* parent);

void QButtonGroup_virtbase(QButtonGroup* src, QObject** outptr_QObject);
QMetaObject* QButtonGroup_metaObject(const QButtonGroup* self);
void* QButtonGroup_metacast(QButtonGroup* self, const char* param1);
int QButtonGroup_metacall(QButtonGroup* self, int param1, int param2, void** param3);
struct miqt_string QButtonGroup_tr(const char* s);
struct miqt_string QButtonGroup_trUtf8(const char* s);
void QButtonGroup_setExclusive(QButtonGroup* self, bool exclusive);
bool QButtonGroup_exclusive(const QButtonGroup* self);
void QButtonGroup_addButton(QButtonGroup* self, QAbstractButton* param1);
void QButtonGroup_removeButton(QButtonGroup* self, QAbstractButton* param1);
struct miqt_array /* of QAbstractButton* */  QButtonGroup_buttons(const QButtonGroup* self);
QAbstractButton* QButtonGroup_checkedButton(const QButtonGroup* self);
QAbstractButton* QButtonGroup_button(const QButtonGroup* self, int id);
void QButtonGroup_setId(QButtonGroup* self, QAbstractButton* button, int id);
int QButtonGroup_id(const QButtonGroup* self, QAbstractButton* button);
int QButtonGroup_checkedId(const QButtonGroup* self);
void QButtonGroup_buttonClicked(QButtonGroup* self, QAbstractButton* param1);
void QButtonGroup_connect_buttonClicked(VirtualQButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, QAbstractButton*), void (*release)(intptr_t));
void QButtonGroup_buttonPressed(QButtonGroup* self, QAbstractButton* param1);
void QButtonGroup_connect_buttonPressed(VirtualQButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, QAbstractButton*), void (*release)(intptr_t));
void QButtonGroup_buttonReleased(QButtonGroup* self, QAbstractButton* param1);
void QButtonGroup_connect_buttonReleased(VirtualQButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, QAbstractButton*), void (*release)(intptr_t));
void QButtonGroup_buttonToggled(QButtonGroup* self, QAbstractButton* param1, bool param2);
void QButtonGroup_connect_buttonToggled(VirtualQButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, QAbstractButton*, bool), void (*release)(intptr_t));
void QButtonGroup_idClicked(QButtonGroup* self, int param1);
void QButtonGroup_connect_idClicked(VirtualQButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QButtonGroup_idPressed(QButtonGroup* self, int param1);
void QButtonGroup_connect_idPressed(VirtualQButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QButtonGroup_idReleased(QButtonGroup* self, int param1);
void QButtonGroup_connect_idReleased(VirtualQButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QButtonGroup_idToggled(QButtonGroup* self, int param1, bool param2);
void QButtonGroup_connect_idToggled(VirtualQButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, int, bool), void (*release)(intptr_t));
void QButtonGroup_buttonClickedWithInt(QButtonGroup* self, int param1);
void QButtonGroup_connect_buttonClickedWithInt(VirtualQButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QButtonGroup_buttonPressedWithInt(QButtonGroup* self, int param1);
void QButtonGroup_connect_buttonPressedWithInt(VirtualQButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QButtonGroup_buttonReleasedWithInt(QButtonGroup* self, int param1);
void QButtonGroup_connect_buttonReleasedWithInt(VirtualQButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QButtonGroup_buttonToggled2(QButtonGroup* self, int param1, bool param2);
void QButtonGroup_connect_buttonToggled2(VirtualQButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, int, bool), void (*release)(intptr_t));
struct miqt_string QButtonGroup_tr2(const char* s, const char* c);
struct miqt_string QButtonGroup_tr3(const char* s, const char* c, int n);
struct miqt_string QButtonGroup_trUtf82(const char* s, const char* c);
struct miqt_string QButtonGroup_trUtf83(const char* s, const char* c, int n);
void QButtonGroup_addButton2(QButtonGroup* self, QAbstractButton* param1, int id);

QMetaObject* QButtonGroup_virtualbase_metaObject(const VirtualQButtonGroup* self);
void* QButtonGroup_virtualbase_metacast(VirtualQButtonGroup* self, const char* param1);
int QButtonGroup_virtualbase_metacall(VirtualQButtonGroup* self, int param1, int param2, void** param3);
bool QButtonGroup_virtualbase_event(VirtualQButtonGroup* self, QEvent* event);
bool QButtonGroup_virtualbase_eventFilter(VirtualQButtonGroup* self, QObject* watched, QEvent* event);
void QButtonGroup_virtualbase_timerEvent(VirtualQButtonGroup* self, QTimerEvent* event);
void QButtonGroup_virtualbase_childEvent(VirtualQButtonGroup* self, QChildEvent* event);
void QButtonGroup_virtualbase_customEvent(VirtualQButtonGroup* self, QEvent* event);
void QButtonGroup_virtualbase_connectNotify(VirtualQButtonGroup* self, QMetaMethod* signal);
void QButtonGroup_virtualbase_disconnectNotify(VirtualQButtonGroup* self, QMetaMethod* signal);

QObject* QButtonGroup_protectedbase_sender(const VirtualQButtonGroup* self);
int QButtonGroup_protectedbase_senderSignalIndex(const VirtualQButtonGroup* self);
int QButtonGroup_protectedbase_receivers(const VirtualQButtonGroup* self, const char* signal);
bool QButtonGroup_protectedbase_isSignalConnected(const VirtualQButtonGroup* self, QMetaMethod* signal);

const QMetaObject* QButtonGroup_staticMetaObject();
void QButtonGroup_delete(QButtonGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
