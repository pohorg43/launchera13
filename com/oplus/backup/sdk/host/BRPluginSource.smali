.class public Lcom/oplus/backup/sdk/host/BRPluginSource;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ASSETS_PLUGINS_PATH:Ljava/lang/String; = "br_plugins"

.field public static final BR_BASE_DIR:Ljava/lang/String; = "br_cache"

.field public static final LOCAL_PLUGINS_DIR:Ljava/lang/String; = "local_plugins"

.field private static final TAG:Ljava/lang/String; = "BRPluginSource"

.field private static sBRPluginConfigs:[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalBRPlugins(Landroid/content/Context;)[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
    .registers 2

    const-string v0, "local_plugins"

    invoke-static {p0, v0}, Lcom/oplus/backup/sdk/host/BRPluginSource;->getLocalBRPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalBRPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
    .registers 18

    const-string v1, "br_plugins/"

    const-string v2, "getLocalBRPlugins, e ="

    const-string v3, "BRPluginSource"

    sget-object v0, Lcom/oplus/backup/sdk/host/BRPluginSource;->sBRPluginConfigs:[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-static/range {p0 .. p0}, Lcom/oplus/backup/sdk/host/BRPluginSource;->initBaseFolder(Landroid/content/Context;)Ljava/io/File;

    const/4 v4, 0x0

    new-array v5, v4, [Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :try_start_17
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v8, "br_plugins"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_23

    move-object v8, v0

    goto :goto_37

    :catch_23
    move-exception v0

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v7

    :goto_37
    if-nez v8, :cond_3a

    return-object v5

    :cond_3a
    array-length v9, v8

    move v10, v4

    :goto_3c
    if-ge v10, v9, :cond_12d

    aget-object v0, v8, v10

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_43
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v8, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_5c} :catch_5e

    move-object v11, v0

    goto :goto_72

    :catch_5e
    move-exception v0

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v7

    :goto_72
    if-nez v11, :cond_75

    return-object v5

    :cond_75
    array-length v12, v11

    move v13, v4

    :goto_77
    if-ge v13, v12, :cond_129

    aget-object v0, v11, v13

    const-string v14, ".config"

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    aget-object v0, v11, v13

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_88
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v8, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v11, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_ab} :catch_d1
    .catchall {:try_start_88 .. :try_end_ab} :catchall_ce

    :try_start_ab
    invoke-static {v14}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfigParser;->parse(Ljava/io/InputStream;)Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move-result-object v0

    if-eqz v0, :cond_ba

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "add success"

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf

    :cond_ba
    const-string v0, "BRPluginConfigParser.parse(inputStream) failed:"

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_bf} :catch_cc
    .catchall {:try_start_ab .. :try_end_bf} :catchall_107

    :goto_bf
    if-eqz v14, :cond_125

    :try_start_c1
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    goto :goto_125

    :catch_c5
    move-exception v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_f5

    :catch_cc
    move-exception v0

    goto :goto_d3

    :catchall_ce
    move-exception v0

    :goto_cf
    move-object v1, v0

    goto :goto_10a

    :catch_d1
    move-exception v0

    move-object v14, v7

    :goto_d3
    :try_start_d3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_d3 .. :try_end_e9} :catchall_107

    if-eqz v14, :cond_125

    :try_start_eb
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_ef

    goto :goto_125

    :catch_ef
    move-exception v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f5
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_125

    :catchall_107
    move-exception v0

    move-object v7, v14

    goto :goto_cf

    :goto_10a
    if-eqz v7, :cond_124

    :try_start_10c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_10f} :catch_110

    goto :goto_124

    :catch_110
    move-exception v0

    move-object v4, v0

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_124
    :goto_124
    throw v1

    :cond_125
    :goto_125
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_77

    :cond_129
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3c

    :cond_12d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    sput-object v0, Lcom/oplus/backup/sdk/host/BRPluginSource;->sBRPluginConfigs:[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    return-object v0
.end method

.method public static initBaseFolder(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    const-string v0, "br_cache"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/backup/sdk/common/utils/FileUtils;->setPermissionsReadOnly(Ljava/lang/String;)V

    return-object p0
.end method
