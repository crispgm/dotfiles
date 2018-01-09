# coding: utf-8

def deprecated_method(replace_func):
    def make_deprecate(func):
        def func_wrapper(self):
            return getattr(self, replace_func)()
        return func_wrapper
    return make_deprecate
