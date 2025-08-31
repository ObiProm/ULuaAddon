## How to install

> Needs lua extension by sumneko: https://marketplace.visualstudio.com/items?itemName=sumneko.lua

1. Install folder
2. Unpack the archive wherever you want
3. Copy folder path

Then go to your project folder -> `.vscode` -> `settings.json` (if not exists create folder and file)

So you need to add/change this line. Be carefull, maybe you already has something here, so you can use multiple libraries by using it like array.

```json
{
  "Lua.workspace.library": ["D://path/to/unpacked/archive"]
}
```

In principle, this line is enough to work with the library