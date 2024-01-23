#!/bin/sh

<<comment
A simple script I use to create PDF templates
for my classes
comment

# Run chmod u+x <script_name> to make this scipt executable
# Add "> path/file_name.md" to indicate the output of this script to a file

#Parametros
PROFESSOR=$1
DISCIPLINA=$2
TURMA=$3
TITULO=$4

#Template
cat << EOF
<table>
    <tr>
        <td>
	    <img src="<your-image-path>" alt="drawing" width="100"/>
	</td>
	<td>
	    <H4>Prof. Me. $1</H4> <H4>$2 - $3</H4>
	</td>
    </tr>
</table>

---

<center><H1>$4</H1></center>

---
EOF

