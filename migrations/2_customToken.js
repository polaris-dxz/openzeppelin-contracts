const Rocket = artifacts.require("Rocket");

module.exports = function(deployer) {
  deployer.deploy(Rocket, 1000000);
}

