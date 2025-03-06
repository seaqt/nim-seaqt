#include <QAction>
#include <QChildEvent>
#include <QContextMenuEvent>
#include <QEvent>
#include <QList>
#include <QMenu>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QObject>
#include <QPalette>
#include <QPoint>
#include <QRect>
#include <QSize>
#include <QSizeF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUndoStack>
#include <QUrl>
#include <QVariant>
#include <QWebElement>
#include <QWebFrame>
#include <QWebFullScreenRequest>
#include <QWebHistory>
#include <QWebHistoryItem>
#include <QWebPage>
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebPage__ChooseMultipleFilesExtensionOption
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebPage__ChooseMultipleFilesExtensionReturn
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebPage__ErrorPageExtensionOption
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebPage__ErrorPageExtensionReturn
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebPage__ExtensionOption
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebPage__ExtensionReturn
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebPage__ViewportAttributes
#include <QWebPluginFactory>
#include <QWebSecurityOrigin>
#include <QWebSettings>
#include <QWidget>
#include <qwebpage.h>
#include "gen_qwebpage.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQWebPage final : public QWebPage {
	struct QWebPage_VTable* vtbl;
public:

	VirtualQWebPage(struct QWebPage_VTable* vtbl): QWebPage(), vtbl(vtbl) {};
	VirtualQWebPage(struct QWebPage_VTable* vtbl, QObject* parent): QWebPage(parent), vtbl(vtbl) {};

	virtual ~VirtualQWebPage() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebPage::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QWebPage_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebPage::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QWebPage_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebPage::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebPage_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void triggerAction(QWebPage::WebAction action, bool checked) override {
		if (vtbl->triggerAction == 0) {
			QWebPage::triggerAction(action, checked);
			return;
		}

		QWebPage::WebAction action_ret = action;
		int sigval1 = static_cast<int>(action_ret);
		bool sigval2 = checked;

		vtbl->triggerAction(vtbl, this, sigval1, sigval2);

	}

	friend void QWebPage_virtualbase_triggerAction(void* self, int action, bool checked);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QWebPage::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QWebPage_virtualbase_event(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool extension(QWebPage::Extension extension, const QWebPage::ExtensionOption* option, QWebPage::ExtensionReturn* output) override {
		if (vtbl->extension == 0) {
			return QWebPage::extension(extension, option, output);
		}

		QWebPage::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		QWebPage__ExtensionOption* sigval2 = (QWebPage__ExtensionOption*) option;
		QWebPage__ExtensionReturn* sigval3 = output;

		bool callback_return_value = vtbl->extension(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QWebPage_virtualbase_extension(void* self, int extension, QWebPage__ExtensionOption* option, QWebPage__ExtensionReturn* output);

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QWebPage::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QWebPage::supportsExtension(extension);
		}

		QWebPage::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QWebPage_virtualbase_supportsExtension(const void* self, int extension);

	// Subclass to allow providing a Go implementation
	virtual bool shouldInterruptJavaScript() override {
		if (vtbl->shouldInterruptJavaScript == 0) {
			return QWebPage::shouldInterruptJavaScript();
		}


		bool callback_return_value = vtbl->shouldInterruptJavaScript(vtbl, this);

		return callback_return_value;
	}

	friend bool QWebPage_virtualbase_shouldInterruptJavaScript(void* self);

	// Subclass to allow providing a Go implementation
	virtual QWebPage* createWindow(QWebPage::WebWindowType type) override {
		if (vtbl->createWindow == 0) {
			return QWebPage::createWindow(type);
		}

		QWebPage::WebWindowType type_ret = type;
		int sigval1 = static_cast<int>(type_ret);

		QWebPage* callback_return_value = vtbl->createWindow(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QWebPage* QWebPage_virtualbase_createWindow(void* self, int type);

	// Subclass to allow providing a Go implementation
	virtual QObject* createPlugin(const QString& classid, const QUrl& url, const QStringList& paramNames, const QStringList& paramValues) override {
		if (vtbl->createPlugin == 0) {
			return QWebPage::createPlugin(classid, url, paramNames, paramValues);
		}

		const QString classid_ret = classid;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray classid_b = classid_ret.toUtf8();
		struct miqt_string classid_ms;
		classid_ms.len = classid_b.length();
		classid_ms.data = static_cast<char*>(malloc(classid_ms.len));
		memcpy(classid_ms.data, classid_b.data(), classid_ms.len);
		struct miqt_string sigval1 = classid_ms;
		const QUrl& url_ret = url;
		// Cast returned reference into pointer
		QUrl* sigval2 = const_cast<QUrl*>(&url_ret);
		const QStringList& paramNames_ret = paramNames;
		// Convert QList<> from C++ memory to manually-managed C memory
		struct miqt_string* paramNames_arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * paramNames_ret.length()));
		for (size_t i = 0, e = paramNames_ret.length(); i < e; ++i) {
			QString paramNames_lv_ret = paramNames_ret[i];
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray paramNames_lv_b = paramNames_lv_ret.toUtf8();
			struct miqt_string paramNames_lv_ms;
			paramNames_lv_ms.len = paramNames_lv_b.length();
			paramNames_lv_ms.data = static_cast<char*>(malloc(paramNames_lv_ms.len));
			memcpy(paramNames_lv_ms.data, paramNames_lv_b.data(), paramNames_lv_ms.len);
			paramNames_arr[i] = paramNames_lv_ms;
		}
		struct miqt_array paramNames_out;
		paramNames_out.len = paramNames_ret.length();
		paramNames_out.data = static_cast<void*>(paramNames_arr);
		struct miqt_array /* of struct miqt_string */  sigval3 = paramNames_out;
		const QStringList& paramValues_ret = paramValues;
		// Convert QList<> from C++ memory to manually-managed C memory
		struct miqt_string* paramValues_arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * paramValues_ret.length()));
		for (size_t i = 0, e = paramValues_ret.length(); i < e; ++i) {
			QString paramValues_lv_ret = paramValues_ret[i];
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray paramValues_lv_b = paramValues_lv_ret.toUtf8();
			struct miqt_string paramValues_lv_ms;
			paramValues_lv_ms.len = paramValues_lv_b.length();
			paramValues_lv_ms.data = static_cast<char*>(malloc(paramValues_lv_ms.len));
			memcpy(paramValues_lv_ms.data, paramValues_lv_b.data(), paramValues_lv_ms.len);
			paramValues_arr[i] = paramValues_lv_ms;
		}
		struct miqt_array paramValues_out;
		paramValues_out.len = paramValues_ret.length();
		paramValues_out.data = static_cast<void*>(paramValues_arr);
		struct miqt_array /* of struct miqt_string */  sigval4 = paramValues_out;

		QObject* callback_return_value = vtbl->createPlugin(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	friend QObject* QWebPage_virtualbase_createPlugin(void* self, struct miqt_string classid, QUrl* url, struct miqt_array /* of struct miqt_string */  paramNames, struct miqt_array /* of struct miqt_string */  paramValues);

	// Subclass to allow providing a Go implementation
	virtual bool acceptNavigationRequest(QWebFrame* frame, const QNetworkRequest& request, QWebPage::NavigationType type) override {
		if (vtbl->acceptNavigationRequest == 0) {
			return QWebPage::acceptNavigationRequest(frame, request, type);
		}

		QWebFrame* sigval1 = frame;
		const QNetworkRequest& request_ret = request;
		// Cast returned reference into pointer
		QNetworkRequest* sigval2 = const_cast<QNetworkRequest*>(&request_ret);
		QWebPage::NavigationType type_ret = type;
		int sigval3 = static_cast<int>(type_ret);

		bool callback_return_value = vtbl->acceptNavigationRequest(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QWebPage_virtualbase_acceptNavigationRequest(void* self, QWebFrame* frame, QNetworkRequest* request, int type);

	// Subclass to allow providing a Go implementation
	virtual QString chooseFile(QWebFrame* originatingFrame, const QString& oldFile) override {
		if (vtbl->chooseFile == 0) {
			return QWebPage::chooseFile(originatingFrame, oldFile);
		}

		QWebFrame* sigval1 = originatingFrame;
		const QString oldFile_ret = oldFile;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray oldFile_b = oldFile_ret.toUtf8();
		struct miqt_string oldFile_ms;
		oldFile_ms.len = oldFile_b.length();
		oldFile_ms.data = static_cast<char*>(malloc(oldFile_ms.len));
		memcpy(oldFile_ms.data, oldFile_b.data(), oldFile_ms.len);
		struct miqt_string sigval2 = oldFile_ms;

		struct miqt_string callback_return_value = vtbl->chooseFile(vtbl, this, sigval1, sigval2);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	friend struct miqt_string QWebPage_virtualbase_chooseFile(void* self, QWebFrame* originatingFrame, struct miqt_string oldFile);

	// Subclass to allow providing a Go implementation
	virtual void javaScriptAlert(QWebFrame* originatingFrame, const QString& msg) override {
		if (vtbl->javaScriptAlert == 0) {
			QWebPage::javaScriptAlert(originatingFrame, msg);
			return;
		}

		QWebFrame* sigval1 = originatingFrame;
		const QString msg_ret = msg;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray msg_b = msg_ret.toUtf8();
		struct miqt_string msg_ms;
		msg_ms.len = msg_b.length();
		msg_ms.data = static_cast<char*>(malloc(msg_ms.len));
		memcpy(msg_ms.data, msg_b.data(), msg_ms.len);
		struct miqt_string sigval2 = msg_ms;

		vtbl->javaScriptAlert(vtbl, this, sigval1, sigval2);

	}

	friend void QWebPage_virtualbase_javaScriptAlert(void* self, QWebFrame* originatingFrame, struct miqt_string msg);

	// Subclass to allow providing a Go implementation
	virtual bool javaScriptConfirm(QWebFrame* originatingFrame, const QString& msg) override {
		if (vtbl->javaScriptConfirm == 0) {
			return QWebPage::javaScriptConfirm(originatingFrame, msg);
		}

		QWebFrame* sigval1 = originatingFrame;
		const QString msg_ret = msg;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray msg_b = msg_ret.toUtf8();
		struct miqt_string msg_ms;
		msg_ms.len = msg_b.length();
		msg_ms.data = static_cast<char*>(malloc(msg_ms.len));
		memcpy(msg_ms.data, msg_b.data(), msg_ms.len);
		struct miqt_string sigval2 = msg_ms;

		bool callback_return_value = vtbl->javaScriptConfirm(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWebPage_virtualbase_javaScriptConfirm(void* self, QWebFrame* originatingFrame, struct miqt_string msg);

	// Subclass to allow providing a Go implementation
	virtual void javaScriptConsoleMessage(const QString& message, int lineNumber, const QString& sourceID) override {
		if (vtbl->javaScriptConsoleMessage == 0) {
			QWebPage::javaScriptConsoleMessage(message, lineNumber, sourceID);
			return;
		}

		const QString message_ret = message;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray message_b = message_ret.toUtf8();
		struct miqt_string message_ms;
		message_ms.len = message_b.length();
		message_ms.data = static_cast<char*>(malloc(message_ms.len));
		memcpy(message_ms.data, message_b.data(), message_ms.len);
		struct miqt_string sigval1 = message_ms;
		int sigval2 = lineNumber;
		const QString sourceID_ret = sourceID;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray sourceID_b = sourceID_ret.toUtf8();
		struct miqt_string sourceID_ms;
		sourceID_ms.len = sourceID_b.length();
		sourceID_ms.data = static_cast<char*>(malloc(sourceID_ms.len));
		memcpy(sourceID_ms.data, sourceID_b.data(), sourceID_ms.len);
		struct miqt_string sigval3 = sourceID_ms;

		vtbl->javaScriptConsoleMessage(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QWebPage_virtualbase_javaScriptConsoleMessage(void* self, struct miqt_string message, int lineNumber, struct miqt_string sourceID);

	// Subclass to allow providing a Go implementation
	virtual QString userAgentForUrl(const QUrl& url) const override {
		if (vtbl->userAgentForUrl == 0) {
			return QWebPage::userAgentForUrl(url);
		}

		const QUrl& url_ret = url;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&url_ret);

		struct miqt_string callback_return_value = vtbl->userAgentForUrl(vtbl, this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	friend struct miqt_string QWebPage_virtualbase_userAgentForUrl(const void* self, QUrl* url);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebPage::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWebPage_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebPage::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QWebPage_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebPage::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QWebPage_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebPage::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QWebPage_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebPage::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QWebPage_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebPage::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QWebPage_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QWebPage_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QWebPage_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QWebPage_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QWebPage_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QWebPage* QWebPage_new(struct QWebPage_VTable* vtbl) {
	return new VirtualQWebPage(vtbl);
}

QWebPage* QWebPage_new2(struct QWebPage_VTable* vtbl, QObject* parent) {
	return new VirtualQWebPage(vtbl, parent);
}

void QWebPage_virtbase(QWebPage* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebPage_metaObject(const QWebPage* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebPage_metacast(QWebPage* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebPage_metacall(QWebPage* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebPage_tr(const char* s) {
	QString _ret = QWebPage::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebPage_trUtf8(const char* s) {
	QString _ret = QWebPage::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWebFrame* QWebPage_mainFrame(const QWebPage* self) {
	return self->mainFrame();
}

QWebFrame* QWebPage_currentFrame(const QWebPage* self) {
	return self->currentFrame();
}

QWebFrame* QWebPage_frameAt(const QWebPage* self, QPoint* pos) {
	return self->frameAt(*pos);
}

QWebHistory* QWebPage_history(const QWebPage* self) {
	return self->history();
}

QWebSettings* QWebPage_settings(const QWebPage* self) {
	return self->settings();
}

void QWebPage_setView(QWebPage* self, QWidget* view) {
	self->setView(view);
}

QWidget* QWebPage_view(const QWebPage* self) {
	return self->view();
}

bool QWebPage_isModified(const QWebPage* self) {
	return self->isModified();
}

QUndoStack* QWebPage_undoStack(const QWebPage* self) {
	return self->undoStack();
}

void QWebPage_setNetworkAccessManager(QWebPage* self, QNetworkAccessManager* manager) {
	self->setNetworkAccessManager(manager);
}

QNetworkAccessManager* QWebPage_networkAccessManager(const QWebPage* self) {
	return self->networkAccessManager();
}

void QWebPage_setPluginFactory(QWebPage* self, QWebPluginFactory* factory) {
	self->setPluginFactory(factory);
}

QWebPluginFactory* QWebPage_pluginFactory(const QWebPage* self) {
	return self->pluginFactory();
}

unsigned long long QWebPage_totalBytes(const QWebPage* self) {
	quint64 _ret = self->totalBytes();
	return static_cast<unsigned long long>(_ret);
}

unsigned long long QWebPage_bytesReceived(const QWebPage* self) {
	quint64 _ret = self->bytesReceived();
	return static_cast<unsigned long long>(_ret);
}

int QWebPage_visibilityState(const QWebPage* self) {
	QWebPage::VisibilityState _ret = self->visibilityState();
	return static_cast<int>(_ret);
}

void QWebPage_setVisibilityState(QWebPage* self, int visibilityState) {
	self->setVisibilityState(static_cast<QWebPage::VisibilityState>(visibilityState));
}

bool QWebPage_recentlyAudible(const QWebPage* self) {
	return self->recentlyAudible();
}

bool QWebPage_hasSelection(const QWebPage* self) {
	return self->hasSelection();
}

struct miqt_string QWebPage_selectedText(const QWebPage* self) {
	QString _ret = self->selectedText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebPage_selectedHtml(const QWebPage* self) {
	QString _ret = self->selectedHtml();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAction* QWebPage_action(const QWebPage* self, int action) {
	return self->action(static_cast<QWebPage::WebAction>(action));
}

QAction* QWebPage_customAction(const QWebPage* self, int action) {
	return self->customAction(static_cast<int>(action));
}

void QWebPage_triggerAction(QWebPage* self, int action, bool checked) {
	self->triggerAction(static_cast<QWebPage::WebAction>(action), checked);
}

void QWebPage_setDevicePixelRatio(QWebPage* self, double ratio) {
	self->setDevicePixelRatio(static_cast<qreal>(ratio));
}

double QWebPage_devicePixelRatio(const QWebPage* self) {
	qreal _ret = self->devicePixelRatio();
	return static_cast<double>(_ret);
}

void QWebPage_resetDevicePixelRatio(QWebPage* self) {
	self->resetDevicePixelRatio();
}

QSize* QWebPage_viewportSize(const QWebPage* self) {
	return new QSize(self->viewportSize());
}

void QWebPage_setViewportSize(const QWebPage* self, QSize* size) {
	self->setViewportSize(*size);
}

QWebPage__ViewportAttributes* QWebPage_viewportAttributesForSize(const QWebPage* self, QSize* availableSize) {
	return new QWebPage::ViewportAttributes(self->viewportAttributesForSize(*availableSize));
}

QSize* QWebPage_preferredContentsSize(const QWebPage* self) {
	return new QSize(self->preferredContentsSize());
}

void QWebPage_setPreferredContentsSize(const QWebPage* self, QSize* size) {
	self->setPreferredContentsSize(*size);
}

void QWebPage_setActualVisibleContentRect(const QWebPage* self, QRect* rect) {
	self->setActualVisibleContentRect(*rect);
}

bool QWebPage_event(QWebPage* self, QEvent* param1) {
	return self->event(param1);
}

bool QWebPage_focusNextPrevChild(QWebPage* self, bool next) {
	return self->focusNextPrevChild(next);
}

QVariant* QWebPage_inputMethodQuery(const QWebPage* self, int property) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(property)));
}

bool QWebPage_findText(QWebPage* self, struct miqt_string subString) {
	QString subString_QString = QString::fromUtf8(subString.data, subString.len);
	return self->findText(subString_QString);
}

void QWebPage_setForwardUnsupportedContent(QWebPage* self, bool forward) {
	self->setForwardUnsupportedContent(forward);
}

bool QWebPage_forwardUnsupportedContent(const QWebPage* self) {
	return self->forwardUnsupportedContent();
}

void QWebPage_setLinkDelegationPolicy(QWebPage* self, int policy) {
	self->setLinkDelegationPolicy(static_cast<QWebPage::LinkDelegationPolicy>(policy));
}

int QWebPage_linkDelegationPolicy(const QWebPage* self) {
	QWebPage::LinkDelegationPolicy _ret = self->linkDelegationPolicy();
	return static_cast<int>(_ret);
}

void QWebPage_setPalette(QWebPage* self, QPalette* palette) {
	self->setPalette(*palette);
}

QPalette* QWebPage_palette(const QWebPage* self) {
	return new QPalette(self->palette());
}

void QWebPage_setContentEditable(QWebPage* self, bool editable) {
	self->setContentEditable(editable);
}

bool QWebPage_isContentEditable(const QWebPage* self) {
	return self->isContentEditable();
}

bool QWebPage_swallowContextMenuEvent(QWebPage* self, QContextMenuEvent* event) {
	return self->swallowContextMenuEvent(event);
}

void QWebPage_updatePositionDependentActions(QWebPage* self, QPoint* pos) {
	self->updatePositionDependentActions(*pos);
}

QMenu* QWebPage_createStandardContextMenu(QWebPage* self) {
	return self->createStandardContextMenu();
}

void QWebPage_setFeaturePermission(QWebPage* self, QWebFrame* frame, int feature, int policy) {
	self->setFeaturePermission(frame, static_cast<QWebPage::Feature>(feature), static_cast<QWebPage::PermissionPolicy>(policy));
}

struct miqt_array /* of struct miqt_string */  QWebPage_supportedContentTypes(const QWebPage* self) {
	QStringList _ret = self->supportedContentTypes();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QWebPage_supportsContentType(const QWebPage* self, struct miqt_string mimeType) {
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	return self->supportsContentType(mimeType_QString);
}

bool QWebPage_extension(QWebPage* self, int extension, QWebPage__ExtensionOption* option, QWebPage__ExtensionReturn* output) {
	return self->extension(static_cast<QWebPage::Extension>(extension), option, output);
}

bool QWebPage_supportsExtension(const QWebPage* self, int extension) {
	return self->supportsExtension(static_cast<QWebPage::Extension>(extension));
}

bool QWebPage_shouldInterruptJavaScript(QWebPage* self) {
	return self->shouldInterruptJavaScript();
}

void QWebPage_loadStarted(QWebPage* self) {
	self->loadStarted();
}

void QWebPage_connect_loadStarted(QWebPage* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)()>(&QWebPage::loadStarted), self, local_caller{slot, callback, release});
}

void QWebPage_loadProgress(QWebPage* self, int progress) {
	self->loadProgress(static_cast<int>(progress));
}

void QWebPage_connect_loadProgress(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int progress) {
			int sigval1 = progress;
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(int)>(&QWebPage::loadProgress), self, local_caller{slot, callback, release});
}

void QWebPage_loadFinished(QWebPage* self, bool ok) {
	self->loadFinished(ok);
}

void QWebPage_connect_loadFinished(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool ok) {
			bool sigval1 = ok;
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(bool)>(&QWebPage::loadFinished), self, local_caller{slot, callback, release});
}

void QWebPage_linkHovered(QWebPage* self, struct miqt_string link, struct miqt_string title, struct miqt_string textContent) {
	QString link_QString = QString::fromUtf8(link.data, link.len);
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString textContent_QString = QString::fromUtf8(textContent.data, textContent.len);
	self->linkHovered(link_QString, title_QString, textContent_QString);
}

void QWebPage_connect_linkHovered(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string, struct miqt_string, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string, struct miqt_string, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string, struct miqt_string, struct miqt_string);
		void operator()(const QString& link, const QString& title, const QString& textContent) {
			const QString link_ret = link;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray link_b = link_ret.toUtf8();
			struct miqt_string link_ms;
			link_ms.len = link_b.length();
			link_ms.data = static_cast<char*>(malloc(link_ms.len));
			memcpy(link_ms.data, link_b.data(), link_ms.len);
			struct miqt_string sigval1 = link_ms;
			const QString title_ret = title;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray title_b = title_ret.toUtf8();
			struct miqt_string title_ms;
			title_ms.len = title_b.length();
			title_ms.data = static_cast<char*>(malloc(title_ms.len));
			memcpy(title_ms.data, title_b.data(), title_ms.len);
			struct miqt_string sigval2 = title_ms;
			const QString textContent_ret = textContent;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray textContent_b = textContent_ret.toUtf8();
			struct miqt_string textContent_ms;
			textContent_ms.len = textContent_b.length();
			textContent_ms.data = static_cast<char*>(malloc(textContent_ms.len));
			memcpy(textContent_ms.data, textContent_b.data(), textContent_ms.len);
			struct miqt_string sigval3 = textContent_ms;
			callback(slot, sigval1, sigval2, sigval3);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(const QString&, const QString&, const QString&)>(&QWebPage::linkHovered), self, local_caller{slot, callback, release});
}

void QWebPage_statusBarMessage(QWebPage* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->statusBarMessage(text_QString);
}

void QWebPage_connect_statusBarMessage(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& text) {
			const QString text_ret = text;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray text_b = text_ret.toUtf8();
			struct miqt_string text_ms;
			text_ms.len = text_b.length();
			text_ms.data = static_cast<char*>(malloc(text_ms.len));
			memcpy(text_ms.data, text_b.data(), text_ms.len);
			struct miqt_string sigval1 = text_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(const QString&)>(&QWebPage::statusBarMessage), self, local_caller{slot, callback, release});
}

void QWebPage_selectionChanged(QWebPage* self) {
	self->selectionChanged();
}

void QWebPage_connect_selectionChanged(QWebPage* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)()>(&QWebPage::selectionChanged), self, local_caller{slot, callback, release});
}

void QWebPage_frameCreated(QWebPage* self, QWebFrame* frame) {
	self->frameCreated(frame);
}

void QWebPage_connect_frameCreated(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, QWebFrame*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWebFrame*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWebFrame*);
		void operator()(QWebFrame* frame) {
			QWebFrame* sigval1 = frame;
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(QWebFrame*)>(&QWebPage::frameCreated), self, local_caller{slot, callback, release});
}

void QWebPage_geometryChangeRequested(QWebPage* self, QRect* geom) {
	self->geometryChangeRequested(*geom);
}

void QWebPage_connect_geometryChangeRequested(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, QRect*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QRect*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QRect*);
		void operator()(const QRect& geom) {
			const QRect& geom_ret = geom;
			// Cast returned reference into pointer
			QRect* sigval1 = const_cast<QRect*>(&geom_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(const QRect&)>(&QWebPage::geometryChangeRequested), self, local_caller{slot, callback, release});
}

void QWebPage_repaintRequested(QWebPage* self, QRect* dirtyRect) {
	self->repaintRequested(*dirtyRect);
}

void QWebPage_connect_repaintRequested(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, QRect*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QRect*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QRect*);
		void operator()(const QRect& dirtyRect) {
			const QRect& dirtyRect_ret = dirtyRect;
			// Cast returned reference into pointer
			QRect* sigval1 = const_cast<QRect*>(&dirtyRect_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(const QRect&)>(&QWebPage::repaintRequested), self, local_caller{slot, callback, release});
}

void QWebPage_scrollRequested(QWebPage* self, int dx, int dy, QRect* scrollViewRect) {
	self->scrollRequested(static_cast<int>(dx), static_cast<int>(dy), *scrollViewRect);
}

void QWebPage_connect_scrollRequested(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, int, int, QRect*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int, QRect*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int, QRect*);
		void operator()(int dx, int dy, const QRect& scrollViewRect) {
			int sigval1 = dx;
			int sigval2 = dy;
			const QRect& scrollViewRect_ret = scrollViewRect;
			// Cast returned reference into pointer
			QRect* sigval3 = const_cast<QRect*>(&scrollViewRect_ret);
			callback(slot, sigval1, sigval2, sigval3);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(int, int, const QRect&)>(&QWebPage::scrollRequested), self, local_caller{slot, callback, release});
}

void QWebPage_windowCloseRequested(QWebPage* self) {
	self->windowCloseRequested();
}

void QWebPage_connect_windowCloseRequested(QWebPage* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)()>(&QWebPage::windowCloseRequested), self, local_caller{slot, callback, release});
}

void QWebPage_printRequested(QWebPage* self, QWebFrame* frame) {
	self->printRequested(frame);
}

void QWebPage_connect_printRequested(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, QWebFrame*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWebFrame*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWebFrame*);
		void operator()(QWebFrame* frame) {
			QWebFrame* sigval1 = frame;
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(QWebFrame*)>(&QWebPage::printRequested), self, local_caller{slot, callback, release});
}

void QWebPage_linkClicked(QWebPage* self, QUrl* url) {
	self->linkClicked(*url);
}

void QWebPage_connect_linkClicked(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QUrl*);
		void operator()(const QUrl& url) {
			const QUrl& url_ret = url;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&url_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(const QUrl&)>(&QWebPage::linkClicked), self, local_caller{slot, callback, release});
}

void QWebPage_toolBarVisibilityChangeRequested(QWebPage* self, bool visible) {
	self->toolBarVisibilityChangeRequested(visible);
}

void QWebPage_connect_toolBarVisibilityChangeRequested(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool visible) {
			bool sigval1 = visible;
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(bool)>(&QWebPage::toolBarVisibilityChangeRequested), self, local_caller{slot, callback, release});
}

void QWebPage_statusBarVisibilityChangeRequested(QWebPage* self, bool visible) {
	self->statusBarVisibilityChangeRequested(visible);
}

void QWebPage_connect_statusBarVisibilityChangeRequested(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool visible) {
			bool sigval1 = visible;
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(bool)>(&QWebPage::statusBarVisibilityChangeRequested), self, local_caller{slot, callback, release});
}

void QWebPage_menuBarVisibilityChangeRequested(QWebPage* self, bool visible) {
	self->menuBarVisibilityChangeRequested(visible);
}

void QWebPage_connect_menuBarVisibilityChangeRequested(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool visible) {
			bool sigval1 = visible;
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(bool)>(&QWebPage::menuBarVisibilityChangeRequested), self, local_caller{slot, callback, release});
}

void QWebPage_unsupportedContent(QWebPage* self, QNetworkReply* reply) {
	self->unsupportedContent(reply);
}

void QWebPage_connect_unsupportedContent(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, QNetworkReply*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QNetworkReply*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QNetworkReply*);
		void operator()(QNetworkReply* reply) {
			QNetworkReply* sigval1 = reply;
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(QNetworkReply*)>(&QWebPage::unsupportedContent), self, local_caller{slot, callback, release});
}

void QWebPage_downloadRequested(QWebPage* self, QNetworkRequest* request) {
	self->downloadRequested(*request);
}

void QWebPage_connect_downloadRequested(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, QNetworkRequest*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QNetworkRequest*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QNetworkRequest*);
		void operator()(const QNetworkRequest& request) {
			const QNetworkRequest& request_ret = request;
			// Cast returned reference into pointer
			QNetworkRequest* sigval1 = const_cast<QNetworkRequest*>(&request_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(const QNetworkRequest&)>(&QWebPage::downloadRequested), self, local_caller{slot, callback, release});
}

void QWebPage_focusedElementChanged(QWebPage* self, QWebElement* element) {
	self->focusedElementChanged(*element);
}

void QWebPage_connect_focusedElementChanged(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, QWebElement*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWebElement*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWebElement*);
		void operator()(const QWebElement& element) {
			const QWebElement& element_ret = element;
			// Cast returned reference into pointer
			QWebElement* sigval1 = const_cast<QWebElement*>(&element_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(const QWebElement&)>(&QWebPage::focusedElementChanged), self, local_caller{slot, callback, release});
}

void QWebPage_microFocusChanged(QWebPage* self) {
	self->microFocusChanged();
}

void QWebPage_connect_microFocusChanged(QWebPage* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)()>(&QWebPage::microFocusChanged), self, local_caller{slot, callback, release});
}

void QWebPage_contentsChanged(QWebPage* self) {
	self->contentsChanged();
}

void QWebPage_connect_contentsChanged(QWebPage* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)()>(&QWebPage::contentsChanged), self, local_caller{slot, callback, release});
}

void QWebPage_databaseQuotaExceeded(QWebPage* self, QWebFrame* frame, struct miqt_string databaseName) {
	QString databaseName_QString = QString::fromUtf8(databaseName.data, databaseName.len);
	self->databaseQuotaExceeded(frame, databaseName_QString);
}

void QWebPage_connect_databaseQuotaExceeded(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, QWebFrame*, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWebFrame*, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWebFrame*, struct miqt_string);
		void operator()(QWebFrame* frame, QString databaseName) {
			QWebFrame* sigval1 = frame;
			QString databaseName_ret = databaseName;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray databaseName_b = databaseName_ret.toUtf8();
			struct miqt_string databaseName_ms;
			databaseName_ms.len = databaseName_b.length();
			databaseName_ms.data = static_cast<char*>(malloc(databaseName_ms.len));
			memcpy(databaseName_ms.data, databaseName_b.data(), databaseName_ms.len);
			struct miqt_string sigval2 = databaseName_ms;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(QWebFrame*, QString)>(&QWebPage::databaseQuotaExceeded), self, local_caller{slot, callback, release});
}

void QWebPage_applicationCacheQuotaExceeded(QWebPage* self, QWebSecurityOrigin* origin, unsigned long long defaultOriginQuota, unsigned long long totalSpaceNeeded) {
	self->applicationCacheQuotaExceeded(origin, static_cast<quint64>(defaultOriginQuota), static_cast<quint64>(totalSpaceNeeded));
}

void QWebPage_connect_applicationCacheQuotaExceeded(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, QWebSecurityOrigin*, unsigned long long, unsigned long long), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWebSecurityOrigin*, unsigned long long, unsigned long long), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWebSecurityOrigin*, unsigned long long, unsigned long long);
		void operator()(QWebSecurityOrigin* origin, quint64 defaultOriginQuota, quint64 totalSpaceNeeded) {
			QWebSecurityOrigin* sigval1 = origin;
			quint64 defaultOriginQuota_ret = defaultOriginQuota;
			unsigned long long sigval2 = static_cast<unsigned long long>(defaultOriginQuota_ret);
			quint64 totalSpaceNeeded_ret = totalSpaceNeeded;
			unsigned long long sigval3 = static_cast<unsigned long long>(totalSpaceNeeded_ret);
			callback(slot, sigval1, sigval2, sigval3);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(QWebSecurityOrigin*, quint64, quint64)>(&QWebPage::applicationCacheQuotaExceeded), self, local_caller{slot, callback, release});
}

void QWebPage_saveFrameStateRequested(QWebPage* self, QWebFrame* frame, QWebHistoryItem* item) {
	self->saveFrameStateRequested(frame, item);
}

void QWebPage_connect_saveFrameStateRequested(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, QWebFrame*, QWebHistoryItem*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWebFrame*, QWebHistoryItem*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWebFrame*, QWebHistoryItem*);
		void operator()(QWebFrame* frame, QWebHistoryItem* item) {
			QWebFrame* sigval1 = frame;
			QWebHistoryItem* sigval2 = item;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(QWebFrame*, QWebHistoryItem*)>(&QWebPage::saveFrameStateRequested), self, local_caller{slot, callback, release});
}

void QWebPage_restoreFrameStateRequested(QWebPage* self, QWebFrame* frame) {
	self->restoreFrameStateRequested(frame);
}

void QWebPage_connect_restoreFrameStateRequested(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, QWebFrame*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWebFrame*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWebFrame*);
		void operator()(QWebFrame* frame) {
			QWebFrame* sigval1 = frame;
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(QWebFrame*)>(&QWebPage::restoreFrameStateRequested), self, local_caller{slot, callback, release});
}

void QWebPage_viewportChangeRequested(QWebPage* self) {
	self->viewportChangeRequested();
}

void QWebPage_connect_viewportChangeRequested(QWebPage* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)()>(&QWebPage::viewportChangeRequested), self, local_caller{slot, callback, release});
}

void QWebPage_featurePermissionRequested(QWebPage* self, QWebFrame* frame, int feature) {
	self->featurePermissionRequested(frame, static_cast<QWebPage::Feature>(feature));
}

void QWebPage_connect_featurePermissionRequested(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, QWebFrame*, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWebFrame*, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWebFrame*, int);
		void operator()(QWebFrame* frame, QWebPage::Feature feature) {
			QWebFrame* sigval1 = frame;
			QWebPage::Feature feature_ret = feature;
			int sigval2 = static_cast<int>(feature_ret);
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(QWebFrame*, QWebPage::Feature)>(&QWebPage::featurePermissionRequested), self, local_caller{slot, callback, release});
}

void QWebPage_featurePermissionRequestCanceled(QWebPage* self, QWebFrame* frame, int feature) {
	self->featurePermissionRequestCanceled(frame, static_cast<QWebPage::Feature>(feature));
}

void QWebPage_connect_featurePermissionRequestCanceled(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, QWebFrame*, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWebFrame*, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWebFrame*, int);
		void operator()(QWebFrame* frame, QWebPage::Feature feature) {
			QWebFrame* sigval1 = frame;
			QWebPage::Feature feature_ret = feature;
			int sigval2 = static_cast<int>(feature_ret);
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(QWebFrame*, QWebPage::Feature)>(&QWebPage::featurePermissionRequestCanceled), self, local_caller{slot, callback, release});
}

void QWebPage_fullScreenRequested(QWebPage* self, QWebFullScreenRequest* fullScreenRequest) {
	self->fullScreenRequested(*fullScreenRequest);
}

void QWebPage_connect_fullScreenRequested(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, QWebFullScreenRequest*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWebFullScreenRequest*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWebFullScreenRequest*);
		void operator()(QWebFullScreenRequest fullScreenRequest) {
			QWebFullScreenRequest* sigval1 = new QWebFullScreenRequest(fullScreenRequest);
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(QWebFullScreenRequest)>(&QWebPage::fullScreenRequested), self, local_caller{slot, callback, release});
}

void QWebPage_consoleMessageReceived(QWebPage* self, int source, int level, struct miqt_string message, int lineNumber, struct miqt_string sourceID) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	QString sourceID_QString = QString::fromUtf8(sourceID.data, sourceID.len);
	self->consoleMessageReceived(static_cast<QWebPage::MessageSource>(source), static_cast<QWebPage::MessageLevel>(level), message_QString, static_cast<int>(lineNumber), sourceID_QString);
}

void QWebPage_connect_consoleMessageReceived(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, int, int, struct miqt_string, int, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int, struct miqt_string, int, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int, struct miqt_string, int, struct miqt_string);
		void operator()(QWebPage::MessageSource source, QWebPage::MessageLevel level, const QString& message, int lineNumber, const QString& sourceID) {
			QWebPage::MessageSource source_ret = source;
			int sigval1 = static_cast<int>(source_ret);
			QWebPage::MessageLevel level_ret = level;
			int sigval2 = static_cast<int>(level_ret);
			const QString message_ret = message;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray message_b = message_ret.toUtf8();
			struct miqt_string message_ms;
			message_ms.len = message_b.length();
			message_ms.data = static_cast<char*>(malloc(message_ms.len));
			memcpy(message_ms.data, message_b.data(), message_ms.len);
			struct miqt_string sigval3 = message_ms;
			int sigval4 = lineNumber;
			const QString sourceID_ret = sourceID;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray sourceID_b = sourceID_ret.toUtf8();
			struct miqt_string sourceID_ms;
			sourceID_ms.len = sourceID_b.length();
			sourceID_ms.data = static_cast<char*>(malloc(sourceID_ms.len));
			memcpy(sourceID_ms.data, sourceID_b.data(), sourceID_ms.len);
			struct miqt_string sigval5 = sourceID_ms;
			callback(slot, sigval1, sigval2, sigval3, sigval4, sigval5);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(QWebPage::MessageSource, QWebPage::MessageLevel, const QString&, int, const QString&)>(&QWebPage::consoleMessageReceived), self, local_caller{slot, callback, release});
}

void QWebPage_recentlyAudibleChanged(QWebPage* self, bool recentlyAudible) {
	self->recentlyAudibleChanged(recentlyAudible);
}

void QWebPage_connect_recentlyAudibleChanged(QWebPage* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool recentlyAudible) {
			bool sigval1 = recentlyAudible;
			callback(slot, sigval1);
		}
	};
	VirtualQWebPage::connect(self, static_cast<void (QWebPage::*)(bool)>(&QWebPage::recentlyAudibleChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QWebPage_tr2(const char* s, const char* c) {
	QString _ret = QWebPage::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebPage_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebPage::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebPage_trUtf82(const char* s, const char* c) {
	QString _ret = QWebPage::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebPage_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWebPage::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QWebPage_findText2(QWebPage* self, struct miqt_string subString, int options) {
	QString subString_QString = QString::fromUtf8(subString.data, subString.len);
	return self->findText(subString_QString, static_cast<QWebPage::FindFlags>(options));
}

QMetaObject* QWebPage_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQWebPage*)(self) )->QWebPage::metaObject();

}

void* QWebPage_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQWebPage*)(self) )->QWebPage::qt_metacast(param1);

}

int QWebPage_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQWebPage*)(self) )->QWebPage::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QWebPage_virtualbase_triggerAction(void* self, int action, bool checked) {

	( (VirtualQWebPage*)(self) )->QWebPage::triggerAction(static_cast<VirtualQWebPage::WebAction>(action), checked);

}

bool QWebPage_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQWebPage*)(self) )->QWebPage::event(param1);

}

bool QWebPage_virtualbase_extension(void* self, int extension, QWebPage__ExtensionOption* option, QWebPage__ExtensionReturn* output) {

	return ( (VirtualQWebPage*)(self) )->QWebPage::extension(static_cast<VirtualQWebPage::Extension>(extension), option, output);

}

bool QWebPage_virtualbase_supportsExtension(const void* self, int extension) {

	return ( (const VirtualQWebPage*)(self) )->QWebPage::supportsExtension(static_cast<VirtualQWebPage::Extension>(extension));

}

bool QWebPage_virtualbase_shouldInterruptJavaScript(void* self) {

	return ( (VirtualQWebPage*)(self) )->QWebPage::shouldInterruptJavaScript();

}

QWebPage* QWebPage_virtualbase_createWindow(void* self, int type) {

	return ( (VirtualQWebPage*)(self) )->QWebPage::createWindow(static_cast<VirtualQWebPage::WebWindowType>(type));

}

QObject* QWebPage_virtualbase_createPlugin(void* self, struct miqt_string classid, QUrl* url, struct miqt_array /* of struct miqt_string */  paramNames, struct miqt_array /* of struct miqt_string */  paramValues) {
	QString classid_QString = QString::fromUtf8(classid.data, classid.len);
	QStringList paramNames_QList;
	paramNames_QList.reserve(paramNames.len);
	struct miqt_string* paramNames_arr = static_cast<struct miqt_string*>(paramNames.data);
	for(size_t i = 0; i < paramNames.len; ++i) {
		QString paramNames_arr_i_QString = QString::fromUtf8(paramNames_arr[i].data, paramNames_arr[i].len);
		paramNames_QList.push_back(paramNames_arr_i_QString);
	}
	QStringList paramValues_QList;
	paramValues_QList.reserve(paramValues.len);
	struct miqt_string* paramValues_arr = static_cast<struct miqt_string*>(paramValues.data);
	for(size_t i = 0; i < paramValues.len; ++i) {
		QString paramValues_arr_i_QString = QString::fromUtf8(paramValues_arr[i].data, paramValues_arr[i].len);
		paramValues_QList.push_back(paramValues_arr_i_QString);
	}

	return ( (VirtualQWebPage*)(self) )->QWebPage::createPlugin(classid_QString, *url, paramNames_QList, paramValues_QList);

}

bool QWebPage_virtualbase_acceptNavigationRequest(void* self, QWebFrame* frame, QNetworkRequest* request, int type) {

	return ( (VirtualQWebPage*)(self) )->QWebPage::acceptNavigationRequest(frame, *request, static_cast<VirtualQWebPage::NavigationType>(type));

}

struct miqt_string QWebPage_virtualbase_chooseFile(void* self, QWebFrame* originatingFrame, struct miqt_string oldFile) {
	QString oldFile_QString = QString::fromUtf8(oldFile.data, oldFile.len);

	QString _ret = ( (VirtualQWebPage*)(self) )->QWebPage::chooseFile(originatingFrame, oldFile_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;

}

void QWebPage_virtualbase_javaScriptAlert(void* self, QWebFrame* originatingFrame, struct miqt_string msg) {
	QString msg_QString = QString::fromUtf8(msg.data, msg.len);

	( (VirtualQWebPage*)(self) )->QWebPage::javaScriptAlert(originatingFrame, msg_QString);

}

bool QWebPage_virtualbase_javaScriptConfirm(void* self, QWebFrame* originatingFrame, struct miqt_string msg) {
	QString msg_QString = QString::fromUtf8(msg.data, msg.len);

	return ( (VirtualQWebPage*)(self) )->QWebPage::javaScriptConfirm(originatingFrame, msg_QString);

}

void QWebPage_virtualbase_javaScriptConsoleMessage(void* self, struct miqt_string message, int lineNumber, struct miqt_string sourceID) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	QString sourceID_QString = QString::fromUtf8(sourceID.data, sourceID.len);

	( (VirtualQWebPage*)(self) )->QWebPage::javaScriptConsoleMessage(message_QString, static_cast<int>(lineNumber), sourceID_QString);

}

struct miqt_string QWebPage_virtualbase_userAgentForUrl(const void* self, QUrl* url) {

	QString _ret = ( (const VirtualQWebPage*)(self) )->QWebPage::userAgentForUrl(*url);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;

}

bool QWebPage_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQWebPage*)(self) )->QWebPage::eventFilter(watched, event);

}

void QWebPage_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQWebPage*)(self) )->QWebPage::timerEvent(event);

}

void QWebPage_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQWebPage*)(self) )->QWebPage::childEvent(event);

}

void QWebPage_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQWebPage*)(self) )->QWebPage::customEvent(event);

}

void QWebPage_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWebPage*)(self) )->QWebPage::connectNotify(*signal);

}

void QWebPage_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWebPage*)(self) )->QWebPage::disconnectNotify(*signal);

}

const QMetaObject* QWebPage_staticMetaObject() { return &QWebPage::staticMetaObject; }
QObject* QWebPage_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQWebPage* self_cast = dynamic_cast<VirtualQWebPage*>( (QWebPage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QWebPage_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQWebPage* self_cast = dynamic_cast<VirtualQWebPage*>( (QWebPage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QWebPage_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQWebPage* self_cast = dynamic_cast<VirtualQWebPage*>( (QWebPage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QWebPage_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQWebPage* self_cast = dynamic_cast<VirtualQWebPage*>( (QWebPage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QWebPage_delete(QWebPage* self) {
	delete self;
}

QWebPage__ViewportAttributes* QWebPage__ViewportAttributes_new() {
	return new QWebPage::ViewportAttributes();
}

QWebPage__ViewportAttributes* QWebPage__ViewportAttributes_new2(QWebPage__ViewportAttributes* other) {
	return new QWebPage::ViewportAttributes(*other);
}

void QWebPage__ViewportAttributes_operatorAssign(QWebPage__ViewportAttributes* self, QWebPage__ViewportAttributes* other) {
	self->operator=(*other);
}

double QWebPage__ViewportAttributes_initialScaleFactor(const QWebPage__ViewportAttributes* self) {
	qreal _ret = self->initialScaleFactor();
	return static_cast<double>(_ret);
}

double QWebPage__ViewportAttributes_minimumScaleFactor(const QWebPage__ViewportAttributes* self) {
	qreal _ret = self->minimumScaleFactor();
	return static_cast<double>(_ret);
}

double QWebPage__ViewportAttributes_maximumScaleFactor(const QWebPage__ViewportAttributes* self) {
	qreal _ret = self->maximumScaleFactor();
	return static_cast<double>(_ret);
}

double QWebPage__ViewportAttributes_devicePixelRatio(const QWebPage__ViewportAttributes* self) {
	qreal _ret = self->devicePixelRatio();
	return static_cast<double>(_ret);
}

bool QWebPage__ViewportAttributes_isUserScalable(const QWebPage__ViewportAttributes* self) {
	return self->isUserScalable();
}

bool QWebPage__ViewportAttributes_isValid(const QWebPage__ViewportAttributes* self) {
	return self->isValid();
}

QSizeF* QWebPage__ViewportAttributes_size(const QWebPage__ViewportAttributes* self) {
	return new QSizeF(self->size());
}

void QWebPage__ViewportAttributes_delete(QWebPage__ViewportAttributes* self) {
	delete self;
}

QWebPage__ExtensionOption* QWebPage__ExtensionOption_new(QWebPage__ExtensionOption* param1) {
	return new QWebPage::ExtensionOption(*param1);
}

void QWebPage__ExtensionOption_delete(QWebPage__ExtensionOption* self) {
	delete self;
}

QWebPage__ExtensionReturn* QWebPage__ExtensionReturn_new(QWebPage__ExtensionReturn* param1) {
	return new QWebPage::ExtensionReturn(*param1);
}

QWebPage__ExtensionReturn* QWebPage__ExtensionReturn_new2() {
	return new QWebPage::ExtensionReturn();
}

void QWebPage__ExtensionReturn_delete(QWebPage__ExtensionReturn* self) {
	delete self;
}

void QWebPage__ChooseMultipleFilesExtensionOption_virtbase(QWebPage__ChooseMultipleFilesExtensionOption* src, QWebPage::ExtensionOption** outptr_QWebPage__ExtensionOption) {
	*outptr_QWebPage__ExtensionOption = static_cast<QWebPage::ExtensionOption*>(src);
}

void QWebPage__ChooseMultipleFilesExtensionOption_delete(QWebPage__ChooseMultipleFilesExtensionOption* self) {
	delete self;
}

void QWebPage__ChooseMultipleFilesExtensionReturn_virtbase(QWebPage__ChooseMultipleFilesExtensionReturn* src, QWebPage::ExtensionReturn** outptr_QWebPage__ExtensionReturn) {
	*outptr_QWebPage__ExtensionReturn = static_cast<QWebPage::ExtensionReturn*>(src);
}

void QWebPage__ChooseMultipleFilesExtensionReturn_delete(QWebPage__ChooseMultipleFilesExtensionReturn* self) {
	delete self;
}

QWebPage__ErrorPageExtensionOption* QWebPage__ErrorPageExtensionOption_new(QWebPage__ErrorPageExtensionOption* param1) {
	return new QWebPage::ErrorPageExtensionOption(*param1);
}

void QWebPage__ErrorPageExtensionOption_virtbase(QWebPage__ErrorPageExtensionOption* src, QWebPage::ExtensionOption** outptr_QWebPage__ExtensionOption) {
	*outptr_QWebPage__ExtensionOption = static_cast<QWebPage::ExtensionOption*>(src);
}

void QWebPage__ErrorPageExtensionOption_operatorAssign(QWebPage__ErrorPageExtensionOption* self, QWebPage__ErrorPageExtensionOption* param1) {
	self->operator=(*param1);
}

void QWebPage__ErrorPageExtensionOption_delete(QWebPage__ErrorPageExtensionOption* self) {
	delete self;
}

QWebPage__ErrorPageExtensionReturn* QWebPage__ErrorPageExtensionReturn_new() {
	return new QWebPage::ErrorPageExtensionReturn();
}

QWebPage__ErrorPageExtensionReturn* QWebPage__ErrorPageExtensionReturn_new2(QWebPage__ErrorPageExtensionReturn* param1) {
	return new QWebPage::ErrorPageExtensionReturn(*param1);
}

void QWebPage__ErrorPageExtensionReturn_virtbase(QWebPage__ErrorPageExtensionReturn* src, QWebPage::ExtensionReturn** outptr_QWebPage__ExtensionReturn) {
	*outptr_QWebPage__ExtensionReturn = static_cast<QWebPage::ExtensionReturn*>(src);
}

void QWebPage__ErrorPageExtensionReturn_operatorAssign(QWebPage__ErrorPageExtensionReturn* self, QWebPage__ErrorPageExtensionReturn* param1) {
	self->operator=(*param1);
}

void QWebPage__ErrorPageExtensionReturn_delete(QWebPage__ErrorPageExtensionReturn* self) {
	delete self;
}

