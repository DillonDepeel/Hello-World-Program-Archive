File library.dylan:

.. code-block:: dylan

  Module: dylan-user

  define library hello
    use io, import: { format-out };
  end;

  define module hello
    use format-out;
  end;

File hello.dylan:

.. code-block:: dylan

  Module: hello

  format-out("Hello!\n");
