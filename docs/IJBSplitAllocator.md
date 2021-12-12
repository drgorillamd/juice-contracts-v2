# IJBSplitAllocator









## Methods

### allocate

```solidity
function allocate(uint256 _amount, uint256 _group, uint256 _projectId, uint256 _forProjectId, address _beneficiary, bool _preferClaimed) external payable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _amount | uint256 | undefined
| _group | uint256 | undefined
| _projectId | uint256 | undefined
| _forProjectId | uint256 | undefined
| _beneficiary | address | undefined
| _preferClaimed | bool | undefined



## Events

### Allocate

```solidity
event Allocate(uint256 indexed projectId, uint256 indexed forProjectId, address indexed beneficiary, uint256 amount, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| forProjectId `indexed` | uint256 | undefined |
| beneficiary `indexed` | address | undefined |
| amount  | uint256 | undefined |
| caller  | address | undefined |



