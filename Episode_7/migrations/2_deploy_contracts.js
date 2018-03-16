var AccountDatabase = artifacts.require("./AccountDatabase.sol");

module.exports = function(deployer) {
  deployer.deploy(AccountDatabase);
};
