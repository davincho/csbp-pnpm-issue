with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "node";
    buildInputs = [
        chromium
        awscli2
        nodejs
    ];
    systemPackages = [
        nodePackages.pnpm
    ];
    shellHook = ''
        export PATH="$PWD/node_modules/.bin/:$PATH"
    '';
}