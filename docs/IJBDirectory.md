# IJBDirectory









## Methods

### addTerminalsOf

```solidity
function addTerminalsOf(uint256 _projectId, contract IJBTerminal[] _terminals) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _terminals | contract IJBTerminal[] | undefined

### addToSetControllerAllowlist

```solidity
function addToSetControllerAllowlist(address _address) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _address | address | undefined

### controllerOf

```solidity
function controllerOf(uint256 _projectId) external view returns (contract IJBController)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBController | undefined

### isAllowedToSetController

```solidity
function isAllowedToSetController(address _address) external view returns (bool)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _address | address | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined

### isTerminalDelegateOf

```solidity
function isTerminalDelegateOf(uint256 _projectId, address _delegate) external view returns (bool)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _delegate | address | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined

### isTerminalOf

```solidity
function isTerminalOf(uint256 _projectId, contract IJBTerminal _terminal) external view returns (bool)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _terminal | contract IJBTerminal | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined

### primaryTerminalOf

```solidity
function primaryTerminalOf(uint256 _projectId, address _token) external view returns (contract IJBTerminal)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _token | address | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBTerminal | undefined

### projects

```solidity
function projects() external view returns (contract IJBProjects)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBProjects | undefined

### removeFromSetControllerAllowlist

```solidity
function removeFromSetControllerAllowlist(address _address) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _address | address | undefined

### removeTerminalOf

```solidity
function removeTerminalOf(uint256 _projectId, contract IJBTerminal _terminal) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _terminal | contract IJBTerminal | undefined

### setControllerOf

```solidity
function setControllerOf(uint256 _projectId, contract IJBController _controller) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _controller | contract IJBController | undefined

### setPrimaryTerminalOf

```solidity
function setPrimaryTerminalOf(uint256 _projectId, contract IJBTerminal _terminal) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined
| _terminal | contract IJBTerminal | undefined

### terminalsOf

```solidity
function terminalsOf(uint256 _projectId) external view returns (contract IJBTerminal[])
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBTerminal[] | undefined



## Events

### AddTerminal

```solidity
event AddTerminal(uint256 indexed projectId, contract IJBTerminal indexed terminal, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| terminal `indexed` | contract IJBTerminal | undefined |
| caller  | address | undefined |

### AddToSetControllerAllowlist

```solidity
event AddToSetControllerAllowlist(address indexed _address, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _address `indexed` | address | undefined |
| caller  | address | undefined |

### RemoveFromSetControllerAllowlist

```solidity
event RemoveFromSetControllerAllowlist(address indexed _address, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _address `indexed` | address | undefined |
| caller  | address | undefined |

### RemoveTerminal

```solidity
event RemoveTerminal(uint256 indexed projectId, contract IJBTerminal indexed terminal, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| terminal `indexed` | contract IJBTerminal | undefined |
| caller  | address | undefined |

### SetController

```solidity
event SetController(uint256 indexed projectId, contract IJBController indexed controller, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| controller `indexed` | contract IJBController | undefined |
| caller  | address | undefined |

### SetPrimaryTerminal

```solidity
event SetPrimaryTerminal(uint256 indexed projectId, address indexed token, contract IJBTerminal indexed terminal, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| token `indexed` | address | undefined |
| terminal `indexed` | contract IJBTerminal | undefined |
| caller  | address | undefined |



