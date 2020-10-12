const SimpleStorage = artifacts.require("SimpleStorage");
const TutorialToken = artifacts.require("TutorialToken");
const ComplexStorage = artifacts.require("ComplexStorage");
const ComplexInputs = artifacts.require("ComplexInputs");
const SimpleInputs = artifacts.require("SimpleInputs");
const ArrayContract = artifacts.require("ArrayContract");
const Crowdfunding = artifacts.require("Crowdfunding");

module.exports = function (deployer) {
  deployer.deploy(SimpleStorage);
  deployer.deploy(TutorialToken);
  deployer.deploy(ComplexStorage);
  deployer.deploy(ComplexInputs);
  deployer.deploy(SimpleInputs);
  deployer.deploy(ArrayContract);
  deployer.deploy(Crowdfunding);
};
