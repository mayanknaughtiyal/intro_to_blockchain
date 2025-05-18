# Hyperledger Fabric

## Overview

[Hyperledger Fabric](https://hyperledger-fabric.readthedocs.io/en/latest/) is an open-source enterprise-grade permissioned distributed ledger platform. It offers modularity and versatility for a broad set of industry use cases. Fabric distinguishes itself from other blockchain solutions with its unique features

- **Modular Architecture**:Allows components such as consensus and membership services to be plug-and-play.
- **Permissioned Network**: Ensures that all participants have known identities.
- **High Scalability and Performance**:Supports high transaction throughput and low latency.
- **Confidential Transactions**:Supports private and confidential transactions through channels.

## Key Concepts

### 1. Ledger

The ledger in Hyperledger Fabric consists of two components

- **World State**:A database that holds the current value of a set of ledger states.
- **Blockchain**: An immutable sequence of blocks, each containing a set of transactions.

The world state can be implemented using different databases, such as LevelDB or CouchDB.

### 2. Chaincode (Smart Contracts)

Chaincode is the business logic of the system, analogous to smart contracts.  It is written in general-purpose programming languages like Go, Java, or Node.js.Chaincode interacts with the ledger's world state to perform create, read, update, and delete operations.

### 3. Channels

Channels are private subnets of communication between two or more specific network members, allowing for data isolation and confidentiality. Each channel has its own ledger and chaincode.

### 4. Membership Service Provider (MSP)

The MSP is responsible for managing identities and providing authentication and authorization services.It uses a Certificate Authority (CA) to issue digital certificates to network participants.

### 5. Ordering Service

The ordering service packages transactions into blocks and delivers them to peers.It ensures the total order of all transactions in the network.Hyperledger Fabric supports pluggable consensus protocols, with Raft being the default implementation

### 6. Peers

Peers are nodes that maintain the ledger and run chaincode.There are different types of peers

- **Endorsing Peers**: Simulate and endorse transactions.
- **Committing Peers**: Validate and commit transactions to the ledger.


## Architecture Diagram

Below is a high-level architecture diagram of Hyperledger Fabric:

![Hyperledger Fabric Architecture](https://hyperledger-fabric.readthedocs.io/en/latest/_images/fabric-arch.png)

*Source: [Hyperledger Fabric Documentation](https://hyperledger-fabric.readthedocs.io/en/latest/architecture.html)*

## Transaction Flow

The transaction flow in Hyperledger Fabric involves the following steps

1. **Proposal**: A client application sends a transaction proposal to the endorsing peers.
2. **Endorsement**: Endorsing peers simulate the transaction and return the endorsement response to the client.
3. **Ordering**: The client submits the endorsed transaction to the ordering service.
4. **Validation and Commit**: Peers validate the transaction against the endorsement policy and commit it to the ledger.

*Source: [Hyperledger Fabric Documentation](https://hyperledger-fabric.readthedocs.io/en/latest/txflow.html)*

## Getting Started

To start working with Hyperledger Fabric:

1. **Prerequisites**:
   - Install [Docker](https://www.docker.com/get-started) and [Docker Compose](https://docs.docker.com/compose/install/).
   - Install [Go](https://golang.org/doc/install).
   - Install [Node.js and npm](https://nodejs.org/en/download/).

2. **Download Fabric Samples and Binaries**:
   ```bash
   curl -sSL https://bit.ly/2ysbOFE | bash -s
