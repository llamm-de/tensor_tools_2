#! /bin/bash
green=$'\e[1;32m'
end=$'\e[0m'

if [ ! -f ./pretty_print.out ]; then
    printf  "%s\n" "${green} Building example for pretty printing. ${end}"
    make
else
    printf  "%s\n" "${green} Executable already exists. No build needed. ${end}"
fi

printf  "%s\n" "${green} Executing example. ${end}"
./pretty_print.out

# Clean up
printf  "%s\n" "${green} Removing build files. ${end}"
make clean
