{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.05";
  };
  outputs = {nixpkgs, ...}: let
    forAllSystems = function:
      nixpkgs.lib.genAttrs [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-darwin"
        "x86_64-linux"
      ] (system: function nixpkgs.legacyPackages.${system});
  in {
    devShells = forAllSystems (pkgs: {
      default = pkgs.mkShellNoCC {
        buildInputs = with pkgs; [
          gleam
          rebar3
          beamPackages.erlang
          nodejs
          bun
          deno
        ];
      };
    });
  };
}
