{ root, inputs }:
(root.exporter.pops.nixosProfiles.addLoadExtender {
  load = {
    inputs = {
      inputs = inputs;
    };
  };
})