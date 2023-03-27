local w = require 'wezterm';
return {
  font = w.font("JetBrains Mono"),
  hide_tab_bar_if_only_one_tab = true,
  enable_scroll_bar = true,
  enable_wayland = true,
  window_padding = {
    left = "5%",
    right = "5%",
    top = 20,
    bottom = 20,
  },
  font_size = 11,
  color_scheme = "Dracula+",
  colors={
    background='rgba(0,0,0,0.9)',
  },
  scrollback_lines = 10000,
  freetype_load_target = "HorizontalLcd",
  keys={
    { key="LeftArrow", mods="OPT", action=w.action{SendString="\x1bb"} },
    { key="RightArrow", mods="OPT", action=w.action{SendString="\x1bf"} },
  },
  default_cursor_style = "SteadyBar",
  default_prog = { "fish" },
  window_close_confirmation = "NeverPrompt",
  front_end="WebGpu",
};
