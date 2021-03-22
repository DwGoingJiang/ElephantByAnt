const ElephantByAntToekn = artifacts.require("ElephantByAntToekn");
const AToken = artifacts.require("AToken");

module.exports = function (deployer) {
    deployer.deploy(ElephantByAntToekn);
    deployer.deploy(AToken);
};