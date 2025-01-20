data:extend {
    {
        type = "shortcut",
        name = "lua_shortcut_print_shortcuts",
        action = "lua",
        localised_name = "shortcut.lua_shortcut_print_shortcuts",
        icons = {
            {
                icon = "__favorite-chocolate-bars__/_graphics/H.png",
                icon_size = 56,
            }
        },
        small_icons = {
            {
                icon = "__favorite-chocolate-bars__/_graphics/H.png",
                icon_size = 56,
            }
        }
    },
    {
        type = "custom-input",
        name = "favorite_chocolate_bar_import",
        key_sequence = "CONTROL + SHIFT + I",
        consuming = "none",
    },
    {
        type = "custom-input",
        name = "favorite_chocolate_bar_export",
        key_sequence = "CONTROL + SHIFT + E",
        consuming = "none",
    },
}
