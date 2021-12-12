# IJBPrices









## Methods

### TARGET_DECIMALS

```solidity
function TARGET_DECIMALS() external nonpayable returns (uint256)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### addFeedFor

```solidity
function addFeedFor(uint256 _currency, uint256 _base, contract AggregatorV3Interface _priceFeed) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _currency | uint256 | undefined
| _base | uint256 | undefined
| _priceFeed | contract AggregatorV3Interface | undefined

### feedFor

```solidity
function feedFor(uint256 _currency, uint256 _base) external nonpayable returns (contract AggregatorV3Interface)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _currency | uint256 | undefined
| _base | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract AggregatorV3Interface | undefined

### priceFor

```solidity
function priceFor(uint256 _currency, uint256 _base) external view returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _currency | uint256 | undefined
| _base | uint256 | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined



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



