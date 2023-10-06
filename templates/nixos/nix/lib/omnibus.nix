{
  loadHomeModules = (omnibus.pops.loadHomeModules.addLoadExtender { });

  loadHomeProfiles = (omnibus.pops.loadHomeProfiles.addLoadExtender { });

  loadNixOSProfiles = (omnibus.pops.loadNixOSProfiles.addLoadExtender { });

  loadNixOSModules = (omnibus.pops.loadNixOSModules.addLoadExtender { });

  lib = omnibus.lib.addLoadExtender {
    inputs = {
      home-manager = inputs.home;
    };
  };
}
