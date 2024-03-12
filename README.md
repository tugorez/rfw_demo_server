# RFW demo server.

## Running with the Dart SDK

You can run the server like this:

```
$ dart run bin/server.dart
Server listening on port 8080
```

then clone the client app 

```
$ git clone https://github.com/tugorez/rfw_demo_app.git
```

and run it 

```
$ cd rfw_demo_app && flutter pub install && flutter run -d web-server --web-port=8090
```
