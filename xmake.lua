add_rules("mode.release")

target("quickjs")
    set_kind("static")
    set_languages("c99")
    add_cflags("-fPIC", {force = true})
    add_defines("_GNU_SOURCE")  -- 启用 GNU 扩展特性
    add_includedirs("/usr/include")
    add_defines("CONFIG_VERSION=\"2024-01-13\"")
    add_files("quickjs.c", "cutils.c", "libregexp.c", "libunicode.c", "quickjs-libc.c")
    add_headerfiles("quickjs.h", "quickjs-libc.h")