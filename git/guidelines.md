# CB-Geo Git guidelines

* [CB-Geo git server](https://git.cb-geo.com) is only for hosting code and input files. Personal projects and documents may be hosted on other services: [GitLab](https://gitlab.com/), [GitHub](https://www.github.com/) or [Atlassian](https://www.atlassian.com/).

* Please check with the administrator of the CB-Geo git repository before uploading your project. 

* Projects must be under a suitable research group (`fem`, `lem`, `cb-geo`, etc). If you think a suitable research group doesn’t exist, please email [info@cb-geo.com](mailto:info@cb-geo.com).

* Projects must have a detailed `README.md` file that contains:
	* The name and the description of the project
	* Pre-requisites and installation instructions
	* Usage instructions
	* Description of files and folders (if not obvious)

* Projects must have a `.gitignore` file, which should include standard temporary files (`*~*`, `*~*`, `*.DS_Store*`, `*.swp*`, `*.bak*`). Customise your ignore file from a list of sample `.gitignore` file suitable for your project. 

* Avoid `.gitkeep` (which is not a git feature).

* Projects must never contain output / visualisation files.

* Projects must not contain packages, dependencies, installation files, which can be found elsewhere. If you have customised a dependency or a package, consider creating a separate project instead of bundling it in a single repository.

* Individual projects / input files must be under separate folder or branches. Always use lowercase for files, folders and branch names. Never have file/folder names with spaces or special characters. Do not use Uppercase or Camelcase. File names should be meaningful. Names such as `first analysis.txt`, `version2.txt`, `January2016.txt` should be avoided. If there are multiple folders each with it’s own input files or project, each folder must have a README describing the input files / code. 

* Commit messages should be meaning and descriptive. Instead of saying `update` say `changed input format to JSON` as your commit message. 

* Commit and push reasonably frequently once or twice a day, when the project is under active development. Push only when a project compiles without errors.

* Always create a development branch for projects under active development. The master branch must be stable and compile/run from any commit. 

* Projects must have unit tests and Continuous Integration: GitLab CI or Jenkins integration.

* Projects larger than 100MB must require pre-approval from the CB-Geo administrator.

* Projects found violating these guidelines may be removed without notice and access privileges revoked.

* Useful tool -  The [BFG repo cleaner](https://rtyley.github.io/bfg-repo-cleaner/). This is for cleansing `bad data` from your repository, such as large files and personal credentials. 
