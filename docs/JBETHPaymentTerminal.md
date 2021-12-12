# JBETHPaymentTerminal





This contract manages all inflows and outflows of funds into the Juicebox ecosystem.

* A project can transfer its funds, along with the power to reconfigure and mint/burn their tokens, from this contract to another allowed terminal contract at any time. Inherits from: IJBPaymentTerminal - general interface for the methods in this contract that send and receive funds according to the Juicebox protocol&#39;s rules. JBOperatable - several functions in this contract can only be accessed by a project owner, or an address that has been preconfifigured to be an operator of the project. ReentrencyGuard - several function in this contract shouldn&#39;t be accessible recursively.*

## Methods

### addToBalanceOf

```solidity
function addToBalanceOf(uint256 _projectId, string _memo) external payable
```

Receives funds belonging to the specified project.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to which the funds received belong.
| _memo | string | A memo to pass along to the emitted event.

### delegate

```solidity
function delegate() external view returns (address)
```

An address that serves as this terminal&#39;s delegate when making requests to juicebox ecosystem contracts.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | The delegate address.

### directory

```solidity
function directory() external view returns (contract IJBDirectory)
```

The directory of terminals and controllers for projects.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBDirectory | undefined

### distributePayoutsOf

```solidity
function distributePayoutsOf(uint256 _projectId, uint256 _amount, uint256 _currency, uint256 _minReturnedWei, string _memo) external nonpayable
```

 Distributes payouts for a project according to the constraints of its current funding cycle.

*Payouts are sent to the preprogrammed splits. Anyone can distribute payouts on a project&#39;s behalf.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project having its payouts distributed.
| _amount | uint256 | The amount being distributed.
| _currency | uint256 | The expected currency of the amount being distributed. Must match the project&#39;s current funding cycle&#39;s currency.
| _minReturnedWei | uint256 | The minimum number of wei that the amount should be valued at.
| _memo | string | undefined

### ethBalanceOf

```solidity
function ethBalanceOf(uint256 _projectId) external view returns (uint256)
```

 The ETH balance that this terminal holds for each project.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to which the balance belongs.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | The ETH balance.

### fee

```solidity
function fee() external view returns (uint256)
```

 The platform fee percent.

* Out of 200.*


#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### heldFeesOf

```solidity
function heldFeesOf(uint256 _projectId) external view returns (struct JBFee[])
```

 The fees that are currently being held to be processed later for each project.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project for which fees are being held.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | JBFee[] | An array of fees that are being held.

### migrate

```solidity
function migrate(uint256 _projectId, contract IJBTerminal _to) external nonpayable
```

Allows a project owner to migrate its funds and operations to a new terminal.

*Only a project&#39;s owner or a designated operator can migrate it.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project being migrated.
| _to | contract IJBTerminal | The terminal contract that will gain the project&#39;s funds.

### operatorStore

```solidity
function operatorStore() external view returns (contract IJBOperatorStore)
```

 A contract storing operator assignments.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBOperatorStore | undefined

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
function pay(uint256 _projectId, address _beneficiary, uint256 _minReturnedTokens, bool _preferClaimedTokens, string _memo, bytes _delegateMetadata) external payable
```

Contribute ETH to a project.

*The msg.value is the amount of the contribution in wei.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project being paid.
| _beneficiary | address | The address to mint tokens for and pass along to the funding cycle&#39;s data source and delegate.
| _minReturnedTokens | uint256 | The minimum number of tokens expected in return.
| _preferClaimedTokens | bool | A flag indicating whether the request prefers to issue tokens unstaked rather than staked.
| _memo | string | A memo to pass along to the emitted event, and passed along the the funding cycle&#39;s data source and delegate.
| _delegateMetadata | bytes | Bytes to send along to the delegate, if one is provided.

### processFees

```solidity
function processFees(uint256 _projectId) external nonpayable
```

Process any fees that are being held for the project.

*Only a project owner, an operator, or the contract&#39;s owner can process held fees.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project whos held fees should be processed.

### projects

```solidity
function projects() external view returns (contract IJBProjects)
```

The Projects contract which mints ERC-721&#39;s that represent project ownership and transfers.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBProjects | undefined

### redeemTokensOf

```solidity
function redeemTokensOf(address _holder, uint256 _projectId, uint256 _tokenCount, uint256 _minReturnedWei, address payable _beneficiary, string _memo, bytes _delegateMetadata) external nonpayable returns (uint256 claimAmount)
```

Addresses can redeem their tokens to claim the project&#39;s overflowed ETH, or to trigger rules determined by the project&#39;s current funding cycle&#39;s data source.

*Only a token&#39;s holder or a designated operator can redeem it.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _holder | address | The account to redeem tokens for.
| _projectId | uint256 | The ID of the project to which the tokens being redeemed belong.
| _tokenCount | uint256 | The number of tokens to redeem.
| _minReturnedWei | uint256 | The minimum amount of Wei expected in return.
| _beneficiary | address payable | The address to send the ETH to. Send the address this contract to burn the count.
| _memo | string | A memo to pass along to the emitted event.
| _delegateMetadata | bytes | Bytes to send along to the delegate, if one is provided.

#### Returns

| Name | Type | Description |
|---|---|---|
| claimAmount | uint256 | The amount of ETH that the tokens were redeemed for, in wei.

### remainingDistributionLimitOf

```solidity
function remainingDistributionLimitOf(uint256 _projectId, uint256 _fundingCycleConfiguration, uint256 _fundingCycleNumber) external view returns (uint256)
```

 The amount of funds that can still be distributed within the preconfigured limit.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to which the remaining limit belongs.
| _fundingCycleConfiguration | uint256 | The funding cycle configuration during which the limit remaining is being calculated. 
| _fundingCycleNumber | uint256 | The number of the funding cycle during which the limit remaining is being calculated. 

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | The remaining distribution limit for this terminal.

### renounceOwnership

```solidity
function renounceOwnership() external nonpayable
```



*Leaves the contract without owner. It will not be possible to call `onlyOwner` functions anymore. Can only be called by the current owner. NOTE: Renouncing ownership will leave the contract without an owner, thereby removing any functionality that is only available to the owner.*


### setFee

```solidity
function setFee(uint256 _fee) external nonpayable
```

Allows the fee to be updated for subsequent funding cycle configurations.

*Only the owner of this contract can change the fee.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _fee | uint256 | The new fee.

### splitsStore

```solidity
function splitsStore() external view returns (contract IJBSplitsStore)
```

The contract that stores splits for each project.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBSplitsStore | undefined

### store

```solidity
function store() external view returns (contract JBETHPaymentTerminalStore)
```

 The contract that stores and manages the terminal&#39;s data.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract JBETHPaymentTerminalStore | undefined

### token

```solidity
function token() external view returns (address)
```

 The token that this terminal accepts. 

*ETH is represented as address 0x0000000000000000000000000000000000069420.*


#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined

### transferOwnership

```solidity
function transferOwnership(address newOwner) external nonpayable
```



*Transfers ownership of the contract to a new account (`newOwner`). Can only be called by the current owner.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| newOwner | address | undefined

### useAllowanceOf

```solidity
function useAllowanceOf(uint256 _projectId, uint256 _amount, uint256 _currency, uint256 _minReturnedWei, address payable _beneficiary) external nonpayable
```

 Allows a project to send funds from its overflow up to the preconfigured allowance.

* Only a project&#39;s owner or a designated operator can migrate it.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to use the allowance of.
| _amount | uint256 | The amount of the allowance to use.
| _currency | uint256 | undefined
| _minReturnedWei | uint256 | undefined
| _beneficiary | address payable | The address to send the funds to.



## Events

### AddToBalance

```solidity
event AddToBalance(uint256 indexed projectId, uint256 amount, string memo, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| amount  | uint256 | undefined |
| memo  | string | undefined |
| caller  | address | undefined |

### DistributePayouts

```solidity
event DistributePayouts(uint256 indexed fundingCycleConfiguration, uint256 indexed fundingCycleNumber, uint256 indexed projectId, address beneficiary, uint256 amount, uint256 distributedAmount, uint256 feeAmount, uint256 beneficiaryDistributionAmount, string memo, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| fundingCycleConfiguration `indexed` | uint256 | undefined |
| fundingCycleNumber `indexed` | uint256 | undefined |
| projectId `indexed` | uint256 | undefined |
| beneficiary  | address | undefined |
| amount  | uint256 | undefined |
| distributedAmount  | uint256 | undefined |
| feeAmount  | uint256 | undefined |
| beneficiaryDistributionAmount  | uint256 | undefined |
| memo  | string | undefined |
| caller  | address | undefined |

### DistributeToPayoutSplit

```solidity
event DistributeToPayoutSplit(uint256 indexed fundingCycleConfiguration, uint256 indexed fundingCycleNumber, uint256 indexed projectId, JBSplit split, uint256 amount, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| fundingCycleConfiguration `indexed` | uint256 | undefined |
| fundingCycleNumber `indexed` | uint256 | undefined |
| projectId `indexed` | uint256 | undefined |
| split  | JBSplit | undefined |
| amount  | uint256 | undefined |
| caller  | address | undefined |

### Migrate

```solidity
event Migrate(uint256 indexed projectId, contract IJBTerminal indexed to, uint256 amount, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| to `indexed` | contract IJBTerminal | undefined |
| amount  | uint256 | undefined |
| caller  | address | undefined |

### OwnershipTransferred

```solidity
event OwnershipTransferred(address indexed previousOwner, address indexed newOwner)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| previousOwner `indexed` | address | undefined |
| newOwner `indexed` | address | undefined |

### Pay

```solidity
event Pay(uint256 indexed fundingCycleConfiguration, uint256 indexed fundingCycleNumber, uint256 indexed projectId, address beneficiary, uint256 amount, uint256 weight, uint256 tokenCount, string memo, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| fundingCycleConfiguration `indexed` | uint256 | undefined |
| fundingCycleNumber `indexed` | uint256 | undefined |
| projectId `indexed` | uint256 | undefined |
| beneficiary  | address | undefined |
| amount  | uint256 | undefined |
| weight  | uint256 | undefined |
| tokenCount  | uint256 | undefined |
| memo  | string | undefined |
| caller  | address | undefined |

### ProcessFees

```solidity
event ProcessFees(uint256 indexed projectId, JBFee[] fees, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| fees  | JBFee[] | undefined |
| caller  | address | undefined |

### RedeemTokens

```solidity
event RedeemTokens(uint256 indexed fundingCycleConfiguration, uint256 indexed fundingCycleNumber, uint256 indexed projectId, address holder, address beneficiary, uint256 tokenCount, uint256 claimedAmount, string memo, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| fundingCycleConfiguration `indexed` | uint256 | undefined |
| fundingCycleNumber `indexed` | uint256 | undefined |
| projectId `indexed` | uint256 | undefined |
| holder  | address | undefined |
| beneficiary  | address | undefined |
| tokenCount  | uint256 | undefined |
| claimedAmount  | uint256 | undefined |
| memo  | string | undefined |
| caller  | address | undefined |

### SetFee

```solidity
event SetFee(uint256 fee, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| fee  | uint256 | undefined |
| caller  | address | undefined |

### UseAllowance

```solidity
event UseAllowance(uint256 indexed fundingCycleConfiguration, uint256 indexed fundingCycleNumber, uint256 indexed projectId, address beneficiary, uint256 amount, uint256 feeAmount, uint256 transferAmount, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| fundingCycleConfiguration `indexed` | uint256 | undefined |
| fundingCycleNumber `indexed` | uint256 | undefined |
| projectId `indexed` | uint256 | undefined |
| beneficiary  | address | undefined |
| amount  | uint256 | undefined |
| feeAmount  | uint256 | undefined |
| transferAmount  | uint256 | undefined |
| caller  | address | undefined |



## Errors

### PRBMath__MulDivOverflow

```solidity
error PRBMath__MulDivOverflow(uint256 prod1, uint256 denominator)
```

Emitted when the result overflows uint256.



#### Parameters

| Name | Type | Description |
|---|---|---|
| prod1 | uint256 | undefined |
| denominator | uint256 | undefined |


