var MessageContract = artifacts.require("./MessageContract.sol");

module.exports = function(deployer) {
  deployer.deploy(MessageContract);
};
