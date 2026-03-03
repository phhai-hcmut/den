{ lib, config, ... }:
{
  options.den = rec {
    provides = lib.mkOption {
      default = { };
      description = "Batteries Included - re-usable high-level aspects";
      type = lib.types.submodule {
        freeformType = lib.types.attrsOf config.den.lib.aspects.types.providerType;
      };
    };
    _ = provides;
  };
  config.den._ = config.den.provides;
}
