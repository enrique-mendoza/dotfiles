{...}: {
  programs.nixvim.opts = {
    clipboard = "unnamedplus";
    expandtab = true;
    ignorecase = true;
    number = true;
    relativenumber = true;
    scrolloff = 8;
    shiftwidth = 2;
    smartcase = true;
    tabstop = 2;
    wrap = false;
  };
}
