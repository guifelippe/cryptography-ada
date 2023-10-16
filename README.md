# Ada User Encryption Project

Welcome to the Ada User Encryption Project. This project demonstrates a simple user password encryption system in Ada.

## Overview

The goal of this project is to provide a basic example of how to encrypt user passwords and store them in a simple user management system. It consists of three main modules: `main`, `user`, and `encryption`.

## Features

- The `main` module allows users to provide a username and password for encryption.
- The `encryption` module performs the encryption of the user-provided password.
- The `user` module enables the storage of user information (name and password) in a basic database.

## Prerequisites

- Ada GNAT (GNU Ada Compiler) installed on your system.

## How to Use

1. Clone this repository to your system:

   ```bash
   git clone https://github.com/guifelippe/cryptography-ada.git

2. Navigate to the project directory:

    ```bash
    cryptography-ada

3. Compile the project with GNAT:

    ```bash
    gnatmake main.adb

4. Run the program:

    ```bash
    ./main

5. Follow the program's instructions to provide a username and password, which will be encrypted and stored.
