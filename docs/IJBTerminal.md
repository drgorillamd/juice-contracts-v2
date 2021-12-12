# IJBTerminal









## Methods

### addToBalanceOf

```solidity
function addToBalanceOf(uint256 _projectId, string _memo) external payable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _memo | string | undefined

### delegate

```solidity
function delegate() external view returns (address)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined

### ethBalanceOf

```solidity
function ethBalanceOf(uint256 _projectId) external view returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### pay

```solidity
function pay(uint256 _projectId, address _beneficiary, uint256 _minReturnedTokens, bool _preferClaimedTokens, string _memo, bytes _delegateMetadata) external payable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _beneficiary | address | undefined
| _minReturnedTokens | uint256 | undefined
| _preferClaimedTokens | bool | undefined
| _memo | string | undefined
| _delegateMetadata | bytes | undefined

### remainingDistributionLimitOf

```solidity
function remainingDistributionLimitOf(uint256 _projectId, uint256 _fundingCycleConfiguration, uint256 _fundingCycleNumber) external view returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _fundingCycleConfiguration | uint256 | undefined
| _fundingCycleNumber | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### token

```solidity
function token() external view returns (address)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined




