Publisher publisher = new Publisher();
Subscriber subscriber = new Subscriber();

// Subscriber subscribes to the event
subscriber.Subscribe(publisher);


//Second subscriber
Subscriber subscriber2 = new Subscriber();
subscriber2.Subscribe(publisher);

// Publisher raises the event
publisher.RaiseEvent();