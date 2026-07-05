{pkgs, ...}: {
  home.pointerCursor = {
    gtk.enable = true;
    hyprcursor.enable = true;
    hyprcursor.size = 24;
    name = "capitaine-cursors";
    package = pkgs.capitaine-cursors;
    size = 24;
  };
}
