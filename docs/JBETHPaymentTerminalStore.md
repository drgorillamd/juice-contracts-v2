# JBETHPaymentTerminalStore





This contract manages all inflows and outflows of funds into the Juicebox ecosystem.

* A project can transfer its funds, along with the power to reconfigure and mint/burn their tokens, from this contract to another allowed terminal contract at any time. Inherits from: IJBPaymentTerminal - general interface for the methods in this contract that send and receive funds according to the Juicebox protocol&#39;s rules. JBOperatable - several functions in this contract can only be accessed by a project owner, or an address that has been preconfifigured to be an operator of the project. ReentrencyGuard - several function in this contract shouldn&#39;t be accessible recursively.*

## Methods

### balanceOf

```solidity
function balanceOf(uint256) external view returns (uint256)
```

 The amount of ETH that each project has. _projectId The ID of the project to get the balance of.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### claimFor

```solidity
function claimFor(contract IJBTerminal _terminal) external nonpayable
```

Allows this store to be claimed by an address so that it recognized the address as its terminal.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _terminal | contract IJBTerminal | undefined

### claimableOverflowOf

```solidity
function claimableOverflowOf(uint256 _projectId, uint256 _tokenCount) external view returns (uint256)
```

The amount of overflowed ETH that can be claimed by the specified number of tokens.

*If the project has an active funding cycle reconfiguration ballot, the project&#39;s ballot redemption rate is used.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to get a claimable amount for.
| _tokenCount | uint256 | The number of tokens to make the calculation with. 

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | The amount of overflowed ETH that can be claimed.

### currentOverflowOf

```solidity
function currentOverflowOf(uint256 _projectId) external view returns (uint256)
```

Gets the current overflowed amount in this terminal for a specified project.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to get overflow for.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | The current amount of overflow that project has in this terminal.

### currentTotalOverflowOf

```solidity
function currentTotalOverflowOf(uint256 _projectId) external view returns (uint256)
```

Gets the current overflowed amount for a specified project across all terminals.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to get total overflow for.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | The current total amount of overflow that project has across all terminals.

### directory

```solidity
function directory() external view returns (contract IJBDirectory)
```

The directory of terminals and controllers for projects.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBDirectory | undefined

### fundingCycleStore

```solidity
function fundingCycleStore() external view returns (contract IJBFundingCycleStore)
```

 The contract storing all funding cycle configurations.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBFundingCycleStore | undefined

### prices

```solidity
function prices() external view returns (contract IJBPrices)
```

 The contract that exposes price feeds.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBPrices | undefined

### projects

```solidity
function projects() external view returns (contract IJBProjects)
```

The Projects contract which mints ERC-721&#39;s that represent project ownership and transfers.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBProjects | undefined

### recordAddedBalanceFor

```solidity
function recordAddedBalanceFor(uint256 _projectId, uint256 _amount) external nonpayable returns (struct JBFundingCycle fundingCycle)
```

Records newly added funds for the project.

*Only the associated payment terminal can record an added balance.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to which the funds being added belong.
| _amount | uint256 | The amount added, in wei.

#### Returns

| Name | Type | Description |
|---|---|---|
| fundingCycle | JBFundingCycle | The current funding cycle for the project.

### recordDistributionFor

```solidity
function recordDistributionFor(uint256 _projectId, uint256 _amount, uint256 _currency, uint256 _minReturnedWei) external nonpayable returns (struct JBFundingCycle fundingCycle, uint256 distributedAmount)
```

Records newly distributed funds for a project.

*Only the associated payment terminal can record a distribution.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project that is having funds distributed.
| _amount | uint256 | The amount being distributed. Send as wei (18 decimals).
| _currency | uint256 | The expected currency of the `_amount` being tapped. This must match the project&#39;s current funding cycle&#39;s currency.
| _minReturnedWei | uint256 | The minimum number of wei that should be distributed.

#### Returns

| Name | Type | Description |
|---|---|---|
| fundingCycle | JBFundingCycle | The funding cycle during which the withdrawal was made.
| distributedAmount | uint256 | The amount distribution.

### recordMigration

```solidity
function recordMigration(uint256 _projectId) external nonpayable returns (uint256 balance)
```

Records the migration of this terminal to another.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project being migrated.

#### Returns

| Name | Type | Description |
|---|---|---|
| balance | uint256 | The project&#39;s current balance.

### recordPaymentFrom

```solidity
function recordPaymentFrom(address _payer, uint256 _amount, uint256 _projectId, uint256 _preferClaimedTokensAndBeneficiary, uint256 _minReturnedTokens, string _memo, bytes _delegateMetadata) external nonpayable returns (struct JBFundingCycle fundingCycle, uint256 weight, uint256 tokenCount, string memo)
```

Records newly contributed ETH to a project.

*Mint&#39;s the project&#39;s tokens according to values provided by a configured data source. If no data source is configured, mints tokens proportional to the amount of the contribution. Only the associated payment terminal can record a payment.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _payer | address | The original address that sent the payment to the terminal.
| _amount | uint256 | The amount that is being paid.
| _projectId | uint256 | The ID of the project being paid.
| _preferClaimedTokensAndBeneficiary | uint256 | Two properties are included in this packed uint256: The first bit contains the flag indicating whether the request prefers to issue tokens claimed as ERC-20s. The remaining bits contains the address that should receive benefits from the payment. This design is necessary two prevent a &quot;Stack too deep&quot; compiler error that comes up if the variables are declared seperately.
| _minReturnedTokens | uint256 | The minimum number of tokens expected to be minted in return.
| _memo | string | A memo that will be included in the published event.
| _delegateMetadata | bytes | Bytes to send along to the delegate, if one is used.

#### Returns

| Name | Type | Description |
|---|---|---|
| fundingCycle | JBFundingCycle | The project&#39;s funding cycle during which payment was made.
| weight | uint256 | The weight according to which new token supply was minted.
| tokenCount | uint256 | The number of tokens that were minted.
| memo | string | A memo that should be passed along to the emitted event.

### recordRedemptionFor

```solidity
function recordRedemptionFor(address _holder, uint256 _projectId, uint256 _tokenCount, uint256 _minReturnedWei, address payable _beneficiary, string _memo, bytes _delegateMetadata) external nonpayable returns (struct JBFundingCycle fundingCycle, uint256 claimAmount, string memo)
```

Records newly redeemed tokens of a project.

* Only the associated payment terminal can record a redemption.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _holder | address | The account that is having its tokens redeemed.
| _projectId | uint256 | The ID of the project to which the tokens being redeemed belong.
| _tokenCount | uint256 | The number of tokens to redeemed.
| _minReturnedWei | uint256 | The minimum amount of wei expected in return.
| _beneficiary | address payable | The address that will benefit from the claimed amount.
| _memo | string | A memo to pass along to the emitted event.
| _delegateMetadata | bytes | Bytes to send along to the delegate, if one is used.

#### Returns

| Name | Type | Description |
|---|---|---|
| fundingCycle | JBFundingCycle | The funding cycle during which the redemption was made.
| claimAmount | uint256 | The amount of wei claimed.
| memo | string | A memo that should be passed along to the emitted event.

### recordUsedAllowanceOf

```solidity
function recordUsedAllowanceOf(uint256 _projectId, uint256 _amount, uint256 _currency, uint256 _minReturnedWei) external nonpayable returns (struct JBFundingCycle fundingCycle, uint256 withdrawnAmount)
```

 Records newly used allowance funds of a project.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to use the allowance of.
| _amount | uint256 | The amount of the allowance to use.
| _currency | uint256 | The currency of the `_amount` value. Must match the funding cycle&#39;s currency.
| _minReturnedWei | uint256 | The amount of wei that is expected to be withdrawn.

#### Returns

| Name | Type | Description |
|---|---|---|
| fundingCycle | JBFundingCycle | The funding cycle during which the withdrawal is being made.
| withdrawnAmount | uint256 | The amount withdrawn.

### terminal

```solidity
function terminal() external view returns (contract IJBTerminal)
```

The associated payment terminal for which this contract stores data.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBTerminal | undefined

### tokenStore

```solidity
function tokenStore() external view returns (contract IJBTokenStore)
```

 The contract that manages token minting and burning.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBTokenStore | undefined

### usedDistributionLimitOf

```solidity
function usedDistributionLimitOf(uint256, uint256) external view returns (uint256)
```

 The amount that a project has distributed from its limit during the current funding cycle. 

* Increases as projects use their distribution limit. _projectId The ID of the project to get the used distribution limit of. _configuration The configuration of the during which the disitrution limit applies.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined
| _1 | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### usedOverflowAllowanceOf

```solidity
function usedOverflowAllowanceOf(uint256, uint256) external view returns (uint256)
```

 The amount of overflow that a project has used from its allowance during the current funding cycle configuration. 

* Increases as projects use their allowance. _projectId The ID of the project to get the used overflow allowance of. _configuration The configuration of the during which the allowance applies.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined
| _1 | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined



## Events

### DelegateDidPay

```solidity
event DelegateDidPay(contract IJBPayDelegate indexed delegate, JBDidPayData data)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| delegate `indexed` | contract IJBPayDelegate | undefined |
| data  | JBDidPayData | undefined |

### DelegateDidRedeem

```solidity
event DelegateDidRedeem(contract IJBRedemptionDelegate indexed delegate, JBDidRedeemData data)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| delegate `indexed` | contract IJBRedemptionDelegate | undefined |
| data  | JBDidRedeemData | undefined |



## Errors

### PRBMath__MulDivFixedPointOverflow

```solidity
error PRBMath__MulDivFixedPointOverflow(uint256 prod1)
```

Emitted when the result overflows uint256.



#### Parameters

| Name | Type | Description |
|---|---|---|
| prod1 | uint256 | undefined |

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


