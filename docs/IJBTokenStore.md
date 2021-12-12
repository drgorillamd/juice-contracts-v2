# IJBTokenStore









## Methods

### balanceOf

```solidity
function balanceOf(address _holder, uint256 _projectId) external view returns (uint256 _result)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _holder | address | undefined
| _projectId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _result | uint256 | undefined

### burnFrom

```solidity
function burnFrom(address _holder, uint256 _projectId, uint256 _amount, bool _preferClaimedTokens) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _holder | address | undefined
| _projectId | uint256 | undefined
| _amount | uint256 | undefined
| _preferClaimedTokens | bool | undefined

### changeFor

```solidity
function changeFor(uint256 _projectId, contract IJBToken _token, address _newOwner) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _token | contract IJBToken | undefined
| _newOwner | address | undefined

### claimFor

```solidity
function claimFor(address _holder, uint256 _projectId, uint256 _amount) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _holder | address | undefined
| _projectId | uint256 | undefined
| _amount | uint256 | undefined

### issueFor

```solidity
function issueFor(uint256 _projectId, string _name, string _symbol) external nonpayable returns (contract IJBToken token)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _name | string | undefined
| _symbol | string | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| token | contract IJBToken | undefined

### mintFor

```solidity
function mintFor(address _holder, uint256 _projectId, uint256 _amount, bool _preferClaimedTokens) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _holder | address | undefined
| _projectId | uint256 | undefined
| _amount | uint256 | undefined
| _preferClaimedTokens | bool | undefined

### projects

```solidity
function projects() external view returns (contract IJBProjects)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBProjects | undefined

### requireClaimFor

```solidity
function requireClaimFor(uint256 _projectId) external view returns (bool)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined

### shouldRequireClaimingFor

```solidity
function shouldRequireClaimingFor(uint256 _projectId, bool _flag) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _flag | bool | undefined

### tokenOf

```solidity
function tokenOf(uint256 _projectId) external view returns (contract IJBToken)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBToken | undefined

### totalSupplyOf

```solidity
function totalSupplyOf(uint256 _projectId) external view returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### transferTo

```solidity
function transferTo(address _recipient, address _holder, uint256 _projectId, uint256 _amount) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _recipient | address | undefined
| _holder | address | undefined
| _projectId | uint256 | undefined
| _amount | uint256 | undefined

### unclaimedBalanceOf

```solidity
function unclaimedBalanceOf(address _holder, uint256 _projectId) external view returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _holder | address | undefined
| _projectId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### unclaimedTotalSupplyOf

```solidity
function unclaimedTotalSupplyOf(uint256 _projectId) external view returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined

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



