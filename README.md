# 📚 42_ft_printf

This project contains the basic 42_libft library and a custom limited implementation of the `printf` function. For more information on the libft library, see the [42_libft README](https://github.com/cmenke42/42_libft).

## 📖 Table of Contents
- [🚀 Getting Started](#-getting-started)
- [🔎 Example Usage](#-example-usage)
- [✨ Supported Conversions](#-supported-conversions)
- [🛑 Limitations](#-limitations)

## 🚀 Getting Started
1. Clone the repository:
    ```sh
    git clone git@github.com:cmenke42/42_ft_printf.git
    ```
2. Build the library:
    ```sh
    make -C 42_ft_printf
    ```
3. Include the library in your project by adding the include path and linking against `libftprintf.a`:
    ```sh
    cc -I 42_ft_printf/includes -o target main.c -L42_ft_printf -lftprintf
    ```

    <details>
    <summary>Explanation of the command</summary>

    - `cc`: Invokes the C compiler.
    - `-I 42_ft_printf/includes`: Adds the `42_ft_printf/includes` directory to the list of directories to search for header files.
    - `-L42_ft_printf`: Adds the `42_ft_printf` directory to the list of directories to search for libraries.
    - `-lftprintf`: Searches for a library named `libftprintf.a` when linking. The `lib` prefix and `.a` extension are added automatically.
    - `-o target`: Specifies the output executable name as `target`.
    - `source.c`: The source file to compile.

    </details>

    This command assumes a project structure like this:
    ```text
    project_root/
    ├── 42_ft_printf/
    │   ├── includes/
    │   │   └── libftprintf.h
    │   ├── libft
    │   ├── Makefile
    │   ├── README.md
    │   └── src/
    │       └── [ft_printf.c, ...]
    └── main.c
    ```

## 🔎 Example Usage
```c
#include "libftprintf.h"

int main(void)
{
    ft_printf("Hello, %s!\n", "world");
    return 0;
}
```

## ✨ Supported Conversions
- `%c`: A char.
- `%s`: A null terminated string.
- `%p`: Void pointer arguments in hexadecimal format.
- `%d` and `%i`: Decimal (base 10) numbers.
- `%u`: Unsigned decimal (base 10) numbers.
- `%x`: Numbers in lowercase hexadecimal (base 16) format.
- `%X`:  Numbers in uppercase hexadecimal (base 16) format.
- `%%`: Percent sign.

## 🛑 Limitations
- This implementation doesn't include all of the features found in the original `printf`.
  - For example:
    - Buffer management
    - Output formatting
