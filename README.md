<body>
    <h1>ft_printf</h1>
    <p>
        <strong>Libftprintf</strong> is a custom implementation of the standard C library function <code>printf</code>. 
        This project allows you to format and output data to the standard output, supporting various data types and format specifiers. 
        It serves as a great exercise in understanding variadic functions, string formatting, and memory management in C.
    </p>

  <h2>How to Use</h2>
    <p>To use <strong>ft_printf</strong>, follow these steps:</p>
    
  <ol>
      <li>
            Clone the repository to your local machine:
            <pre><code>git clone git@github.com:sereeny/ft_printf.git
cd ft_printf</code></pre>
        </li>
        <li>
            Compile the library:
            <pre><code>make</code></pre>
            This command will create an archive file named <code>libftprintf.a</code> in the project directory.
        </li>
        <li>
            If you need to clean up the object files, you can run:
            <pre><code>make clean</code></pre>
        </li>
        <li>
            To remove everything, including the archive, use:
            <pre><code>make fclean</code></pre>
        </li>
    </ol>
    <h2>Example Usage</h2>
    <p>
        Include the library in your project and use it like this:
    </p>
    <pre><code>#include "libftprintf.h"

int main() {
    ft_printf("Hello, World! %d\n", 42);
    printf("Hello, World! %d\n", 42);
    return 0;
}</code></pre>
</body>
