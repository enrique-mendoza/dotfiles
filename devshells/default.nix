{pkgs}: {
  angular = import ./angular.nix {inherit pkgs;};
  spring = import ./spring.nix {inherit pkgs;};
  spring17 = import ./spring.nix {
    inherit pkgs;
    jdk = pkgs.jdk17;
  };
  spring11 = import ./spring.nix {
    inherit pkgs;
    jdk = pkgs.jdk11;
  };
  spring8 = import ./spring.nix {
    inherit pkgs;
    jdk = pkgs.jdk8;
  };
}
