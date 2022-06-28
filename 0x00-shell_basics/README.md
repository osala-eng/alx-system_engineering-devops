<h1>Shell basics</h1>

![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm00.png)

# Task 0
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm01.png)

```bash
#!/bin/bash
pwd
```

# Task 1
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm02.png)

```bash
#!/bin/bash
ls
```

# Task 2
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm03.png)

```bash
#!/bin/bash
cd ~
```

# Task 3
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm04.png)

```bash
#!/bin/bash
ls -l
```

# Task 4
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm05.png)

```bash
#!/bin/bash
ls -la
```

# Task 5
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm06.png)

```bash
#!/bin/bash
ls -na
```

# Task 6
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm07.png)

```bash
#!/bin/bash
mkdir /tmp/my_first_directory
```

# Task 7
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm08.png)

```bash
#!/bin/bash
mv /tmp/betty /tmp/my_first_directory/
```

# Task 8
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm09.png)

```bash
#!/bin/bash
rm /tmp/my_first_directory/betty
```

# Task 9
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm10.png)

```bash
#!/bin/bash
rmdir /tmp/my_first_directory
```

# Task 10
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm11.png)

```bash
#!/bin/bash
cd -
```

# Task 11
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm12.png)

```bash
#!/bin/bash
ls -la . .. /boot
```

# Task 12
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm13.png)

```bash
#!/bin/bash
file /tmp/iamafile
```

# Task 13
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm14.png)

```bash
#!/bin/bash
ln -s -T /bin/ls __ls__
```

# Task 14
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm15.png)

```bash
#!/bin/bash
cp -u *.html ..
```

# Task 15
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm16.png)

```bash
#!/bin/bash
mv [A-Z]* /tmp/u/
```

# Task 16
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm17.png)

```bash
#!/bin/bash
rm *~
```

# Task 17
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm18.png)

```bash
#!/bin/bash
mkdir -p welcome/to/school
```

# Task 18
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm19.png)

```bash
#!/bin/bash
ls -a -m --file-type
```

# Task 19
![Screenshot](https://git-repo-docs.s3.us-east-2.amazonaws.com/0x00-shell/assets/rm20.png)

<h2>Create file named school with the following content</h2>

```magic
0	string	SCHOOL	School data
!:mime	School
```

<h2>Use the following bash command to compile the file school to school.mgc</h2>

```bash
file -C -m school
```


