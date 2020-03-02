# Wheely

Wheely creates one zip file (aka wheelhouse) containing all pre-downloaded project dependencies/wheels.

## 1. Build docker image

```bash
$ cd docker
$ docker build -t datasentics/wheely .
```

## 2. Build the wheelhouse .zip package

```bash
$ cat /path/to/requirements.txt | docker run -i --rm -v /path/to/output-directory:/output datasentics/wheely
```

## 3. Using the wheelhouse on the Databricks cluster

Upload wheelhouse to DBFS via *DBFS -> Python Whl*

![Image of Yaktocat](docs/wheelhouse_upload.png)

Then either **install the library manually on your cluster** (*Libraries* section) or use `dbutils.library.install()` in your notebook.
