module javascriptcore.c.functions;

import std.stdio;
import javascriptcore.c.types;
version (Windows)
	static immutable LIBRARY_JAVASCRIPTCORE = ["libjavascriptcoregtk-4.0-18.dll;javascriptcoregtk-4.0-18.dll;javascriptcoregtk-4.dll"];
else version (OSX)
	static immutable LIBRARY_JAVASCRIPTCORE = ["libjavascriptcoregtk-4.0.18.dylib"];
else
	static immutable LIBRARY_JAVASCRIPTCORE = ["libjavascriptcoregtk-4.0.so.18"];

__gshared extern(C)
{

	// javascriptcore.Class

	GType jsc_class_get_type();
	JSCValue* jsc_class_add_constructor(JSCClass* jscClass, const(char)* name, GCallback callback, void* userData, GDestroyNotify destroyNotify, GType returnType, uint nParams, ... );
	JSCValue* jsc_class_add_constructor_variadic(JSCClass* jscClass, const(char)* name, GCallback callback, void* userData, GDestroyNotify destroyNotify, GType returnType);
	JSCValue* jsc_class_add_constructorv(JSCClass* jscClass, const(char)* name, GCallback callback, void* userData, GDestroyNotify destroyNotify, GType returnType, uint nParameters, GType* parameterTypes);
	void jsc_class_add_method(JSCClass* jscClass, const(char)* name, GCallback callback, void* userData, GDestroyNotify destroyNotify, GType returnType, uint nParams, ... );
	void jsc_class_add_method_variadic(JSCClass* jscClass, const(char)* name, GCallback callback, void* userData, GDestroyNotify destroyNotify, GType returnType);
	void jsc_class_add_methodv(JSCClass* jscClass, const(char)* name, GCallback callback, void* userData, GDestroyNotify destroyNotify, GType returnType, uint nParameters, GType* parameterTypes);
	void jsc_class_add_property(JSCClass* jscClass, const(char)* name, GType propertyType, GCallback getter, GCallback setter, void* userData, GDestroyNotify destroyNotify);
	const(char)* jsc_class_get_name(JSCClass* jscClass);
	JSCClass* jsc_class_get_parent(JSCClass* jscClass);

	// javascriptcore.Context

	GType jsc_context_get_type();
	JSCContext* jsc_context_new();
	JSCContext* jsc_context_new_with_virtual_machine(JSCVirtualMachine* vm);
	JSCContext* jsc_context_get_current();
	JSCCheckSyntaxResult jsc_context_check_syntax(JSCContext* context, const(char)* code, ptrdiff_t length, JSCCheckSyntaxMode mode, const(char)* uri, uint lineNumber, JSCException** exception);
	void jsc_context_clear_exception(JSCContext* context);
	JSCValue* jsc_context_evaluate(JSCContext* context, const(char)* code, ptrdiff_t length);
	JSCValue* jsc_context_evaluate_in_object(JSCContext* context, const(char)* code, ptrdiff_t length, void* objectInstance, JSCClass* objectClass, const(char)* uri, uint lineNumber, JSCValue** object);
	JSCValue* jsc_context_evaluate_with_source_uri(JSCContext* context, const(char)* code, ptrdiff_t length, const(char)* uri, uint lineNumber);
	JSCException* jsc_context_get_exception(JSCContext* context);
	JSCValue* jsc_context_get_global_object(JSCContext* context);
	JSCValue* jsc_context_get_value(JSCContext* context, const(char)* name);
	JSCVirtualMachine* jsc_context_get_virtual_machine(JSCContext* context);
	void jsc_context_pop_exception_handler(JSCContext* context);
	void jsc_context_push_exception_handler(JSCContext* context, JSCExceptionHandler handler, void* userData, GDestroyNotify destroyNotify);
	JSCClass* jsc_context_register_class(JSCContext* context, const(char)* name, JSCClass* parentClass, JSCClassVTable* vtable, GDestroyNotify destroyNotify);
	void jsc_context_set_value(JSCContext* context, const(char)* name, JSCValue* value);
	void jsc_context_throw(JSCContext* context, const(char)* errorMessage);
	void jsc_context_throw_exception(JSCContext* context, JSCException* exception);
	void jsc_context_throw_printf(JSCContext* context, const(char)* format, ... );
	void jsc_context_throw_with_name(JSCContext* context, const(char)* errorName, const(char)* errorMessage);
	void jsc_context_throw_with_name_printf(JSCContext* context, const(char)* errorName, const(char)* format, ... );

	// javascriptcore.Exception

	GType jsc_exception_get_type();
	JSCException* jsc_exception_new(JSCContext* context, const(char)* message);
	JSCException* jsc_exception_new_printf(JSCContext* context, const(char)* format, ... );
	JSCException* jsc_exception_new_vprintf(JSCContext* context, const(char)* format, void* args);
	JSCException* jsc_exception_new_with_name(JSCContext* context, const(char)* name, const(char)* message);
	JSCException* jsc_exception_new_with_name_printf(JSCContext* context, const(char)* name, const(char)* format, ... );
	JSCException* jsc_exception_new_with_name_vprintf(JSCContext* context, const(char)* name, const(char)* format, void* args);
	const(char)* jsc_exception_get_backtrace_string(JSCException* exception);
	uint jsc_exception_get_column_number(JSCException* exception);
	uint jsc_exception_get_line_number(JSCException* exception);
	const(char)* jsc_exception_get_message(JSCException* exception);
	const(char)* jsc_exception_get_name(JSCException* exception);
	const(char)* jsc_exception_get_source_uri(JSCException* exception);
	char* jsc_exception_report(JSCException* exception);
	char* jsc_exception_to_string(JSCException* exception);

	// javascriptcore.Value

	GType jsc_value_get_type();
	JSCValue* jsc_value_new_array(JSCContext* context, GType firstItemType, ... );
	JSCValue* jsc_value_new_array_from_garray(JSCContext* context, GPtrArray* array);
	JSCValue* jsc_value_new_array_from_strv(JSCContext* context, char** strv);
	JSCValue* jsc_value_new_boolean(JSCContext* context, int value);
	JSCValue* jsc_value_new_from_json(JSCContext* context, const(char)* json);
	JSCValue* jsc_value_new_function(JSCContext* context, const(char)* name, GCallback callback, void* userData, GDestroyNotify destroyNotify, GType returnType, uint nParams, ... );
	JSCValue* jsc_value_new_function_variadic(JSCContext* context, const(char)* name, GCallback callback, void* userData, GDestroyNotify destroyNotify, GType returnType);
	JSCValue* jsc_value_new_functionv(JSCContext* context, const(char)* name, GCallback callback, void* userData, GDestroyNotify destroyNotify, GType returnType, uint nParameters, GType* parameterTypes);
	JSCValue* jsc_value_new_null(JSCContext* context);
	JSCValue* jsc_value_new_number(JSCContext* context, double number);
	JSCValue* jsc_value_new_object(JSCContext* context, void* instance_, JSCClass* jscClass);
	JSCValue* jsc_value_new_string(JSCContext* context, const(char)* string_);
	JSCValue* jsc_value_new_string_from_bytes(JSCContext* context, GBytes* bytes);
	JSCValue* jsc_value_new_undefined(JSCContext* context);
	JSCValue* jsc_value_constructor_call(JSCValue* value, GType firstParameterType, ... );
	JSCValue* jsc_value_constructor_callv(JSCValue* value, uint nParameters, JSCValue** parameters);
	JSCValue* jsc_value_function_call(JSCValue* value, GType firstParameterType, ... );
	JSCValue* jsc_value_function_callv(JSCValue* value, uint nParameters, JSCValue** parameters);
	JSCContext* jsc_value_get_context(JSCValue* value);
	int jsc_value_is_array(JSCValue* value);
	int jsc_value_is_boolean(JSCValue* value);
	int jsc_value_is_constructor(JSCValue* value);
	int jsc_value_is_function(JSCValue* value);
	int jsc_value_is_null(JSCValue* value);
	int jsc_value_is_number(JSCValue* value);
	int jsc_value_is_object(JSCValue* value);
	int jsc_value_is_string(JSCValue* value);
	int jsc_value_is_undefined(JSCValue* value);
	void jsc_value_object_define_property_accessor(JSCValue* value, const(char)* propertyName, JSCValuePropertyFlags flags, GType propertyType, GCallback getter, GCallback setter, void* userData, GDestroyNotify destroyNotify);
	void jsc_value_object_define_property_data(JSCValue* value, const(char)* propertyName, JSCValuePropertyFlags flags, JSCValue* propertyValue);
	int jsc_value_object_delete_property(JSCValue* value, const(char)* name);
	char** jsc_value_object_enumerate_properties(JSCValue* value);
	JSCValue* jsc_value_object_get_property(JSCValue* value, const(char)* name);
	JSCValue* jsc_value_object_get_property_at_index(JSCValue* value, uint index);
	int jsc_value_object_has_property(JSCValue* value, const(char)* name);
	JSCValue* jsc_value_object_invoke_method(JSCValue* value, const(char)* name, GType firstParameterType, ... );
	JSCValue* jsc_value_object_invoke_methodv(JSCValue* value, const(char)* name, uint nParameters, JSCValue** parameters);
	int jsc_value_object_is_instance_of(JSCValue* value, const(char)* name);
	void jsc_value_object_set_property(JSCValue* value, const(char)* name, JSCValue* property);
	void jsc_value_object_set_property_at_index(JSCValue* value, uint index, JSCValue* property);
	int jsc_value_to_boolean(JSCValue* value);
	double jsc_value_to_double(JSCValue* value);
	int jsc_value_to_int32(JSCValue* value);
	char* jsc_value_to_json(JSCValue* value, uint indent);
	char* jsc_value_to_string(JSCValue* value);
	GBytes* jsc_value_to_string_as_bytes(JSCValue* value);

	// javascriptcore.VirtualMachine

	GType jsc_virtual_machine_get_type();
	JSCVirtualMachine* jsc_virtual_machine_new();

	// javascriptcore.WeakValue

	GType jsc_weak_value_get_type();
	JSCWeakValue* jsc_weak_value_new(JSCValue* value);
	JSCValue* jsc_weak_value_get_value(JSCWeakValue* weakValue);
}