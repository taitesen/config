require("auto-session").setup {
  auto_restore_enabled = false,
  auto_session_suppress_dirs = {
    "~/",
    "~/Downloads",
    "~/Documents",
    "~/Music",
    "~/Public",
    "~/Desktop",
    "~/Videos",
    "~/Pictures",
    "~/packettracer",
  },
}
