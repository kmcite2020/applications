
# State Management API

There are three ways to manage state with State Manager library.


# Simplicity

This is very simple. all you have to do is create a Simplicity(initialValue).
You can use callable API to get or set the state.


# Manager

This is for use cases where a class and its methods to be used for State Management.
You don't need to use callable API to update the state. just get the state and use the methods inside the class that modifies the state.


# Complex

This for use cases where you need event based state management.
Use callable API to add events and get state.

# UI API

For UI or reactivity there are three main APIs

UI -> This is for Widget that may use any State Manager API to react to changes automatically

Page -> creating a scaffold page with reactivity

TopUI -> override homePage() to add initial page to the app it also simplifies other things in the API.

# Navigation API

global variable `navigator` is used to navigate between pages as well as using dialogs.
