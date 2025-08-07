{
  config,
  lib,
  ...
}: {
  imports = [
    # Choose your theme here:
    ../../themes/jupi.nix
  ];

  config.var = {
    hostname = "nixos";
    username = "jupi";
    configDirectory =
      "/home/"
      + config.var.username
      + "/.config/nixos"; # The path of the nixos configuration directory

    keyboardLayout = "us";

    location = "Amsterdam";
    timeZone = "Europe/Amsterdam";
    defaultLocale = "en_US.UTF-8";
    extraLocale = "nl_NL.UTF-8";

    git = {
      username = "JupiterMack";
      email = "mackjupiter@gmail.com";
    };

    autoUpgrade = false;
    autoGarbageCollector = true;
  };

  # Let this here
  options = {
    var = lib.mkOption {
      type = lib.types.attrs;
      default = {};
    };
  };
}
