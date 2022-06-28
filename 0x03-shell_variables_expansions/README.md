# Readme file

<h3>0. Create a script that creates an alias.</h3>

<ul>
<li>Name: ls</li>
<li>Value: rm *</li>
</ul>

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

<ul>
<li>Name: BEST</li>
<li>Value: School</li>
</ul>

```bash
#!/bin/bash
BEST=School
```

<h3> 7. Create a script that creates a new global variable.</h3>

<ul>
<li>Name: BEST</li>
<li>Value: School</li>
</ul>

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

<ul><li><em>POWER</em> and <em>DIVIDE</em> are environment variables</li></ul>

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

<div class="panel-body">
    <span id="user_id" data-id="81664"></span>

    <!-- Progress vs Score -->

    <!-- Task Body -->
    <p>Write a script that converts a number from base 2 to base 10.</p>

<ul>
<li>The number in base 2 is stored in the environment variable <code>BINARY</code></li>
<li>The script should display the number in base 10, followed by a new line</li>
</ul>

<pre><code>julien@production-503e7013:~/$ export BINARY=10100111001
julien@production-503e7013:~/$ ./11-binary_to_decimal
1337
julien@production-503e7013:~/$
</code></pre>

  </div>

```bash
#!/bin/bash
echo $((2#$BINARY))
```

<p>12. Create a script that prints all possible combinations of two letters, except <code>oo</code>.</p>

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

<p>13. Write a script that prints a number with two decimal places, followed by a new line.</p>
<p>The number will be stored in the environment variable <code>NUM</code>.</p>

```bash
#!/bin/bash
printf "%.2f\n" $NUM
```

<h3>14. Write a script that converts a number from base 10 to base 16.</h3>

<ul>
<li>The number in base 10 is stored in the environment variable <code>DECIMAL</code></li>
<li>The script should display the number in base 16, followed by a new line</li>
</ul>

```bash
#!/bin/bash
printf "%x\n" $DECIMAL
```

<h3>15. Write a script that encodes and decodes text using the rot13 encryption. Assume ASCII.</h3>

```bash
#!/bin/bash
tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

<h3>16. Write a script that prints every other line from the input, starting with the first line.</h3>

```bash
#!/bin/bash
ls -1 | perl -ne 'print if $. % 2 == 1'
```

<h3>17. Write a shell script that adds the two numbers stored in the environment variables WATER and STIR and prints the result.</h3>

<ul>
<li>WATER is in base water</li>
<li>STIR is in base stir.</li>
<li>The result should be in base bestchol</li>
</ul>

```bash
```
