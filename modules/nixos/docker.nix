{ ... }:

{
  virtualisation.docker = {
    autoPrune.enable = true;
    enable = true;
  };

  users.users.asa.extraGroups = [ "docker" ];
}
