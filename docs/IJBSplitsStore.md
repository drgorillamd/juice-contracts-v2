# IJBSplitsStore









## Methods

### directory

```solidity
function directory() external view returns (contract IJBDirectory)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBDirectory | undefined

### projects

```solidity
function projects() external view returns (contract IJBProjects)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBProjects | undefined

### set

```solidity
function set(uint256 _projectId, uint256 _domain, uint256 _group, JBSplit[] _splits) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _domain | uint256 | undefined
| _group | uint256 | undefined
| _splits | JBSplit[] | undefined

### splitsOf

```solidity
function splitsOf(uint256 _projectId, uint256 _domain, uint256 _group) external view returns (struct JBSplit[])
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _domain | uint256 | undefined
| _group | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | JBSplit[] | undefined



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



