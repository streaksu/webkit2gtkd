module javascriptcore.Value;

private import glib.Bytes;
private import glib.ConstructionException;
private import glib.PtrArray;
private import glib.Str;
private import gobject.ObjectG;
private import javascriptcore.Class;
private import javascriptcore.Context;
private import javascriptcore.c.functions;
public  import javascriptcore.c.types;


/**
 * JSCValue represents a reference to a value in a #JSCContext. The JSCValue
 * protects the referenced value from being garbage collected.
 */
public class Value : ObjectG
{
	/** the main Gtk struct */
	protected JSCValue* jSCValue;

	/** Get the main Gtk struct */
	public JSCValue* getValueStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return jSCValue;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)jSCValue;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (JSCValue* jSCValue, bool ownedRef = false)
	{
		this.jSCValue = jSCValue;
		super(cast(GObject*)jSCValue, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return jsc_value_get_type();
	}

	/**
	 * Create a new #JSCValue referencing an array with the items from @array. If @array
	 * is %NULL or empty a new empty array will be created. Elements of @array should be
	 * pointers to a #JSCValue.
	 *
	 * Params:
	 *     context = a #JSCContext
	 *     array = a #GPtrArray
	 *
	 * Returns: a #JSCValue.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Context context, PtrArray array)
	{
		auto __p = jsc_value_new_array_from_garray((context is null) ? null : context.getContextStruct(), (array is null) ? null : array.getPtrArrayStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_array_from_garray");
		}

		this(cast(JSCValue*) __p, true);
	}

	/**
	 * Create a new #JSCValue referencing an array of strings with the items from @strv. If @array
	 * is %NULL or empty a new empty array will be created.
	 *
	 * Params:
	 *     context = a #JSCContext
	 *     strv = a %NULL-terminated array of strings
	 *
	 * Returns: a #JSCValue.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Context context, string[] strv)
	{
		auto __p = jsc_value_new_array_from_strv((context is null) ? null : context.getContextStruct(), Str.toStringzArray(strv));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_array_from_strv");
		}

		this(cast(JSCValue*) __p, true);
	}

	/**
	 * Create a new #JSCValue from @value
	 *
	 * Params:
	 *     context = a #JSCContext
	 *     value = a #gboolean
	 *
	 * Returns: a #JSCValue.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Context context, bool value)
	{
		auto __p = jsc_value_new_boolean((context is null) ? null : context.getContextStruct(), value);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_boolean");
		}

		this(cast(JSCValue*) __p, true);
	}

	/**
	 * Create a new #JSCValue referencing a new value created by parsing @json.
	 *
	 * Params:
	 *     context = a #JSCContext
	 *     json = the JSON string to be parsed
	 *
	 * Returns: a #JSCValue.
	 *
	 * Since: 2.28
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Context context, string json)
	{
		auto __p = jsc_value_new_from_json((context is null) ? null : context.getContextStruct(), Str.toStringz(json));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_json");
		}

		this(cast(JSCValue*) __p, true);
	}

	/**
	 * Create a function in @context. If @name is %NULL an anonymous function will be created.
	 * When the function is called by JavaScript or jsc_value_function_call(), @callback is called
	 * receiving an #GPtrArray of #JSCValue<!-- -->s with the arguments and then @user_data as last parameter.
	 * When the function is cleared in @context, @destroy_notify is called with @user_data as parameter.
	 *
	 * Note that the value returned by @callback must be fully transferred. In case of boxed types, you could use
	 * %G_TYPE_POINTER instead of the actual boxed #GType to ensure that the instance owned by #JSCClass is used.
	 * If you really want to return a new copy of the boxed type, use #JSC_TYPE_VALUE and return a #JSCValue created
	 * with jsc_value_new_object() that receives the copy as instance parameter.
	 *
	 * Params:
	 *     context = a #JSCContext
	 *     name = the function name or %NULL
	 *     callback = a #GCallback.
	 *     userData = user data to pass to @callback.
	 *     destroyNotify = destroy notifier for @user_data
	 *     returnType = the #GType of the function return value, or %G_TYPE_NONE if the function is void.
	 *
	 * Returns: a #JSCValue.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Context context, string name, GCallback callback, void* userData, GDestroyNotify destroyNotify, GType returnType)
	{
		auto __p = jsc_value_new_function_variadic((context is null) ? null : context.getContextStruct(), Str.toStringz(name), callback, userData, destroyNotify, returnType);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_function_variadic");
		}

		this(cast(JSCValue*) __p, true);
	}

	/**
	 * Create a function in @context. If @name is %NULL an anonymous function will be created.
	 * When the function is called by JavaScript or jsc_value_function_call(), @callback is called
	 * receiving the function parameters and then @user_data as last parameter. When the function is
	 * cleared in @context, @destroy_notify is called with @user_data as parameter.
	 *
	 * Note that the value returned by @callback must be fully transferred. In case of boxed types, you could use
	 * %G_TYPE_POINTER instead of the actual boxed #GType to ensure that the instance owned by #JSCClass is used.
	 * If you really want to return a new copy of the boxed type, use #JSC_TYPE_VALUE and return a #JSCValue created
	 * with jsc_value_new_object() that receives the copy as instance parameter.
	 *
	 * Params:
	 *     context = a #JSCContext
	 *     name = the function name or %NULL
	 *     callback = a #GCallback.
	 *     userData = user data to pass to @callback.
	 *     destroyNotify = destroy notifier for @user_data
	 *     returnType = the #GType of the function return value, or %G_TYPE_NONE if the function is void.
	 *     parameterTypes = a list of #GType<!-- -->s, one for each parameter, or %NULL
	 *
	 * Returns: a #JSCValue.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Context context, string name, GCallback callback, void* userData, GDestroyNotify destroyNotify, GType returnType, GType[] parameterTypes)
	{
		auto __p = jsc_value_new_functionv((context is null) ? null : context.getContextStruct(), Str.toStringz(name), callback, userData, destroyNotify, returnType, cast(uint)parameterTypes.length, parameterTypes.ptr);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_functionv");
		}

		this(cast(JSCValue*) __p, true);
	}

	/**
	 * Create a new #JSCValue referencing <function>null</function> in @context.
	 *
	 * Params:
	 *     context = a #JSCContext
	 *
	 * Returns: a #JSCValue.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Context context)
	{
		auto __p = jsc_value_new_null((context is null) ? null : context.getContextStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_null");
		}

		this(cast(JSCValue*) __p, true);
	}

	/**
	 * Create a new #JSCValue from @number.
	 *
	 * Params:
	 *     context = a #JSCContext
	 *     number = a number
	 *
	 * Returns: a #JSCValue.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Context context, double number)
	{
		auto __p = jsc_value_new_number((context is null) ? null : context.getContextStruct(), number);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_number");
		}

		this(cast(JSCValue*) __p, true);
	}

	/**
	 * Create a new #JSCValue from @instance. If @instance is %NULL a new empty object is created.
	 * When @instance is provided, @jsc_class must be provided too. @jsc_class takes ownership of
	 * @instance that will be freed by the #GDestroyNotify passed to jsc_context_register_class().
	 *
	 * Params:
	 *     context = a #JSCContext
	 *     instance_ = an object instance or %NULL
	 *     jscClass = the #JSCClass of @instance
	 *
	 * Returns: a #JSCValue.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Context context, void* instance_, Class jscClass)
	{
		auto __p = jsc_value_new_object((context is null) ? null : context.getContextStruct(), instance_, (jscClass is null) ? null : jscClass.getClassStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_object");
		}

		this(cast(JSCValue*) __p, true);
	}

	/**
	 * Create a new #JSCValue from @string. If you need to create a #JSCValue from a
	 * string containing null characters, use jsc_value_new_string_from_bytes() instead.
	 *
	 * Params:
	 *     context = a #JSCContext
	 *     string_ = a null-terminated string
	 *
	 * Returns: a #JSCValue.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Context context, string string_)
	{
		auto __p = jsc_value_new_string((context is null) ? null : context.getContextStruct(), Str.toStringz(string_));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_string");
		}

		this(cast(JSCValue*) __p, true);
	}

	/**
	 * Create a new #JSCValue from @bytes.
	 *
	 * Params:
	 *     context = a #JSCContext
	 *     bytes = a #GBytes
	 *
	 * Returns: a #JSCValue.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Context context, Bytes bytes)
	{
		auto __p = jsc_value_new_string_from_bytes((context is null) ? null : context.getContextStruct(), (bytes is null) ? null : bytes.getBytesStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_string_from_bytes");
		}

		this(cast(JSCValue*) __p, true);
	}

	/**
	 * Create a new #JSCValue referencing <function>undefined</function> in @context.
	 *
	 * Params:
	 *     context = a #JSCContext
	 *
	 * Returns: a #JSCValue.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Context context)
	{
		auto __p = jsc_value_new_undefined((context is null) ? null : context.getContextStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_undefined");
		}

		this(cast(JSCValue*) __p, true);
	}

	/**
	 * Invoke <function>new</function> with constructor referenced by @value. If @n_parameters
	 * is 0 no parameters will be passed to the constructor.
	 *
	 * Params:
	 *     parameters = the #JSCValue<!-- -->s to pass as parameters to the constructor, or %NULL
	 *
	 * Returns: a #JSCValue referencing the newly created object instance.
	 */
	public Value constructorCallv(Value[] parameters)
	{
		JSCValue*[] parametersArray = new JSCValue*[parameters.length];
		for ( int i = 0; i < parameters.length; i++ )
		{
			parametersArray[i] = parameters[i].getValueStruct();
		}

		auto __p = jsc_value_constructor_callv(jSCValue, cast(uint)parameters.length, parametersArray.ptr);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(JSCValue*) __p, true);
	}

	/**
	 * Call function referenced by @value, passing the given @parameters. If @n_parameters
	 * is 0 no parameters will be passed to the function.
	 *
	 * This function always returns a #JSCValue, in case of void functions a #JSCValue referencing
	 * <function>undefined</function> is returned
	 *
	 * Params:
	 *     parameters = the #JSCValue<!-- -->s to pass as parameters to the function, or %NULL
	 *
	 * Returns: a #JSCValue with the return value of the function.
	 */
	public Value functionCallv(Value[] parameters)
	{
		JSCValue*[] parametersArray = new JSCValue*[parameters.length];
		for ( int i = 0; i < parameters.length; i++ )
		{
			parametersArray[i] = parameters[i].getValueStruct();
		}

		auto __p = jsc_value_function_callv(jSCValue, cast(uint)parameters.length, parametersArray.ptr);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(JSCValue*) __p, true);
	}

	/**
	 * Get the #JSCContext in which @value was created.
	 *
	 * Returns: the #JSCValue context.
	 */
	public Context getContext()
	{
		auto __p = jsc_value_get_context(jSCValue);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Context)(cast(JSCContext*) __p);
	}

	/**
	 * Get whether the value referenced by @value is an array.
	 *
	 * Returns: whether the value is an array.
	 */
	public bool isArray()
	{
		return jsc_value_is_array(jSCValue) != 0;
	}

	/**
	 * Get whether the value referenced by @value is a boolean.
	 *
	 * Returns: whether the value is a boolean.
	 */
	public bool isBoolean()
	{
		return jsc_value_is_boolean(jSCValue) != 0;
	}

	/**
	 * Get whether the value referenced by @value is a constructor.
	 *
	 * Returns: whether the value is a constructor.
	 */
	public bool isConstructor()
	{
		return jsc_value_is_constructor(jSCValue) != 0;
	}

	/**
	 * Get whether the value referenced by @value is a function
	 *
	 * Returns: whether the value is a function.
	 */
	public bool isFunction()
	{
		return jsc_value_is_function(jSCValue) != 0;
	}

	/**
	 * Get whether the value referenced by @value is <function>null</function>.
	 *
	 * Returns: whether the value is null.
	 */
	public bool isNull()
	{
		return jsc_value_is_null(jSCValue) != 0;
	}

	/**
	 * Get whether the value referenced by @value is a number.
	 *
	 * Returns: whether the value is a number.
	 */
	public bool isNumber()
	{
		return jsc_value_is_number(jSCValue) != 0;
	}

	/**
	 * Get whether the value referenced by @value is an object.
	 *
	 * Returns: whether the value is an object.
	 */
	public bool isObject()
	{
		return jsc_value_is_object(jSCValue) != 0;
	}

	/**
	 * Get whether the value referenced by @value is a string
	 *
	 * Returns: whether the value is a string
	 */
	public bool isString()
	{
		return jsc_value_is_string(jSCValue) != 0;
	}

	/**
	 * Get whether the value referenced by @value is <function>undefined</function>.
	 *
	 * Returns: whether the value is undefined.
	 */
	public bool isUndefined()
	{
		return jsc_value_is_undefined(jSCValue) != 0;
	}

	/**
	 * Define or modify a property with @property_name in object referenced by @value. When the
	 * property value needs to be getted or set, @getter and @setter callbacks will be called.
	 * When the property is cleared in the #JSCClass context, @destroy_notify is called with
	 * @user_data as parameter. This is equivalent to JavaScript <function>Object.defineProperty()</function>
	 * when used with an accessor descriptor.
	 *
	 * Note that the value returned by @getter must be fully transferred. In case of boxed types, you could use
	 * %G_TYPE_POINTER instead of the actual boxed #GType to ensure that the instance owned by #JSCClass is used.
	 * If you really want to return a new copy of the boxed type, use #JSC_TYPE_VALUE and return a #JSCValue created
	 * with jsc_value_new_object() that receives the copy as instance parameter.
	 *
	 * Params:
	 *     propertyName = the name of the property to define
	 *     flags = #JSCValuePropertyFlags
	 *     propertyType = the #GType of the property
	 *     getter = a #GCallback to be called to get the property value
	 *     setter = a #GCallback to be called to set the property value
	 *     userData = user data to pass to @getter and @setter
	 *     destroyNotify = destroy notifier for @user_data
	 */
	public void objectDefinePropertyAccessor(string propertyName, JSCValuePropertyFlags flags, GType propertyType, GCallback getter, GCallback setter, void* userData, GDestroyNotify destroyNotify)
	{
		jsc_value_object_define_property_accessor(jSCValue, Str.toStringz(propertyName), flags, propertyType, getter, setter, userData, destroyNotify);
	}

	/**
	 * Define or modify a property with @property_name in object referenced by @value. This is equivalent to
	 * JavaScript <function>Object.defineProperty()</function> when used with a data descriptor.
	 *
	 * Params:
	 *     propertyName = the name of the property to define
	 *     flags = #JSCValuePropertyFlags
	 *     propertyValue = the default property value
	 */
	public void objectDefinePropertyData(string propertyName, JSCValuePropertyFlags flags, Value propertyValue)
	{
		jsc_value_object_define_property_data(jSCValue, Str.toStringz(propertyName), flags, (propertyValue is null) ? null : propertyValue.getValueStruct());
	}

	/**
	 * Try to delete property with @name from @value. This function will return %FALSE if
	 * the property was defined without %JSC_VALUE_PROPERTY_CONFIGURABLE flag.
	 *
	 * Params:
	 *     name = the property name
	 *
	 * Returns: %TRUE if the property was deleted, or %FALSE otherwise.
	 */
	public bool objectDeleteProperty(string name)
	{
		return jsc_value_object_delete_property(jSCValue, Str.toStringz(name)) != 0;
	}

	/**
	 * Get the list of property names of @value. Only properties defined with %JSC_VALUE_PROPERTY_ENUMERABLE
	 * flag will be collected.
	 *
	 * Returns: a %NULL-terminated array of strings containing the
	 *     property names, or %NULL if @value doesn't have enumerable properties.  Use g_strfreev() to free.
	 */
	public string[] objectEnumerateProperties()
	{
		auto retStr = jsc_value_object_enumerate_properties(jSCValue);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Get property with @name from @value.
	 *
	 * Params:
	 *     name = the property name
	 *
	 * Returns: the property #JSCValue.
	 */
	public Value objectGetProperty(string name)
	{
		auto __p = jsc_value_object_get_property(jSCValue, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(JSCValue*) __p, true);
	}

	/**
	 * Get property at @index from @value.
	 *
	 * Params:
	 *     index = the property index
	 *
	 * Returns: the property #JSCValue.
	 */
	public Value objectGetPropertyAtIndex(uint index)
	{
		auto __p = jsc_value_object_get_property_at_index(jSCValue, index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(JSCValue*) __p, true);
	}

	/**
	 * Get whether @value has property with @name.
	 *
	 * Params:
	 *     name = the property name
	 *
	 * Returns: %TRUE if @value has a property with @name, or %FALSE otherwise
	 */
	public bool objectHasProperty(string name)
	{
		return jsc_value_object_has_property(jSCValue, Str.toStringz(name)) != 0;
	}

	/**
	 * Invoke method with @name on object referenced by @value, passing the given @parameters. If
	 * @n_parameters is 0 no parameters will be passed to the method.
	 * The object instance will be handled automatically even when the method is a custom one
	 * registered with jsc_class_add_method(), so it should never be passed explicitly as parameter
	 * of this function.
	 *
	 * This function always returns a #JSCValue, in case of void methods a #JSCValue referencing
	 * <function>undefined</function> is returned.
	 *
	 * Params:
	 *     name = the method name
	 *     parameters = the #JSCValue<!-- -->s to pass as parameters to the method, or %NULL
	 *
	 * Returns: a #JSCValue with the return value of the method.
	 */
	public Value objectInvokeMethodv(string name, Value[] parameters)
	{
		JSCValue*[] parametersArray = new JSCValue*[parameters.length];
		for ( int i = 0; i < parameters.length; i++ )
		{
			parametersArray[i] = parameters[i].getValueStruct();
		}

		auto __p = jsc_value_object_invoke_methodv(jSCValue, Str.toStringz(name), cast(uint)parameters.length, parametersArray.ptr);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(JSCValue*) __p, true);
	}

	/**
	 * Get whether the value referenced by @value is an instance of class @name.
	 *
	 * Params:
	 *     name = a class name
	 *
	 * Returns: whether the value is an object instance of class @name.
	 */
	public bool objectIsInstanceOf(string name)
	{
		return jsc_value_object_is_instance_of(jSCValue, Str.toStringz(name)) != 0;
	}

	/**
	 * Set @property with @name on @value.
	 *
	 * Params:
	 *     name = the property name
	 *     property = the #JSCValue to set
	 */
	public void objectSetProperty(string name, Value property)
	{
		jsc_value_object_set_property(jSCValue, Str.toStringz(name), (property is null) ? null : property.getValueStruct());
	}

	/**
	 * Set @property at @index on @value.
	 *
	 * Params:
	 *     index = the property index
	 *     property = the #JSCValue to set
	 */
	public void objectSetPropertyAtIndex(uint index, Value property)
	{
		jsc_value_object_set_property_at_index(jSCValue, index, (property is null) ? null : property.getValueStruct());
	}

	/**
	 * Convert @value to a boolean.
	 *
	 * Returns: a #gboolean result of the conversion.
	 */
	public bool toBoolean()
	{
		return jsc_value_to_boolean(jSCValue) != 0;
	}

	/**
	 * Convert @value to a double.
	 *
	 * Returns: a #gdouble result of the conversion.
	 */
	public double toDouble()
	{
		return jsc_value_to_double(jSCValue);
	}

	/**
	 * Convert @value to a #gint32.
	 *
	 * Returns: a #gint32 result of the conversion.
	 */
	public int toInt32()
	{
		return jsc_value_to_int32(jSCValue);
	}

	/**
	 * Create a JSON string of @value serialization. If @indent is 0, the resulting JSON will
	 * not contain newlines. The size of the indent is clamped to 10 spaces.
	 *
	 * Params:
	 *     indent = The number of spaces to indent when nesting.
	 *
	 * Returns: a null-terminated JSON string with serialization of @value
	 *
	 * Since: 2.28
	 */
	public string toJson(uint indent)
	{
		auto retStr = jsc_value_to_json(jSCValue, indent);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Convert @value to a string. Use jsc_value_to_string_as_bytes() instead, if you need to
	 * handle strings containing null characters.
	 *
	 * Returns: a null-terminated string result of the conversion.
	 */
	public override string toString()
	{
		auto retStr = jsc_value_to_string(jSCValue);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Convert @value to a string and return the results as #GBytes. This is needed
	 * to handle strings with null characters.
	 *
	 * Returns: a #GBytes with the result of the conversion.
	 */
	public Bytes toStringAsBytes()
	{
		auto __p = jsc_value_to_string_as_bytes(jSCValue);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}
}
