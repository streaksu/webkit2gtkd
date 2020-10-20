module javascriptcore.WeakValue;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import javascriptcore.Value;
private import javascriptcore.c.functions;
public  import javascriptcore.c.types;
private import std.algorithm;


/**
 * JSCWeakValue represents a weak reference to a value in a #JSCContext. It can be used
 * to keep a reference to a JavaScript value without protecting it from being garbage
 * collected and without referencing the #JSCContext either.
 */
public class WeakValue : ObjectG
{
	/** the main Gtk struct */
	protected JSCWeakValue* jSCWeakValue;

	/** Get the main Gtk struct */
	public JSCWeakValue* getWeakValueStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return jSCWeakValue;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)jSCWeakValue;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (JSCWeakValue* jSCWeakValue, bool ownedRef = false)
	{
		this.jSCWeakValue = jSCWeakValue;
		super(cast(GObject*)jSCWeakValue, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return jsc_weak_value_get_type();
	}

	/**
	 * Create a new #JSCWeakValue for the JavaScript value referenced by @value.
	 *
	 * Params:
	 *     value = a #JSCValue
	 *
	 * Returns: a new #JSCWeakValue
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Value value)
	{
		auto __p = jsc_weak_value_new((value is null) ? null : value.getValueStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(JSCWeakValue*) __p, true);
	}

	/**
	 * Get a #JSCValue referencing the JavaScript value of @weak_value.
	 *
	 * Returns: a new #JSCValue or %NULL if @weak_value was cleared.
	 */
	public Value getValue()
	{
		auto __p = jsc_weak_value_get_value(jSCWeakValue);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(JSCValue*) __p, true);
	}

	/**
	 * This signal is emitted when the JavaScript value is destroyed.
	 */
	gulong addOnCleared(void delegate(WeakValue) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cleared", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
