#!/bin/bash

sha512sum "${1}" > "${2}/$(basename "${1}").out"
