#include <QAction>
#include <QActionGroup>
#include <QDesignerDnDItemInterface>
#include <QDesignerFormWindowInterface>
#include <QDesignerFormWindowManagerInterface>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPixmap>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QWidget>
#include <abstractformwindowmanager.h>
#include "gen_abstractformwindowmanager.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QDesignerFormWindowManagerInterface_virtbase(QDesignerFormWindowManagerInterface* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QDesignerFormWindowManagerInterface_metaObject(const QDesignerFormWindowManagerInterface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDesignerFormWindowManagerInterface_metacast(QDesignerFormWindowManagerInterface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDesignerFormWindowManagerInterface_metacall(QDesignerFormWindowManagerInterface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDesignerFormWindowManagerInterface_tr_s(const char* s) {
	QString _ret = QDesignerFormWindowManagerInterface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAction* QDesignerFormWindowManagerInterface_action(const QDesignerFormWindowManagerInterface* self, int action) {
	return self->action(static_cast<QDesignerFormWindowManagerInterface::Action>(action));
}

QActionGroup* QDesignerFormWindowManagerInterface_actionGroup(const QDesignerFormWindowManagerInterface* self, int actionGroup) {
	return self->actionGroup(static_cast<QDesignerFormWindowManagerInterface::ActionGroup>(actionGroup));
}

QAction* QDesignerFormWindowManagerInterface_actionCut(const QDesignerFormWindowManagerInterface* self) {
	return self->actionCut();
}

QAction* QDesignerFormWindowManagerInterface_actionCopy(const QDesignerFormWindowManagerInterface* self) {
	return self->actionCopy();
}

QAction* QDesignerFormWindowManagerInterface_actionPaste(const QDesignerFormWindowManagerInterface* self) {
	return self->actionPaste();
}

QAction* QDesignerFormWindowManagerInterface_actionDelete(const QDesignerFormWindowManagerInterface* self) {
	return self->actionDelete();
}

QAction* QDesignerFormWindowManagerInterface_actionSelectAll(const QDesignerFormWindowManagerInterface* self) {
	return self->actionSelectAll();
}

QAction* QDesignerFormWindowManagerInterface_actionLower(const QDesignerFormWindowManagerInterface* self) {
	return self->actionLower();
}

QAction* QDesignerFormWindowManagerInterface_actionRaise(const QDesignerFormWindowManagerInterface* self) {
	return self->actionRaise();
}

QAction* QDesignerFormWindowManagerInterface_actionUndo(const QDesignerFormWindowManagerInterface* self) {
	return self->actionUndo();
}

QAction* QDesignerFormWindowManagerInterface_actionRedo(const QDesignerFormWindowManagerInterface* self) {
	return self->actionRedo();
}

QAction* QDesignerFormWindowManagerInterface_actionHorizontalLayout(const QDesignerFormWindowManagerInterface* self) {
	return self->actionHorizontalLayout();
}

QAction* QDesignerFormWindowManagerInterface_actionVerticalLayout(const QDesignerFormWindowManagerInterface* self) {
	return self->actionVerticalLayout();
}

QAction* QDesignerFormWindowManagerInterface_actionSplitHorizontal(const QDesignerFormWindowManagerInterface* self) {
	return self->actionSplitHorizontal();
}

QAction* QDesignerFormWindowManagerInterface_actionSplitVertical(const QDesignerFormWindowManagerInterface* self) {
	return self->actionSplitVertical();
}

QAction* QDesignerFormWindowManagerInterface_actionGridLayout(const QDesignerFormWindowManagerInterface* self) {
	return self->actionGridLayout();
}

QAction* QDesignerFormWindowManagerInterface_actionFormLayout(const QDesignerFormWindowManagerInterface* self) {
	return self->actionFormLayout();
}

QAction* QDesignerFormWindowManagerInterface_actionBreakLayout(const QDesignerFormWindowManagerInterface* self) {
	return self->actionBreakLayout();
}

QAction* QDesignerFormWindowManagerInterface_actionAdjustSize(const QDesignerFormWindowManagerInterface* self) {
	return self->actionAdjustSize();
}

QAction* QDesignerFormWindowManagerInterface_actionSimplifyLayout(const QDesignerFormWindowManagerInterface* self) {
	return self->actionSimplifyLayout();
}

QDesignerFormWindowInterface* QDesignerFormWindowManagerInterface_activeFormWindow(const QDesignerFormWindowManagerInterface* self) {
	return self->activeFormWindow();
}

int QDesignerFormWindowManagerInterface_formWindowCount(const QDesignerFormWindowManagerInterface* self) {
	return self->formWindowCount();
}

QDesignerFormWindowInterface* QDesignerFormWindowManagerInterface_formWindow(const QDesignerFormWindowManagerInterface* self, int index) {
	return self->formWindow(static_cast<int>(index));
}

QDesignerFormWindowInterface* QDesignerFormWindowManagerInterface_createFormWindow(QDesignerFormWindowManagerInterface* self, QWidget* parentWidget, int flags) {
	return self->createFormWindow(parentWidget, static_cast<Qt::WindowFlags>(flags));
}

void QDesignerFormWindowManagerInterface_dragItems(QDesignerFormWindowManagerInterface* self, struct seaqt_array /* of QDesignerDnDItemInterface* */  item_list) {
	QList<QDesignerDnDItemInterface *> item_list_QList;
	item_list_QList.reserve(item_list.len);
	QDesignerDnDItemInterface** item_list_arr = static_cast<QDesignerDnDItemInterface**>(item_list.data);
	for(size_t i = 0; i < item_list.len; ++i) {
		item_list_QList.push_back(item_list_arr[i]);
	}
	self->dragItems(item_list_QList);
}

QPixmap* QDesignerFormWindowManagerInterface_createPreviewPixmap(const QDesignerFormWindowManagerInterface* self) {
	return new QPixmap(self->createPreviewPixmap());
}

void QDesignerFormWindowManagerInterface_formWindowAdded(QDesignerFormWindowManagerInterface* self, QDesignerFormWindowInterface* formWindow) {
	self->formWindowAdded(formWindow);
}

void QDesignerFormWindowManagerInterface_connect_formWindowAdded(QDesignerFormWindowManagerInterface* self, intptr_t slot, void (*callback)(intptr_t, QDesignerFormWindowInterface*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QDesignerFormWindowInterface*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QDesignerFormWindowInterface*);
		void operator()(QDesignerFormWindowInterface* formWindow) {
			QDesignerFormWindowInterface* sigval1 = formWindow;
			callback(slot, sigval1);
		}
	};
	QDesignerFormWindowManagerInterface::connect(self, static_cast<void (QDesignerFormWindowManagerInterface::*)(QDesignerFormWindowInterface*)>(&QDesignerFormWindowManagerInterface::formWindowAdded), self, local_caller{slot, callback, release});
}

void QDesignerFormWindowManagerInterface_formWindowRemoved(QDesignerFormWindowManagerInterface* self, QDesignerFormWindowInterface* formWindow) {
	self->formWindowRemoved(formWindow);
}

void QDesignerFormWindowManagerInterface_connect_formWindowRemoved(QDesignerFormWindowManagerInterface* self, intptr_t slot, void (*callback)(intptr_t, QDesignerFormWindowInterface*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QDesignerFormWindowInterface*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QDesignerFormWindowInterface*);
		void operator()(QDesignerFormWindowInterface* formWindow) {
			QDesignerFormWindowInterface* sigval1 = formWindow;
			callback(slot, sigval1);
		}
	};
	QDesignerFormWindowManagerInterface::connect(self, static_cast<void (QDesignerFormWindowManagerInterface::*)(QDesignerFormWindowInterface*)>(&QDesignerFormWindowManagerInterface::formWindowRemoved), self, local_caller{slot, callback, release});
}

void QDesignerFormWindowManagerInterface_activeFormWindowChanged(QDesignerFormWindowManagerInterface* self, QDesignerFormWindowInterface* formWindow) {
	self->activeFormWindowChanged(formWindow);
}

void QDesignerFormWindowManagerInterface_connect_activeFormWindowChanged(QDesignerFormWindowManagerInterface* self, intptr_t slot, void (*callback)(intptr_t, QDesignerFormWindowInterface*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QDesignerFormWindowInterface*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QDesignerFormWindowInterface*);
		void operator()(QDesignerFormWindowInterface* formWindow) {
			QDesignerFormWindowInterface* sigval1 = formWindow;
			callback(slot, sigval1);
		}
	};
	QDesignerFormWindowManagerInterface::connect(self, static_cast<void (QDesignerFormWindowManagerInterface::*)(QDesignerFormWindowInterface*)>(&QDesignerFormWindowManagerInterface::activeFormWindowChanged), self, local_caller{slot, callback, release});
}

void QDesignerFormWindowManagerInterface_formWindowSettingsChanged(QDesignerFormWindowManagerInterface* self, QDesignerFormWindowInterface* fw) {
	self->formWindowSettingsChanged(fw);
}

void QDesignerFormWindowManagerInterface_connect_formWindowSettingsChanged(QDesignerFormWindowManagerInterface* self, intptr_t slot, void (*callback)(intptr_t, QDesignerFormWindowInterface*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QDesignerFormWindowInterface*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QDesignerFormWindowInterface*);
		void operator()(QDesignerFormWindowInterface* fw) {
			QDesignerFormWindowInterface* sigval1 = fw;
			callback(slot, sigval1);
		}
	};
	QDesignerFormWindowManagerInterface::connect(self, static_cast<void (QDesignerFormWindowManagerInterface::*)(QDesignerFormWindowInterface*)>(&QDesignerFormWindowManagerInterface::formWindowSettingsChanged), self, local_caller{slot, callback, release});
}

void QDesignerFormWindowManagerInterface_addFormWindow(QDesignerFormWindowManagerInterface* self, QDesignerFormWindowInterface* formWindow) {
	self->addFormWindow(formWindow);
}

void QDesignerFormWindowManagerInterface_removeFormWindow(QDesignerFormWindowManagerInterface* self, QDesignerFormWindowInterface* formWindow) {
	self->removeFormWindow(formWindow);
}

void QDesignerFormWindowManagerInterface_setActiveFormWindow(QDesignerFormWindowManagerInterface* self, QDesignerFormWindowInterface* formWindow) {
	self->setActiveFormWindow(formWindow);
}

void QDesignerFormWindowManagerInterface_showPreview(QDesignerFormWindowManagerInterface* self) {
	self->showPreview();
}

void QDesignerFormWindowManagerInterface_closeAllPreviews(QDesignerFormWindowManagerInterface* self) {
	self->closeAllPreviews();
}

void QDesignerFormWindowManagerInterface_showPluginDialog(QDesignerFormWindowManagerInterface* self) {
	self->showPluginDialog();
}

struct seaqt_string QDesignerFormWindowManagerInterface_tr_s_c(const char* s, const char* c) {
	QString _ret = QDesignerFormWindowManagerInterface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerFormWindowManagerInterface_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QDesignerFormWindowManagerInterface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QDesignerFormWindowManagerInterface_staticMetaObject() { return &QDesignerFormWindowManagerInterface::staticMetaObject; }
void QDesignerFormWindowManagerInterface_delete(QDesignerFormWindowManagerInterface* self) {
	delete self;
}

