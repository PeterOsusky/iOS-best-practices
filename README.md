# iOS-best-practices

## Documentation:
[Apple Documentation](https://developer.apple.com/documentation/technologies)

## Patterns:
1. [MVVM](https://github.com/PeterOsusky/MVVM/tree/main/MVVM)

## Frameworks:

### Combine:
The Combine framework provides a declarative Swift API for processing values over time. These values can represent many kinds of asynchronous events. Combine declares publishers to expose values that can change over time, and subscribers to receive those values from the publishers.

The Publisher protocol declares a type that can deliver a sequence of values over time. Publishers have operators to act on the values received from upstream publishers and republish them.

At the end of a chain of publishers, a Subscriber acts on elements as it receives them. Publishers only emit values when explicitly requested to do so by subscribers. This puts your subscriber code in control of how fast it receives events from the publishers it’s connected to.

Several Foundation types expose their functionality through publishers, including Timer, NotificationCenter, and URLSession. Combine also provides a built-in publisher for any property that’s compliant with Key-Value Observing.

You can combine the output of multiple publishers and coordinate their interaction. For example, you can subscribe to updates from a text field’s publisher, and use the text to perform URL requests. You can then use another publisher to process the responses and use them to update your app.

By adopting Combine, you’ll make your code easier to read and maintain, by centralizing your event-processing code and eliminating troublesome techniques like nested closures and convention-based callbacks.


1. [ObservableObject](https://github.com/PeterOsusky/iOS-best-practices/blob/main/ObservableObject.md)
2. 


