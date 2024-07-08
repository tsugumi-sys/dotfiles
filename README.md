## My dotfiles

- fish shell
- git
- helix editor
- mise
- uv

## memo

### Replace word in the file with cli command

```py
fd --glob '*.py' | xargs sd 'from tests.stores.db.utils import SessionLocal  # noqa: F401' 'from conftest import SessionLocal  # noqa: F401'
```


### Draw software architecture like hand written.

https://excalidraw.com/
