import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name="gitdep",
    version="VERSION_GOES_HERE",
    author="Caian Benedicto",
    author_email="caianbene@gmail.com",
    description="Dependency management between git repositories made easy",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/Caian/gitdep",
    packages=setuptools.find_packages(),
    scripts=[
        'bin/gitdep'
    ],
    classifiers=[
        "Programming Language :: Python",
        "Programming Language :: Python :: 2",
        "License :: OSI Approved :: GNU General Public License v3 or later (GPLv3+)",
        "Operating System :: OS Independent",
    ],
    python_requires='>=2.5',
)
