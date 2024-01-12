# NixOS config based on ZaneyOS

ZaneyOS is a way of reproducing my configuration on any NixOS system. This includes the wallpaper, scripts, applications, config files, and more. _Please remember to change username and hostname in flake.nix._

## What Is NixOS

NixOS is a Linux distribution known for its unique approach to package management and system configuration. It uses the Nix package manager, which is based on a purely functional approach to managing software and system configurations.

In NixOS, the entire operating system configuration is described declaratively in a configuration file, allowing for reproducibility and easy rollbacks. This means that changes to the system can be tracked and reversed, making it robust and reliable for system administrators and developers.

## Why Choose NixOS

Choosing NixOS often depends on specific needs and preferences. Here are some reasons why people opt for NixOS:

### Declarative Configuration

NixOS employs a declarative approach to system configuration. This means the entire system configuration is defined in a single file, making it reproducible and easier to manage. Changes are tracked and can be rolled back if needed.

### Functional Package Management

The Nix package manager ensures that each package and its dependencies are isolated and managed separately. This prevents conflicts between different versions of software and enables easy rollbacks to previous versions.

### Reproducibility

NixOS allows for consistent and reproducible environments, critical in development, testing, and deployment scenarios. It's particularly valuable in DevOps and CI/CD pipelines where consistent environments are essential.

### Multiple Environments and Rollbacks

With NixOS, it's possible to have multiple versions of the same software installed simultaneously without conflicts. This flexibility is especially useful for developers or those requiring different versions of software for various projects.

### Community and Customization

NixOS has an active community that contributes to its growth, sharing configurations, and offering support. Its customizable nature allows users to tailor their systems to their needs.

# Steps To Reproduce My System

- Clone this repo
- Change username and hostname in flake.nix
- Replace your hardware-configuration.nix
- Enable flakes in your default configuration.nix
- Rebuild your system
- Then go into repo folder and run this command:

```
sudo nixos-rebuild switch --flake .
```

Hope you enjoy!
