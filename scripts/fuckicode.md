# One-line to get icode fucked

Add it to your `.bashrc` or `.zshrc`

```
alias fuckicode="git push origin HEAD:refs/for/$(git symbolic-ref HEAD | cut -d'/' -f3)"
```