module javascriptcore.Exception;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import javascriptcore.Context;
private import javascriptcore.c.functions;
public  import javascriptcore.c.types;


/**
 * JSCException represents a JavaScript exception.
 */
public class JException : ObjectG
{
	/** the main Gtk struct */
	protected JSCException* jSCException;

	/** Get the main Gtk struct */
	public JSCException* getExceptionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return jSCException;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)jSCException;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (JSCException* jSCException, bool ownedRef = false)
	{
		this.jSCException = jSCException;
		super(cast(GObject*)jSCException, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return jsc_exception_get_type();
	}

	/**
	 * Create a new #JSCException in @context with @message.
	 *
	 * Params:
	 *     context = a #JSCContext
	 *     message = the error message
	 *
	 * Returns: a new #JSCException.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Context context, string message)
	{
		auto __p = jsc_exception_new((context is null) ? null : context.getContextStruct(), Str.toStringz(message));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(JSCException*) __p, true);
	}

	/**
	 * Create a new #JSCException in @context using a formatted string
	 * for the message. This is similar to jsc_exception_new_printf()
	 * except that the arguments to the format string are passed as a va_list.
	 *
	 * Params:
	 *     context = a #JSCContext
	 *     format = the string format
	 *     args = the parameters to insert into the format string
	 *
	 * Returns: a new #JSCException.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Context context, string format, void* args)
	{
		auto __p = jsc_exception_new_vprintf((context is null) ? null : context.getContextStruct(), Str.toStringz(format), args);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_vprintf");
		}

		this(cast(JSCException*) __p, true);
	}

	/**
	 * Create a new #JSCException in @context with @name and @message.
	 *
	 * Params:
	 *     context = a #JSCContext
	 *     name = the error name
	 *     message = the error message
	 *
	 * Returns: a new #JSCException.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Context context, string name, string message)
	{
		auto __p = jsc_exception_new_with_name((context is null) ? null : context.getContextStruct(), Str.toStringz(name), Str.toStringz(message));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_name");
		}

		this(cast(JSCException*) __p, true);
	}

	/**
	 * Create a new #JSCException in @context with @name and using a formatted string
	 * for the message. This is similar to jsc_exception_new_with_name_printf()
	 * except that the arguments to the format string are passed as a va_list.
	 *
	 * Params:
	 *     context = a #JSCContext
	 *     name = the error name
	 *     format = the string format
	 *     args = the parameters to insert into the format string
	 *
	 * Returns: a new #JSCException.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Context context, string name, string format, void* args)
	{
		auto __p = jsc_exception_new_with_name_vprintf((context is null) ? null : context.getContextStruct(), Str.toStringz(name), Str.toStringz(format), args);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_name_vprintf");
		}

		this(cast(JSCException*) __p, true);
	}

	/**
	 * Get a string with the exception backtrace.
	 *
	 * Returns: the exception backtrace string or %NULL.
	 */
	public string getBacktraceString()
	{
		return Str.toString(jsc_exception_get_backtrace_string(jSCException));
	}

	/**
	 * Get the column number at which @exception happened.
	 *
	 * Returns: the column number of @exception.
	 */
	public uint getColumnNumber()
	{
		return jsc_exception_get_column_number(jSCException);
	}

	/**
	 * Get the line number at which @exception happened.
	 *
	 * Returns: the line number of @exception.
	 */
	public uint getLineNumber()
	{
		return jsc_exception_get_line_number(jSCException);
	}

	/**
	 * Get the error message of @exception.
	 *
	 * Returns: the @exception error message.
	 */
	public string getMessage()
	{
		return Str.toString(jsc_exception_get_message(jSCException));
	}

	/**
	 * Get the error name of @exception
	 *
	 * Returns: the @exception error name.
	 */
	public string getName()
	{
		return Str.toString(jsc_exception_get_name(jSCException));
	}

	/**
	 * Get the source URI of @exception.
	 *
	 * Returns: the the source URI of @exception, or %NULL.
	 */
	public string getSourceUri()
	{
		return Str.toString(jsc_exception_get_source_uri(jSCException));
	}

	/**
	 * Return a report message of @exception, containing all the possible details such us
	 * source URI, line, column and backtrace, and formatted to be printed.
	 *
	 * Returns: a new string with the exception report
	 */
	public string report()
	{
		auto retStr = jsc_exception_report(jSCException);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Get the string representation of @exception error.
	 *
	 * Returns: the string representation of @exception.
	 */
	public override string toString()
	{
		auto retStr = jsc_exception_to_string(jSCException);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
