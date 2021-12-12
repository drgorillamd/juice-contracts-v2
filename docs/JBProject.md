# JBProject





A contract that inherits from JuiceboxProject can use Juicebox as a business-model-as-a-service.

*The owner of the contract makes admin decisions such as: - Which address is the funding cycle owner, which can withdraw funds from the funding cycle. - Should this project&#39;s Tickets be migrated to a new TerminalV1. *

## Methods

### owner

```solidity
function owner() external view returns (address)
```



*Returns the address of the current owner.*


#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined

### pay

```solidity
function pay(address _beneficiary, string _memo, bool _preferClaimedTokens, address _token) external payable
```

Make a payment to this project.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _beneficiary | address | The address who will receive tickets from this fee.
| _memo | string | A memo that will be included in the published event.
| _preferClaimedTokens | bool | Whether ERC20&#39;s should be claimed automatically if they have been issued.
| _token | address | undefined

### projectId

```solidity
function projectId() external view returns (uint256)
```

The ID of the project that should be used to forward this contract&#39;s received payments.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### renounceOwnership

```solidity
function renounceOwnership() external nonpayable
```



*Leaves the contract without owner. It will not be possible to call `onlyOwner` functions anymore. Can only be called by the current owner. NOTE: Renouncing ownership will leave the contract without an owner, thereby removing any functionality that is only available to the owner.*


### setProjectId

```solidity
function setProjectId(uint256 _projectId) external nonpayable
```

Allows the project that is being managed to be set.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project that is being managed.

### transferOwnership

```solidity
function transferOwnership(address newOwner) external nonpayable
```



*Transfers ownership of the contract to a new account (`newOwner`). Can only be called by the current owner.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| newOwner | address | undefined



## Events

### OwnershipTransferred

```solidity
event OwnershipTransferred(address indexed previousOwner, address indexed newOwner)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| previousOwner `indexed` | address | undefined |
| newOwner `indexed` | address | undefined |



