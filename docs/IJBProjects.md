# IJBProjects









## Methods

### approve

```solidity
function approve(address to, uint256 tokenId) external nonpayable
```



*Gives permission to `to` to transfer `tokenId` token to another account. The approval is cleared when the token is transferred. Only a single account can be approved at a time, so approving the zero address clears previous approvals. Requirements: - The caller must own the token or be an approved operator. - `tokenId` must exist. Emits an {Approval} event.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| to | address | undefined
| tokenId | uint256 | undefined

### balanceOf

```solidity
function balanceOf(address owner) external view returns (uint256 balance)
```



*Returns the number of tokens in ``owner``&#39;s account.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| owner | address | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| balance | uint256 | undefined

### challengeExpiryOf

```solidity
function challengeExpiryOf(bytes32 _handle) external nonpayable returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _handle | bytes32 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### challengeHandle

```solidity
function challengeHandle(bytes32 _handle) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _handle | bytes32 | undefined

### claimHandle

```solidity
function claimHandle(bytes32 _handle, address _for, uint256 _projectId) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _handle | bytes32 | undefined
| _for | address | undefined
| _projectId | uint256 | undefined

### count

```solidity
function count() external view returns (uint256)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### createFor

```solidity
function createFor(address _owner, bytes32 _handle, string _metadataCid) external nonpayable returns (uint256 id)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _owner | address | undefined
| _handle | bytes32 | undefined
| _metadataCid | string | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| id | uint256 | undefined

### getApproved

```solidity
function getApproved(uint256 tokenId) external view returns (address operator)
```



*Returns the account approved for `tokenId` token. Requirements: - `tokenId` must exist.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| tokenId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| operator | address | undefined

### handleOf

```solidity
function handleOf(uint256 _projectId) external nonpayable returns (bytes32 handle)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| handle | bytes32 | undefined

### idFor

```solidity
function idFor(bytes32 _handle) external nonpayable returns (uint256 projectId)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _handle | bytes32 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| projectId | uint256 | undefined

### isApprovedForAll

```solidity
function isApprovedForAll(address owner, address operator) external view returns (bool)
```



*Returns if the `operator` is allowed to manage all of the assets of `owner`. See {setApprovalForAll}*

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
function metadataCidOf(uint256 _projectId) external view returns (string)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | undefined

### ownerOf

```solidity
function ownerOf(uint256 tokenId) external view returns (address owner)
```



*Returns the owner of the `tokenId` token. Requirements: - `tokenId` must exist.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| tokenId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| owner | address | undefined

### renewHandleOf

```solidity
function renewHandleOf(uint256 _projectId) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined

### safeTransferFrom

```solidity
function safeTransferFrom(address from, address to, uint256 tokenId, bytes data) external nonpayable
```



*Safely transfers `tokenId` token from `from` to `to`. Requirements: - `from` cannot be the zero address. - `to` cannot be the zero address. - `tokenId` token must exist and be owned by `from`. - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}. - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer. Emits a {Transfer} event.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| from | address | undefined
| to | address | undefined
| tokenId | uint256 | undefined
| data | bytes | undefined

### setApprovalForAll

```solidity
function setApprovalForAll(address operator, bool _approved) external nonpayable
```



*Approve or remove `operator` as an operator for the caller. Operators can call {transferFrom} or {safeTransferFrom} for any token owned by the caller. Requirements: - The `operator` cannot be the caller. Emits an {ApprovalForAll} event.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| operator | address | undefined
| _approved | bool | undefined

### setHandleOf

```solidity
function setHandleOf(uint256 _projectId, bytes32 _handle) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _handle | bytes32 | undefined

### setMetadataCidOf

```solidity
function setMetadataCidOf(uint256 _projectId, string _metadataCid) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _metadataCid | string | undefined

### supportsInterface

```solidity
function supportsInterface(bytes4 interfaceId) external view returns (bool)
```



*Returns true if this contract implements the interface defined by `interfaceId`. See the corresponding https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section] to learn more about how these ids are created. This function call must use less than 30 000 gas.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| interfaceId | bytes4 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined

### transferAddressFor

```solidity
function transferAddressFor(bytes32 _handle) external nonpayable returns (address receiver)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _handle | bytes32 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| receiver | address | undefined

### transferFrom

```solidity
function transferFrom(address from, address to, uint256 tokenId) external nonpayable
```



*Transfers `tokenId` token from `from` to `to`. WARNING: Usage of this method is discouraged, use {safeTransferFrom} whenever possible. Requirements: - `from` cannot be the zero address. - `to` cannot be the zero address. - `tokenId` token must be owned by `from`. - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}. Emits a {Transfer} event.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| from | address | undefined
| to | address | undefined
| tokenId | uint256 | undefined

### transferHandleOf

```solidity
function transferHandleOf(uint256 _projectId, address _transferAddress, bytes32 _newHandle) external nonpayable returns (bytes32 _handle)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _transferAddress | address | undefined
| _newHandle | bytes32 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _handle | bytes32 | undefined



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



