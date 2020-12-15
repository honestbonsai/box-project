const SimpleStorage = artifacts.require('SimpleStorage');
const UnnamedInputs = artifacts.require('UnnamedInputs');
const ArrayContract = artifacts.require('ArrayContract');
// const TutorialToken = artifacts.require("TutorialToken");
// const ComplexStorage = artifacts.require("ComplexStorage");
const ComplexInputs = artifacts.require('ComplexInputs');
// const SimpleInputs = artifacts.require("SimpleInputs");
// const CrowdFunding = artifacts.require("CrowdFunding");

module.exports = function (deployer) {
    deployer.deploy(SimpleStorage);
    deployer.deploy(UnnamedInputs);
    deployer.deploy(ArrayContract);
    // deployer.deploy(TutorialToken);
    // deployer.deploy(ComplexStorage);
    deployer.deploy(ComplexInputs);
    // deployer.deploy(SimpleInputs);
    // deployer.deploy(CrowdFunding);
};
