#  **What is Blockchain** ? 
## Blockchain is a shared, immutable ledger that facilitates the process of recording transactions and tracking assets in a business network.

### An asset can be tangible (a house, car, cash, land) or intangible (intellectual property, patents, copyrights, branding). Virtually anything of value can be tracked and traded on a blockchain network, reducing risk and cutting costs for all involved.

# Key elements of a blockchain
![image1 temp](https://github.com/user-attachments/assets/49415231-d39d-4dff-8986-d6266bd08f64)
> # Distributed ledger technology
- ## All network participants have access to the distributed ledger and its immutable record of transactions. With this shared ledger, transactions are recorded only once, eliminating the duplication of effort that’s typical of traditional business networks.

![image 2 temp](https://github.com/user-attachments/assets/ba89e41f-ce68-412b-b92b-e9aec0d9d883)
>  # Immutable records
- ## No participant can change or tamper with a transaction after it’s been recorded to the shared ledger. If a transaction record includes an error, a new transaction must be added to reverse the error, and both transactions are then visible.

 ![image3 temp](https://github.com/user-attachments/assets/37866123-78ca-4c6f-802b-213cf994fb49)
> # Smart contracts
 - ## To support the consistent update of information — and to enable a whole host of ledger functions (transacting, querying, etc) a blockchain network uses smart contracts to provide controlled access to the ledger.Smart contracts are not only a key mechanism for encapsulating information and keeping it simple across the network, they can also be written to allow participants to execute certain aspects of transactions automatically.A smart contract can, for example, be written to stipulate the cost of shipping an item where the shipping charge changes depending on how quickly the item arrives. With the terms agreed to by both parties and written to the ledger, the appropriate funds change hands automatically when the item is received.


# *how does blockchain works*
 - ## As each transaction occurs, it is recorded as a “block” of data Those transactions show the movement of an asset that can be tangible (a product) or intangible (intellectual). The data block can record the information of your choice: who, what, when, where, how much. It can even record the condition, such as the temperature of a food shipment.
   
- ## Each block is connected to the ones before and after it These blocks form a chain of data as an asset moves from place to place or ownership changes hands. The blocks confirm the exact time and sequence of transactions, and the blocks link securely together to prevent any block from being altered or a block being inserted between two existing blocks.

- ## Transactions are blocked together in an irreversible chain: a blockchain Each additional block strengthens the verification of the previous block and hence the entire blockchain. Rendering the blockchain tamper-evident, delivering the key strength of immutability. Removing the possibility of tampering by a malicious actor, and builds a ledger of transactions you and other network members can trust.
  

##
# **Types of blockchain networks**
- ## PRIVATE :-A private blockchain network, similar to a public blockchain network, is a decentralized peer-to-peer network. 
- ## PUBLIC :-A public blockchain is one that anyone can join and participate in, such as Bitcoin.However, one organization governs the network, controlling who is allowed to participate, run a consensus protocol and maintain the shared ledger.
- ## PERMISSONED :-Businesses who set up a private blockchain will generally set up a permissioned blockchain network. It is important to note that public blockchain networks can also be permissioned. 
- ## HYBRID :-A hybrid blockchain is a type of blockchain that integrates elements of both public and private blockchains, offering a customizable level of access control. It enables organizations to create a secure, permissioned environment for sensitive data while allowing certain aspects of the blockchain to remain open and accessible to the public
  
##
# **What is Hyperledger Fabric?
## ![image 2](https://imgs.search.brave.com/GVtZUZXf-Hvo6cjNMmHWBZ9lhMrmitZZO8DtCeDt4UI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/cHJvZC53ZWJzaXRl/LWZpbGVzLmNvbS81/ZGZjMThhZWVmMGNm/OTY0NGFiNWNjY2Ev/NjYzMGZlNDg5ZTY3/MjQyZDZlOGIwNDdj/X3doYXQtaXMtaHlw/ZXJsZWRnZXItZmFi/cmljLmpwZw)
#
- ## *Hyperledger Fabric is a permissioned blockchain framework designed for enterprise use cases. Unlike public blockchains like Bitcoin or Ethereum, Hyperledger Fabric restricts network participants to known and trusted entities*

# $. The Linux Foundation founded the Hyperledger project in 2015 to advance cross-industry blockchain technologies. Rather than declaring a single blockchain standard, it encourages a collaborative approach to developing blockchain technologies via a community process, with intellectual property rights that encourage open development and the adoption of key standards over time.

## Hyperledger Fabric is one of the blockchain projects within Hyperledger. Like other blockchain technologies, it has a ledger, uses smart contracts, and is a system by which participants manage their transactions.

## $. Where Hyperledger Fabric breaks from some other blockchain systems is that it is private and permissioned. Rather than an open permissionless system that allows unknown identities to participate in the network (requiring protocols like “proof of work” to validate transactions and secure the network), the members of a Hyperledger Fabric network enroll through a trusted Membership Service Provider (MSP).

## Hyperledger Fabric also offers several pluggable options. Ledger data can be stored in multiple formats, consensus mechanisms can be swapped in and out, and different MSPs are supported.

## $. Hyperledger Fabric also offers the ability to create channels, allowing a group of participants to create a separate ledger of transactions. This is an especially important option for networks where some participants might be competitors and not want every transaction they make — a special price they’re offering to some participants and not others, for example — known to every participant. If two participants form a channel, then those participants — and no others — have copies of the ledger for that channel.

# Shared Ledger

- ## Hyperledger Fabric has a ledger subsystem comprising two components: the world state and the transaction log. Each participant has a copy of the ledger to every Hyperledger Fabric network they belong to.

## The world state component describes the state of the ledger at a given point in time. It’s the database of the ledger. The transaction log component records all transactions which have resulted in the current value of the world state; it’s the update history for the world state. The ledger, then, is a combination of the world state database and the transaction log history.

## The ledger has a replaceable data store for the world state. By default, this is a LevelDB key-value store database. The transaction log does not need to be pluggable. It simply records the before and after values of the ledger database being used by the blockchain network.

# Smart Contracts

- ## Hyperledger Fabric smart contracts are called chaincode and are invoked by an application external to the blockchain when that application needs to interact with the ledger. In most cases, chaincode interacts only with the database component of the ledger, the world state (querying it, for example), and not the transaction log.

## Chaincode can be implemented in several programming languages. Currently, Go, Node.js, and Java chaincode are supported.

# Privacy

- ## Depending on the needs of a network, participants in a Business-to-Business (B2B) network might be extremely sensitive about how much information they share. For other networks, privacy will not be a top concern.

## Hyperledger Fabric supports networks where privacy (using channels) is a key operational requirement as well as networks that are comparatively open.

# Consensus

- ## Transactions must be written to the ledger in the order in which they occur, even though they might be between different sets of participants within the network. For this to happen, the order of transactions must be established and a method for rejecting bad transactions that have been inserted into the ledger in error (or maliciously) must be put into place.

 ## This is a thoroughly researched area of computer science, and there are many ways to achieve it, each with different trade-offs. For example, PBFT (Practical Byzantine Fault Tolerance) can provide a mechanism for file replicas to communicate with each other to keep each copy consistent, even in the event of corruption. Alternatively, in Bitcoin, ordering happens through a process called mining where competing computers race to solve a cryptographic puzzle which defines the order that all processes subsequently build upon.

## Hyperledger Fabric has been designed to allow  network starters to choose a consensus mechanism that best represents the relationships that exist between participants. As with privacy, there is a spectrum of needs; from networks that are highly structured in their relationships to those that are more peer-to-peer.

