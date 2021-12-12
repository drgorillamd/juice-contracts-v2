# IJBETHPaymentTerminal









## Methods

### directory

```solidity
function directory() external view returns (contract IJBDirectory)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBDirectory | undefined

### distributePayoutsOf

```solidity
function distributePayoutsOf(uint256 _projectId, uint256 _amount, uint256 _currency, uint256 _minReturnedWei, string _memo) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _amount | uint256 | undefined
| _currency | uint256 | undefined
| _minReturnedWei | uint256 | undefined
| _memo | string | undefined

### heldFeesOf

```solidity
function heldFeesOf(uint256 _projectId) external view returns (struct JBFee[])
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | JBFee[] | undefined

### migrate

```solidity
function migrate(uint256 _projectId, contract IJBTerminal _to) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _to | contract IJBTerminal | undefined

### projects

```solidity
function projects() external view returns (contract IJBProjects)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBProjects | undefined

### redeemTokensOf

```solidity
function redeemTokensOf(address _holder, uint256 _projectId, uint256 _count, uint256 _minReturnedWei, address payable _beneficiary, string _memo, bytes _delegateMetadata) external nonpayable returns (uint256 claimedAmount)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _holder | address | undefined
| _projectId | uint256 | undefined
| _count | uint256 | undefined
| _minReturnedWei | uint256 | undefined
| _beneficiary | address payable | undefined
| _memo | string | undefined
| _delegateMetadata | bytes | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| claimedAmount | uint256 | undefined

### splitsStore

```solidity
function splitsStore() external view returns (contract IJBSplitsStore)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBSplitsStore | undefined

### useAllowanceOf

```solidity
function useAllowanceOf(uint256 _projectId, uint256 _amount, uint256 _currency, uint256 _minReturnedWei, address payable _beneficiary) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _amount | uint256 | undefined
| _currency | uint256 | undefined
| _minReturnedWei | uint256 | undefined
| _beneficiary | address payable | undefined



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



