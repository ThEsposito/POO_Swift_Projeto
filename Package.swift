// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.


import PackageDescription

let package = Package(
    name: "Poo_Swift_Projeto",
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "Projeto"
        ),
    ]
)

//para rodar cada aula, no terminal: swift run <nome da pasta da aula> - Exemplo: swift run Aula_1