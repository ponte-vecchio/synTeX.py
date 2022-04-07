# SynTeX.py

## Rationale

Being able to present code in any programming language is a crucial aspect of typing up a LaTeX document. This experience is further enhanced by packages that offer syntax highlighting and direct file input. Currently, there are two main packages that serve this purpose: `listings`[^lst] and `minted`[^mnt].

`minted` is a potent package that utilises an external engine, i.e., Python language's `pygments` library.[^pyg] Because `pygments` is actively maintained and regularly updated, `minted` package offers up-to-date syntax highlighting functionality for just about any programming language *including VimScript*. However, because it requires escaping the shell which poses a security challenge. In scenarios where the `-shell-escape` option is not allowed, additional tweaks are required to achieve beautiful typsetting.[^mntdoc] -- granted that you are the sysadmin. There exists scenarios where you are not able to install pygments at all due to administrative settings imposed by your local sysadmin which bars the user to give up hope and abandon using `minted` altogether.

`listings` is the old-reliable package that offers some syntax highlighting for some languages. 

[^lst]: The `listings` Package. CTAN. https://ctan.org/pkg/listings
[^mnt]: The `minted` Package. CTAN. https://ctan.org/pkg/minted
[^pyg]: `pygments` GitHub Repository. https://github.com/pygments/pygments/tree/master/pygments
[^mntdoc]: Poore, Geoffrey M. (2021) The `minted` package: Highlighted source code in LaTeX. See page 12. http://mirrors.ctan.org/macros/latex/contrib/minted/minted.pdf