# Shell permissions

![Screenshot](./assets/rm01.png)
# Task 0

![Screenshot](./assets/rm02.png)

```bash
#!/bin/bash
su betty
```

# Task 1
![Screenshot](./assets/rm03.png)

```bash
#!/bin/bash
whoami
```

# Task 2
![Screenshot](./assets/rm04.png)

```bash
#!/bin/bash
groups
```

# Task 3
![Screenshot](./assets/rm05.png)

```bash
#!/bin/bash
chown betty hello
```

# Task 4
![Screenshot](./assets/rm06.png)

```bash
#!/bin/bash
touch hello
```

# Task 5
![Screenshot](./assets/rm07.png)

```bash
#!/bin/bash
chmod u+x hello
```

# Task 6
![Screenshot](./assets/rm08.png)

```bash
#!/bin/bash
chmod u+x,g+x,o+r hello
```

# Task 7
![Screenshot](./assets/rm09.png)

```bash
#!/bin/bash
chmod a+x hello
```

# Task 8
![Screenshot](./assets/rm10.png)

```bash
#!/bin/bash
chmod 007 hello
```

# Task 9
![Screenshot](./assets/rm11.png)

```bash
#!/bin/bash
chmod 753 hello
```

# Task 10
![Screenshot](./assets/rm12.png)

```bash
#!/bin/bash
chmod --reference=olleh hello
```

# Task 11
![Screenshot](./assets/rm13.png)

```bash
#!/bin/bash
chmod a+X *
```

# Task 12
![Screenshot](./assets/rm14.png)

```bash
#!/bin/bash
mkdir -m 751 my_dir
```

# Task 13
![Screenshot](./assets/rm15.png)

```bash
#!/bin/bash
chgrp school hello
```

# Task 14
![Screenshot](./assets/rm16.png)

```bash
#!/bin/bash
chown vincent:staff *
```

# Task 15
![Screenshot](./assets/rm17.png)

```bash
#!/bin/bash
chown -h vincent:staff _hello
```

# Task 16
![Screenshot](./assets/rm18.png)

```bash
#!/bin/bash
chown --from=guillaume betty hello
```

# Task 17
![Screenshot](./assets/rm19.png)

```bash
#!/bin/bash
telnet towel.blinkenlights.nl
```
