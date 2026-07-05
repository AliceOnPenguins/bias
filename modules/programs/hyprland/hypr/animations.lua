--  █████╗ ███╗   ██╗██╗███╗   ███╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
-- ██╔══██╗████╗  ██║██║████╗ ████║██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
-- ███████║██╔██╗ ██║██║██╔████╔██║███████║   ██║   ██║██║   ██║██╔██╗ ██║
-- ██╔══██║██║╚██╗██║██║██║╚██╔╝██║██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
-- ██║  ██║██║ ╚████║██║██║ ╚═╝ ██║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
-- ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
--------------------------------------------------------------------------

-- Self explanatory
hl.config({
  animations = {
    enabled = true,
  },
})

-- hl.curve("smooth", { type = "bezier", points = { { 0.22, 1 }, { 0.36, 1 } } })
--
-- hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "smooth", style = "slidevert" })
-- hl.animation({ leaf = "specialWorkspace", enabled = false, speed = 8, bezier = "smooth", style = "slidevert" })
-- hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "smooth" })
-- hl.animation({ leaf = "fade", enabled = true, speed = 3, bezier = "smooth" })

-- new anims; credits: https://github.com/dusklinux/dusky
hl.curve("pro", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.0 } } })
hl.curve("snap", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })

hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "snap", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "snap", style = "popin 80%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 3, bezier = "snap" })

hl.animation({ leaf = "layers", enabled = true, speed = 2, bezier = "pro", style = "slide" })
hl.animation({ leaf = "fade", enabled = true, speed = 2, bezier = "pro" })
hl.animation({ leaf = "border", enabled = true, speed = 3, bezier = "pro" })

-- fix for screenshot gray capture
hl.animation({ leaf = "layers", enabled = false })

-- vert workspace slide
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "pro", style = "slidevert" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3, bezier = "pro", style = "slidevert" })
