# LazyDev’s Jekyll-Compose Shortcuts

_For people who'd rather die than type `bundle exec jekyll` one more time (I'm probably the only one)_

I only included `draft`, `publish`, `rename`, and `unpublish` because I was too lazy to add other commands I don’t usually use.
## Prerequisites 
- Install [Jekyll-Compose](https://github.com/jekyll/jekyll-compose).
- Use **Zsh** like a civilized person.
## Install 
### Option 1: The "I Trust Random Internet Code" Method

Run this and hope for the best:

```zsh
echo "\n# Jekyll shortcuts for the lazy\n$(curl -s https://raw.githubusercontent.com/MahmoudAdelbghany/lazy_jykill/refs/heads/main/lazydev.zsh)" >> ~/.zshrc

exec zsh
```


### Option 2: The "I've Been Burned Before" Method

1. run `nano ~/.zshrc` .
2. Paste the whole thing at the bottom.
3. `CTRL+X` → `Y` → `Enter`. 
4. run `exec zsh`

## Usage 
```zsh
draft "Title"         # Creates a draft in `_drafts/`
publish file.md       # Moves draft to `_posts/` with a timestamp
unpublish file.md     # Moves post back to `_drafts/`
rename old.md "New"   # Renames file and updates front matter
```


## FAQ 

**Q: Why?**  
A: Because typing `bundle exec jekyll` made me age 3 years per use.

**Q: Why not just alias `jekyll="bundle exec jekyll"` and press tab to complete the path?**  
A: Because aliasing would make me type the whole file path, and it would take two tabs—one for the directory and one for the file. My lazy        prefers clicking tab once.

**Q: Can I make this work in Bash?**  
A: Sure. Just:
1. Rewrite all the completion thing.
2. Question your life choices.
3. Install Zsh like a functional human being.
