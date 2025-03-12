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
class VirtualQMediaPlaylist final : public QMediaPlaylist {
	const QMediaPlaylist_VTable* vtbl;
	void* vdata;
public:
	friend const QMediaPlaylist_VTable* QMediaPlaylist_vtbl(const VirtualQMediaPlaylist* self);
	friend void* QMediaPlaylist_vdata(const VirtualQMediaPlaylist* self);
	friend void QMediaPlaylist_setVdata(VirtualQMediaPlaylist* self, void* vdata);

	VirtualQMediaPlaylist(const QMediaPlaylist_VTable* vtbl, void* vdata): QMediaPlaylist(), vtbl(vtbl), vdata(vdata) {}
	VirtualQMediaPlaylist(const QMediaPlaylist_VTable* vtbl, void* vdata, QObject* parent): QMediaPlaylist(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQMediaPlaylist() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMediaPlaylist::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QMediaPlaylist_virtualbase_metaObject(const VirtualQMediaPlaylist* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMediaPlaylist::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QMediaPlaylist_virtualbase_metacast(VirtualQMediaPlaylist* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMediaPlaylist::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMediaPlaylist_virtualbase_metacall(VirtualQMediaPlaylist* self, int param1, int param2, void** param3);

	virtual QMediaObject* mediaObject() const override {
		if (vtbl->mediaObject == 0) {
			return QMediaPlaylist::mediaObject();
		}


		QMediaObject* callback_return_value = vtbl->mediaObject(this);

		return callback_return_value;
	}

	friend QMediaObject* QMediaPlaylist_virtualbase_mediaObject(const VirtualQMediaPlaylist* self);

	virtual bool setMediaObject(QMediaObject* object) override {
		if (vtbl->setMediaObject == 0) {
			return QMediaPlaylist::setMediaObject(object);
		}

		QMediaObject* sigval1 = object;

		bool callback_return_value = vtbl->setMediaObject(this, sigval1);

		return callback_return_value;
	}

	friend bool QMediaPlaylist_virtualbase_setMediaObject(VirtualQMediaPlaylist* self, QMediaObject* object);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMediaPlaylist::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QMediaPlaylist_virtualbase_event(VirtualQMediaPlaylist* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMediaPlaylist::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMediaPlaylist_virtualbase_eventFilter(VirtualQMediaPlaylist* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMediaPlaylist::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QMediaPlaylist_virtualbase_timerEvent(VirtualQMediaPlaylist* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMediaPlaylist::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QMediaPlaylist_virtualbase_childEvent(VirtualQMediaPlaylist* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMediaPlaylist::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QMediaPlaylist_virtualbase_customEvent(VirtualQMediaPlaylist* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMediaPlaylist::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QMediaPlaylist_virtualbase_connectNotify(VirtualQMediaPlaylist* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMediaPlaylist::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QMediaPlaylist_virtualbase_disconnectNotify(VirtualQMediaPlaylist* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QMediaPlaylist_protectedbase_sender(const VirtualQMediaPlaylist* self);
	friend int QMediaPlaylist_protectedbase_senderSignalIndex(const VirtualQMediaPlaylist* self);
	friend int QMediaPlaylist_protectedbase_receivers(const VirtualQMediaPlaylist* self, const char* signal);
	friend bool QMediaPlaylist_protectedbase_isSignalConnected(const VirtualQMediaPlaylist* self, QMetaMethod* signal);
};

VirtualQMediaPlaylist* QMediaPlaylist_new(const QMediaPlaylist_VTable* vtbl, void* vdata) {
	return new VirtualQMediaPlaylist(vtbl, vdata);
}

VirtualQMediaPlaylist* QMediaPlaylist_new2(const QMediaPlaylist_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQMediaPlaylist(vtbl, vdata, parent);
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

void QMediaPlaylist_connect_currentIndexChanged(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)(int)>(&QMediaPlaylist::currentIndexChanged), self, local_caller{slot, callback, release});
}

void QMediaPlaylist_playbackModeChanged(QMediaPlaylist* self, int mode) {
	self->playbackModeChanged(static_cast<QMediaPlaylist::PlaybackMode>(mode));
}

void QMediaPlaylist_connect_playbackModeChanged(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QMediaPlaylist::PlaybackMode mode) {
			QMediaPlaylist::PlaybackMode mode_ret = mode;
			int sigval1 = static_cast<int>(mode_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)(QMediaPlaylist::PlaybackMode)>(&QMediaPlaylist::playbackModeChanged), self, local_caller{slot, callback, release});
}

void QMediaPlaylist_currentMediaChanged(QMediaPlaylist* self, QMediaContent* param1) {
	self->currentMediaChanged(*param1);
}

void QMediaPlaylist_connect_currentMediaChanged(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t, QMediaContent*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QMediaContent*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QMediaContent*);
		void operator()(const QMediaContent& param1) {
			const QMediaContent& param1_ret = param1;
			// Cast returned reference into pointer
			QMediaContent* sigval1 = const_cast<QMediaContent*>(&param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)(const QMediaContent&)>(&QMediaPlaylist::currentMediaChanged), self, local_caller{slot, callback, release});
}

void QMediaPlaylist_mediaAboutToBeInserted(QMediaPlaylist* self, int start, int end) {
	self->mediaAboutToBeInserted(static_cast<int>(start), static_cast<int>(end));
}

void QMediaPlaylist_connect_mediaAboutToBeInserted(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int start, int end) {
			int sigval1 = start;
			int sigval2 = end;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)(int, int)>(&QMediaPlaylist::mediaAboutToBeInserted), self, local_caller{slot, callback, release});
}

void QMediaPlaylist_mediaInserted(QMediaPlaylist* self, int start, int end) {
	self->mediaInserted(static_cast<int>(start), static_cast<int>(end));
}

void QMediaPlaylist_connect_mediaInserted(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int start, int end) {
			int sigval1 = start;
			int sigval2 = end;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)(int, int)>(&QMediaPlaylist::mediaInserted), self, local_caller{slot, callback, release});
}

void QMediaPlaylist_mediaAboutToBeRemoved(QMediaPlaylist* self, int start, int end) {
	self->mediaAboutToBeRemoved(static_cast<int>(start), static_cast<int>(end));
}

void QMediaPlaylist_connect_mediaAboutToBeRemoved(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int start, int end) {
			int sigval1 = start;
			int sigval2 = end;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)(int, int)>(&QMediaPlaylist::mediaAboutToBeRemoved), self, local_caller{slot, callback, release});
}

void QMediaPlaylist_mediaRemoved(QMediaPlaylist* self, int start, int end) {
	self->mediaRemoved(static_cast<int>(start), static_cast<int>(end));
}

void QMediaPlaylist_connect_mediaRemoved(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int start, int end) {
			int sigval1 = start;
			int sigval2 = end;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)(int, int)>(&QMediaPlaylist::mediaRemoved), self, local_caller{slot, callback, release});
}

void QMediaPlaylist_mediaChanged(QMediaPlaylist* self, int start, int end) {
	self->mediaChanged(static_cast<int>(start), static_cast<int>(end));
}

void QMediaPlaylist_connect_mediaChanged(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int start, int end) {
			int sigval1 = start;
			int sigval2 = end;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)(int, int)>(&QMediaPlaylist::mediaChanged), self, local_caller{slot, callback, release});
}

void QMediaPlaylist_loaded(QMediaPlaylist* self) {
	self->loaded();
}

void QMediaPlaylist_connect_loaded(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)()>(&QMediaPlaylist::loaded), self, local_caller{slot, callback, release});
}

void QMediaPlaylist_loadFailed(QMediaPlaylist* self) {
	self->loadFailed();
}

void QMediaPlaylist_connect_loadFailed(VirtualQMediaPlaylist* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQMediaPlaylist::connect(self, static_cast<void (QMediaPlaylist::*)()>(&QMediaPlaylist::loadFailed), self, local_caller{slot, callback, release});
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

QMetaObject* QMediaPlaylist_virtualbase_metaObject(const VirtualQMediaPlaylist* self) {

	return (QMetaObject*) self->QMediaPlaylist::metaObject();
}

void* QMediaPlaylist_virtualbase_metacast(VirtualQMediaPlaylist* self, const char* param1) {

	return self->QMediaPlaylist::qt_metacast(param1);
}

int QMediaPlaylist_virtualbase_metacall(VirtualQMediaPlaylist* self, int param1, int param2, void** param3) {

	return self->QMediaPlaylist::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QMediaObject* QMediaPlaylist_virtualbase_mediaObject(const VirtualQMediaPlaylist* self) {

	return self->QMediaPlaylist::mediaObject();
}

bool QMediaPlaylist_virtualbase_setMediaObject(VirtualQMediaPlaylist* self, QMediaObject* object) {

	return self->QMediaPlaylist::setMediaObject(object);
}

bool QMediaPlaylist_virtualbase_event(VirtualQMediaPlaylist* self, QEvent* event) {

	return self->QMediaPlaylist::event(event);
}

bool QMediaPlaylist_virtualbase_eventFilter(VirtualQMediaPlaylist* self, QObject* watched, QEvent* event) {

	return self->QMediaPlaylist::eventFilter(watched, event);
}

void QMediaPlaylist_virtualbase_timerEvent(VirtualQMediaPlaylist* self, QTimerEvent* event) {

	self->QMediaPlaylist::timerEvent(event);
}

void QMediaPlaylist_virtualbase_childEvent(VirtualQMediaPlaylist* self, QChildEvent* event) {

	self->QMediaPlaylist::childEvent(event);
}

void QMediaPlaylist_virtualbase_customEvent(VirtualQMediaPlaylist* self, QEvent* event) {

	self->QMediaPlaylist::customEvent(event);
}

void QMediaPlaylist_virtualbase_connectNotify(VirtualQMediaPlaylist* self, QMetaMethod* signal) {

	self->QMediaPlaylist::connectNotify(*signal);
}

void QMediaPlaylist_virtualbase_disconnectNotify(VirtualQMediaPlaylist* self, QMetaMethod* signal) {

	self->QMediaPlaylist::disconnectNotify(*signal);
}

const QMetaObject* QMediaPlaylist_staticMetaObject() { return &QMediaPlaylist::staticMetaObject; }

const QMediaPlaylist_VTable* QMediaPlaylist_vtbl(const VirtualQMediaPlaylist* self) { return self->vtbl; }
void* QMediaPlaylist_vdata(const VirtualQMediaPlaylist* self) { return self->vdata; }
void QMediaPlaylist_setVdata(VirtualQMediaPlaylist* self, void* vdata) { self->vdata = vdata; }

QObject* QMediaPlaylist_protectedbase_sender(const VirtualQMediaPlaylist* self) {
	return self->sender();
}

int QMediaPlaylist_protectedbase_senderSignalIndex(const VirtualQMediaPlaylist* self) {
	return self->senderSignalIndex();
}

int QMediaPlaylist_protectedbase_receivers(const VirtualQMediaPlaylist* self, const char* signal) {
	return self->receivers(signal);
}

bool QMediaPlaylist_protectedbase_isSignalConnected(const VirtualQMediaPlaylist* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QMediaPlaylist_delete(QMediaPlaylist* self) {
	delete self;
}

