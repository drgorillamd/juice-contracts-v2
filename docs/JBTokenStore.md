# JBTokenStore





Manage Token minting, burning, and account balances.

*Tokens can be either represented internally or claimed as ERC-20s. This contract manages these two representations and allows claiming.The total supply of a project&#39;s tokens and the balance of each account are calculated in this contract.Each project can bring their own token if they prefer, and swap between tokens at any time.*

## Methods

### balanceOf

```solidity
function balanceOf(address _holder, uint256 _projectId) external view returns (uint256 balance)
```

The total balance of token a holder has for a specified project, including claimed and unclaimed tokens.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _holder | address | The token holder to get a balance for.
| _projectId | uint256 | The project to get the `_hodler`s balance of.

#### Returns

| Name | Type | Description |
|---|---|---|
| balance | uint256 | The balance.

### burnFrom

```solidity
function burnFrom(address _holder, uint256 _projectId, uint256 _amount, bool _preferClaimedTokens) external nonpayable
```

Burns tokens.

*Only a project&#39;s current controller can burn its tokens.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _holder | address | The address that owns the tokens being burned.
| _projectId | uint256 | The ID of the project to which the burned tokens belong
| _amount | uint256 | The amount of tokens to burned.
| _preferClaimedTokens | bool | A flag indicating if there&#39;s a preference to burn tokens that have been converted to ERC-20s.

### changeFor

```solidity
function changeFor(uint256 _projectId, contract IJBToken _token, address _newOwner) external nonpayable
```

Swap the current project&#39;s token that is minted and burned for another, and transfer ownership of the current token to another address if needed.

*Only a project&#39;s current controller can change its token.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to which the changed token belongs.
| _token | contract IJBToken | The new token.
| _newOwner | address | An address to transfer the current token&#39;s ownership to. This is optional, but it cannot be done later.

### claimFor

```solidity
function claimFor(address _holder, uint256 _projectId, uint256 _amount) external nonpayable
```

Claims internal tokens by minting and distributing ERC20 tokens.

*Anyone can claim tokens on behalf of a token owner.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _holder | address | The owner of the tokens to claim.
| _projectId | uint256 | The ID of the project whose tokens are being claimed.
| _amount | uint256 | The amount of tokens to claim.

### directory

```solidity
function directory() external view returns (contract IJBDirectory)
```

 The directory of terminals and controllers for projects.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBDirectory | undefined

### issueFor

```solidity
function issueFor(uint256 _projectId, string _name, string _symbol) external nonpayable returns (contract IJBToken token)
```

Issues an owner&#39;s ERC-20 Tokens that&#39;ll be used when claiming tokens.

*Deploys a project&#39;s ERC-20 token contract.Only a project&#39;s current controller can issue its token.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project being issued tokens.
| _name | string | The ERC-20&#39;s name.
| _symbol | string | The ERC-20&#39;s symbol.

#### Returns

| Name | Type | Description |
|---|---|---|
| token | contract IJBToken | undefined

### mintFor

```solidity
function mintFor(address _holder, uint256 _projectId, uint256 _amount, bool _preferClaimedTokens) external nonpayable
```

Mint new tokens.

*Only a project&#39;s current controller can mint its tokens.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _holder | address | The address receiving the new tokens.
| _projectId | uint256 | The ID of the project to which the tokens belong.
| _amount | uint256 | The amount of tokens to mint.
| _preferClaimedTokens | bool | A flag indicating whether there&#39;s a preference for ERC20&#39;s to be claimed automatically if they have been issued.

### operatorStore

```solidity
function operatorStore() external view returns (contract IJBOperatorStore)
```

 A contract storing operator assignments.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBOperatorStore | undefined

### projects

```solidity
function projects() external view returns (contract IJBProjects)
```

The Projects contract which mints ERC-721&#39;s that represent project ownership and transfers.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBProjects | undefined

### requireClaimFor

```solidity
function requireClaimFor(uint256) external view returns (bool)
```

A flag indicating if tokens are required to be issued as claimed for a particular project. _projectId The ID of the project to which the requirement applies.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined

### shouldRequireClaimingFor

```solidity
function shouldRequireClaimingFor(uint256 _projectId, bool _flag) external nonpayable
```

Allows a project to force all future mints to be claimed into the holder&#39;s wallet, or revoke the flag if it&#39;s already set.

*Only a token holder or an operator can transfer its unclaimed tokens.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project being affected.
| _flag | bool | A flag indicating whether or not claiming should be required.

### tokenOf

```solidity
function tokenOf(uint256) external view returns (contract IJBToken)
```

Each project&#39;s ERC20 Token tokens. _projectId The ID of the project to which the token belongs.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBToken | undefined

### totalSupplyOf

```solidity
function totalSupplyOf(uint256 _projectId) external view returns (uint256 supply)
```

The total supply of tokens for each project, including claimed and unclaimed tokens.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to get the total token supply of.

#### Returns

| Name | Type | Description |
|---|---|---|
| supply | uint256 | The total supply.

### transferTo

```solidity
function transferTo(address _recipient, address _holder, uint256 _projectId, uint256 _amount) external nonpayable
```

Allows an unclaimed token holder to transfer them to another account, without claiming to ERC-20s.

*Only a token holder or an operator can transfer its unclaimed tokens.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _recipient | address | The recipient of the tokens.
| _holder | address | The address to transfer tokens from.
| _projectId | uint256 | The ID of the project whose tokens are being transferred.
| _amount | uint256 | The amount of tokens to transfer.

### unclaimedBalanceOf

```solidity
function unclaimedBalanceOf(address, uint256) external view returns (uint256)
```

Each holder&#39;s balance of unclaimed Tokens for each project. _holder The holder of balance. _projectId The ID of the project to which the token belongs.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined
| _1 | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### unclaimedTotalSupplyOf

```solidity
function unclaimedTotalSupplyOf(uint256) external view returns (uint256)
```

The total supply of unclaimed tokens for each project. _projectId The ID of the project to which the token belongs.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined



## Events

### Burn

```solidity
event Burn(address indexed holder, uint256 indexed projectId, uint256 amount, uint256 unclaimedTokenBalance, bool preferClaimedTokens, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| holder `indexed` | address | undefined |
| projectId `indexed` | uint256 | undefined |
| amount  | uint256 | undefined |
| unclaimedTokenBalance  | uint256 | undefined |
| preferClaimedTokens  | bool | undefined |
| caller  | address | undefined |

### Change

```solidity
event Change(uint256 indexed projectId, contract IJBToken indexed token, address indexed owner, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| token `indexed` | contract IJBToken | undefined |
| owner `indexed` | address | undefined |
| caller  | address | undefined |

### Claim

```solidity
event Claim(address indexed holder, uint256 indexed projectId, uint256 amount, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| holder `indexed` | address | undefined |
| projectId `indexed` | uint256 | undefined |
| amount  | uint256 | undefined |
| caller  | address | undefined |

### Issue

```solidity
event Issue(uint256 indexed projectId, contract IJBToken indexed token, string name, string symbol, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| token `indexed` | contract IJBToken | undefined |
| name  | string | undefined |
| symbol  | string | undefined |
| caller  | address | undefined |

### Mint

```solidity
event Mint(address indexed holder, uint256 indexed projectId, uint256 amount, bool tokensWereClaimed, bool preferClaimedTokens, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| holder `indexed` | address | undefined |
| projectId `indexed` | uint256 | undefined |
| amount  | uint256 | undefined |
| tokensWereClaimed  | bool | undefined |
| preferClaimedTokens  | bool | undefined |
| caller  | address | undefined |

### ShouldRequireClaim

```solidity
event ShouldRequireClaim(uint256 indexed projectId, bool indexed flag, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| flag `indexed` | bool | undefined |
| caller  | address | undefined |

### Transfer

```solidity
event Transfer(address indexed holder, uint256 indexed projectId, address indexed recipient, uint256 amount, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| holder `indexed` | address | undefined |
| projectId `indexed` | uint256 | undefined |
| recipient `indexed` | address | undefined |
| amount  | uint256 | undefined |
| caller  | address | undefined |



