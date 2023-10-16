import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct CreateTempViewMacro: DeclarationMacro {
    public static func expansion(of node: some SwiftSyntax.FreestandingMacroExpansionSyntax, in context: some SwiftSyntaxMacros.MacroExpansionContext) throws -> [SwiftSyntax.DeclSyntax] {
        guard let str = node
            .argumentList
            .first?
            .expression
            .as(StringLiteralExprSyntax.self)?
            .segments
            .first?
            .description else {
            return []
        }
        
        let resultString =
"""
public struct \(str): View {
    public var body: some View {
        Text(\"\(str) Temp View\")
    }
}
"""
        return [DeclSyntax(stringLiteral: resultString)]
    }
}

@main
struct DependencyExtensionPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        CreateTempViewMacro.self,
    ]
}
