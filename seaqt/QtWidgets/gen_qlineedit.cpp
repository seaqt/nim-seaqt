#include <QAction>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QCompleter>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEnterEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QLineEdit>
#include <QMargins>
#include <QMenu>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QRect>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QValidator>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qlineedit.h>
#include "gen_qlineedit.h"
class VirtualQLineEdit final : public QLineEdit {
	const QLineEdit_VTable* vtbl;
	void* vdata;
public:
	friend const QLineEdit_VTable* QLineEdit_vtbl(const VirtualQLineEdit* self);
	friend void* QLineEdit_vdata(const VirtualQLineEdit* self);
	friend void QLineEdit_setVdata(VirtualQLineEdit* self, void* vdata);

	VirtualQLineEdit(const QLineEdit_VTable* vtbl, void* vdata, QWidget* parent): QLineEdit(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQLineEdit(const QLineEdit_VTable* vtbl, void* vdata): QLineEdit(), vtbl(vtbl), vdata(vdata) {}
	VirtualQLineEdit(const QLineEdit_VTable* vtbl, void* vdata, const QString& param1): QLineEdit(param1), vtbl(vtbl), vdata(vdata) {}
	VirtualQLineEdit(const QLineEdit_VTable* vtbl, void* vdata, const QString& param1, QWidget* parent): QLineEdit(param1, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQLineEdit() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QLineEdit::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QLineEdit_virtualbase_metaObject(const VirtualQLineEdit* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QLineEdit::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QLineEdit_virtualbase_metacast(VirtualQLineEdit* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QLineEdit::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QLineEdit_virtualbase_metacall(VirtualQLineEdit* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QLineEdit::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QLineEdit_virtualbase_sizeHint(const VirtualQLineEdit* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QLineEdit::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QLineEdit_virtualbase_minimumSizeHint(const VirtualQLineEdit* self);

	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QLineEdit::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_mousePressEvent(VirtualQLineEdit* self, QMouseEvent* param1);

	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QLineEdit::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_mouseMoveEvent(VirtualQLineEdit* self, QMouseEvent* param1);

	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QLineEdit::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_mouseReleaseEvent(VirtualQLineEdit* self, QMouseEvent* param1);

	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QLineEdit::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_mouseDoubleClickEvent(VirtualQLineEdit* self, QMouseEvent* param1);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QLineEdit::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_keyPressEvent(VirtualQLineEdit* self, QKeyEvent* param1);

	virtual void keyReleaseEvent(QKeyEvent* param1) override {
		if (vtbl->keyReleaseEvent == 0) {
			QLineEdit::keyReleaseEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_keyReleaseEvent(VirtualQLineEdit* self, QKeyEvent* param1);

	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QLineEdit::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_focusInEvent(VirtualQLineEdit* self, QFocusEvent* param1);

	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QLineEdit::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_focusOutEvent(VirtualQLineEdit* self, QFocusEvent* param1);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QLineEdit::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_paintEvent(VirtualQLineEdit* self, QPaintEvent* param1);

	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QLineEdit::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_dragEnterEvent(VirtualQLineEdit* self, QDragEnterEvent* param1);

	virtual void dragMoveEvent(QDragMoveEvent* e) override {
		if (vtbl->dragMoveEvent == 0) {
			QLineEdit::dragMoveEvent(e);
			return;
		}

		QDragMoveEvent* sigval1 = e;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_dragMoveEvent(VirtualQLineEdit* self, QDragMoveEvent* e);

	virtual void dragLeaveEvent(QDragLeaveEvent* e) override {
		if (vtbl->dragLeaveEvent == 0) {
			QLineEdit::dragLeaveEvent(e);
			return;
		}

		QDragLeaveEvent* sigval1 = e;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_dragLeaveEvent(VirtualQLineEdit* self, QDragLeaveEvent* e);

	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QLineEdit::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_dropEvent(VirtualQLineEdit* self, QDropEvent* param1);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QLineEdit::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_changeEvent(VirtualQLineEdit* self, QEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QLineEdit::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_contextMenuEvent(VirtualQLineEdit* self, QContextMenuEvent* param1);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QLineEdit::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_inputMethodEvent(VirtualQLineEdit* self, QInputMethodEvent* param1);

	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QLineEdit::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QLineEdit_virtualbase_initStyleOption(const VirtualQLineEdit* self, QStyleOptionFrame* option);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QLineEdit::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QLineEdit_virtualbase_inputMethodQuery(const VirtualQLineEdit* self, int param1);

	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QLineEdit::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_timerEvent(VirtualQLineEdit* self, QTimerEvent* param1);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QLineEdit::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QLineEdit_virtualbase_event(VirtualQLineEdit* self, QEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QLineEdit::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QLineEdit_virtualbase_devType(const VirtualQLineEdit* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QLineEdit::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QLineEdit_virtualbase_setVisible(VirtualQLineEdit* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QLineEdit::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QLineEdit_virtualbase_heightForWidth(const VirtualQLineEdit* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QLineEdit::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QLineEdit_virtualbase_hasHeightForWidth(const VirtualQLineEdit* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QLineEdit::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QLineEdit_virtualbase_paintEngine(const VirtualQLineEdit* self);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QLineEdit::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_wheelEvent(VirtualQLineEdit* self, QWheelEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QLineEdit::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_enterEvent(VirtualQLineEdit* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QLineEdit::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_leaveEvent(VirtualQLineEdit* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QLineEdit::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_moveEvent(VirtualQLineEdit* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QLineEdit::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_resizeEvent(VirtualQLineEdit* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QLineEdit::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_closeEvent(VirtualQLineEdit* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QLineEdit::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_tabletEvent(VirtualQLineEdit* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QLineEdit::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_actionEvent(VirtualQLineEdit* self, QActionEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QLineEdit::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_showEvent(VirtualQLineEdit* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QLineEdit::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_hideEvent(VirtualQLineEdit* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QLineEdit::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QLineEdit_virtualbase_nativeEvent(VirtualQLineEdit* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QLineEdit::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QLineEdit_virtualbase_metric(const VirtualQLineEdit* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QLineEdit::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QLineEdit_virtualbase_initPainter(const VirtualQLineEdit* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QLineEdit::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QLineEdit_virtualbase_redirected(const VirtualQLineEdit* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QLineEdit::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QLineEdit_virtualbase_sharedPainter(const VirtualQLineEdit* self);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QLineEdit::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QLineEdit_virtualbase_focusNextPrevChild(VirtualQLineEdit* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QLineEdit::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QLineEdit_virtualbase_eventFilter(VirtualQLineEdit* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QLineEdit::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_childEvent(VirtualQLineEdit* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QLineEdit::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QLineEdit_virtualbase_customEvent(VirtualQLineEdit* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QLineEdit::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QLineEdit_virtualbase_connectNotify(VirtualQLineEdit* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QLineEdit::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QLineEdit_virtualbase_disconnectNotify(VirtualQLineEdit* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QRect* QLineEdit_protectedbase_cursorRect(const VirtualQLineEdit* self);
	friend void QLineEdit_protectedbase_updateMicroFocus(VirtualQLineEdit* self);
	friend void QLineEdit_protectedbase_create(VirtualQLineEdit* self);
	friend void QLineEdit_protectedbase_destroy(VirtualQLineEdit* self);
	friend bool QLineEdit_protectedbase_focusNextChild(VirtualQLineEdit* self);
	friend bool QLineEdit_protectedbase_focusPreviousChild(VirtualQLineEdit* self);
	friend QObject* QLineEdit_protectedbase_sender(const VirtualQLineEdit* self);
	friend int QLineEdit_protectedbase_senderSignalIndex(const VirtualQLineEdit* self);
	friend int QLineEdit_protectedbase_receivers(const VirtualQLineEdit* self, const char* signal);
	friend bool QLineEdit_protectedbase_isSignalConnected(const VirtualQLineEdit* self, QMetaMethod* signal);
};

VirtualQLineEdit* QLineEdit_new(const QLineEdit_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQLineEdit(vtbl, vdata, parent);
}

VirtualQLineEdit* QLineEdit_new2(const QLineEdit_VTable* vtbl, void* vdata) {
	return new VirtualQLineEdit(vtbl, vdata);
}

VirtualQLineEdit* QLineEdit_new3(const QLineEdit_VTable* vtbl, void* vdata, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	return new VirtualQLineEdit(vtbl, vdata, param1_QString);
}

VirtualQLineEdit* QLineEdit_new4(const QLineEdit_VTable* vtbl, void* vdata, struct miqt_string param1, QWidget* parent) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	return new VirtualQLineEdit(vtbl, vdata, param1_QString, parent);
}

void QLineEdit_virtbase(QLineEdit* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QLineEdit_metaObject(const QLineEdit* self) {
	return (QMetaObject*) self->metaObject();
}

void* QLineEdit_metacast(QLineEdit* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QLineEdit_metacall(QLineEdit* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QLineEdit_tr(const char* s) {
	QString _ret = QLineEdit::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLineEdit_text(const QLineEdit* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLineEdit_displayText(const QLineEdit* self) {
	QString _ret = self->displayText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLineEdit_placeholderText(const QLineEdit* self) {
	QString _ret = self->placeholderText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QLineEdit_setPlaceholderText(QLineEdit* self, struct miqt_string placeholderText) {
	QString placeholderText_QString = QString::fromUtf8(placeholderText.data, placeholderText.len);
	self->setPlaceholderText(placeholderText_QString);
}

int QLineEdit_maxLength(const QLineEdit* self) {
	return self->maxLength();
}

void QLineEdit_setMaxLength(QLineEdit* self, int maxLength) {
	self->setMaxLength(static_cast<int>(maxLength));
}

void QLineEdit_setFrame(QLineEdit* self, bool frame) {
	self->setFrame(frame);
}

bool QLineEdit_hasFrame(const QLineEdit* self) {
	return self->hasFrame();
}

void QLineEdit_setClearButtonEnabled(QLineEdit* self, bool enable) {
	self->setClearButtonEnabled(enable);
}

bool QLineEdit_isClearButtonEnabled(const QLineEdit* self) {
	return self->isClearButtonEnabled();
}

int QLineEdit_echoMode(const QLineEdit* self) {
	QLineEdit::EchoMode _ret = self->echoMode();
	return static_cast<int>(_ret);
}

void QLineEdit_setEchoMode(QLineEdit* self, int echoMode) {
	self->setEchoMode(static_cast<QLineEdit::EchoMode>(echoMode));
}

bool QLineEdit_isReadOnly(const QLineEdit* self) {
	return self->isReadOnly();
}

void QLineEdit_setReadOnly(QLineEdit* self, bool readOnly) {
	self->setReadOnly(readOnly);
}

void QLineEdit_setValidator(QLineEdit* self, QValidator* validator) {
	self->setValidator(validator);
}

QValidator* QLineEdit_validator(const QLineEdit* self) {
	return (QValidator*) self->validator();
}

void QLineEdit_setCompleter(QLineEdit* self, QCompleter* completer) {
	self->setCompleter(completer);
}

QCompleter* QLineEdit_completer(const QLineEdit* self) {
	return self->completer();
}

QSize* QLineEdit_sizeHint(const QLineEdit* self) {
	return new QSize(self->sizeHint());
}

QSize* QLineEdit_minimumSizeHint(const QLineEdit* self) {
	return new QSize(self->minimumSizeHint());
}

int QLineEdit_cursorPosition(const QLineEdit* self) {
	return self->cursorPosition();
}

void QLineEdit_setCursorPosition(QLineEdit* self, int cursorPosition) {
	self->setCursorPosition(static_cast<int>(cursorPosition));
}

int QLineEdit_cursorPositionAt(QLineEdit* self, QPoint* pos) {
	return self->cursorPositionAt(*pos);
}

void QLineEdit_setAlignment(QLineEdit* self, int flag) {
	self->setAlignment(static_cast<Qt::Alignment>(flag));
}

int QLineEdit_alignment(const QLineEdit* self) {
	Qt::Alignment _ret = self->alignment();
	return static_cast<int>(_ret);
}

void QLineEdit_cursorForward(QLineEdit* self, bool mark) {
	self->cursorForward(mark);
}

void QLineEdit_cursorBackward(QLineEdit* self, bool mark) {
	self->cursorBackward(mark);
}

void QLineEdit_cursorWordForward(QLineEdit* self, bool mark) {
	self->cursorWordForward(mark);
}

void QLineEdit_cursorWordBackward(QLineEdit* self, bool mark) {
	self->cursorWordBackward(mark);
}

void QLineEdit_backspace(QLineEdit* self) {
	self->backspace();
}

void QLineEdit_del(QLineEdit* self) {
	self->del();
}

void QLineEdit_home(QLineEdit* self, bool mark) {
	self->home(mark);
}

void QLineEdit_end(QLineEdit* self, bool mark) {
	self->end(mark);
}

bool QLineEdit_isModified(const QLineEdit* self) {
	return self->isModified();
}

void QLineEdit_setModified(QLineEdit* self, bool modified) {
	self->setModified(modified);
}

void QLineEdit_setSelection(QLineEdit* self, int param1, int param2) {
	self->setSelection(static_cast<int>(param1), static_cast<int>(param2));
}

bool QLineEdit_hasSelectedText(const QLineEdit* self) {
	return self->hasSelectedText();
}

struct miqt_string QLineEdit_selectedText(const QLineEdit* self) {
	QString _ret = self->selectedText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QLineEdit_selectionStart(const QLineEdit* self) {
	return self->selectionStart();
}

int QLineEdit_selectionEnd(const QLineEdit* self) {
	return self->selectionEnd();
}

int QLineEdit_selectionLength(const QLineEdit* self) {
	return self->selectionLength();
}

bool QLineEdit_isUndoAvailable(const QLineEdit* self) {
	return self->isUndoAvailable();
}

bool QLineEdit_isRedoAvailable(const QLineEdit* self) {
	return self->isRedoAvailable();
}

void QLineEdit_setDragEnabled(QLineEdit* self, bool b) {
	self->setDragEnabled(b);
}

bool QLineEdit_dragEnabled(const QLineEdit* self) {
	return self->dragEnabled();
}

void QLineEdit_setCursorMoveStyle(QLineEdit* self, int style) {
	self->setCursorMoveStyle(static_cast<Qt::CursorMoveStyle>(style));
}

int QLineEdit_cursorMoveStyle(const QLineEdit* self) {
	Qt::CursorMoveStyle _ret = self->cursorMoveStyle();
	return static_cast<int>(_ret);
}

struct miqt_string QLineEdit_inputMask(const QLineEdit* self) {
	QString _ret = self->inputMask();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QLineEdit_setInputMask(QLineEdit* self, struct miqt_string inputMask) {
	QString inputMask_QString = QString::fromUtf8(inputMask.data, inputMask.len);
	self->setInputMask(inputMask_QString);
}

bool QLineEdit_hasAcceptableInput(const QLineEdit* self) {
	return self->hasAcceptableInput();
}

void QLineEdit_setTextMargins(QLineEdit* self, int left, int top, int right, int bottom) {
	self->setTextMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

void QLineEdit_setTextMarginsWithMargins(QLineEdit* self, QMargins* margins) {
	self->setTextMargins(*margins);
}

QMargins* QLineEdit_textMargins(const QLineEdit* self) {
	return new QMargins(self->textMargins());
}

void QLineEdit_addAction(QLineEdit* self, QAction* action, int position) {
	self->addAction(action, static_cast<QLineEdit::ActionPosition>(position));
}

QAction* QLineEdit_addAction2(QLineEdit* self, QIcon* icon, int position) {
	return self->addAction(*icon, static_cast<QLineEdit::ActionPosition>(position));
}

void QLineEdit_setText(QLineEdit* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

void QLineEdit_clear(QLineEdit* self) {
	self->clear();
}

void QLineEdit_selectAll(QLineEdit* self) {
	self->selectAll();
}

void QLineEdit_undo(QLineEdit* self) {
	self->undo();
}

void QLineEdit_redo(QLineEdit* self) {
	self->redo();
}

void QLineEdit_cut(QLineEdit* self) {
	self->cut();
}

void QLineEdit_copy(const QLineEdit* self) {
	self->copy();
}

void QLineEdit_paste(QLineEdit* self) {
	self->paste();
}

void QLineEdit_deselect(QLineEdit* self) {
	self->deselect();
}

void QLineEdit_insert(QLineEdit* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->insert(param1_QString);
}

QMenu* QLineEdit_createStandardContextMenu(QLineEdit* self) {
	return self->createStandardContextMenu();
}

void QLineEdit_textChanged(QLineEdit* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->textChanged(param1_QString);
}

void QLineEdit_connect_textChanged(VirtualQLineEdit* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& param1) {
			const QString param1_ret = param1;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray param1_b = param1_ret.toUtf8();
			struct miqt_string param1_ms;
			param1_ms.len = param1_b.length();
			param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
			memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
			struct miqt_string sigval1 = param1_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQLineEdit::connect(self, static_cast<void (QLineEdit::*)(const QString&)>(&QLineEdit::textChanged), self, local_caller{slot, callback, release});
}

void QLineEdit_textEdited(QLineEdit* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->textEdited(param1_QString);
}

void QLineEdit_connect_textEdited(VirtualQLineEdit* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& param1) {
			const QString param1_ret = param1;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray param1_b = param1_ret.toUtf8();
			struct miqt_string param1_ms;
			param1_ms.len = param1_b.length();
			param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
			memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
			struct miqt_string sigval1 = param1_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQLineEdit::connect(self, static_cast<void (QLineEdit::*)(const QString&)>(&QLineEdit::textEdited), self, local_caller{slot, callback, release});
}

void QLineEdit_cursorPositionChanged(QLineEdit* self, int param1, int param2) {
	self->cursorPositionChanged(static_cast<int>(param1), static_cast<int>(param2));
}

void QLineEdit_connect_cursorPositionChanged(VirtualQLineEdit* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int param1, int param2) {
			int sigval1 = param1;
			int sigval2 = param2;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQLineEdit::connect(self, static_cast<void (QLineEdit::*)(int, int)>(&QLineEdit::cursorPositionChanged), self, local_caller{slot, callback, release});
}

void QLineEdit_returnPressed(QLineEdit* self) {
	self->returnPressed();
}

void QLineEdit_connect_returnPressed(VirtualQLineEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQLineEdit::connect(self, static_cast<void (QLineEdit::*)()>(&QLineEdit::returnPressed), self, local_caller{slot, callback, release});
}

void QLineEdit_editingFinished(QLineEdit* self) {
	self->editingFinished();
}

void QLineEdit_connect_editingFinished(VirtualQLineEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQLineEdit::connect(self, static_cast<void (QLineEdit::*)()>(&QLineEdit::editingFinished), self, local_caller{slot, callback, release});
}

void QLineEdit_selectionChanged(QLineEdit* self) {
	self->selectionChanged();
}

void QLineEdit_connect_selectionChanged(VirtualQLineEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQLineEdit::connect(self, static_cast<void (QLineEdit::*)()>(&QLineEdit::selectionChanged), self, local_caller{slot, callback, release});
}

void QLineEdit_inputRejected(QLineEdit* self) {
	self->inputRejected();
}

void QLineEdit_connect_inputRejected(VirtualQLineEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQLineEdit::connect(self, static_cast<void (QLineEdit::*)()>(&QLineEdit::inputRejected), self, local_caller{slot, callback, release});
}

QVariant* QLineEdit_inputMethodQuery(const QLineEdit* self, int param1) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

QVariant* QLineEdit_inputMethodQuery2(const QLineEdit* self, int property, QVariant* argument) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(property), *argument));
}

void QLineEdit_timerEvent(QLineEdit* self, QTimerEvent* param1) {
	self->timerEvent(param1);
}

bool QLineEdit_event(QLineEdit* self, QEvent* param1) {
	return self->event(param1);
}

struct miqt_string QLineEdit_tr2(const char* s, const char* c) {
	QString _ret = QLineEdit::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLineEdit_tr3(const char* s, const char* c, int n) {
	QString _ret = QLineEdit::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QLineEdit_cursorForward2(QLineEdit* self, bool mark, int steps) {
	self->cursorForward(mark, static_cast<int>(steps));
}

void QLineEdit_cursorBackward2(QLineEdit* self, bool mark, int steps) {
	self->cursorBackward(mark, static_cast<int>(steps));
}

QMetaObject* QLineEdit_virtualbase_metaObject(const VirtualQLineEdit* self) {

	return (QMetaObject*) self->QLineEdit::metaObject();
}

void* QLineEdit_virtualbase_metacast(VirtualQLineEdit* self, const char* param1) {

	return self->QLineEdit::qt_metacast(param1);
}

int QLineEdit_virtualbase_metacall(VirtualQLineEdit* self, int param1, int param2, void** param3) {

	return self->QLineEdit::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QLineEdit_virtualbase_sizeHint(const VirtualQLineEdit* self) {

	return new QSize(self->QLineEdit::sizeHint());
}

QSize* QLineEdit_virtualbase_minimumSizeHint(const VirtualQLineEdit* self) {

	return new QSize(self->QLineEdit::minimumSizeHint());
}

void QLineEdit_virtualbase_mousePressEvent(VirtualQLineEdit* self, QMouseEvent* param1) {

	self->QLineEdit::mousePressEvent(param1);
}

void QLineEdit_virtualbase_mouseMoveEvent(VirtualQLineEdit* self, QMouseEvent* param1) {

	self->QLineEdit::mouseMoveEvent(param1);
}

void QLineEdit_virtualbase_mouseReleaseEvent(VirtualQLineEdit* self, QMouseEvent* param1) {

	self->QLineEdit::mouseReleaseEvent(param1);
}

void QLineEdit_virtualbase_mouseDoubleClickEvent(VirtualQLineEdit* self, QMouseEvent* param1) {

	self->QLineEdit::mouseDoubleClickEvent(param1);
}

void QLineEdit_virtualbase_keyPressEvent(VirtualQLineEdit* self, QKeyEvent* param1) {

	self->QLineEdit::keyPressEvent(param1);
}

void QLineEdit_virtualbase_keyReleaseEvent(VirtualQLineEdit* self, QKeyEvent* param1) {

	self->QLineEdit::keyReleaseEvent(param1);
}

void QLineEdit_virtualbase_focusInEvent(VirtualQLineEdit* self, QFocusEvent* param1) {

	self->QLineEdit::focusInEvent(param1);
}

void QLineEdit_virtualbase_focusOutEvent(VirtualQLineEdit* self, QFocusEvent* param1) {

	self->QLineEdit::focusOutEvent(param1);
}

void QLineEdit_virtualbase_paintEvent(VirtualQLineEdit* self, QPaintEvent* param1) {

	self->QLineEdit::paintEvent(param1);
}

void QLineEdit_virtualbase_dragEnterEvent(VirtualQLineEdit* self, QDragEnterEvent* param1) {

	self->QLineEdit::dragEnterEvent(param1);
}

void QLineEdit_virtualbase_dragMoveEvent(VirtualQLineEdit* self, QDragMoveEvent* e) {

	self->QLineEdit::dragMoveEvent(e);
}

void QLineEdit_virtualbase_dragLeaveEvent(VirtualQLineEdit* self, QDragLeaveEvent* e) {

	self->QLineEdit::dragLeaveEvent(e);
}

void QLineEdit_virtualbase_dropEvent(VirtualQLineEdit* self, QDropEvent* param1) {

	self->QLineEdit::dropEvent(param1);
}

void QLineEdit_virtualbase_changeEvent(VirtualQLineEdit* self, QEvent* param1) {

	self->QLineEdit::changeEvent(param1);
}

void QLineEdit_virtualbase_contextMenuEvent(VirtualQLineEdit* self, QContextMenuEvent* param1) {

	self->QLineEdit::contextMenuEvent(param1);
}

void QLineEdit_virtualbase_inputMethodEvent(VirtualQLineEdit* self, QInputMethodEvent* param1) {

	self->QLineEdit::inputMethodEvent(param1);
}

void QLineEdit_virtualbase_initStyleOption(const VirtualQLineEdit* self, QStyleOptionFrame* option) {

	self->QLineEdit::initStyleOption(option);
}

QVariant* QLineEdit_virtualbase_inputMethodQuery(const VirtualQLineEdit* self, int param1) {

	return new QVariant(self->QLineEdit::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

void QLineEdit_virtualbase_timerEvent(VirtualQLineEdit* self, QTimerEvent* param1) {

	self->QLineEdit::timerEvent(param1);
}

bool QLineEdit_virtualbase_event(VirtualQLineEdit* self, QEvent* param1) {

	return self->QLineEdit::event(param1);
}

int QLineEdit_virtualbase_devType(const VirtualQLineEdit* self) {

	return self->QLineEdit::devType();
}

void QLineEdit_virtualbase_setVisible(VirtualQLineEdit* self, bool visible) {

	self->QLineEdit::setVisible(visible);
}

int QLineEdit_virtualbase_heightForWidth(const VirtualQLineEdit* self, int param1) {

	return self->QLineEdit::heightForWidth(static_cast<int>(param1));
}

bool QLineEdit_virtualbase_hasHeightForWidth(const VirtualQLineEdit* self) {

	return self->QLineEdit::hasHeightForWidth();
}

QPaintEngine* QLineEdit_virtualbase_paintEngine(const VirtualQLineEdit* self) {

	return self->QLineEdit::paintEngine();
}

void QLineEdit_virtualbase_wheelEvent(VirtualQLineEdit* self, QWheelEvent* event) {

	self->QLineEdit::wheelEvent(event);
}

void QLineEdit_virtualbase_enterEvent(VirtualQLineEdit* self, QEnterEvent* event) {

	self->QLineEdit::enterEvent(event);
}

void QLineEdit_virtualbase_leaveEvent(VirtualQLineEdit* self, QEvent* event) {

	self->QLineEdit::leaveEvent(event);
}

void QLineEdit_virtualbase_moveEvent(VirtualQLineEdit* self, QMoveEvent* event) {

	self->QLineEdit::moveEvent(event);
}

void QLineEdit_virtualbase_resizeEvent(VirtualQLineEdit* self, QResizeEvent* event) {

	self->QLineEdit::resizeEvent(event);
}

void QLineEdit_virtualbase_closeEvent(VirtualQLineEdit* self, QCloseEvent* event) {

	self->QLineEdit::closeEvent(event);
}

void QLineEdit_virtualbase_tabletEvent(VirtualQLineEdit* self, QTabletEvent* event) {

	self->QLineEdit::tabletEvent(event);
}

void QLineEdit_virtualbase_actionEvent(VirtualQLineEdit* self, QActionEvent* event) {

	self->QLineEdit::actionEvent(event);
}

void QLineEdit_virtualbase_showEvent(VirtualQLineEdit* self, QShowEvent* event) {

	self->QLineEdit::showEvent(event);
}

void QLineEdit_virtualbase_hideEvent(VirtualQLineEdit* self, QHideEvent* event) {

	self->QLineEdit::hideEvent(event);
}

bool QLineEdit_virtualbase_nativeEvent(VirtualQLineEdit* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QLineEdit::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QLineEdit_virtualbase_metric(const VirtualQLineEdit* self, int param1) {

	return self->QLineEdit::metric(static_cast<VirtualQLineEdit::PaintDeviceMetric>(param1));
}

void QLineEdit_virtualbase_initPainter(const VirtualQLineEdit* self, QPainter* painter) {

	self->QLineEdit::initPainter(painter);
}

QPaintDevice* QLineEdit_virtualbase_redirected(const VirtualQLineEdit* self, QPoint* offset) {

	return self->QLineEdit::redirected(offset);
}

QPainter* QLineEdit_virtualbase_sharedPainter(const VirtualQLineEdit* self) {

	return self->QLineEdit::sharedPainter();
}

bool QLineEdit_virtualbase_focusNextPrevChild(VirtualQLineEdit* self, bool next) {

	return self->QLineEdit::focusNextPrevChild(next);
}

bool QLineEdit_virtualbase_eventFilter(VirtualQLineEdit* self, QObject* watched, QEvent* event) {

	return self->QLineEdit::eventFilter(watched, event);
}

void QLineEdit_virtualbase_childEvent(VirtualQLineEdit* self, QChildEvent* event) {

	self->QLineEdit::childEvent(event);
}

void QLineEdit_virtualbase_customEvent(VirtualQLineEdit* self, QEvent* event) {

	self->QLineEdit::customEvent(event);
}

void QLineEdit_virtualbase_connectNotify(VirtualQLineEdit* self, QMetaMethod* signal) {

	self->QLineEdit::connectNotify(*signal);
}

void QLineEdit_virtualbase_disconnectNotify(VirtualQLineEdit* self, QMetaMethod* signal) {

	self->QLineEdit::disconnectNotify(*signal);
}

const QMetaObject* QLineEdit_staticMetaObject() { return &QLineEdit::staticMetaObject; }

const QLineEdit_VTable* QLineEdit_vtbl(const VirtualQLineEdit* self) { return self->vtbl; }
void* QLineEdit_vdata(const VirtualQLineEdit* self) { return self->vdata; }
void QLineEdit_setVdata(VirtualQLineEdit* self, void* vdata) { self->vdata = vdata; }

QRect* QLineEdit_protectedbase_cursorRect(const VirtualQLineEdit* self) {
	return new QRect(self->cursorRect());
}

void QLineEdit_protectedbase_updateMicroFocus(VirtualQLineEdit* self) {
	self->updateMicroFocus();
}

void QLineEdit_protectedbase_create(VirtualQLineEdit* self) {
	self->create();
}

void QLineEdit_protectedbase_destroy(VirtualQLineEdit* self) {
	self->destroy();
}

bool QLineEdit_protectedbase_focusNextChild(VirtualQLineEdit* self) {
	return self->focusNextChild();
}

bool QLineEdit_protectedbase_focusPreviousChild(VirtualQLineEdit* self) {
	return self->focusPreviousChild();
}

QObject* QLineEdit_protectedbase_sender(const VirtualQLineEdit* self) {
	return self->sender();
}

int QLineEdit_protectedbase_senderSignalIndex(const VirtualQLineEdit* self) {
	return self->senderSignalIndex();
}

int QLineEdit_protectedbase_receivers(const VirtualQLineEdit* self, const char* signal) {
	return self->receivers(signal);
}

bool QLineEdit_protectedbase_isSignalConnected(const VirtualQLineEdit* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QLineEdit_delete(QLineEdit* self) {
	delete self;
}

