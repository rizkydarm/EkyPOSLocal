import ProjectDescription

let project = Project(
    name: "EkyPOSLocal",
    targets: [
        .target(
            name: "EkyPOSLocal",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.EkyPOSLocal",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["EkyPOSLocal/Sources/**"],
            resources: ["EkyPOSLocal/Resources/**"],
            dependencies: [
                .external(name: "Alamofire"),
                .external(name: "Kingfisher"),
            ]
        ),
        .target(
            name: "EkyPOSLocalTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.EkyPOSLocalTests",
            infoPlist: .default,
            sources: ["EkyPOSLocal/Tests/**"],
            resources: [],
            dependencies: [.target(name: "EkyPOSLocal")]
        ),
    ]
)
