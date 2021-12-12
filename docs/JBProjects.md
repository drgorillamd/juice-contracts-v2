# JBProjects





 Stores project ownership and identifying information.

*Projects are represented as ERC-721&#39;s.*

## Methods

### approve

```solidity
function approve(address to, uint256 tokenId) external nonpayable
```



*See {IERC721-approve}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| to | address | undefined
| tokenId | uint256 | undefined

### balanceOf

```solidity
function balanceOf(address owner) external view returns (uint256)
```



*See {IERC721-balanceOf}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| owner | address | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### challengeExpiryOf

```solidity
function challengeExpiryOf(bytes32) external view returns (uint256)
```

 The timestamps after which each handle can be openly claimed. 

*A value of 0 means a handle isn&#39;t yet being challenged. _handle The handle to look for the challenge expiry of.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | bytes32 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### challengeHandle

```solidity
function challengeHandle(bytes32 _handle) external nonpayable
```

Allows anyone to challenge a project&#39;s handle. After one year, the handle can be claimed by anyone if the challenge isn&#39;t answered by the handle&#39;s project. This can be used to make sure a handle belonging to a stale project isn&#39;t lost forever.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _handle | bytes32 | The handle to challenge.

### claimHandle

```solidity
function claimHandle(bytes32 _handle, address _transferAddress, uint256 _projectId) external nonpayable
```

 Allows an address to claim an handle that has been transferred to it, and apply it to a project of theirs. A handle can also be claimed if it has been challenged and the challenge has succeeded.

* Only a project&#39;s owner or operator can claim a handle for it.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _handle | bytes32 | The handle being claimed.
| _transferAddress | address | The address to which the handle has been transferred, which can now assign the handle to a project.
| _projectId | uint256 | The ID of the project to assign to the claimed handle.

### count

```solidity
function count() external view returns (uint256)
```

 The number of projects that have been created using this contract.

*The count is incremented with each new project created.  The resulting ERC-721 token ID for each project is the newly incremented count value.*


#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### createFor

```solidity
function createFor(address _owner, bytes32 _handle, string _metadataCid) external nonpayable returns (uint256)
```

 Create a new project for the specified owner, which mints an NFT (ERC-721) into their wallet.

* Anyone can create a project on an owner&#39;s behalf.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _owner | address | The address that will be the owner of the project.
| _handle | bytes32 | A unique string to associate with the project that will resolve to its token ID.
| _metadataCid | string | An IPFS CID hash where metadata about the project has been uploaded. An empty string is acceptable if no metadata is being provided.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | The token ID of the newly created project

### getApproved

```solidity
function getApproved(uint256 tokenId) external view returns (address)
```



*See {IERC721-getApproved}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| tokenId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined

### handleOf

```solidity
function handleOf(uint256) external view returns (bytes32)
```

 The unique handle for each project.

*Each project must have a handle. _projectId The ID of the project to which the handle belongs.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bytes32 | undefined

### idFor

```solidity
function idFor(bytes32) external view returns (uint256)
```

 The ID of the project that each unique handle is currently referencing. _handle The handle from which the project ID can be referenced.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | bytes32 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### isApprovedForAll

```solidity
function isApprovedForAll(address owner, address operator) external view returns (bool)
```



*See {IERC721-isApprovedForAll}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| owner | address | undefined
| operator | address | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined

### metadataCidOf

```solidity
function metadataCidOf(uint256) external view returns (string)
```

 The IPFS CID for each project, which can be used to reference the project&#39;s metadata.

*This is optional for each project. _projectId The ID of the project to which the URI belongs.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | undefined

### name

```solidity
function name() external view returns (string)
```



*See {IERC721Metadata-name}.*


#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | undefined

### operatorStore

```solidity
function operatorStore() external view returns (contract IJBOperatorStore)
```

 A contract storing operator assignments.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBOperatorStore | undefined

### ownerOf

```solidity
function ownerOf(uint256 tokenId) external view returns (address)
```



*See {IERC721-ownerOf}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| tokenId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined

### renewHandleOf

```solidity
function renewHandleOf(uint256 _projectId) external nonpayable
```

Allows a project to renew its handle, which cancels any pending challenges.

* Only a project&#39;s owner or operator can renew its handle.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to which the handle being renewed belongs. 

### safeTransferFrom

```solidity
function safeTransferFrom(address from, address to, uint256 tokenId, bytes _data) external nonpayable
```



*See {IERC721-safeTransferFrom}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| from | address | undefined
| to | address | undefined
| tokenId | uint256 | undefined
| _data | bytes | undefined

### setApprovalForAll

```solidity
function setApprovalForAll(address operator, bool approved) external nonpayable
```



*See {IERC721-setApprovalForAll}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| operator | address | undefined
| approved | bool | undefined

### setHandleOf

```solidity
function setHandleOf(uint256 _projectId, bytes32 _handle) external nonpayable
```

 Allows a project owner to set the project&#39;s handle.

* Only a project&#39;s owner or operator can set its handle.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project who&#39;s handle is being changed.
| _handle | bytes32 | The new unique handle for the project.

### setMetadataCidOf

```solidity
function setMetadataCidOf(uint256 _projectId, string _metadataCid) external nonpayable
```

 Allows a project owner to set the project&#39;s IPFS CID hash where metadata about the project has been uploaded.

* Only a project&#39;s owner or operator can set its URI.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project who&#39;s URI is being changed.
| _metadataCid | string | The new IPFS CID hash where metadata about the project has been uploaded.

### supportsInterface

```solidity
function supportsInterface(bytes4 interfaceId) external view returns (bool)
```



*See {IERC165-supportsInterface}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| interfaceId | bytes4 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined

### symbol

```solidity
function symbol() external view returns (string)
```



*See {IERC721Metadata-symbol}.*


#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | undefined

### tokenURI

```solidity
function tokenURI(uint256 tokenId) external view returns (string)
```



*See {IERC721Metadata-tokenURI}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| tokenId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | undefined

### transferAddressFor

```solidity
function transferAddressFor(bytes32) external view returns (address)
```

 The address that can reallocate a handle that have been transferred to it. _handle The handle to look for the transfer address for.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | bytes32 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined

### transferFrom

```solidity
function transferFrom(address from, address to, uint256 tokenId) external nonpayable
```



*See {IERC721-transferFrom}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| from | address | undefined
| to | address | undefined
| tokenId | uint256 | undefined

### transferHandleOf

```solidity
function transferHandleOf(uint256 _projectId, address _transferAddress, bytes32 _newHandle) external nonpayable returns (bytes32 handle)
```

 Allows a project owner to transfer its handle to another address.

* Only a project&#39;s owner or operator can transfer its handle.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to transfer the handle from.
| _transferAddress | address | The address that should be able to reallocate the transferred handle.
| _newHandle | bytes32 | The new unique handle for the project that will replace the transferred one.

#### Returns

| Name | Type | Description |
|---|---|---|
| handle | bytes32 | The handle that has been transferred.



## Events

### Approval

```solidity
event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| owner `indexed` | address | undefined |
| approved `indexed` | address | undefined |
| tokenId `indexed` | uint256 | undefined |

### ApprovalForAll

```solidity
event ApprovalForAll(address indexed owner, address indexed operator, bool approved)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| owner `indexed` | address | undefined |
| operator `indexed` | address | undefined |
| approved  | bool | undefined |

### ChallengeHandle

```solidity
event ChallengeHandle(bytes32 indexed handle, uint256 indexed projectId, uint256 challengeExpiry, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| handle `indexed` | bytes32 | undefined |
| projectId `indexed` | uint256 | undefined |
| challengeExpiry  | uint256 | undefined |
| caller  | address | undefined |

### ClaimHandle

```solidity
event ClaimHandle(uint256 indexed projectId, address indexed transferAddress, bytes32 indexed handle, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| transferAddress `indexed` | address | undefined |
| handle `indexed` | bytes32 | undefined |
| caller  | address | undefined |

### Create

```solidity
event Create(uint256 indexed projectId, address indexed owner, bytes32 indexed handle, string uri, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| owner `indexed` | address | undefined |
| handle `indexed` | bytes32 | undefined |
| uri  | string | undefined |
| caller  | address | undefined |

### RenewHandle

```solidity
event RenewHandle(bytes32 indexed handle, uint256 indexed projectId, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| handle `indexed` | bytes32 | undefined |
| projectId `indexed` | uint256 | undefined |
| caller  | address | undefined |

### SetHandle

```solidity
event SetHandle(uint256 indexed projectId, bytes32 indexed handle, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| handle `indexed` | bytes32 | undefined |
| caller  | address | undefined |

### SetUri

```solidity
event SetUri(uint256 indexed projectId, string uri, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| uri  | string | undefined |
| caller  | address | undefined |

### Transfer

```solidity
event Transfer(address indexed from, address indexed to, uint256 indexed tokenId)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| from `indexed` | address | undefined |
| to `indexed` | address | undefined |
| tokenId `indexed` | uint256 | undefined |

### TransferHandle

```solidity
event TransferHandle(uint256 indexed projectId, address indexed transferAddress, bytes32 indexed handle, bytes32 newHandle, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| transferAddress `indexed` | address | undefined |
| handle `indexed` | bytes32 | undefined |
| newHandle  | bytes32 | undefined |
| caller  | address | undefined |



