# JBPrices





Manages and normalizes price feeds.



## Methods

### TARGET_DECIMALS

```solidity
function TARGET_DECIMALS() external view returns (uint256)
```

 The normalized number of decimals each price feed has.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### addFeedFor

```solidity
function addFeedFor(uint256 _currency, uint256 _base, contract AggregatorV3Interface _feed) external nonpayable
```

 Add a price feed for a currency in terms of the provided base currency.

*Current feeds can&#39;t be modified.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _currency | uint256 | The currency that the price feed is for.
| _base | uint256 | The currency that the price feed is based on.
| _feed | contract AggregatorV3Interface | The price feed being added.

### feedFor

```solidity
function feedFor(uint256, uint256) external view returns (contract AggregatorV3Interface)
```

 The available price feeds. _currency he currency of the feed. _base he base of the feed. 



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined
| _1 | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract AggregatorV3Interface | undefined

### owner

```solidity
function owner() external view returns (address)
```



*Returns the address of the current owner.*


#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined

### priceFor

```solidity
function priceFor(uint256 _currency, uint256 _base) external view returns (uint256)
```

 Gets the current price of the provided currency in terms of the provided base currency.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _currency | uint256 | The currency to get a price for.
| _base | uint256 | The currency to base the price on.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | The price of the currency in terms of the base, with 18 decimals.

### renounceOwnership

```solidity
function renounceOwnership() external nonpayable
```



*Leaves the contract without owner. It will not be possible to call `onlyOwner` functions anymore. Can only be called by the current owner. NOTE: Renouncing ownership will leave the contract without an owner, thereby removing any functionality that is only available to the owner.*


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

### AddFeed

```solidity
event AddFeed(uint256 indexed currency, uint256 indexed base, contract AggregatorV3Interface feed)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| currency `indexed` | uint256 | undefined |
| base `indexed` | uint256 | undefined |
| feed  | contract AggregatorV3Interface | undefined |

### OwnershipTransferred

```solidity
event OwnershipTransferred(address indexed previousOwner, address indexed newOwner)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| previousOwner `indexed` | address | undefined |
| newOwner `indexed` | address | undefined |



