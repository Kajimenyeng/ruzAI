// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract RuzAI {
    string public status;
    bool public isConnected;
    address public owner;

    // Event untuk log di blockchain
    event NetworkStatus(string message);

    constructor() {
        owner = msg.sender;
        status = "Connecting to IOPN Network...";
        isConnected = true;
    }

    // Fungsi untuk cek koneksi seperti di Java
    function checkConnection() public returns (string memory) {
        if (isConnected) {
            string memory successMsg = "Success: Connected to IOPN Network successfully. ruzAI is analyzing market data.";
            emit NetworkStatus(successMsg);
            return successMsg;
        } else {
            string memory errorMsg = "Error: Connection to IOPN Network failed.";
            emit NetworkStatus(errorMsg);
            return errorMsg;
        }
    }
}
