serverspec-prac
======

> Serverspec入門 (全11回) - プログラミングならドットインストール
> http://dotinstall.com/lessons/basic_serverspec

## Setup

```
$ vagrant up
$ vagrant ssh-config --host serverspec-prac >> ~/.ssh/config
```

## test

```
$ rake spec
```

## provision

```
$ itamae ssh -h serverspec-prac cookbooks/recipe.rb
```

