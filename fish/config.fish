if status is-interactive
    set -l os (uname)
    switch (uname)
        case Darwin
            # do things for macOS
            eval (/opt/homebrew/bin/brew shellenv)
        case Linux
            # do things for Linux
        case '*'
            # do things for other OSs
    end

    # Commands to run in interactive sessions can go here
    fish_add_path "$HOME/.local/bin"
    export PATH="$HOME/.cargo/bin:$PATH"

    ###
    # Aliases for Git
    ###
    abbr -a g git
    abbr -a ga git add
    abbr -a gaa git add .
    abbr -a gb git branch
    abbr -a gdb git branch -D
    abbr -a gnb git switch -c
    abbr -a gcl git clone
    abbr -a gc git commit -m
    abbr -a gca git commit --amend
    abbr -a gcan git commit --amend --no-edit
    abbr -a gcam git commit --amend -m
    abbr -a gcp git cherry-pick
    abbr -a gcpa git cherry-pick --abort
    abbr -a gcpc git cherry-pick --continue
    abbr -a gd git diff
    abbr -a gm git merge
    abbr -a gsw git switch
    abbr -a gsd git switch develop
    abbr -a gsm git switch main
    abbr -a gf git fetch
    abbr -a gl git log
    abbr -a glo git log --oneline
    abbr -a gpl git pull origin
    abbr -a gp git push -u origin $(git rev-parse --abbrev-ref HEAD)
    abbr -a gpf git push --force-with-lease -u origin
    abbr -a gpff git push -fu origin
    abbr -a gri git rebase -i
    abbr -a grc git rebase --continue
    abbr -a gra git rebase --abort
    abbr -a gr git reset
    abbr -a grs git reset --soft
    abbr -a grm git reset --mixed
    abbr -a grh git reset --hard
    # abbr -a gcan git reset --hard HEAD~
    abbr -a gclr git reset --hard HEAD
    abbr -a gst git stash -u
    abbr -a gsta git stash apply
    abbr -a gstd git stash drop
    abbr -a gstl git stash list
    abbr -a gstp git stash pop
    abbr -a gsts git stash save
    abbr -a gs git status
    abbr -a gdmb "git branch --merged | egrep -v '\*' | xargs git branch -d"

    ###
    # Aliases for GitHub CLI
    ###
    abbr -a ghpc gh pr create -a @me -B
    abbr -a ghpe gh pr edit
    abbr -a ghpv gh pr view --web
    abbr -a ghrv gh repo view --web
    abbr -a ghic gh issue create
    abbr -a ghie gh issue edit
    abbr -a ghiv gh issue view --web
    abbr -a ghil gh issue list -a @me

    ###
    # Aliases for Docker
    ###
    abbr -a dpa docker ps -a
    abbr -a dp docker ps
    abbr -a dl docker logs
    abbr -a ds docker stop
    abbr -a dr docker rm
    abbr -a dri docker rmi
    abbr -a dcu docker compose up -d
    abbr -a dcd docker compose down
    abbr -a dip docker image prune
    abbr -a dvp docker volume prune
    abbr -a de docker exec -it

    ###
    # Aliases for Ruby
    ###
    abbr -a bi bundle install
    abbr -a bers bundle exec rspec
    abbr -a beru bundle exec rubocop -a

    ###
    # Common libraries
    ###
    starship init fish | source
    zoxide init fish | source
    mise activate fish | source
end
