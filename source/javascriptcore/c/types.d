module javascriptcore.c.types;

public import glib.c.types;
public import gobject.c.types;

alias JSGlobalContextRef = void*;
alias JSValueRef         = void*;
/**
 * Enum values to specify a mode to check for syntax errors in jsc_context_check_syntax().
 */
public enum JSCCheckSyntaxMode
{
	/**
	 * mode to check syntax of a script
	 */
	SCRIPT = 0,
	/**
	 * mode to check syntax of a module
	 */
	MODULE = 1,
}
alias JSCCheckSyntaxMode CheckSyntaxMode;

/**
 * Enum values to specify the result of jsc_context_check_syntax().
 */
public enum JSCCheckSyntaxResult
{
	/**
	 * no errors
	 */
	SUCCESS = 0,
	/**
	 * recoverable syntax error
	 */
	RECOVERABLE_ERROR = 1,
	/**
	 * irrecoverable syntax error
	 */
	IRRECOVERABLE_ERROR = 2,
	/**
	 * unterminated literal error
	 */
	UNTERMINATED_LITERAL_ERROR = 3,
	/**
	 * out of memory error
	 */
	OUT_OF_MEMORY_ERROR = 4,
	/**
	 * stack overflow error
	 */
	STACK_OVERFLOW_ERROR = 5,
}
alias JSCCheckSyntaxResult CheckSyntaxResult;

/**
 * Enum values for options types.
 *
 * Since: 2.24
 */
public enum JSCOptionType
{
	/**
	 * A #gboolean option type.
	 */
	BOOLEAN = 0,
	/**
	 * A #gint option type.
	 */
	INT = 1,
	/**
	 * A #guint option type.
	 */
	UINT = 2,
	/**
	 * A #gsize options type.
	 */
	SIZE = 3,
	/**
	 * A #gdouble options type.
	 */
	DOUBLE = 4,
	/**
	 * A string option type.
	 */
	STRING = 5,
	/**
	 * A range string option type.
	 */
	RANGE_STRING = 6,
}
alias JSCOptionType OptionType;

/**
 * Flags used when defining properties with jsc_value_object_define_property_data() and
 * jsc_value_object_define_property_accessor().
 */
public enum JSCValuePropertyFlags
{
	/**
	 * the type of the property descriptor may be changed and the
	 * property may be deleted from the corresponding object.
	 */
	CONFIGURABLE = 1,
	/**
	 * the property shows up during enumeration of the properties on
	 * the corresponding object.
	 */
	ENUMERABLE = 2,
	/**
	 * the value associated with the property may be changed with an
	 * assignment operator. This doesn't have any effect when passed to jsc_value_object_define_property_accessor().
	 */
	WRITABLE = 4,
}
alias JSCValuePropertyFlags ValuePropertyFlags;

struct JSCClass;

struct JSCClassClass;

/**
 * Virtual table for a JSCClass. This can be optionally used when registering a #JSCClass in a #JSCContext
 * to provide a custom implementation for the class. All virtual functions are optional and can be set to
 * %NULL to fallback to the default implementation.
 */
struct JSCClassVTable
{
	/**
	 * a #JSCClassGetPropertyFunction for getting a property.
	 */
	JSCClassGetPropertyFunction getProperty;
	/**
	 * a #JSCClassSetPropertyFunction for setting a property.
	 */
	JSCClassSetPropertyFunction setProperty;
	/**
	 * a #JSCClassHasPropertyFunction for querying a property.
	 */
	JSCClassHasPropertyFunction hasProperty;
	/**
	 * a #JSCClassDeletePropertyFunction for deleting a property.
	 */
	JSCClassDeletePropertyFunction deleteProperty;
	/**
	 * a #JSCClassEnumeratePropertiesFunction for enumerating properties.
	 */
	JSCClassEnumeratePropertiesFunction enumerateProperties;
	/** */
	extern(C) void function() JscReserved0;
	/** */
	extern(C) void function() JscReserved1;
	/** */
	extern(C) void function() JscReserved2;
	/** */
	extern(C) void function() JscReserved3;
}

struct JSCContext
{
	GObject parent;
	JSCContextPrivate* priv;
}

struct JSCContextClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() JscReserved0;
	/** */
	extern(C) void function() JscReserved1;
	/** */
	extern(C) void function() JscReserved2;
	/** */
	extern(C) void function() JscReserved3;
}

struct JSCContextPrivate;

struct JSCException
{
	GObject parent;
	JSCExceptionPrivate* priv;
}

struct JSCExceptionClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() JscReserved0;
	/** */
	extern(C) void function() JscReserved1;
	/** */
	extern(C) void function() JscReserved2;
	/** */
	extern(C) void function() JscReserved3;
}

struct JSCExceptionPrivate;

struct JSCValue
{
	GObject parent;
	JSCValuePrivate* priv;
}

struct JSCValueClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() JscReserved0;
	/** */
	extern(C) void function() JscReserved1;
	/** */
	extern(C) void function() JscReserved2;
	/** */
	extern(C) void function() JscReserved3;
}

struct JSCValuePrivate;

struct JSCVirtualMachine
{
	GObject parent;
	JSCVirtualMachinePrivate* priv;
}

struct JSCVirtualMachineClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() JscReserved0;
	/** */
	extern(C) void function() JscReserved1;
	/** */
	extern(C) void function() JscReserved2;
	/** */
	extern(C) void function() JscReserved3;
}

struct JSCVirtualMachinePrivate;

struct JSCWeakValue
{
	GObject parent;
	JSCWeakValuePrivate* priv;
}

struct JSCWeakValueClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() JscReserved0;
	/** */
	extern(C) void function() JscReserved1;
	/** */
	extern(C) void function() JscReserved2;
	/** */
	extern(C) void function() JscReserved3;
}

struct JSCWeakValuePrivate;

/**
 * The type of delete_property in #JSCClassVTable. This is only required when you need to handle
 * external properties not added to the prototype.
 *
 * Params:
 *     jscClass = a #JSCClass
 *     context = a #JSCContext
 *     instance_ = the @jsc_class instance
 *     name = the property name
 *
 * Returns: %TRUE if handled or %FALSE to to forward the request to the parent class or prototype chain.
 */
public alias extern(C) int function(JSCClass* jscClass, JSCContext* context, void* instance_, const(char)* name) JSCClassDeletePropertyFunction;

/**
 * The type of enumerate_properties in #JSCClassVTable. This is only required when you need to handle
 * external properties not added to the prototype.
 *
 * Params:
 *     jscClass = a #JSCClass
 *     context = a #JSCContext
 *     instance_ = the @jsc_class instance
 *
 * Returns: a %NULL-terminated array of strings
 *     containing the property names, or %NULL if @instance doesn't have enumerable properties.
 */
public alias extern(C) char** function(JSCClass* jscClass, JSCContext* context, void* instance_) JSCClassEnumeratePropertiesFunction;

/**
 * The type of get_property in #JSCClassVTable. This is only required when you need to handle
 * external properties not added to the prototype.
 *
 * Params:
 *     jscClass = a #JSCClass
 *     context = a #JSCContext
 *     instance_ = the @jsc_class instance
 *     name = the property name
 *
 * Returns: a #JSCValue or %NULL to forward the request to
 *     the parent class or prototype chain
 */
public alias extern(C) JSCValue* function(JSCClass* jscClass, JSCContext* context, void* instance_, const(char)* name) JSCClassGetPropertyFunction;

/**
 * The type of has_property in #JSCClassVTable. This is only required when you need to handle
 * external properties not added to the prototype.
 *
 * Params:
 *     jscClass = a #JSCClass
 *     context = a #JSCContext
 *     instance_ = the @jsc_class instance
 *     name = the property name
 *
 * Returns: %TRUE if @instance has a property with @name or %FALSE to forward the request
 *     to the parent class or prototype chain.
 */
public alias extern(C) int function(JSCClass* jscClass, JSCContext* context, void* instance_, const(char)* name) JSCClassHasPropertyFunction;

/**
 * The type of set_property in #JSCClassVTable. This is only required when you need to handle
 * external properties not added to the prototype.
 *
 * Params:
 *     jscClass = a #JSCClass
 *     context = a #JSCContext
 *     instance_ = the @jsc_class instance
 *     name = the property name
 *     value = the #JSCValue to set
 *
 * Returns: %TRUE if handled or %FALSE to forward the request to the parent class or prototype chain.
 */
public alias extern(C) int function(JSCClass* jscClass, JSCContext* context, void* instance_, const(char)* name, JSCValue* value) JSCClassSetPropertyFunction;

/**
 * Function used to handle JavaScript exceptions in a #JSCContext.
 *
 * Params:
 *     context = a #JSCContext
 *     exception = a #JSCException
 *     userData = user data
 */
public alias extern(C) void function(JSCContext* context, JSCException* exception, void* userData) JSCExceptionHandler;

/**
 * Function used to iterate options.
 *
 * Not that @description string is not localized.
 *
 * Params:
 *     option = the option name
 *     type = the option #JSCOptionType
 *     description = the option description, or %NULL
 *     userData = user data
 *
 * Returns: %TRUE to stop the iteration, or %FALSE otherwise
 *
 * Since: 2.24
 */
public alias extern(C) int function(const(char)* option, JSCOptionType type, const(char)* description, void* userData) JSCOptionsFunc;

/**
 * Like jsc_get_major_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum MAJOR_VERSION = 2;
alias JSC_MAJOR_VERSION = MAJOR_VERSION;

/**
 * Like jsc_get_micro_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum MICRO_VERSION = 1;
alias JSC_MICRO_VERSION = MICRO_VERSION;

/**
 * Like jsc_get_minor_version(), but from the headers used at
 * application compile time, rather than from the library linked
 * against at application run time.
 */
enum MINOR_VERSION = 30;
alias JSC_MINOR_VERSION = MINOR_VERSION;

/**
 * Allows the DFG JIT to be used if %TRUE.
 * Option type: %JSC_OPTION_BOOLEAN
 * Default value: %TRUE.
 */
enum OPTIONS_USE_DFG = "useDFGJIT";
alias JSC_OPTIONS_USE_DFG = OPTIONS_USE_DFG;

/**
 * Allows the FTL JIT to be used if %TRUE.
 * Option type: %JSC_OPTION_BOOLEAN
 * Default value: %TRUE.
 */
enum OPTIONS_USE_FTL = "useFTLJIT";
alias JSC_OPTIONS_USE_FTL = OPTIONS_USE_FTL;

/**
 * Allows the executable pages to be allocated for JIT and thunks if %TRUE.
 * Option type: %JSC_OPTION_BOOLEAN
 * Default value: %TRUE.
 */
enum OPTIONS_USE_JIT = "useJIT";
alias JSC_OPTIONS_USE_JIT = OPTIONS_USE_JIT;

/**
 * Allows the LLINT to be used if %TRUE.
 * Option type: %JSC_OPTION_BOOLEAN
 * Default value: %TRUE.
 */
enum OPTIONS_USE_LLINT = "useLLInt";
alias JSC_OPTIONS_USE_LLINT = OPTIONS_USE_LLINT;
