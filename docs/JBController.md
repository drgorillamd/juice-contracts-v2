# JBController





Stitches together funding cycles and community tokens, making sure all activity is accounted for and correct.

* A project can transfer control from this contract to another allowed controller contract at any time. Inherits from: IJBController - general interface for the generic controller methods in this contract that interacts with funding cycles and tokens according to the Juicebox protocol&#39;s rules. JBTerminalUtility - provides tools for contracts that has functionality that can only be accessed by a project&#39;s terminals.  JBOperatable - several functions in this contract can only be accessed by a project owner, or an address that has been preconfifigured to be an operator of the project. ReentrencyGuard - several function in this contract shouldn&#39;t be accessible recursively.*

## Methods

### burnTokensOf

```solidity
function burnTokensOf(address _holder, uint256 _projectId, uint256 _tokenCount, string _memo, bool _preferClaimedTokens) external nonpayable
```

Burns a token holder&#39;s supply.

*Only a token&#39;s holder, a designated operator, or a project&#39;s terminal&#39;s delegate can burn it.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _holder | address | The account that is having its tokens burned.
| _projectId | uint256 | The ID of the project to which the tokens being burned belong.
| _tokenCount | uint256 | The number of tokens to burn.
| _memo | string | A memo to pass along to the emitted event.
| _preferClaimedTokens | bool | A flag indicating whether ERC20&#39;s should be burned first if they have been issued.

### changeTokenOf

```solidity
function changeTokenOf(uint256 _projectId, contract IJBToken _token, address _newOwner) external nonpayable
```

 Swap the current project&#39;s token that is minted and burned for another, and transfer ownership of the current token to another address if needed.

*Only a project owner or operator can change its token.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to which the changed token belongs.
| _token | contract IJBToken | The new token.
| _newOwner | address | An address to transfer the current token&#39;s ownership to. This is optional, but it cannot be done later.

### currencyOf

```solidity
function currencyOf(uint256, uint256, contract IJBTerminal) external view returns (uint256)
```

 The currency that overflow allowances and distribution limits are measured in for a particular funding cycle configuration, applied only to the specified terminal. _projectId The ID of the project to get the currency of. _configuration The configuration during which the currency applies. _terminal The terminal for which the currency should be used. 



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined
| _1 | uint256 | undefined
| _2 | contract IJBTerminal | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### directory

```solidity
function directory() external view returns (contract IJBDirectory)
```

 The directory of terminals and controllers for projects.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBDirectory | undefined

### distributeReservedTokensOf

```solidity
function distributeReservedTokensOf(uint256 _projectId, string _memo) external nonpayable returns (uint256)
```

Distributes all outstanding reserved tokens for a project.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to which the reserved tokens belong.
| _memo | string | A memo to pass along to the emitted event.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | The amount of minted reserved tokens.

### distributionLimitOf

```solidity
function distributionLimitOf(uint256, uint256, contract IJBTerminal) external view returns (uint256)
```

 The amount of that a project can withdraw per funding cycle. _projectId The ID of the project to get the current distribution limit of. _configuration The configuration during which the distribution limit applies. _terminal The terminal from which distributions are being limited. 



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined
| _1 | uint256 | undefined
| _2 | contract IJBTerminal | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### fundingCycleStore

```solidity
function fundingCycleStore() external view returns (contract IJBFundingCycleStore)
```

 The contract storing all funding cycle configurations.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBFundingCycleStore | undefined

### issueTokenFor

```solidity
function issueTokenFor(uint256 _projectId, string _name, string _symbol) external nonpayable returns (contract IJBToken token)
```

 Issues an owner&#39;s ERC-20 Tokens that&#39;ll be used when claiming tokens.

* Deploys a project&#39;s ERC-20 token contract.Only a project owner or operator can issue its token.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project being issued tokens.
| _name | string | The ERC-20&#39;s name.
| _symbol | string | The ERC-20&#39;s symbol.

#### Returns

| Name | Type | Description |
|---|---|---|
| token | contract IJBToken | undefined

### launchProjectFor

```solidity
function launchProjectFor(address _owner, bytes32 _handle, string _metadataCid, JBFundingCycleData _data, JBFundingCycleMetadata _metadata, JBGroupedSplits[] _groupedSplits, JBFundAccessConstraints[] _fundAccessConstraints, contract IJBTerminal[] _terminals) external nonpayable returns (uint256 projectId)
```

Creates a project. This will mint an ERC-721 into the specified owner&#39;s account, configure a first funding cycle, and set up any splits.

*Each operation within this transaction can be done in sequence separately.Anyone can deploy a project on an owner&#39;s behalf._data.target The amount that the project wants to payout during a funding cycle. Sent as a wad (18 decimals)._data.currency The currency of the `target`. Send 0 for ETH or 1 for USD._data.duration The duration of the funding cycle for which the `target` amount is needed. Measured in days. Send 0 for cycles that are reconfigurable at any time._data.weight The weight of the funding cycle. This number is interpreted as a wad, meaning it has 18 decimal places. The protocol uses the weight to determine how many tokens to mint upon receiving a payment during a funding cycle. A value of 0 means that the weight should be inherited and potentially discounted from the currently active cycle if possible. Otherwise a weight of 0 will be used. A value of 1 means that no tokens should be minted regardless of how many ETH was paid. The protocol will set the stored weight value to 0. A value of 1 X 10^18 means that one token should be minted per ETH received._data.discountRate A number from 0-1000000001 indicating how valuable a contribution to this funding cycle is compared to previous funding cycles. If it&#39;s 0, each funding cycle will have equal weight. If the number is 900000000, a contribution to the next funding cycle will only give you 10% of tickets given to a contribution of the same amoutn during the current funding cycle. If the number is 1000000001, an non-recurring funding cycle will get made._data.ballot The ballot contract that will be used to approve subsequent reconfigurations. Must adhere to the IFundingCycleBallot interface._metadata.reservedRate A number from 0-10000 (0-100%) indicating the percentage of each contribution&#39;s newly minted tokens that will be reserved for the token splits._metadata.redemptionRate The rate from 0-10000 (0-100%) that tunes the bonding curve according to which a project&#39;s tokens can be redeemed for overflow. The bonding curve formula is https://www.desmos.com/calculator/sp9ru6zbpk where x is _count, o is _currentOverflow, s is _totalSupply, and r is _redemptionRate._metadata.ballotRedemptionRate The redemption rate to apply when there is an active ballot._metadata.pausePay Whether or not the pay functionality should be paused during this cycle._metadata.pauseWithdrawals Whether or not the withdraw functionality should be paused during this cycle._metadata.pauseRedeem Whether or not the redeem functionality should be paused during this cycle._metadata.pauseMint Whether or not the mint functionality should be paused during this cycle._metadata.pauseBurn Whether or not the burn functionality should be paused during this cycle._metadata.allowTerminalMigration Whether or not the terminal migration functionality should be paused during this cycle._metadata.allowControllerMigration Whether or not the controller migration functionality should be paused during this cycle._metadata.holdFees Whether or not fees should be held to be processed at a later time during this cycle._metadata.useDataSourceForPay Whether or not the data source should be used when processing a payment._metadata.useDataSourceForRedeem Whether or not the data source should be used when processing a redemption._metadata.dataSource A contract that exposes data that can be used within pay and redeem transactions. Must adhere to IJBFundingCycleDataSource.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _owner | address | The address to set as the owner of the project. The project ERC-721 will be owned by this address.
| _handle | bytes32 | The project&#39;s unique handle. This can be updated any time by the owner of the project.
| _metadataCid | string | A link to associate with the project. This can be updated any time by the owner of the project.
| _data | JBFundingCycleData | A JBFundingCycleData data structure that defines the project&#39;s first funding cycle. These properties will remain fixed for the duration of the funding cycle.
| _metadata | JBFundingCycleMetadata | A JBFundingCycleMetadata data structure specifying the controller specific params that a funding cycle can have. These properties will remain fixed for the duration of the funding cycle.
| _groupedSplits | JBGroupedSplits[] | An array of splits to set for any number of group.
| _fundAccessConstraints | JBFundAccessConstraints[] | An array containing amounts, in wei (18 decimals), that a project can use from its own overflow on-demand for each payment terminal.
| _terminals | contract IJBTerminal[] | Payment terminals to add for the project.

#### Returns

| Name | Type | Description |
|---|---|---|
| projectId | uint256 | The ID of the project.

### migrate

```solidity
function migrate(uint256 _projectId, contract IJBController _to) external nonpayable
```

Allows a project to migrate from this controller to another.

*Only a project&#39;s owner or a designated operator can migrate it.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project that will be migrated from this controller.
| _to | contract IJBController | The controller to which the project is migrating.

### mintTokensOf

```solidity
function mintTokensOf(uint256 _projectId, uint256 _tokenCount, address _beneficiary, string _memo, bool _preferClaimedTokens, uint256 _reservedRate) external nonpayable returns (uint256 beneficiaryTokenCount)
```

Mint new token supply into an account.

*Only a project&#39;s owner, a designated operator, or one of its terminal&#39;s delegate can mint its tokens.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to which the tokens being minted belong.
| _tokenCount | uint256 | The amount of tokens to mint.
| _beneficiary | address | The account that the tokens are being minted for.
| _memo | string | A memo to pass along to the emitted event.
| _preferClaimedTokens | bool | A flag indicating whether ERC20&#39;s should be minted if they have been issued.
| _reservedRate | uint256 | The reserved rate to use when minting tokens. A positive amount will reduce the token count minted to the beneficiary, instead being reserved for preprogrammed splits. This number is out of 10000.

#### Returns

| Name | Type | Description |
|---|---|---|
| beneficiaryTokenCount | uint256 | The amount of tokens minted for the beneficiary.

### operatorStore

```solidity
function operatorStore() external view returns (contract IJBOperatorStore)
```

 A contract storing operator assignments.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBOperatorStore | undefined

### overflowAllowanceOf

```solidity
function overflowAllowanceOf(uint256, uint256, contract IJBTerminal) external view returns (uint256)
```

 The amount of overflow that a project is allowed to tap into on-demand throughout configuration. _projectId The ID of the project to get the current overflow allowance of. _configuration The configuration of the during which the allowance applies. _terminal The terminal managing the overflow.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined
| _1 | uint256 | undefined
| _2 | contract IJBTerminal | undefined

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined

### prepForMigrationOf

```solidity
function prepForMigrationOf(uint256 _projectId, contract IJBController) external nonpayable
```

Allows other controllers to signal to this one that a migration is expected for the specified project.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project that will be migrated to this controller.
| _1 | contract IJBController | undefined

### projects

```solidity
function projects() external view returns (contract IJBProjects)
```

 The Projects contract which mints ERC-721&#39;s that represent project ownership.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBProjects | undefined

### reconfigureFundingCyclesOf

```solidity
function reconfigureFundingCyclesOf(uint256 _projectId, JBFundingCycleData _data, JBFundingCycleMetadata _metadata, JBGroupedSplits[] _groupedSplits, JBFundAccessConstraints[] _fundAccessConstraints) external nonpayable returns (uint256)
```

Configures the properties of the current funding cycle if the project hasn&#39;t distributed tokens yet, or sets the properties of the proposed funding cycle that will take effect once the current one expires if it is approved by the current funding cycle&#39;s ballot.

*Only a project&#39;s owner or a designated operator can configure its funding cycles._data.target The amount that the project wants to payout during a funding cycle. Sent as a wad (18 decimals)._data.currency The currency of the `target`. Send 0 for ETH or 1 for USD._data.duration The duration of the funding cycle for which the `target` amount is needed. Measured in days. Send 0 for cycles that are reconfigurable at any time._data.weight The weight of the funding cycle. This number is interpreted as a wad, meaning it has 18 decimal places. The protocol uses the weight to determine how many tokens to mint upon receiving a payment during a funding cycle. A value of 0 means that the weight should be inherited and potentially discounted from the currently active cycle if possible. Otherwise a weight of 0 will be used. A value of 1 means that no tokens should be minted regardless of how many ETH was paid. The protocol will set the stored weight value to 0. A value of 1 X 10^18 means that one token should be minted per ETH received._data.discountRate A number from 0-1000000001 indicating how valuable a contribution to this funding cycle is compared to previous funding cycles. If it&#39;s 0, each funding cycle will have equal weight. If the number is 900000000, a contribution to the next funding cycle will only give you 10% of tickets given to a contribution of the same amoutn during the current funding cycle. If the number is 1000000001, an non-recurring funding cycle will get made._data.ballot The ballot contract that will be used to approve subsequent reconfigurations. Must adhere to the IFundingCycleBallot interface._metadata.reservedRate A number from 0-10000 (0-100%) indicating the percentage of each contribution&#39;s newly minted tokens that will be reserved for the token splits._metadata.redemptionRate The rate from 0-10000 (0-100%) that tunes the bonding curve according to which a project&#39;s tokens can be redeemed for overflow. The bonding curve formula is https://www.desmos.com/calculator/sp9ru6zbpk where x is _count, o is _currentOverflow, s is _totalSupply, and r is _redemptionRate._metadata.ballotRedemptionRate The redemption rate to apply when there is an active ballot._metadata.pausePay Whether or not the pay functionality should be paused during this cycle._metadata.pauseWithdrawals Whether or not the withdraw functionality should be paused during this cycle._metadata.pauseRedeem Whether or not the redeem functionality should be paused during this cycle._metadata.pauseMint Whether or not the mint functionality should be paused during this cycle._metadata.pauseBurn Whether or not the burn functionality should be paused during this cycle._metadata.allowTerminalMigration Whether or not the terminal migration functionality should be paused during this cycle._metadata.allowControllerMigration Whether or not the controller migration functionality should be paused during this cycle._metadata.holdFees Whether or not fees should be held to be processed at a later time during this cycle._metadata.useDataSourceForPay Whether or not the data source should be used when processing a payment._metadata.useDataSourceForRedeem Whether or not the data source should be used when processing a redemption._metadata.dataSource A contract that exposes data that can be used within pay and redeem transactions. Must adhere to IJBFundingCycleDataSource.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project whose funding cycles are being reconfigured.
| _data | JBFundingCycleData | A JBFundingCycleData data structure that defines the project&#39;s funding cycle that will be queued. These properties will remain fixed for the duration of the funding cycle.
| _metadata | JBFundingCycleMetadata | A JBFundingCycleMetadata data structure specifying the controller specific params that a funding cycle can have. These properties will remain fixed for the duration of the funding cycle.
| _groupedSplits | JBGroupedSplits[] | An array of splits to set for any number of group.
| _fundAccessConstraints | JBFundAccessConstraints[] | An array containing amounts, in wei (18 decimals), that a project can use from its own overflow on-demand for each payment terminal.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | The configuration of the funding cycle that was successfully reconfigured.

### reservedTokenBalanceOf

```solidity
function reservedTokenBalanceOf(uint256 _projectId, uint256 _reservedRate) external view returns (uint256)
```

Gets the amount of reserved tokens that a project has available to distribute.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _projectId | uint256 | The ID of the project to get a reserved token balance of.
| _reservedRate | uint256 | The reserved rate to use when making the calculation.

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | The current amount of reserved tokens.

### splitsStore

```solidity
function splitsStore() external view returns (contract IJBSplitsStore)
```

 The contract that stores splits for each project.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBSplitsStore | undefined

### tokenStore

```solidity
function tokenStore() external view returns (contract IJBTokenStore)
```

 The contract that manages token minting and burning.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IJBTokenStore | undefined



## Events

### BurnTokens

```solidity
event BurnTokens(address indexed holder, uint256 indexed projectId, uint256 count, string memo, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| holder `indexed` | address | undefined |
| projectId `indexed` | uint256 | undefined |
| count  | uint256 | undefined |
| memo  | string | undefined |
| caller  | address | undefined |

### DistributeReservedTokens

```solidity
event DistributeReservedTokens(uint256 indexed fundingCycleConfiguration, uint256 indexed fundingCycleNumber, uint256 indexed projectId, address beneficiary, uint256 count, uint256 beneficiaryTokenCount, string memo, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| fundingCycleConfiguration `indexed` | uint256 | undefined |
| fundingCycleNumber `indexed` | uint256 | undefined |
| projectId `indexed` | uint256 | undefined |
| beneficiary  | address | undefined |
| count  | uint256 | undefined |
| beneficiaryTokenCount  | uint256 | undefined |
| memo  | string | undefined |
| caller  | address | undefined |

### DistributeToReservedTokenSplit

```solidity
event DistributeToReservedTokenSplit(uint256 indexed fundingCycleConfiguration, uint256 indexed fundingCycleNumber, uint256 indexed projectId, JBSplit split, uint256 count, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| fundingCycleConfiguration `indexed` | uint256 | undefined |
| fundingCycleNumber `indexed` | uint256 | undefined |
| projectId `indexed` | uint256 | undefined |
| split  | JBSplit | undefined |
| count  | uint256 | undefined |
| caller  | address | undefined |

### Migrate

```solidity
event Migrate(uint256 indexed projectId, contract IJBController to, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| projectId `indexed` | uint256 | undefined |
| to  | contract IJBController | undefined |
| caller  | address | undefined |

### MintTokens

```solidity
event MintTokens(address indexed beneficiary, uint256 indexed projectId, uint256 indexed count, string memo, uint256 reservedRate, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| beneficiary `indexed` | address | undefined |
| projectId `indexed` | uint256 | undefined |
| count `indexed` | uint256 | undefined |
| memo  | string | undefined |
| reservedRate  | uint256 | undefined |
| caller  | address | undefined |

### SetFundAccessConstraints

```solidity
event SetFundAccessConstraints(uint256 indexed fundingCycleConfiguration, uint256 indexed fundingCycleNumber, uint256 indexed projectId, JBFundAccessConstraints constraints, address caller)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| fundingCycleConfiguration `indexed` | uint256 | undefined |
| fundingCycleNumber `indexed` | uint256 | undefined |
| projectId `indexed` | uint256 | undefined |
| constraints  | JBFundAccessConstraints | undefined |
| caller  | address | undefined |



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


