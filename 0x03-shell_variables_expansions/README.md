# Readme file

<h3>0. Create a script that creates an alias.</h3>

`Name: ls`<br>
`Value: rm *`

```bash
#!/bin/bash
alias ls='rm *'
```

<h3>1. Create a script that prints <em>hello user</em>, where user is the current Linux user.</h3>

```bash
#!/bin/bash
echo "hello "$USER
```

<h3>2. Add <em>/action</em> to the <em>PATH. /action</em> should be the last directory the shell looks into when looking for a program.</h3>

```bash
#!/bin/bash
export PATH=$PATH:/action
```

<h3>3. Create a script that counts the number of directories in the <em>PATH.</em></h3>

```bash
#!/bin/bash
echo $PATH | tr ':' '\n' | grep '[^[:space:]]' | wc -l
```

<h3>4. Create a script that lists environment variables.</h3>

```bash
#!/bin/bash
printenv
```

<h3>5. Create a script that lists all local variables and environment variables, and functions.</h3>

```bash
#!/bin/bash
set
```

<h3>6. Create a script that creates a new local variable.</h3>

`Name: BEST`<br>
`Value: School`

```bash
#!/bin/bash
BEST=School
```

<h3> 7. Create a script that creates a new global variable.</h3>

`Name: BEST`<br>
`Value: School`

```bash
#!/bin/bash
export BEST=School
```

<h3>8. Write a script that prints the result of the addition of 128 with the value stored in the environment variable <em>TRUEKNOWLEDGE</em>, followed by a new line.</h3>

```bash
#!/bin/bash
echo $(($TRUEKNOWLEDGE + 128))
```

<h3>9. Write a script that prints the result of <em>POWER</em> divided by <em>DIVIDE</em>, followed by a new line.</h3>

<h3><em>POWER</em> and <em>DIVIDE</em> are environment variables<h3>

```bash
#!/bin/bash
echo $(($POWER / $DIVIDE))
```

<h3>10. Write a script that displays the result of BREATH to the power LOVE</h3>
<ul>
<li><em>BREATH</em> and <em>LOVE</em> are environment variables</li>
<li>The script should display the result, followed by a new line</li>
</ul>

```bash
#!/bin/bash
echo $(($BREATH ** $LOVE))
```

# Task 11

```bash
#!/bin/bash
echo $((2#$BINARY))
```

# Task 12

```bash
#!/bin/bash
echo {a..z}{a..z} | tr ' ' '\n' | grep -v 'oo'
```

# Task 13

```bash
#!/bin/bash
printf "%.2f\n" $NUM
```

# Task 14

```bash
#!/bin/bash
printf "%x\n" $DECIMAL
```

# Task 15

```bash
#!/bin/bash
tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

# Task 16

```bash
#!/bin/bash
ls -1 | perl -ne 'print if $. % 2 == 1'
```

# Task 17

```bash
```
