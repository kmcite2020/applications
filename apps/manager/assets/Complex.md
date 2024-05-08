###### version 1.0.0+1
### Complex
This type of state management is complex. You have to create events and states and push states based on the registered events.
we have an example implemented below for reference. In [UI] what you need. Just you need to extend UI class -> a reactive widget with a build() method. and all flutter. 
Procedure:-
1. defining events
3. state creation:-
4. logic creation:-
5. registration of events:-
6. adding events to the bloc
7. using the state of the bloc.
### Defining Events
defining events is crucial for efficient and predictable state management.
Two recommended ways to define event.
1. Enum based events
2. Class based events

Enum based event doing is simple and offers seamless way.

Class based event doing is complex and is Scalable. also it allows for passing data to the handler of registrar. 
```dart
/// create events -> you can create freezed classes
class AuthEvent {}
class LoginEvent {}
class LogoutEvent {}
class RegisterEvent {}
/// create states
class AuthState {}
class AuthenticatedState {}
class UnAuthenticatedState {}
/// now create a complex `bloc`
class AuthRM extends Complex<AuthEvent, AuthState> {
  AuthState get initialState => UnAuthenticatedState();
  AuthRM():super(UnAuthenticatedState()) {
    on<LoginEvent>(_loginEvent);
    on<LogoutEvent>(_logoutEvent);
    on<RegisterEvent>(_registerEvent);
  }
  _loginEvent(event, updater) {
    updater(AuthenticatedState);
  }
  /// similarly [_logoutEvent] & [_registerEvent]  
}
/// now create a global ref
final authRM = AuthRM();
/// now where its needed
Button(
  onPressed: () {
    /// by calling [add(E)] on a complex object event will be added
    authRM.add(LoginEvent());
  }
)
```


### Defining States

### Defining Your bloc/complex

this where you put your logic. you register your events in your bloc's constructor. and do logic in response to events and update state using the provided updater/setState/emitter.

### Adding Events to the Bloc 

When you create an instance of the Complex/Bloc class. that instance have a method called add(). with  this method you can add events to the bloc and depending how you have registered your event get the appropriate response.

### Using State of the Bloc 

as the instance is available you can call the () on instance to get the state of the bloc. simple and easy. this thanks to support for callable classes.


