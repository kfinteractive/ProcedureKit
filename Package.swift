// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ProcedureKit",
    platforms: [
        .macOS(.v10_11),
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v7)
    ],
    products: [
        .library(name: "ProcedureKit"        , targets: ["ProcedureKit"        ]),
        .library(name: "TestingProcedureKit" , targets: ["TestingProcedureKit" ]),

        .library(name: "ProcedureKitCloud"   , targets: ["ProcedureKitCloud"   ]),
        .library(name: "ProcedureKitNetwork" , targets: ["ProcedureKitNetwork" ]),
        .library(name: "ProcedureKitCoreData", targets: ["ProcedureKitCoreData"]),
        .library(name: "ProcedureKitLocation", targets: ["ProcedureKitLocation"]),

        .library(name: "ProcedureKitMac"     , targets: ["ProcedureKitMac"     ]),
        .library(name: "ProcedureKitMobile"  , targets: ["ProcedureKitMobile"  ]),
    ],
    targets: [
        .target(name: "ProcedureKit", path:"Sources/ProcedureKit"),
        .target(name: "TestingProcedureKit" , dependencies: ["ProcedureKit"], path:"Sources/TestingProcedureKit" ),
        .target(name: "ProcedureKitCloud"   , dependencies: ["ProcedureKit"], path:"Sources/ProcedureKitCloud"   ),
        .target(name: "ProcedureKitNetwork" , dependencies: ["ProcedureKit"], path:"Sources/ProcedureKitNetwork" ),
        .target(name: "ProcedureKitCoreData", dependencies: ["ProcedureKit"], path:"Sources/ProcedureKitCoreData"),
        .target(name: "ProcedureKitLocation", dependencies: ["ProcedureKit"], path:"Sources/ProcedureKitLocation"),
        .target(name: "ProcedureKitMac"     , dependencies: ["ProcedureKit"], path:"Sources/ProcedureKitMac"     ),
        .target(name: "ProcedureKitMobile"  , dependencies: ["ProcedureKit"], path:"Sources/ProcedureKitMobile"  ),

        .testTarget(name: "ProcedureKitTests"        , dependencies: ["ProcedureKit"        , "TestingProcedureKit"]),
        .testTarget(name: "ProcedureKitStressTests"  , dependencies: ["ProcedureKit"        , "TestingProcedureKit"]),
        .testTarget(name: "ProcedureKitCloudTests"   , dependencies: ["ProcedureKitCloud"   , "TestingProcedureKit"]),
        .testTarget(name: "ProcedureKitNetworkTests" , dependencies: ["ProcedureKitNetwork" , "TestingProcedureKit"]),
        .testTarget(name: "ProcedureKitCoreDataTests", dependencies: ["ProcedureKitCoreData", "TestingProcedureKit"]),
        .testTarget(name: "ProcedureKitLocationTests", dependencies: ["ProcedureKitLocation", "TestingProcedureKit"]),

        .testTarget(name: "ProcedureKitMacTests"     , dependencies: ["ProcedureKitMac"     , "TestingProcedureKit"]),
        .testTarget(name: "ProcedureKitMobileTests"  , dependencies: ["ProcedureKitMobile"  , "TestingProcedureKit"]),
    ]
)
