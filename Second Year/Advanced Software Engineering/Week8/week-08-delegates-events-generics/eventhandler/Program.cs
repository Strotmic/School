Publisher publisher = new Publisher();
Subscriber subscriber = new Subscriber();

// Subscriber subscribes to the event
subscriber.Subscribe(publisher);

// Publisher raises the event
publisher.RaiseEvent();