To run the CLI after making changes (until we create a finalised 
executable), run the following command in the MATLAB terminal:

    CLI = compiler.build.standaloneApplication("CLI.m")

You can then use the same terminal to run the CLI, e.g. `CLI train -l 
some_path`

=== Some possible syntaxes for CLI commands ===

Create and train a new network:
    > train [path_to_training_dir]

Load an existing saved network and continue to train it with more data:
    > train -l [path_to_saved_network] [path_to_training_dir]

- It may be necessary to expand the current CLI logic into a more robust
OOP-based system as more complex commands are added
