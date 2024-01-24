#!/bin/sh

<<comment
A simple script I use to create slides on a PDF
format. Here I also use the marp extension for VSCode,
a tool to write slides in markdown format
comment

disc="$1"
turm="$2"
aul="$3"

run(){
#Parametros
local Disciplina="$1"
local Turma="$2"
local Aula="$3"

#Template
cat << EOF

---
marp: true
theme: uncover
_class: invert
---

# $Aula :computer:

$Disciplina
Sistemas de Informação - $Turma

---

### $Aula

EOF
}

run "$disc" "$turm" "$aul" 2>logs.txt 1>text.md
if [ $? -eq 0 ]
then
	echo "File created"
else
	echo "Error while creating file. Please check the log file"
fi
