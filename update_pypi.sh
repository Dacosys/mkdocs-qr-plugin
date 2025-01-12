# -------------------------------------------------------------
# update the package on pypi
# 2024-10-12
#
# Tip: if you don't want to retype pypi's username every time
#      define it as an environment variable (TWINE_USERNAME)
#
# -------------------------------------------------------------
function warn {
    GREEN='\033[0;32m'
    NORMAL='\033[0m'
    echo -e "${GREEN}$1${NORMAL}"
}


# update Pypi
warn "Rebuilding ..."
rm -rf build dist *.egg-info # necessary to guarantee integrity
python setup.py sdist bdist_wheel
twine upload dist/*
