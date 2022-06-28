# Readme file

### 0. Create a script that creates an alias.

<ul>
<li>Name: ls</li>
<li>Value: rm *</li>
</ul>

```bash
#!/bin/bash
alias ls='rm *'
```

### 1. Create a script that prints <code>hello user</code>, where user is the current Linux user.

```bash
#!/bin/bash
echo "hello "$USER
```

### 2. Add <code>/action</code> to the <code>PATH. /action</code> should be the last directory the shell looks into when looking for a program.

```bash
#!/bin/bash
export PATH=$PATH:/action
```

### 3. Create a script that counts the number of directories in the <code>PATH.</code>

```bash
#!/bin/bash
echo $PATH | tr ':' '\n' | grep '[^[:space:]]' | wc -l
```

### 4. Create a script that lists environment variables.

```bash
#!/bin/bash
printenv
```

### 5. Create a script that lists all local variables and environment variables, and functions.

```bash
#!/bin/bash
set
```

### 6. Create a script that creates a new local variable.

<ul>
<li>Name: BEST</li>
<li>Value: School</li>
</ul>

```bash
#!/bin/bash
BEST=School
```

###  7. Create a script that creates a new global variable.

<ul>
<li>Name: BEST</li>
<li>Value: School</li>
</ul>

```bash
#!/bin/bash
export BEST=School
```

### 8. Write a script that prints the result of the addition of 128 with the value stored in the environment variable <code>TRUEKNOWLEDGE</code>, followed by a new line.

```bash
#!/bin/bash
echo $(($TRUEKNOWLEDGE + 128))
```

### 9. Write a script that prints the result of <code>POWER</code> divided by <code>DIVIDE</code>, followed by a new line.

<ul><li><code>POWER</code> and <code>DIVIDE</code> are environment variables</li></ul>

```bash
#!/bin/bash
echo $(($POWER / $DIVIDE))
```

### 10. Write a script that displays the result of BREATH to the power LOVE

<ul>
<li><code>BREATH</code> and <code>LOVE</code> are environment variables</li>
<li>The script should display the result, followed by a new line</li>
</ul>

```bash
#!/bin/bash
echo $(($BREATH ** $LOVE))
```

### 11. Write a script that converts a number from base 2 to base 10.

<ul>
<li>The number in base 2 is stored in the environment variable <code>BINARY</code></li>
<li>The script should display the number in base 10, followed by a new line</li>
</ul>

<!--
```bash
julien@production-503e7013:~/$ export BINARY=10100111001
julien@production-503e7013:~/$ ./11-binary_to_decimal
1337
julien@production-503e7013:~/$
```
-->

```bash
#!/bin/bash
echo $((2#$BINARY))
```

### 12. Create a script that prints all possible combinations of two letters, except <code>oo</code>.

<ul>
<li>Letters are lower cases, from <code>a</code> to <code>z</code></li>
<li>One combination per line</li>
<li>The output should be alpha ordered, starting with <code>aa</code></li>
<li>Do not print <code>oo</code></li>
<li>Your script file should contain maximum 64 characters</li>
</ul>

```bash
#!/bin/bash
echo {a..z}{a..z} | tr ' ' '\n' | grep -v 'oo'
```

### 13. Write a script that prints a number with two decimal places, followed by a new line.</p>
### The number will be stored in the environment variable <code>NUM</code>.</p>

```bash
#!/bin/bash
printf "%.2f\n" $NUM
```

### 14. Write a script that converts a number from base 10 to base 16.

<ul>
<li>The number in base 10 is stored in the environment variable <code>DECIMAL</code></li>
<li>The script should display the number in base 16, followed by a new line</li>
</ul>

```bash
#!/bin/bash
printf "%x\n" $DECIMAL
```

### 15. Write a script that encodes and decodes text using the rot13 encryption. Assume ASCII.

```bash
#!/bin/bash
tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

### 16. Write a script that prints every other line from the input, starting with the first line.

```bash
#!/bin/bash
ls -1 | perl -ne 'print if $. % 2 == 1'
```

### 17. Write a shell script that adds the two numbers stored in the environment variables WATER and STIR and prints the result.

<ul>
<li>WATER is in base water</li>
<li>STIR is in base stir.</li>
<li>The result should be in base bestchol</li>
</ul>

```bash
#!/bin/bash
printf "%o\n" $((5#`echo $WATER | tr 'water' '01234'` + 5#`echo $STIR | tr 'stir.' '01234'`)) | tr '01234567' 'bestchol'
```
