![Logo](https://user-images.githubusercontent.com/12299906/42510774-96235a92-846d-11e8-9788-3eefcf8860d8.png)
Get more information for a single or multiple repositories with a single command.

## Inspiration
Simultaneously working with multiple git repositories can be really annoying. 
Like the knowing the current branch names, is there anything to pull or push,
or Do I have any uncommitted changes?

`ges`  tries to solve this problem.



## Installation

1. Clone the repository in your home directory
```bash
cd $HOME; git clone https://github.com/sandeep1995/git-extra-status.git
```
2. Add the `bin` path in your global path. You can do it in your `.bash_profile` or `.bashrc` or `.zshrc` file.
```
export PATH=$PATH:$HOME/git-extra-status/bin
```

### Single usage
Go to any git repository and execute 
```bash
ges
````
![Git Extra Status Header Image](https://user-images.githubusercontent.com/12299906/42509220-d5184848-8468-11e8-9247-fe9c7c77af2d.png)

### Batch Usage
Go to any directory with multiple git repositories and then execute
 ```bash
 ges *
 ```
![Detail Example](https://user-images.githubusercontent.com/12299906/42510456-920ea61a-846c-11e8-80c2-598268ece9ee.png)
