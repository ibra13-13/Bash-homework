#!/bin/bash

echo "Enter your birth year: "
read birth_year

age_now=$((2025 - birth_year))
age_2020=$((2020 - birth_year))
age_2030=$((2030 - birth_year))

echo "In 2025, you will be $age_now years old."
echo "In 2020, you were $age_2020 years old."
echo "In 2030, you will be $age_2030 years old."
