// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import './helpers/TestBaseWorkflow.sol';

contract TestLaunchProject is TestBaseWorkflow {
  JBController controller;
  JBProjectMetadata _projectMetadata;
  JBFundingCycleData _data;
  JBFundingCycleMetadata _metadata;
  JBGroupedSplits[] _groupedSplits;
  JBFundAccessConstraints[] _fundAccessConstraints; // Default empty
  IJBTerminal[] _terminals; // Default empty

  // Testing constants -> todo: fuzz
  uint256 PROJECT_ID; // The id of the new project
  uint256 PROJECT_DOMAIN = 1; // The default domain used when launching
  uint256 DURATION = 10 days;
  uint256 WEIGHT = 1000 * 10**18;
  uint256 DISCOUNT_RATE = 500000000; // 50%
  
  IJBFundingCycleBallot BALLOT = IJBFundingCycleBallot(address(0));

  function setUp() public override {
    super.setUp();

    controller = jbController();

    _projectMetadata = JBProjectMetadata({content: 'myIPFSHash', domain: PROJECT_DOMAIN});

    _data = JBFundingCycleData({
      duration: DURATION,
      weight: WEIGHT,
      discountRate: DISCOUNT_RATE,
      ballot: BALLOT
    });

    _metadata = JBFundingCycleMetadata({
      reservedRate: 5000,
      redemptionRate: 5000,
      ballotRedemptionRate: 0,
      pausePay: false,
      pauseDistributions: false,
      pauseRedeem: false,
      pauseMint: false,
      pauseBurn: false,
      allowChangeToken: false,
      allowTerminalMigration: false,
      allowControllerMigration: false,
      holdFees: false,
      useLocalBalanceForRedemptions: false,
      useDataSourceForPay: false,
      useDataSourceForRedeem: false,
      dataSource: IJBFundingCycleDataSource(address(0))
    });

    JBSplit[] memory splitsArr;

    _groupedSplits = [
      JBGroupedSplits({
        group: 0,
        splits: [
            JBSplit({
              preferClaimed: true,
              percent: 250000000, //25%
              projectId: 0,
              beneficiary: payable(address(0)),
              lockedUntil: 0,
              allocator: IJBSplitAllocator(address(0))
            })
          ]
      })
    ];
  }

/// @dev setUp msg.sender is the address(0), while not for later calls -> insure
///      appropriate sender context.
  function launchProject() internal {
    PROJECT_ID = controller.launchProjectFor(
      msg.sender,
      _projectMetadata,
      _data,
      _metadata,
      block.timestamp,
      _groupedSplits,
      _fundAccessConstraints,
      _terminals
    );
  }

  function testOwnerOfNewProject() public {
    launchProject();
    assertEq(jbProjects().ownerOf(PROJECT_ID), msg.sender);
  }

  function testMetadataOfNewProject() public {
    launchProject();
    string memory storedProjectMetadata = jbProjects().metadataContentOf(PROJECT_ID, PROJECT_DOMAIN);
    assertEq(storedProjectMetadata, _projectMetadata.content);
  }

  function testGetFundingCycleAtCurrentTimestamp() public {
    launchProject();

    JBFundingCycle memory currentFundingCycle = JBFundingCycle({
      number: 1, // Starts at one for each project
      configuration: block.timestamp,
      basedOn: 0, // One before the current one
      start: block.timestamp,
      duration: DURATION,
      weight: WEIGHT,
      discountRate: DISCOUNT_RATE,
      ballot: BALLOT,
      metadata: JBFundingCycleMetadataResolver.packFundingCycleMetadata(_metadata)
    });

    JBFundingCycle memory storedFundingCycle = jbFundingCycleStore().get(PROJECT_ID, block.timestamp);

    assertEqFundingCycle(currentFundingCycle, storedFundingCycle);
  }

  function testGetCurrentFundingCycle() public {
    launchProject();

    JBFundingCycle memory currentFundingCycle = JBFundingCycle({
      number: 1, // Starts at one for each project
      configuration: block.timestamp,
      basedOn: 0, // One before the current one
      start: block.timestamp,
      duration: DURATION,
      weight: WEIGHT,
      discountRate: DISCOUNT_RATE,
      ballot: BALLOT,
      metadata: JBFundingCycleMetadataResolver.packFundingCycleMetadata(_metadata)
    });

    JBFundingCycle memory storedFundingCycle = jbFundingCycleStore().currentOf(PROJECT_ID);

    assertEqFundingCycle(currentFundingCycle, storedFundingCycle);
  }

  function testQueuedFundingCycle() public {
    launchProject();

    JBFundingCycle memory nextFundingCycle = JBFundingCycle({
      number: 2,
      configuration: block.timestamp,
      basedOn: 0,
      start: block.timestamp + DURATION,
      duration: DURATION,
      weight: WEIGHT * DISCOUNT_RATE / JBConstants.MAX_DISCOUNT_RATE,
      discountRate: DISCOUNT_RATE,
      ballot: BALLOT,
      metadata: JBFundingCycleMetadataResolver.packFundingCycleMetadata(_metadata)
    });

    JBFundingCycle memory storedFundingCycle = jbFundingCycleStore().queuedOf(PROJECT_ID);

    assertEqFundingCycle(nextFundingCycle, storedFundingCycle);
  }

  // Test for no queued if no duration?

  function testSplitsOf() public {
    JBSplit[] memory currentSplits = jbSplitsStore().splitsOf(PROJECT_ID, PROJECT_DOMAIN, 0);

    for(uint256 i=0; i<currentSplits.length; i++) assertEqSplit(currentSplits[i], _groupedSplits[i]);
  }

}
