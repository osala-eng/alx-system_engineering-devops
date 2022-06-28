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

<ul>Name: BEST</ul>
<ul>Value: School</ul>

```bash
#!/bin/bash
BEST=School
```

# Task 7

```bash
#!/bin/bash
export BEST=School
```

# Task 8

```bash
#!/bin/bash
echo $(($TRUEKNOWLEDGE + 128))
```

# Task 9

```bash
#!/bin/bash
echo $(($POWER / $DIVIDE))
```

# Task 10

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
