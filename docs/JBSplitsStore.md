# JBSplitsStore





Stores splits for each project.



## Methods

### directory

```solidity
function directory() external view returns (contract IJBDirectory)
```

 The directory of terminals and controllers for projects.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBDirectory | undefined

### operatorStore

```solidity
function operatorStore() external view returns (contract IJBOperatorStore)
```

 A contract storing operator assignments.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBOperatorStore | undefined

### projects

```solidity
function projects() external view returns (contract IJBProjects)
```

 The Projects contract which mints ERC-721&#39;s that represent project ownership and transfers.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBProjects | undefined

### set

```solidity
function set(uint256 _projectId, uint256 _domain, uint256 _group, JBSplit[] _splits) external nonpayable
```

 Sets a project&#39;s splits.

*Only the owner or operator of a project, or the current controller contract of the project, can set its splits.The new splits must include any currently set splits that are locked.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project for which splits are being added.
| _domain | uint256 | An identifier within which the splits should be considered active.
| _group | uint256 | An identifier between of splits being set. All splits within this _group must add up to within 100%.
| _splits | JBSplit[] | The splits to set.

### splitsOf

```solidity
function splitsOf(uint256 _projectId, uint256 _domain, uint256 _group) external view returns (struct JBSplit[])
```

 Get all splits for the specified project ID, within the specified domain, for the specified group.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to get splits for.
| _domain | uint256 | An identifier within which the returned splits should be considered active.
| _group | uint256 | The identifying group of the splits.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | JBSplit[] | An array of all splits for the project.



## Events

### SetSplit

```solidity
event SetSplit(uint256 indexed projectId, uint256 indexed domain, uint256 indexed group, JBSplit split, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| domain `indexed` | uint256 | undefined |
| group `indexed` | uint256 | undefined |
| split  | JBSplit | undefined |
| caller  | address | undefined |



