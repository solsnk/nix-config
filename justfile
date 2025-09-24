otacon-deploy:
    nix --extra-experimental-features 'nix-command flakes' run github:nix-community/nixos-anywhere -- --disko-mode disko --flake .#otacon --target-host nixos@otacon

otacon-rebuild:
    nixos-rebuild switch --flake .#otacon --target-host solsnk@otacon --sudo

quiet-deploy:
    nix --extra-experimental-features 'nix-command flakes' run github:nix-community/nixos-anywhere -- --disko-mode disko --flake .#quiet --target-host nixos@quiet

quiet-rebuild:
    nixos-rebuild switch --flake .#quiet --target-host solsnk@quiet --sudo

raiden-deploy:
    nix --extra-experimental-features 'nix-command flakes' run github:nix-community/nixos-anywhere -- --disko-mode disko --flake .#raiden --target-host nixos@raiden

raiden-rebuild:
    nixos-rebuild switch --flake .#raiden --target-host solsnk@raiden --sudo