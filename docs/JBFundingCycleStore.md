# JBFundingCycleStore





 Manages funding cycle scheduling.



## Methods

### configureFor

```solidity
function configureFor(uint256 _projectId, JBFundingCycleData _data, uint256 _metadata) external nonpayable returns (struct JBFundingCycle)
```

 Configures the next eligible funding cycle for the specified project.

*Only a project&#39;s current controller can configure its funding cycles._data.target The amount that the project wants to receive in each funding cycle. 18 decimals._data.duration The duration of the funding cycle for which the `_target` amount is needed. Measured in days.  Set to 0 for no expiry and to be able to reconfigure anytime._data.discountRate A number from 0-1000000000 indicating how valuable a contribution to this funding cycle is compared to previous funding cycles. If it&#39;s 0, each funding cycle will have equal weight. If the number is 900000000, a contribution to the next funding cycle will only give you 10% of tickets given to a contribution of the same amoutn during the current funding cycle. If the number is 1000000001, an non-recurring funding cycle will get made._data.ballot The new ballot that will be used to approve subsequent reconfigurations.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project being configured.
| _data | JBFundingCycleData | The funding cycle configuration.
| _metadata | uint256 | Data to associate with this funding cycle configuration.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | JBFundingCycle | The funding cycle that the configuration will take effect during.

### currentBallotStateOf

```solidity
function currentBallotStateOf(uint256 _projectId) external view returns (enum JBBallotState)
```

 The current ballot state of the project.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to check the ballot state of.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | enum JBBallotState | The current ballot&#39;s state.

### currentOf

```solidity
function currentOf(uint256 _projectId) external view returns (struct JBFundingCycle fundingCycle)
```

 The funding cycle that is currently active for the specified project.

*Returns an empty funding cycle with all properties set to 0 if a current funding cycle of the project is not found.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to get the current funding cycle of.

#### Returns

| Name | Type | Description |
|---|---|---|
| fundingCycle | JBFundingCycle | The current funding cycle.

### directory

```solidity
function directory() external view returns (contract IJBDirectory)
```

 The directory of terminals and controllers for projects.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBDirectory | undefined

### get

```solidity
function get(uint256 _projectId, uint256 _configuration) external view returns (struct JBFundingCycle fundingCycle)
```

 Get the funding cycle with the given configuration for the specified project.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to which the funding cycle belongs.
| _configuration | uint256 | The configuration of the funding cycle to get.

#### Returns

| Name | Type | Description |
|---|---|---|
| fundingCycle | JBFundingCycle | The funding cycle.

### latestConfigurationOf

```solidity
function latestConfigurationOf(uint256) external view returns (uint256)
```

 The latest funding cycle configuration for each project. _projectId The ID of the project to get the latest funding cycle configuration of.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### queuedOf

```solidity
function queuedOf(uint256 _projectId) external view returns (struct JBFundingCycle)
```

 The funding cycle that&#39;s next up for the specified project.

*Returns an empty funding cycle with all properties set to 0 if a queued funding cycle of the project is not found.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to get the queued funding cycle of.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | JBFundingCycle | _fundingCycle The queued funding cycle.



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


