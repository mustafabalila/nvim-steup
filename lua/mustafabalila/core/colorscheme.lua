local status, _ = pcall(vim.cmd, "colorscheme kanagawa");
if not status then
    print("kanagawa colorscheme not found.");
    return
end