# Changes over official libraries generated by gir-to-d

- `javascriptcore/context Context`: `throw` method to `throwMessage` and change `Exception` to `JException`.
- `javascriptcore/exception Exception`: `Exception` class to `JException`.
- `javascriptcore/c/types`: Add rudamentary definition of `JSCContextRef` and `JSValueRef`.
- `soup/c/types`: added a primitive definition for `sockaddr`.
- `soup/Buffer Buffer`: Adjust return type and argument for both `data` to `void*`. 
- `soup/ClientContext ClientContext`: Remove useless `gio.Socket` import.
- `soup/Server Server`: Ditto.
- `webkit2/WebView WebView`: Remove the `override` from `getSettings`.
- `webkit2/WebContext WebContext`: Make the ephemeral constructor `newEphemeral` instead of `this` because name clashes.
- `javascriptcore/Value`: Ditto for `newJSON` and `newUndefined`.
