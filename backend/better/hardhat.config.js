require("@nomiclabs/hardhat-ethers");
require('dotenv').config();
/**
 * @type import('hardhat/config').HardhatUserConfig
 */

// module exports for goerli
module.exports = {
  solidity: "0.8.4",
  networks: {
    goerli: {
      url: process.env.GOERLI_RPC_URL,
      chainId: 5,
      accounts: [process.env.GOERLI_DEPLOYER_PRIVATE_KEY]
    },
  }
};