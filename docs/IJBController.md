# IJBController









## Methods

### burnTokensOf

```solidity
function burnTokensOf(address _holder, uint256 _projectId, uint256 _tokenCount, string _memo, bool _preferClaimedTokens) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _holder | address | undefined
| _projectId | uint256 | undefined
| _tokenCount | uint256 | undefined
| _memo | string | undefined
| _preferClaimedTokens | bool | undefined

### currencyOf

```solidity
function currencyOf(uint256 _projectId, uint256 _configuration, contract IJBTerminal _terminal) external view returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _configuration | uint256 | undefined
| _terminal | contract IJBTerminal | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### distributionLimitOf

```solidity
function distributionLimitOf(uint256 _projectId, uint256 _configuration, contract IJBTerminal _terminal) external view returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _configuration | uint256 | undefined
| _terminal | contract IJBTerminal | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### mintTokensOf

```solidity
function mintTokensOf(uint256 _projectId, uint256 _tokenCount, address _beneficiary, string _memo, bool _preferClaimedTokens, uint256 _reserveRate) external nonpayable returns (uint256 beneficiaryTokenCount)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _tokenCount | uint256 | undefined
| _beneficiary | address | undefined
| _memo | string | undefined
| _preferClaimedTokens | bool | undefined
| _reserveRate | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| beneficiaryTokenCount | uint256 | undefined

### overflowAllowanceOf

```solidity
function overflowAllowanceOf(uint256 _projectId, uint256 _configuration, contract IJBTerminal _terminal) external view returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _configuration | uint256 | undefined
| _terminal | contract IJBTerminal | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### prepForMigrationOf

```solidity
function prepForMigrationOf(uint256 _projectId, contract IJBController _from) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _from | contract IJBController | undefined

### reservedTokenBalanceOf

```solidity
function reservedTokenBalanceOf(uint256 _projectId, uint256 _reservedRate) external view returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _reservedRate | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined




