.class public Lcom/oplus/backup/sdk/common/utils/FileUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_54

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_54

    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/backup/sdk/common/utils/FileUtils;->mkdirs(Ljava/io/File;)Z

    const/4 v1, 0x0

    :try_start_17
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_49
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_40
    .catchall {:try_start_17 .. :try_end_1c} :catchall_3e

    const/16 p1, 0x400

    :try_start_1e
    new-array p1, p1, [B

    :goto_20
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2b

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_20

    :cond_2b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2e} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2e} :catch_39
    .catchall {:try_start_1e .. :try_end_2e} :catchall_36

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    goto :goto_48

    :catchall_36
    move-exception p1

    move-object v1, v2

    goto :goto_4b

    :catch_39
    move-object v1, v2

    goto :goto_40

    :catch_3b
    move-exception p1

    move-object v1, v2

    goto :goto_4a

    :catchall_3e
    move-exception p1

    goto :goto_4b

    :catch_40
    :goto_40
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_45
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :goto_48
    return v0

    :catch_49
    move-exception p1

    :goto_4a
    :try_start_4a
    throw p1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_3e

    :goto_4b
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_50
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1

    :cond_54
    :goto_54
    return v0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3b

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_18} :catch_57
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_4b
    .catchall {:try_start_2 .. :try_end_18} :catchall_48

    :try_start_18
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_39
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_4c
    .catchall {:try_start_18 .. :try_end_1d} :catchall_5a

    const/16 p1, 0x400

    :try_start_1f
    new-array p1, p1, [B

    :goto_21
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2c

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_21

    :cond_2c
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2f} :catch_36
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2f} :catch_34
    .catchall {:try_start_1f .. :try_end_2f} :catchall_31

    move-object v1, p0

    goto :goto_3c

    :catchall_31
    move-exception p1

    move-object v1, p0

    goto :goto_5b

    :catch_34
    move-object v1, p0

    goto :goto_4c

    :catch_36
    move-exception p1

    move-object v1, p0

    goto :goto_59

    :catch_39
    move-exception p1

    goto :goto_59

    :cond_3b
    move-object v2, v1

    :goto_3c
    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_41
    if-eqz v2, :cond_46

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_46
    const/4 v0, 0x1

    goto :goto_56

    :catchall_48
    move-exception p1

    move-object v2, v1

    goto :goto_5b

    :catch_4b
    move-object v2, v1

    :catch_4c
    :goto_4c
    if-eqz v1, :cond_51

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_51
    if-eqz v2, :cond_56

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_56
    :goto_56
    return v0

    :catch_57
    move-exception p1

    move-object v2, v1

    :goto_59
    :try_start_59
    throw p1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p1

    :goto_5b
    if-eqz v1, :cond_60

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_60
    if-eqz v2, :cond_65

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_65
    throw p1
.end method

.method public static copyFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    move v2, v0

    :goto_13
    array-length v3, v1

    if-ge v2, v3, :cond_ae

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4f

    :cond_35
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_4f
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_53} :catch_af

    const-string v5, "/"

    if-eqz v4, :cond_79

    :try_start_57
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/oplus/backup/sdk/common/utils/FileUtils;->nioTransferCopy(Ljava/io/File;Ljava/io/File;)Z

    :cond_79
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_aa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/backup/sdk/common/utils/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_aa} :catch_af

    :cond_aa
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_13

    :cond_ae
    const/4 v0, 0x1

    :catch_af
    return v0
.end method

.method public static deleteFileOrFolder(Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_33

    array-length v3, v1

    move v4, v0

    :goto_25
    if-ge v4, v3, :cond_33

    aget-object v5, v1, v4

    invoke-static {v5}, Lcom/oplus/backup/sdk/common/utils/FileUtils;->deleteFileOrFolder(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_30

    move v2, v0

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_33
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_37} :catch_3c

    if-nez p0, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v2

    :goto_3b
    return v0

    :catch_3c
    const-string p0, "FileUtils"

    const-string v1, "deleteFileOrFolder exception"

    invoke-static {p0, v1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isEmptyFolder(Ljava/io/File;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_27

    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_26

    array-length v1, p0

    move v2, v0

    :goto_18
    if-ge v2, v1, :cond_26

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/oplus/backup/sdk/common/utils/FileUtils;->isEmptyFolder(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_27

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0
.end method

.method public static mkdirs(Ljava/io/File;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    return p0

    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    return p0

    :cond_44
    const-string p0, "file.renameTo false, "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->getModifiedFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FileUtils"

    invoke-static {v1, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    return v0
.end method

.method public static nioTransferCopy(Ljava/io/File;Ljava/io/File;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_4d
    .catchall {:try_start_1 .. :try_end_6} :catchall_48

    :try_start_6
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_44
    .catchall {:try_start_6 .. :try_end_b} :catchall_3f

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_3b
    .catchall {:try_start_b .. :try_end_f} :catchall_38

    :try_start_f
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    move-object v2, p1

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1e} :catch_32
    .catchall {:try_start_f .. :try_end_1e} :catchall_2e

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2c
    const/4 p0, 0x1

    return p0

    :catchall_2e
    move-exception v2

    move-object v8, v1

    move-object v1, v0

    goto :goto_57

    :catch_32
    move-exception v2

    move-object v8, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v8

    goto :goto_51

    :catchall_38
    move-exception v2

    move-object p1, v0

    goto :goto_42

    :catch_3b
    move-exception v2

    move-object p1, p0

    move-object p0, v0

    goto :goto_51

    :catchall_3f
    move-exception v2

    move-object p0, v0

    move-object p1, p0

    :goto_42
    move-object v0, v1

    goto :goto_4b

    :catch_44
    move-exception v2

    move-object p0, v0

    move-object p1, p0

    goto :goto_51

    :catchall_48
    move-exception v2

    move-object p0, v0

    move-object p1, p0

    :goto_4b
    move-object v1, p1

    goto :goto_58

    :catch_4d
    move-exception v2

    move-object p0, v0

    move-object p1, p0

    move-object v1, p1

    :goto_51
    :try_start_51
    throw v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v2

    move-object v8, v1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v0

    :goto_57
    move-object v0, v8

    :goto_58
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_5d
    if-eqz p1, :cond_62

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_62
    if-eqz p0, :cond_67

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    :cond_67
    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_6c
    throw v2
.end method

.method public static setPermissionsReadOnly(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x1fd

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    return-void
.end method
