#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QList>
#include <QMediaBindableInterface>
#include <QMediaContent>
#include <QMediaObject>
#include <QMediaPlaylist>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkRequest>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <qmediaplaylist.h>
#include "gen_qmediaplaylist.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QMediaPlaylist_currentIndexChanged(intptr_t, int);
void miqt_exec_callback_QMediaPlaylist_playbackModeChanged(intptr_t, int);
void miqt_exec_callback_QMediaPlaylist_currentMediaChanged(intptr_t, QMediaContent*);
void miqt_exec_callback_QMediaPlaylist_mediaAboutToBeInserted(intptr_t, int, int);
void miqt_exec_callback_QMediaPlaylist_mediaInserted(intptr_t, int, int);
void miqt_exec_callback_QMediaPlaylist_mediaAboutToBeRemoved(intptr_t, int, int);
void miqt_exec_callback_QMediaPlaylist_mediaRemoved(intptr_t, int, int);
void miqt_exec_callback_QMediaPlaylist_mediaChanged(intptr_t, int, int);
void miqt_exec_callback_QMediaPlaylist_loaded(intptr_t);
void miqt_exec_callback_QMediaPlaylist_loadFailed(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQMediaPlaylist final : public QMediaPlaylist {
	struct QMediaPlaylist_VTable* vtbl;
public:

	VirtualQMediaPlaylist(struct QMediaPlaylist_VTable* vtbl): QMediaPlaylist(), vtbl(vtbl) {};
	VirtualQMediaPlaylist(struct QMediaPlaylist_VTable* vtbl, QObject* parent): QMediaPlaylist(parent), vtbl(vtbl) {};

	virtual ~VirtualQMediaPlaylist() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMediaPlaylist::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QMediaPlaylist_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMediaPlaylist::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QMediaPlaylist_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMediaPlaylist::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMediaPlaylist_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QMediaObject* mediaObject() const override {
		if (vtbl->mediaObject == 0) {
			return QMediaPlaylist::mediaObject();
		}


		QMediaObject* callback_return_value = vtbl->mediaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMediaObject* QMediaPlaylist_virtualbase_mediaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool setMediaObject(QMediaObject* object) override {
		if (vtbl->setMediaObject == 0) {
			return QMediaPlaylist::setMediaObject(object);
		}

		QMediaObject* sigval1 = object;

		bool callback_return_value = vtbl->setMediaObject(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QMediaPlaylist_virtualbase_setMediaObject(void* self, QMediaObject* object);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMediaPlaylist::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QMediaPlaylist_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMediaPlaylist::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMediaPlaylist_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMediaPlaylist::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QMediaPlaylist_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMediaPlaylist::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QMediaPlaylist_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMediaPlaylist::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QMediaPlaylist_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMediaPlaylist::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QMediaPlaylist_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMediaPlaylist::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QMediaPlaylist_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QMediaPlaylist_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QMediaPlaylist_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QMediaPlaylist_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QMediaPlaylist_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QMediaPlaylist* QMediaPlaylist_new(struct QMediaPlaylist_VTable* vtbl) {
	return new VirtualQMediaPlaylist(vtbl);
}

QMediaPlaylist* QMediaPlaylist_new2(struct QMediaPlaylist_VTable* vtbl, QObject* parent) {
	return new VirtualQMediaPlaylist(vtbl, parent);
}

void QMediaPlaylist_virtbase(QMediaPlaylist* src, QObject** outptr_QObject, QMediaBindableInterface** outptr_QMediaBindableInterface) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QMediaBindableInterface = static_cast<QMediaBindableInterface*>(src);
}

QMetaObject* QMediaPlaylist_metaObject(const QMediaPlaylist* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMediaPlaylist_metacast(QMediaPlaylist* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMediaPlaylist_metacall(QMediaPlaylist* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMediaPlaylist_tr(const char* s) {
	QString _ret = QMediaPlaylist::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaPlaylist_trUtf8(const char* s) {
	QString _ret = QMediaPlaylist::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMediaObject* QMediaPlaylist_mediaObject(const QMediaPlaylist* self) {
	return self->mediaObject();
}

int QMediaPlaylist_playbackMode(const QMediaPlaylist* self) {
	QMediaPlaylist::PlaybackMode _ret = self->playbackMode();
	return static_cast<int>(_ret);
}

void QMediaPlaylist_setPlaybackMode(QMediaPlaylist* self, int mode) {
	self->setPlaybackMode(static_cast<QMediaPlaylist::PlaybackMode>(mode));
}

int QMediaPlaylist_currentIndex(const QMediaPlaylist* self) {
	return self->currentIndex();
}

QMediaContent* QMediaPlaylist_currentMedia(const QMediaPlaylist* self) {
	return new QMediaContent(self->currentMedia());
}

int QMediaPlaylist_nextIndex(const QMediaPlaylist* self) {
	return self->nextIndex();
}

int QMediaPlaylist_previousIndex(const QMediaPlaylist* self) {
	return self->previousIndex();
}

QMediaContent* QMediaPlaylist_media(const QMediaPlaylist* self, int index) {
	return new QMediaContent(self->media(static_cast<int>(index)));
}

int QMediaPlaylist_mediaCount(const QMediaPlaylist* self) {
	return self->mediaCount();
}

bool QMediaPlaylist_isEmpty(const QMediaPlaylist* self) {
	return self->isEmpty();
}

bool QMediaPlaylist_isReadOnly(const QMediaPlaylist* self) {
	return self->isReadOnly();
}

bool QMediaPlaylist_addMedia(QMediaPlaylist* self, QMediaContent* content) {
	return self->addMedia(*content);
}

bool QMediaPlaylist_addMediaWithItems(QMediaPlaylist* self, struct miqt_array /* of QMediaContent* */  items) {
	QList<QMediaContent> items_QList;
	items_QList.reserve(items.len);
	QMediaContent** items_arr = static_cast<QMediaContent**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(*(items_arr[i]));
	}
	return self->addMedia(items_QList);
}

bool QMediaPlaylist_insertMedia(QMediaPlaylist* self, int index, QMediaContent* content) {
	return self->insertMedia(static_cast<int>(index), *content);
}

bool QMediaPlaylist_insertMedia2(QMediaPlaylist* self, int index, struct miqt_array /* of QMediaContent* */  items) {
	QList<QMediaContent> items_QList;
	items_QList.reserve(items.len);
	QMediaContent** items_arr = static_cast<QMediaContent**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(*(items_arr[i]));
	}
	return self->insertMedia(static_cast<int>(index), items_QList);
}

bool QMediaPlaylist_moveMedia(QMediaPlaylist* self, int from, int to) {
	return self->moveMedia(static_cast<int>(from), static_cast<int>(to));
}

bool QMediaPlaylist_removeMedia(QMediaPlaylist* self, int pos) {
	return self->removeMedia(static_cast<int>(pos));
}

bool QMediaPlaylist_removeMedia2(QMediaPlaylist* self, int start, int end) {
	return self->removeMedia(static_cast<int>(start), static_cast<int>(end));
}

bool QMediaPlaylist_clear(QMediaPlaylist* self) {
	return self->clear();
}

void QMediaPlaylist_load(QMediaPlaylist* self, QNetworkRequest* request) {
	self->load(*request);
}

void QMediaPlaylist_loadWithLocation(QMediaPlaylist* self, QUrl* location) {
	self->load(*location);
}

void QMediaPlaylist_loadWithDevice(QMediaPlaylist* self, QIODevice* device) {
	self->load(device);
}

bool QMediaPlaylist_save(QMediaPlaylist* self, QUrl* location) {
	return self->save(*location);
}

bool QMediaPlaylist_save2(QMediaPlaylist* self, QIODevice* device, const char* format) {
	return self->save(device, format);
}

int QMediaPlaylist_error(const QMediaPlaylist* self) {
	QMediaPlaylist::Error _ret = self->error();
	return static_cast<int>(_ret);
}

struct miqt_string QMediaPlaylist_errorString(const QMediaPlaylist* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMediaPlaylist_shuffle(QMediaPlaylist* self) {
	self->shuffle();
}

void QMediaPlaylist_next(QMediaPlaylist* self) {
	self->next();
}

void QMediaPlaylist_previous(QMediaPlaylist* self) {
	self->previous();
}

void QMediaPlaylist_setCurrentIndex(QMediaPlaylist* self, int index) {
	self->setCurrentIndex(static_cast<int>(index));
}

void QMediaPlaylist_currentIndexChanged(QMediaPlaylist* self, int index) {
	self->currentIndexChanged(static_cast<int>(index));
}

void QMediaPlaylist_connect_currentIndexChanged(QMediaPlaylist* self, intptr_t slot) {
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)(int)>(&QMediaPlaylist::currentIndexChanged), self, [=](int index) {
		int sigval1 = index;
		miqt_exec_callback_QMediaPlaylist_currentIndexChanged(slot, sigval1);
	});
}

void QMediaPlaylist_playbackModeChanged(QMediaPlaylist* self, int mode) {
	self->playbackModeChanged(static_cast<QMediaPlaylist::PlaybackMode>(mode));
}

void QMediaPlaylist_connect_playbackModeChanged(QMediaPlaylist* self, intptr_t slot) {
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)(QMediaPlaylist::PlaybackMode)>(&QMediaPlaylist::playbackModeChanged), self, [=](QMediaPlaylist::PlaybackMode mode) {
		QMediaPlaylist::PlaybackMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);
		miqt_exec_callback_QMediaPlaylist_playbackModeChanged(slot, sigval1);
	});
}

void QMediaPlaylist_currentMediaChanged(QMediaPlaylist* self, QMediaContent* param1) {
	self->currentMediaChanged(*param1);
}

void QMediaPlaylist_connect_currentMediaChanged(QMediaPlaylist* self, intptr_t slot) {
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)(const QMediaContent&)>(&QMediaPlaylist::currentMediaChanged), self, [=](const QMediaContent& param1) {
		const QMediaContent& param1_ret = param1;
		// Cast returned reference into pointer
		QMediaContent* sigval1 = const_cast<QMediaContent*>(&param1_ret);
		miqt_exec_callback_QMediaPlaylist_currentMediaChanged(slot, sigval1);
	});
}

void QMediaPlaylist_mediaAboutToBeInserted(QMediaPlaylist* self, int start, int end) {
	self->mediaAboutToBeInserted(static_cast<int>(start), static_cast<int>(end));
}

void QMediaPlaylist_connect_mediaAboutToBeInserted(QMediaPlaylist* self, intptr_t slot) {
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)(int, int)>(&QMediaPlaylist::mediaAboutToBeInserted), self, [=](int start, int end) {
		int sigval1 = start;
		int sigval2 = end;
		miqt_exec_callback_QMediaPlaylist_mediaAboutToBeInserted(slot, sigval1, sigval2);
	});
}

void QMediaPlaylist_mediaInserted(QMediaPlaylist* self, int start, int end) {
	self->mediaInserted(static_cast<int>(start), static_cast<int>(end));
}

void QMediaPlaylist_connect_mediaInserted(QMediaPlaylist* self, intptr_t slot) {
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)(int, int)>(&QMediaPlaylist::mediaInserted), self, [=](int start, int end) {
		int sigval1 = start;
		int sigval2 = end;
		miqt_exec_callback_QMediaPlaylist_mediaInserted(slot, sigval1, sigval2);
	});
}

void QMediaPlaylist_mediaAboutToBeRemoved(QMediaPlaylist* self, int start, int end) {
	self->mediaAboutToBeRemoved(static_cast<int>(start), static_cast<int>(end));
}

void QMediaPlaylist_connect_mediaAboutToBeRemoved(QMediaPlaylist* self, intptr_t slot) {
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)(int, int)>(&QMediaPlaylist::mediaAboutToBeRemoved), self, [=](int start, int end) {
		int sigval1 = start;
		int sigval2 = end;
		miqt_exec_callback_QMediaPlaylist_mediaAboutToBeRemoved(slot, sigval1, sigval2);
	});
}

void QMediaPlaylist_mediaRemoved(QMediaPlaylist* self, int start, int end) {
	self->mediaRemoved(static_cast<int>(start), static_cast<int>(end));
}

void QMediaPlaylist_connect_mediaRemoved(QMediaPlaylist* self, intptr_t slot) {
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)(int, int)>(&QMediaPlaylist::mediaRemoved), self, [=](int start, int end) {
		int sigval1 = start;
		int sigval2 = end;
		miqt_exec_callback_QMediaPlaylist_mediaRemoved(slot, sigval1, sigval2);
	});
}

void QMediaPlaylist_mediaChanged(QMediaPlaylist* self, int start, int end) {
	self->mediaChanged(static_cast<int>(start), static_cast<int>(end));
}

void QMediaPlaylist_connect_mediaChanged(QMediaPlaylist* self, intptr_t slot) {
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)(int, int)>(&QMediaPlaylist::mediaChanged), self, [=](int start, int end) {
		int sigval1 = start;
		int sigval2 = end;
		miqt_exec_callback_QMediaPlaylist_mediaChanged(slot, sigval1, sigval2);
	});
}

void QMediaPlaylist_loaded(QMediaPlaylist* self) {
	self->loaded();
}

void QMediaPlaylist_connect_loaded(QMediaPlaylist* self, intptr_t slot) {
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)()>(&QMediaPlaylist::loaded), self, [=]() {
		miqt_exec_callback_QMediaPlaylist_loaded(slot);
	});
}

void QMediaPlaylist_loadFailed(QMediaPlaylist* self) {
	self->loadFailed();
}

void QMediaPlaylist_connect_loadFailed(QMediaPlaylist* self, intptr_t slot) {
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)()>(&QMediaPlaylist::loadFailed), self, [=]() {
		miqt_exec_callback_QMediaPlaylist_loadFailed(slot);
	});
}

struct miqt_string QMediaPlaylist_tr2(const char* s, const char* c) {
	QString _ret = QMediaPlaylist::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaPlaylist_tr3(const char* s, const char* c, int n) {
	QString _ret = QMediaPlaylist::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaPlaylist_trUtf82(const char* s, const char* c) {
	QString _ret = QMediaPlaylist::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaPlaylist_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMediaPlaylist::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QMediaPlaylist_nextIndex1(const QMediaPlaylist* self, int steps) {
	return self->nextIndex(static_cast<int>(steps));
}

int QMediaPlaylist_previousIndex1(const QMediaPlaylist* self, int steps) {
	return self->previousIndex(static_cast<int>(steps));
}

void QMediaPlaylist_load2(QMediaPlaylist* self, QNetworkRequest* request, const char* format) {
	self->load(*request, format);
}

void QMediaPlaylist_load22(QMediaPlaylist* self, QUrl* location, const char* format) {
	self->load(*location, format);
}

void QMediaPlaylist_load23(QMediaPlaylist* self, QIODevice* device, const char* format) {
	self->load(device, format);
}

bool QMediaPlaylist_save22(QMediaPlaylist* self, QUrl* location, const char* format) {
	return self->save(*location, format);
}

QMetaObject* QMediaPlaylist_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQMediaPlaylist*)(self) )->QMediaPlaylist::metaObject();

}

void* QMediaPlaylist_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQMediaPlaylist*)(self) )->QMediaPlaylist::qt_metacast(param1);

}

int QMediaPlaylist_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQMediaPlaylist*)(self) )->QMediaPlaylist::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QMediaObject* QMediaPlaylist_virtualbase_mediaObject(const void* self) {

	return ( (const VirtualQMediaPlaylist*)(self) )->QMediaPlaylist::mediaObject();

}

bool QMediaPlaylist_virtualbase_setMediaObject(void* self, QMediaObject* object) {

	return ( (VirtualQMediaPlaylist*)(self) )->QMediaPlaylist::setMediaObject(object);

}

bool QMediaPlaylist_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQMediaPlaylist*)(self) )->QMediaPlaylist::event(event);

}

bool QMediaPlaylist_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQMediaPlaylist*)(self) )->QMediaPlaylist::eventFilter(watched, event);

}

void QMediaPlaylist_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQMediaPlaylist*)(self) )->QMediaPlaylist::timerEvent(event);

}

void QMediaPlaylist_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQMediaPlaylist*)(self) )->QMediaPlaylist::childEvent(event);

}

void QMediaPlaylist_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQMediaPlaylist*)(self) )->QMediaPlaylist::customEvent(event);

}

void QMediaPlaylist_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQMediaPlaylist*)(self) )->QMediaPlaylist::connectNotify(*signal);

}

void QMediaPlaylist_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQMediaPlaylist*)(self) )->QMediaPlaylist::disconnectNotify(*signal);

}

const QMetaObject* QMediaPlaylist_staticMetaObject() { return &QMediaPlaylist::staticMetaObject; }
QObject* QMediaPlaylist_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQMediaPlaylist* self_cast = dynamic_cast<VirtualQMediaPlaylist*>( (QMediaPlaylist*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QMediaPlaylist_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQMediaPlaylist* self_cast = dynamic_cast<VirtualQMediaPlaylist*>( (QMediaPlaylist*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QMediaPlaylist_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQMediaPlaylist* self_cast = dynamic_cast<VirtualQMediaPlaylist*>( (QMediaPlaylist*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QMediaPlaylist_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQMediaPlaylist* self_cast = dynamic_cast<VirtualQMediaPlaylist*>( (QMediaPlaylist*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QMediaPlaylist_delete(QMediaPlaylist* self) {
	delete self;
}

