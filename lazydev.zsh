autoload -U compinit
compinit

# Create new draft
draft() {
    bundle exec jekyll draft "$1"
}

# Publish draft
publish() {
    local draft_path="_drafts/$1"
    if [[ ! -f "$draft_path" ]]; then
        echo "Draft not found: $draft_path"
        return 1
    fi
    bundle exec jekyll publish "$draft_path"
}

# Unpublish post
unpublish() {
    local post_path="_posts/$1"
    if [[ ! -f "$post_path" ]]; then
        echo "Post not found: $post_path"
        return 1
    fi
    bundle exec jekyll unpublish "$post_path"
}

# Rename draft
rename() {
    local old_path="_drafts/$1"
    local new_title="$2"
    if [[ ! -f "$old_path" ]]; then
        echo "Draft not found: $old_path"
        return 1
    fi
    bundle exec jekyll rename "$old_path" "$new_title"
}

# Completion functions using explicit file lists
_jekyll_drafts() {
    local -a drafts
    drafts=(${(f)"$(find _drafts -type f -name '*.md' -exec basename {} \; 2>/dev/null)"})
    _describe 'drafts' drafts
}

_jekyll_posts() {
    local -a posts
    posts=(${(f)"$(find _posts -type f -name '*.md' -exec basename {} \; 2>/dev/null)"})
    _describe 'posts' posts
}

# Completion bindings
compdef '_jekyll_drafts' publish
compdef '_jekyll_posts' unpublish
compdef '_jekyll_drafts' rename