# JBOperatorStore





Stores operator permissions for all addresses. Addresses can give permissions to any other address to take specific indexed actions on their behalf.



## Methods

### hasPermission

```solidity
function hasPermission(address _operator, address _account, uint256 _domain, uint256 _permissionIndex) external view returns (bool)
```

 Whether or not an operator has the permission to take a certain action pertaining to the specified domain.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _operator | address | The operator to check.
| _account | address | The account that has given out permissions to the operator.
| _domain | uint256 | The domain that the operator has been given permissions to operate.
| _permissionIndex | uint256 | The permission indexes to check for.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | Whether the operator has the specified permission.

### hasPermissions

```solidity
function hasPermissions(address _operator, address _account, uint256 _domain, uint256[] _permissionIndexes) external view returns (bool)
```

 Whether or not an operator has the permission to take certain actions pertaining to the specified domain.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _operator | address | The operator to check.
| _account | address | The account that has given out permissions to the operator.
| _domain | uint256 | The domain that the operator has been given permissions to operate.
| _permissionIndexes | uint256[] | An array of permission indexes to check for.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | Whether the operator has all specified permissions.

### permissionsOf

```solidity
function permissionsOf(address, address, uint256) external view returns (uint256)
```

The permissions that an operator has to operate on a specific domain.

*An account can give an operator permissions that only pertain to a specific domain. There is no domain with a value of 0 – accounts can use the 0 domain to give an operator permissions to all domains on their behalf. _operator The address of the operator. _account The address of the account being operated. _domain The domain within which the permissions apply.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined
| _1 | address | undefined
| _2 | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### setOperator

```solidity
function setOperator(JBOperatorData _operatorData) external nonpayable
```

Sets permissions for an operators.

*Only an address can set its own operators._operatorData.operators The operators to whom permissions will be given._operatorData.domains Lists the domain that each operator is being given permissions to operate. A value of 0 serves as a wildcard domain. Applications can specify their own domain system._operatorData.permissionIndexes Lists the permission indexes to set for each operator. Indexes must be between 0-255. Applications can specify the significance of each index.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _operatorData | JBOperatorData | The data that specifies the params for the operator being set.

### setOperators

```solidity
function setOperators(JBOperatorData[] _operatorData) external nonpayable
```

Sets permissions for many operators.

*Only an address can set its own operators._operatorData.operators The operators to whom permissions will be given._operatorData.domains Lists the domain that each operator is being given permissions to operate. A value of 0 serves as a wildcard domain. Applications can specify their own domain system._operatorData.permissionIndexes Lists the permission indexes to set for each operator. Indexes must be between 0-255. Applications can specify the significance of each index.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _operatorData | JBOperatorData[] | The data that specifies the params for each operator being set.



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



