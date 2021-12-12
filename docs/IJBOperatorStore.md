# IJBOperatorStore









## Methods

### hasPermission

```solidity
function hasPermission(address _operator, address _account, uint256 _domain, uint256 _permissionIndex) external view returns (bool)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _operator | address | undefined
| _account | address | undefined
| _domain | uint256 | undefined
| _permissionIndex | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined

### hasPermissions

```solidity
function hasPermissions(address _operator, address _account, uint256 _domain, uint256[] _permissionIndexes) external view returns (bool)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _operator | address | undefined
| _account | address | undefined
| _domain | uint256 | undefined
| _permissionIndexes | uint256[] | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined

### permissionsOf

```solidity
function permissionsOf(address _operator, address _account, uint256 _domain) external view returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _operator | address | undefined
| _account | address | undefined
| _domain | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### setOperator

```solidity
function setOperator(JBOperatorData _operatorData) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _operatorData | JBOperatorData | undefined

### setOperators

```solidity
function setOperators(JBOperatorData[] _operatorData) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _operatorData | JBOperatorData[] | undefined



## Events

### SetOperator

```solidity
event SetOperator(address indexed operator, address indexed account, uint256 indexed domain, uint256[] permissionIndexes, uint256 packed)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| operator `indexed` | address | undefined |
| account `indexed` | address | undefined |
| domain `indexed` | uint256 | undefined |
| permissionIndexes  | uint256[] | undefined |
| packed  | uint256 | undefined |



