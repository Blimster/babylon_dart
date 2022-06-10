part of babylon_dart;

/// class Observable
@JS()
class Observable<[object Object]> {
  // properties
  // methods
  external static Observable<T> FromPromise<T, E>(Promise<T> promise, [Observable<E> onErrorObservable]);
  external Observer<T>? add(void Function(T eventData, EventState eventState) callback, [num mask, bool insertFirst, Object scope, bool unregisterOnFirstCall]);
  external Observer<T>? addOnce(void Function(T eventData, EventState eventState) callback);
  external bool remove(Observer<T>? observer);
  external bool removeCallback(void Function(T eventData, EventState eventState) callback, [Object scope]);
  external void makeObserverTopPriority(Observer<T> observer);
  external void makeObserverBottomPriority(Observer<T> observer);
  external bool notifyObservers(T eventData, [num mask, Object target, Object currentTarget, Object userInfo]);
  external Promise<T> notifyObserversWithPromise(T eventData, [num mask, Object target, Object currentTarget, Object userInfo]);
  external void notifyObserver(Observer<T> observer, T eventData, [num mask]);
  external bool hasObservers();
  external void clear();
  external Observable<T> clone();
  external bool hasSpecificMask([num mask]);
}
