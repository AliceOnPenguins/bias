--  █████╗ ███╗   ██╗██╗███╗   ███╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
-- ██╔══██╗████╗  ██║██║████╗ ████║██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
-- ███████║██╔██╗ ██║██║██╔████╔██║███████║   ██║   ██║██║   ██║██╔██╗ ██║
-- ██╔══██║██║╚██╗██║██║██║╚██╔╝██║██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
-- ██║  ██║██║ ╚████║██║██║ ╚═╝ ██║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
-- ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
--------------------------------------------------------------------------

-- hl.curve("smooth", { type = "bezier", points = { { 0.22, 1 }, { 0.36, 1 } } })
--
-- hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "smooth", style = "slidevert" })
-- hl.animation({ leaf = "specialWorkspace", enabled = false, speed = 8, bezier = "smooth", style = "slidevert" })
-- hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "smooth" })
-- hl.animation({ leaf = "fade", enabled = true, speed = 3, bezier = "smooth" })

-- -- new anims; credits: https://github.com/dusklinux/dusky
-- hl.curve("pro", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.0 } } })
-- hl.curve("snap", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
--
-- hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "snap", style = "popin 80%" })
-- hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "snap", style = "popin 80%" })
-- hl.animation({ leaf = "windowsMove", enabled = true, speed = 3, bezier = "snap" })
--
-- hl.animation({ leaf = "layers", enabled = true, speed = 2, bezier = "pro", style = "slide" })
-- hl.animation({ leaf = "fade", enabled = true, speed = 2, bezier = "pro" })
-- hl.animation({ leaf = "border", enabled = true, speed = 3, bezier = "pro" })
--
-- -- fix for screenshot gray capture
-- hl.animation({ leaf = "layers", enabled = false })
--
-- -- vert workspace slide
-- hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "pro", style = "slidevert" })
-- hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3, bezier = "pro", style = "slidevert" })
--
local beziers = {
  -- Overshoot
  { name = "heavyOvershoot",     points = { 0.53, 0.51, 0.4, 1.22 } },
  { name = "lightOvershoot",     points = { 0.33, 0.61, 0.63, 1.19 } },

  -- Linear
  { name = "smoothSnap",         points = { 0.32, 0.51, 0.44, 1 } },
  { name = "smoothIn",           points = { 0.25, 1, 0.5, 1 } },
  { name = "smoothOutOvershoot", points = { 0.46, -0.25, 0.81, 0.51 } },

  -- Springs
  { name = "hardSpring",         kind = "spring" },
  { name = "mediumSpring",       kind = "spring",                     stiffness = 50, dampening = 10 },
  { name = "heavierSpring",      kind = "spring",                     mass = 1.3,     stiffness = 50, dampening = 11 },
  { name = "looseSpring",        kind = "spring",                     dampening = 5,  stiffness = 50 },
}

-- For every bezier in the table
for _, bezier in ipairs(beziers) do
  -- if there are points, then its not a spring
  if bezier.points then
    hl.curve(bezier.name, {
      type = "bezier",
      points = { { bezier.points[1], bezier.points[2] }, { bezier.points[3], bezier.points[4] } },
    })
    -- if its a spring
  elseif bezier.kind == "spring" then
    hl.curve(bezier.name, {
      type = "spring",
      -- if all the parameters are empty, make a spring with the values from the wiki
      mass = bezier.mass or 1,
      stiffness = (bezier.stiffness or 70) + 430,
      dampening = (bezier.dampening or 10) + 26,
    })
  else
    -- you fucked something up
    hl.notification.create({ text = "invalid curve generated", icon = "warning", timeout = 8000 })
  end
end

local animations = {
  -- window animations
  { leaf = "windows",          speed = 2, spring = "heavierSpring",  style = "slide right" },
  { leaf = "windowsOut",       speed = 2, bezier = "heavyOvershoot", style = "popin 30%" },

  -- fade
  { leaf = "fade",             speed = 2, bezier = "smoothIn" },

  -- workspaces and special
  { leaf = "workspaces",       speed = 2, bezier = "heavyOvershoot", style = "slidefadevert 30%" },
  { leaf = "specialWorkspace", speed = 5, spring = "mediumSpring",   style = "slidefadevert -80%" },
}

-- for every entry in the animation table
for _, anim in ipairs(animations) do
  -- if there is a bezier param
  if anim.bezier then
    hl.animation({
      leaf = anim.leaf,
      enabled = true,
      speed = anim.speed,
      bezier = anim.bezier or "",
      style = anim.style or "",
    })
  elseif anim.spring then
    -- make a spring instead bc apparently they're different idk
    hl.animation({
      leaf = anim.leaf,
      enabled = true,
      speed = anim.speed,
      spring = anim.spring or "",
      style = anim.style or "",
    })
  end
end
