#!/bin/sh

<<comment
A simple script I use to create slides on a PDF
format. Here I also use the marp extension for VSCode,
a tool to write slides in markdown format
comment

#Parametros
DISCIPLINA=$1
TURMA=$2
AULA=$3

#Template

cat << EOF
---
marp: true
theme: uncover
_class: invert
---

# $3 :computer:

$1

Sistemas de Informação - $2

---

### $3

EOF
