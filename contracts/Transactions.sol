// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

contract Transactions {
    uint256 transactionCount;

    event Transfer(
        address from,
        address receiver,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    );

    struct TransactionsStruct {
        address sender;
        address receiver;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransactionsStruct[] transactions;

    function addToBlockChain(
        address payable receiver,
        uint256 amount,
        string memory message,
        string memory keyword
    ) public {
        transactionCount++;
        transactions.push(
            TransactionsStruct(
                msg.sender,
                receiver,
                amount,
                message,
                block.timestamp,
                keyword
            )
        );

        emit Transfer(
            msg.sender,
            receiver,
            amount,
            message,
            block.timestamp,
            keyword
        );
    }

    function getAllTransactions()
        public
        view
        returns (TransactionsStruct[] memory)
    {
        return transactions;
    }

    function getTransaction(uint256 index)
        public
        view
        returns (TransactionsStruct memory)
    {
        return transactions[index];
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}
