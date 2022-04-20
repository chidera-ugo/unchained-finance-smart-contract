yarn add -D hardhat @nomiclabs/hardhat-waffle ethereum-waffle chai @nomiclabs/har
dhat-ethers ethers && npx hardhat

npx hardhat run .\scripts\deploy.js --network ropsten

0xEE8172B4Caf9846a644C7Eeba39bD2401842DBcd

# Basic Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, a sample script that deploys that contract, and an example of a task implementation, which simply lists the available accounts.

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
node scripts/sample-script.js
npx hardhat help
```
