# CreateTempView

Swift Macro for creating empty view easily

Expands
```.swift
#CreateTempView("HelloView")
```
in to this
```.swift
public struct HelloView: View {
    public var body: some View {
        Text("HelloView Temp View")
    }
}
```
