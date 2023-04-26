class Publisher {
  List<Subscriber> _subscribers = [];

  void add(Subscriber item) {
    _subscribers.add(item);
  }

  void publish(String itemToPublish) {
    for (Subscriber item in _subscribers) {
      item.send(itemToPublish);
    }
    return null;
  }
}

class Subscriber {
  String name;
  Subscriber(this.name);

  void send(String eventname) {
    print("got $eventname to $name");
  }
}

void main() {
  Publisher pub = Publisher();
  pub.add(Subscriber("task1"));
  pub.add(Subscriber("task2"));
  pub.add(Subscriber("task3"));
  pub.add(Subscriber("task4"));

  pub.publish("yadzava");
}
