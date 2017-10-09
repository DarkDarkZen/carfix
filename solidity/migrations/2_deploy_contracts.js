var CarFixProxy = artifacts.require("./CarFixProxy.sol");
var CarFixToken = artifacts.require("./CarFixToken.sol");

module.exports = function(deployer) {
  deployer.deploy(CarFixProxy);
  deployer.deploy(CarFixToken);
};
