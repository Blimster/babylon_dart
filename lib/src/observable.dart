part of babylon;

/// class Observable
@JS()
class Observable<T> {
  external Observable([void Function(Observer<T> observer) onObserverAdded]);
  external List<Observer<T>> get observers;
  external Observer<T> add(void Function(T eventData, EventState eventState) callback, [num mask, bool insertFirst, dynamic scope, bool unregisterOnFirstCall]);
  external Observer<T> addOnce(void Function(T eventData, EventState eventState) callback);
  external bool remove(Observer<T> observer);
  external bool removeCallback(void Function(T eventData, EventState eventState) callback, [dynamic scope]);
  external void makeObserverTopPriority(Observer<T> observer);
  external void makeObserverBottomPriority(Observer<T> observer);
  external bool notifyObservers(T eventData, [num mask, dynamic target, dynamic currentTarget]);
  external Promise<T> notifyObserversWithPromise(T eventData, [num mask, dynamic target, dynamic currentTarget]);
  external void notifyObserver(Observer<T> observer, T eventData, [num mask]);
  external bool hasObservers();
  external void clear();
  external Observable<T> clone();
  external bool hasSpecificMask([num mask]);
}
