// The Swift Programming Language
// https://docs.swift.org/swift-book

@_exported import SwiftUI

@freestanding(declaration, names: arbitrary)
public macro CreateTempView(_ viewName: String) = #externalMacro(module: "CreateTempViewMacros", type: "CreateTempViewMacro")

