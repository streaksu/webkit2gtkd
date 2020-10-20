module javascriptcore.Class;

private import glib.Str;
private import gobject.ObjectG;
private import javascriptcore.Value;
private import javascriptcore.c.functions;
public  import javascriptcore.c.types;


/**
 * A JSSClass represents a custom JavaScript class registered by the user in a #JSCContext.
 * It allows to create new JavaScripts objects whose instances are created by the user using
 * this API.
 * It's possible to add constructors, properties and methods for a JSSClass by providing
 * #GCallback<!-- -->s to implement them.
 */
public class Class : ObjectG
{
	/** the main Gtk struct */
	protected JSCClass* jSCClass;

	/** Get the main Gtk struct */
	public JSCClass* getClassStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return jSCClass;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)jSCClass;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (JSCClass* jSCClass, bool ownedRef = false)
	{
		this.jSCClass = jSCClass;
		super(cast(GObject*)jSCClass, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return jsc_class_get_type();
	}

	/**
	 * Add a constructor to @jsc_class. If @name is %NULL, the class name will be used. When <function>new</function>
	 * is used with the constructor or jsc_value_constructor_call() is called, @callback is invoked receiving
	 * a #GPtrArray of #JSCValue<!-- -->s as arguments and @user_data as the last parameter. When the constructor object
	 * is cleared in the #JSCClass context, @destroy_notify is called with @user_data as parameter.
	 *
	 * This function creates the constructor, which needs to be added to an object as a property to be able to use it. Use
	 * jsc_context_set_value() to make the constructor available in the global object.
	 *
	 * Note that the value returned by @callback is adopted by @jsc_class, and the #GDestroyNotify passed to
	 * jsc_context_register_class() is responsible for disposing of it.
	 *
	 * Params:
	 *     name = the constructor name or %NULL
	 *     callback = a #GCallback to be called to create an instance of @jsc_class
	 *     userData = user data to pass to @callback
	 *     destroyNotify = destroy notifier for @user_data
	 *     returnType = the #GType of the constructor return value
	 *
	 * Returns: a #JSCValue representing the class constructor.
	 */
	public Value addConstructorVariadic(string name, GCallback callback, void* userData, GDestroyNotify destroyNotify, GType returnType)
	{
		auto __p = jsc_class_add_constructor_variadic(jSCClass, Str.toStringz(name), callback, userData, destroyNotify, returnType);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(JSCValue*) __p, true);
	}

	/**
	 * Add a constructor to @jsc_class. If @name is %NULL, the class name will be used. When <function>new</function>
	 * is used with the constructor or jsc_value_constructor_call() is called, @callback is invoked receiving the
	 * parameters and @user_data as the last parameter. When the constructor object is cleared in the #JSCClass context,
	 * @destroy_notify is called with @user_data as parameter.
	 *
	 * This function creates the constructor, which needs to be added to an object as a property to be able to use it. Use
	 * jsc_context_set_value() to make the constructor available in the global object.
	 *
	 * Note that the value returned by @callback is adopted by @jsc_class, and the #GDestroyNotify passed to
	 * jsc_context_register_class() is responsible for disposing of it.
	 *
	 * Params:
	 *     name = the constructor name or %NULL
	 *     callback = a #GCallback to be called to create an instance of @jsc_class
	 *     userData = user data to pass to @callback
	 *     destroyNotify = destroy notifier for @user_data
	 *     returnType = the #GType of the constructor return value
	 *     parameterTypes = a list of #GType<!-- -->s, one for each parameter, or %NULL
	 *
	 * Returns: a #JSCValue representing the class constructor.
	 */
	public Value addConstructorv(string name, GCallback callback, void* userData, GDestroyNotify destroyNotify, GType returnType, GType[] parameterTypes)
	{
		auto __p = jsc_class_add_constructorv(jSCClass, Str.toStringz(name), callback, userData, destroyNotify, returnType, cast(uint)parameterTypes.length, parameterTypes.ptr);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(JSCValue*) __p, true);
	}

	/**
	 * Add method with @name to @jsc_class. When the method is called by JavaScript or jsc_value_object_invoke_method(),
	 * @callback is called receiving the class instance as first parameter, followed by a #GPtrArray of #JSCValue<!-- -->s
	 * with the method arguments and then @user_data as last parameter. When the method is cleared in the #JSCClass context,
	 * @destroy_notify is called with @user_data as parameter.
	 *
	 * Note that the value returned by @callback must be transfer full. In case of non-refcounted boxed types, you should use
	 * %G_TYPE_POINTER instead of the actual boxed #GType to ensure that the instance owned by #JSCClass is used.
	 * If you really want to return a new copy of the boxed type, use #JSC_TYPE_VALUE and return a #JSCValue created
	 * with jsc_value_new_object() that receives the copy as the instance parameter.
	 *
	 * Params:
	 *     name = the method name
	 *     callback = a #GCallback to be called to invoke method @name of @jsc_class
	 *     userData = user data to pass to @callback
	 *     destroyNotify = destroy notifier for @user_data
	 *     returnType = the #GType of the method return value, or %G_TYPE_NONE if the method is void.
	 */
	public void addMethodVariadic(string name, GCallback callback, void* userData, GDestroyNotify destroyNotify, GType returnType)
	{
		jsc_class_add_method_variadic(jSCClass, Str.toStringz(name), callback, userData, destroyNotify, returnType);
	}

	/**
	 * Add method with @name to @jsc_class. When the method is called by JavaScript or jsc_value_object_invoke_method(),
	 * @callback is called receiving the class instance as first parameter, followed by the method parameters and then
	 * @user_data as last parameter. When the method is cleared in the #JSCClass context, @destroy_notify is called with
	 * @user_data as parameter.
	 *
	 * Note that the value returned by @callback must be transfer full. In case of non-refcounted boxed types, you should use
	 * %G_TYPE_POINTER instead of the actual boxed #GType to ensure that the instance owned by #JSCClass is used.
	 * If you really want to return a new copy of the boxed type, use #JSC_TYPE_VALUE and return a #JSCValue created
	 * with jsc_value_new_object() that receives the copy as the instance parameter.
	 *
	 * Params:
	 *     name = the method name
	 *     callback = a #GCallback to be called to invoke method @name of @jsc_class
	 *     userData = user data to pass to @callback
	 *     destroyNotify = destroy notifier for @user_data
	 *     returnType = the #GType of the method return value, or %G_TYPE_NONE if the method is void.
	 *     parameterTypes = a list of #GType<!-- -->s, one for each parameter, or %NULL
	 */
	public void addMethodv(string name, GCallback callback, void* userData, GDestroyNotify destroyNotify, GType returnType, GType[] parameterTypes)
	{
		jsc_class_add_methodv(jSCClass, Str.toStringz(name), callback, userData, destroyNotify, returnType, cast(uint)parameterTypes.length, parameterTypes.ptr);
	}

	/**
	 * Add a property with @name to @jsc_class. When the property value needs to be getted, @getter is called
	 * receiving the the class instance as first parameter and @user_data as last parameter. When the property
	 * value needs to be set, @setter is called receiving the the class instance as first parameter, followed
	 * by the value to be set and then @user_data as the last parameter. When the property is cleared in the
	 * #JSCClass context, @destroy_notify is called with @user_data as parameter.
	 *
	 * Note that the value returned by @getter must be transfer full. In case of non-refcounted boxed types, you should use
	 * %G_TYPE_POINTER instead of the actual boxed #GType to ensure that the instance owned by #JSCClass is used.
	 * If you really want to return a new copy of the boxed type, use #JSC_TYPE_VALUE and return a #JSCValue created
	 * with jsc_value_new_object() that receives the copy as the instance parameter.
	 *
	 * Params:
	 *     name = the property name
	 *     propertyType = the #GType of the property value
	 *     getter = a #GCallback to be called to get the property value
	 *     setter = a #GCallback to be called to set the property value
	 *     userData = user data to pass to @getter and @setter
	 *     destroyNotify = destroy notifier for @user_data
	 */
	public void addProperty(string name, GType propertyType, GCallback getter, GCallback setter, void* userData, GDestroyNotify destroyNotify)
	{
		jsc_class_add_property(jSCClass, Str.toStringz(name), propertyType, getter, setter, userData, destroyNotify);
	}

	/**
	 * Get the class name of @jsc_class
	 *
	 * Returns: the name of @jsc_class
	 */
	public string getName()
	{
		return Str.toString(jsc_class_get_name(jSCClass));
	}

	/**
	 * Get the parent class of @jsc_class
	 *
	 * Returns: the parent class of @jsc_class
	 */
	public Class getParent()
	{
		auto __p = jsc_class_get_parent(jSCClass);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Class)(cast(JSCClass*) __p);
	}
}
