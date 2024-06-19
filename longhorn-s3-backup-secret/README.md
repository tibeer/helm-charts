# Longhorn secret for S3 backup mechanism

On order to use the backup mechanism from longhorn, one needs to provide a secret in the same namespace of the longhorn installation (usually `longhorn-system`). If you are using something different then AWS (e.g. [garage](https://garagehq.deuxfleurs.fr/) or [minio](https://min.io)) you need to specify also a region and an endpoint.

Once the secret is applied, you can use it in your settings. Either follow the guide from [here](https://longhorn.io/docs/archives/1.3.0/snapshots-and-backups/backup-and-restore/set-backup-target/#set-up-aws-s3-backupstore) or follow these steps:

1. Head over to "Settings > General".
2. Search for "Backup Target".
3. Enter your bucket string in this style:
  
    ```uri
    s3://my-bucket-name@my-region/my-folder
    ```

    Make sure that you provide a region and a folder name, otherwise longhorn will not treat the string as a valid s3 URL.

4. Search for "Backup Target Credential Secret".
5. Enter the name of the secert you have just created.
6. Search for "Maximum Retention Number for Recurring Job".
7. Adapt the number to you requirements for the retention amount of snapshots or backups.
