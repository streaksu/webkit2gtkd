# Webkit2GtkD

![forthebadge](https://forthebadge.com/images/badges/contains-cat-gifs.svg)

A small D binding for the `webkit2gtk` library using GtkD and built-in types.

## Building and dependencies

The dependencies are:

- `dub` and a compatible D compiler.
- `webkit2gtk` (Development version if available).

The recommended procedure to build is:

```bash
dub fetch webkit2gtkd
dub build webkit2gtkd
```

Or you can add it to a previous dub project with:

```bash
dub add webkit2gtkd
```

## Wrapped versions

| Library               | Version                           |
| --------------------- | --------------------------------- |
| `javascriptcore`      | Bundled with webkit2 in the repo. |
| `soup`                | 2.72.X                            |
| `webkit2gtk`          | 2.30.X                            |
| `webki2webextension`  | Bundled with webkit2 in the repo. |
