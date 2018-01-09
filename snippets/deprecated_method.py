# coding: utf-8

def deprecated_method(replace_func):
    def make_deprecate(func):
        def func_wrapper(self, *args, **kwargs):
            return getattr(self, replace_func)(*args, **kwargs)
        return func_wrapper
    return make_deprecate
