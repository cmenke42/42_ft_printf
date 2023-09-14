## 📁 Project Structure

This repository includes the following parts:
- Implementation of ft_printf
- libft library
- Makefile

## 📜 Project Requirements

- The `libftprintf.a` will be created at the root of the repository.
- This implementation doesn't include all of the features found in the original `printf`.
  - For example:
    - Buffer management
    - Output formatting

## ✨ Supported Conversions

- `%c`: A char.
- `%s`: A null terminated string.
- `%p`: Void pointer arguments in hexadecimal format.
- `%d` and `%i`: Decimal (base 10) numbers.
- `%u`: Unsigned decimal (base 10) numbers.
- `%x`: Numbers in lowercase hexadecimal (base 16) format.
- `%X`:  Numbers in uppercase hexadecimal (base 16) format.
- `%%`: Percent sign.

## 🚀 Usage

1. Include the necessary header files in your C project.
2. Link against the library libftprintf.a which contains the ft_printf function.
3. Call the `ft_printf` function with a format string and optional arguments.
