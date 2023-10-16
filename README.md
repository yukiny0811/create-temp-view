# CreateTempView

Swift Macro for creating empty view easily

Expands
```.swift
#CreateTempView("HelloView")
```
in to this
```.swift
struct HelloView: View {
    var body: some View {
        Text("HelloView Temp View")
    }
}
```
