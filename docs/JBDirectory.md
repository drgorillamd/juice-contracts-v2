# JBDirectory





Keeps a reference of which terminal contracts each project is currently accepting funds through, and which controller contract is managing each project&#39;s tokens and funding cycles.



## Methods

### addTerminalsOf

```solidity
function addTerminalsOf(uint256 _projectId, contract IJBTerminal[] _terminals) external nonpayable
```

 Add terminals to project&#39;s list of terminals.

*Only a project owner, an operator, or its controller can add terminals.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project having a terminal added.
| _terminals | contract IJBTerminal[] | The terminals to add.

### addToSetControllerAllowlist

```solidity
function addToSetControllerAllowlist(address _address) external nonpayable
```

The owner (Juicebox multisig) can add addresses which are allowed to change a project&#39;s controller. Those addresses are known and vetted controllers as well as contracts designed to launch new projects. This is not a requirement for all controllers. However, unknown controllers may require additional transactions to perform certain operations.

*If you would like an address/contract allowlisted, please reach out to the Juicebox dev team.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _address | address | the allowed address to be added.

### controllerOf

```solidity
function controllerOf(uint256) external view returns (contract IJBController)
```

 For each project ID, the controller that manages how terminals interact with tokens and funding cycles. _projectId The ID of the project to get the controller of.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBController | undefined

### isAllowedToSetController

```solidity
function isAllowedToSetController(address _address) external view returns (bool)
```

Whether or not a specified address is allowed to set controllers.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _address | address | the address to check

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | A flag indicating whether or not the specified address can change controllers.

### isTerminalDelegateOf

```solidity
function isTerminalDelegateOf(uint256 _projectId, address _contract) external view returns (bool)
```

Whether or not a specified terminal is a terminal of the specified project.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to check within.
| _contract | address | The address of the terminal to check for.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | A flag indicating whether or not the specified terminal is a terminal of the specified project.

### isTerminalOf

```solidity
function isTerminalOf(uint256 _projectId, contract IJBTerminal _terminal) external view returns (bool)
```

Whether or not a specified terminal is a terminal of the specified project.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to check within.
| _terminal | contract IJBTerminal | The address of the terminal to check for.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | A flag indicating whether or not the specified terminal is a terminal of the specified project.

### operatorStore

```solidity
function operatorStore() external view returns (contract IJBOperatorStore)
```

 A contract storing operator assignments.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBOperatorStore | undefined

### owner

```solidity
function owner() external view returns (address)
```



*Returns the address of the current owner.*


#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined

### primaryTerminalOf

```solidity
function primaryTerminalOf(uint256 _projectId, address _token) external view returns (contract IJBTerminal)
```

The primary terminal that is managing funds for a project for a specified token.

*The zero address is returned if a terminal isn&#39;t found for the specified token.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to get a terminal for.
| _token | address | The token the terminal accepts.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBTerminal | The primary terminal for the project for the specified token.

### projects

```solidity
function projects() external view returns (contract IJBProjects)
```

 The Projects contract which mints ERC-721&#39;s that represent project ownership and transfers.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBProjects | undefined

### removeFromSetControllerAllowlist

```solidity
function removeFromSetControllerAllowlist(address _address) external nonpayable
```

See `addKnownController(...)` for context. Removes an address from the allowlist.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _address | address | The address to be removed.

### removeTerminalOf

```solidity
function removeTerminalOf(uint256 _projectId, contract IJBTerminal _terminal) external nonpayable
```

 Remove a terminal from a project&#39;s list of terminals.

*Only a project owner or an operator can remove one of its terminals. *

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project having a terminal removed.
| _terminal | contract IJBTerminal | The terminal to remove.

### renounceOwnership

```solidity
function renounceOwnership() external nonpayable
```



*Leaves the contract without owner. It will not be possible to call `onlyOwner` functions anymore. Can only be called by the current owner. NOTE: Renouncing ownership will leave the contract without an owner, thereby removing any functionality that is only available to the owner.*


### setControllerOf

```solidity
function setControllerOf(uint256 _projectId, contract IJBController _controller) external nonpayable
```

Update the controller that manages how terminals interact with the ecosystem.

* A controller can be set if: - the message sender is the project owner or an operator having the correct authorization. - or, an allowedlisted address is setting an allowlisted controller.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to set a new controller for.
| _controller | contract IJBController | The new controller to set.

### setPrimaryTerminalOf

```solidity
function setPrimaryTerminalOf(uint256 _projectId, contract IJBTerminal _terminal) external nonpayable
```

Project&#39;s can set which terminal should be their primary for a particular token. This is useful in case a project has several terminals connected for a particular token.

*The terminal will be set as the primary for the token that its vault accepts. *

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project for which a primary token is being set.
| _terminal | contract IJBTerminal | The terminal to make primary.

### terminalsOf

```solidity
function terminalsOf(uint256 _projectId) external view returns (contract IJBTerminal[])
```

For each project ID, the terminals that are currently managing its funds.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to get terminals of.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBTerminal[] | An array of terminal addresses.

### transferOwnership

```solidity
function transferOwnership(address newOwner) external nonpayable
```



*Transfers ownership of the contract to a new account (`newOwner`). Can only be called by the current owner.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| newOwner | address | undefined



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

### OwnershipTransferred

```solidity
event OwnershipTransferred(address indexed previousOwner, address indexed newOwner)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| previousOwner `indexed` | address | undefined |
| newOwner `indexed` | address | undefined |

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



