# IJBFundingCycleStore









## Methods

### configureFor

```solidity
function configureFor(uint256 _projectId, JBFundingCycleData _data, uint256 _metadata) external nonpayable returns (struct JBFundingCycle fundingCycle)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _data | JBFundingCycleData | undefined
| _metadata | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| fundingCycle | JBFundingCycle | undefined

### currentBallotStateOf

```solidity
function currentBallotStateOf(uint256 _projectId) external view returns (enum JBBallotState)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | enum JBBallotState | undefined

### currentOf

```solidity
function currentOf(uint256 _projectId) external view returns (struct JBFundingCycle)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | JBFundingCycle | undefined

### get

```solidity
function get(uint256 _projectId, uint256 _configuration) external view returns (struct JBFundingCycle)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _configuration | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | JBFundingCycle | undefined

### latestConfigurationOf

```solidity
function latestConfigurationOf(uint256 _projectId) external view returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### queuedOf

```solidity
function queuedOf(uint256 _projectId) external view returns (struct JBFundingCycle)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | JBFundingCycle | undefined



## Events

### Configure

```solidity
event Configure(uint256 indexed configuration, uint256 indexed projectId, JBFundingCycleData data, uint256 metadata, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| configuration `indexed` | uint256 | undefined |
| projectId `indexed` | uint256 | undefined |
| data  | JBFundingCycleData | undefined |
| metadata  | uint256 | undefined |
| caller  | address | undefined |

### Init

```solidity
event Init(uint256 indexed configuration, uint256 indexed projectId, uint256 indexed basedOn)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| configuration `indexed` | uint256 | undefined |
| projectId `indexed` | uint256 | undefined |
| basedOn `indexed` | uint256 | undefined |



