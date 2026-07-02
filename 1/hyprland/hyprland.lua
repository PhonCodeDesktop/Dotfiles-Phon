
-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 20,

        border_size = 2,

        col = {
            active_border   = { colors = {"rgba(4f8996ee)", "rgba(35636eee)"}, angle = 45 },
            inactive_border = "rgba(29525c44)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 10,
        rounding_power = 2,
        active_opacity   = 0.95,
        inactive_opacity = 0.85,

        shadow = {
            enabled      = true,
            range        = 8,       
            render_power = 3,
            color        = "rgba(29525c20)", 
        },

        blur = {
            enabled   = true,
            size      = 6,      
            passes    = 3,       
            vibrancy  = 0.2,
        },
    },

    animations = {
        enabled = true,
    },
})

hl.curve("fluidOut",       { type = "bezier", points = { {0.16, 1},    {0.3, 1}     } })
hl.curve("ioSuave",        { type = "bezier", points = { {0.25, 1},    {0.5, 1}     } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })
hl.curve("suaveSpring",    { type = "spring", mass = 1, stiffness = 90, dampening = 19 })


hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 4.5,  bezier = "fluidOut" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 5.0,  spring = "suaveSpring" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 4.5,  spring = "suaveSpring",   style = "popin 85%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 2.0,  bezier = "linear",       style = "popin 85%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 2.5,  bezier = "fluidOut" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 2.0,  bezier = "linear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.5,  bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 4.5,  bezier = "fluidOut" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4.2,  bezier = "fluidOut",     style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 2.0,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 2.5,  bezier = "fluidOut" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 2.0,  bezier = "linear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 4.0,  bezier = "ioSuave",      style = "slide" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 3.8,  bezier = "ioSuave",      style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 4.0,  bezier = "ioSuave",      style = "slide" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 6,    bezier = "quick" })

-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

----------------
----  MISC  ----
----------------

hl.config({
    misc = {
        force_default_wallpaper = -1,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = false, -- If true disables the random hyprland logo / anime girl background. :(
    },
})


