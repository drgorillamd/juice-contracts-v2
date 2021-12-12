# IJBVault









## Methods

### deposit

```solidity
function deposit(uint256 _projectId, uint256 _amount) external payable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _amount | uint256 | undefined

### token

```solidity
function token() external view returns (address)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined

### withdraw

```solidity
function withdraw(uint256 _projectId, uint256 _amount, address payable _to) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _amount | uint256 | undefined
| _to | address payable | undefined



## Events

### Deposit

```solidity
event Deposit(uint256 indexed projectId, uint256 amount, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| amount  | uint256 | undefined |
| caller  | address | undefined |

### Withdraw

```solidity
event Withdraw(uint256 indexed projectId, uint256 amount, address to, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| amount  | uint256 | undefined |
| to  | address | undefined |
| caller  | address | undefined |



