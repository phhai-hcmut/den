{ den, lib, ... }:
{
  options.den.default = lib.mkOption {
    description = "Default context";
    type = den.lib.aspects.types.aspectSubmodule;
    default = { };
  };
  config.den.ctx.default.conf = _: den.default;
}
