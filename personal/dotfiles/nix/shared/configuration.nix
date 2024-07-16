{ pkgs, ... }: {
  environment.shells = [ pkgs.fish pkgs.zsh ];
  environment.systemPackages = import ./apps.nix { pkgs = pkgs; };
  environment.variables = {
    VISUAL = "nvim";
    TERMINAL = "wezterm";
    BROWSER = "firefox";
  };
}
