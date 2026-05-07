.class public Lcom/oplus/wallpaper/sdk/PictorialHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z

.field private static final PICTORIAL_CONFIG_KEY_APPLY_SWITCH_BASE64_CODE:Ljava/lang/String; = "b3Bwb19waWN0b3JpYWxfYXBwbHk="

.field private static final PICTORIAL_CONFIG_KEY_APPLY_SWITCH_DEFAULT_STATE:I = 0x1

.field private static final PICTORIAL_CONFIG_KEY_AUTH_SWITCH_BASE64_CODE:Ljava/lang/String; = "b3Bwb19jdGFfdXBkYXRlX3BpY3RvcmlhbA=="

.field private static final PICTORIAL_CONFIG_KEY_AUTH_SWITCH_DEFAULT_STATE:I = 0x1

.field private static final PICTORIAL_CONFIG_KEY_AUTO_PLAY_SWITCH_BASE64_CODE:Ljava/lang/String; = "b3Bwb19waWN0b3JpYWxfYXV0b19wbGF5"

.field private static final PICTORIAL_CONFIG_KEY_AUTO_PLAY_SWITCH_DEFAULT_STATE:I = 0x1

.field private static final PICTORIAL_FAVORITE_ATTR_COLOR:Ljava/lang/String; = "color"

.field private static final PICTORIAL_FAVORITE_ATTR_PATH:Ljava/lang/String; = "path"

.field private static final PICTORIAL_FAVORITE_DIR:Ljava/lang/String;

.field private static final PICTORIAL_FAVORITE_SHARED_INFO_CONNECTOR:Ljava/lang/String; = ":"

.field private static final PICTORIAL_FAVORITE_SHARED_PATH_BASE64_CODE:Ljava/lang/String; = "L2RhdGEvZGF0YS9jb20uY29sb3Jvcy5waWN0b3JpYWwvZmlsZXMvZmF2b3JpdGUuc2hhcmVk"

.field private static final PICTORIAL_FAVORITE_WALLPAPER_MAX_RES_NAME:Ljava/lang/String; = "favorite_photos_max_limit"

.field private static final PICTORIAL_FAVOURITE_KEY:Ljava/lang/String; = "favoriteInfo"

.field private static final PICTORIAL_FAVOURITE_STRING_BASE64_CODE:Ljava/lang/String; = "Y29udGVudDovL2NvbS5jb2xvcm9zLnBpY3RvcmlhbC5kYXRhLnByb3ZpZGVyLlBpY3RvcmlhbEZhdm9yaXRlUHJvdmlkZXIvZmF2b3JpdGU="

.field private static final PICTORIAL_FILE_PATH_BASE_CEODE:Ljava/lang/String; = "Q29sb3JPUw=="

.field private static final PICTORIAL_PKG_NAME_BASE64_CODE:Ljava/lang/String; = "Y29tLmNvbG9yb3MucGljdG9yaWFs"

.field private static final PICTORIAL_PPIC_FILE_EXTENSION:Ljava/lang/String; = ".ppic"

.field private static final PICTORIAL_SWITCH_SHARED_PATH_BASE64_CODE:Ljava/lang/String; = "L2RhdGEvZGF0YS9jb20uY29sb3Jvcy5waWN0b3JpYWwvZmlsZXMvc3dpdGNoLnNoYXJlZA=="

.field private static final REGEX_FORMAT_FAVORITE_SHARED_INFO_RULE:Ljava/lang/String;

.field private static final SWITCH_STATE_CLOSED:I = 0x0

.field private static final SWITCH_STATE_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WS.PictorialHelper"

.field private static sHelper:Lcom/oplus/wallpaper/sdk/PictorialHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    sget-boolean v0, Lcom/oplus/wallpaper/sdk/LogUtils;->DEBUG:Z

    sput-boolean v0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->DEBUG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Q29sb3JPUw=="

    invoke-static {v2}, Lcom/oplus/wallpaper/sdk/Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Pictorial"

    invoke-static {v0, v2, v1, v3, v1}, Landroidx/room/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ".Favorite"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->PICTORIAL_FAVORITE_DIR:Ljava/lang/String;

    const-string v2, ".+\\"

    const-string v3, ".ppic"

    const-string v4, ":"

    invoke-static {v0, v1, v2, v3, v4}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[+-]?[0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->REGEX_FORMAT_FAVORITE_SHARED_INFO_RULE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->sHelper:Lcom/oplus/wallpaper/sdk/PictorialHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addFavoriteWallpaperToCP(Landroid/content/ContentProviderClient;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "WS.PictorialHelper"

    if-eqz p2, :cond_4a

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4a

    :cond_b
    if-nez p1, :cond_13

    const-string p0, "addFavoriteWallpaperToCP, client is null, so just return."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    invoke-direct {p0, p2}, Lcom/oplus/wallpaper/sdk/PictorialHelper;->generateFormatString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_23

    const-string p0, "addFavoriteWallpaperToCP, can\'t generate favoriteInfoStrings, so just return."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "favoriteInfo"

    invoke-virtual {p2, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2d
    const-string p0, "writeFavoriteWallpaper"

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_33} :catch_34

    goto :goto_49

    :catch_34
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addFavoriteWallpaperToCP, exception ex = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_49
    return-void

    :cond_4a
    :goto_4a
    const-string p0, "addFavoriteWallpaperToCP, favoriteInfo is null or has noting, so just return."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addFavoriteWallpaperToFile(Ljava/util/Map;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ":"

    const-string v1, "addFavoriteWallpaperToFile close reader Exception = "

    const-string v2, "addFavoriteWallpaperToFile close writer Exception = "

    const-string v3, "WS.PictorialHelper"

    invoke-direct/range {p0 .. p0}, Lcom/oplus/wallpaper/sdk/PictorialHelper;->getPictorialContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "favorite_photos_max_limit"

    invoke-static {v4, v5}, Lcom/oplus/wallpaper/sdk/Utils;->getRemoteIntegerRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    :try_start_13
    new-instance v6, Ljava/io/File;

    const-string v7, "L2RhdGEvZGF0YS9jb20uY29sb3Jvcy5waWN0b3JpYWwvZmlsZXMvZmF2b3JpdGUuc2hhcmVk"

    invoke-static {v7}, Lcom/oplus/wallpaper/sdk/Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2d} :catch_12c
    .catchall {:try_start_13 .. :try_end_2d} :catchall_128

    :try_start_2d
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_126
    .catchall {:try_start_2d .. :try_end_31} :catchall_18a

    :goto_31
    const-string v10, "\n"

    if-eqz v9, :cond_a2

    :try_start_35
    sget-object v11, Lcom/oplus/wallpaper/sdk/PictorialHelper;->REGEX_FORMAT_FAVORITE_SHARED_INFO_RULE:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9d

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/io/File;

    const/4 v13, 0x0

    aget-object v14, v11, v13

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x2

    aget-object v11, v11, v14

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_9d

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v11, v16, v18

    if-eqz v11, :cond_9d

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    cmp-long v11, v11, v14

    if-nez v11, :cond_9d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v10, v4, -0x1

    if-le v9, v10, :cond_9d

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    aget-object v9, v9, v13

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9d
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    goto :goto_31

    :cond_a2
    invoke-direct/range {p0 .. p1}, Lcom/oplus/wallpaper/sdk/PictorialHelper;->generateFormatString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_c3} :catch_126
    .catchall {:try_start_35 .. :try_end_c3} :catchall_18a

    :try_start_c3
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_db

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_da} :catch_e1
    .catchall {:try_start_c3 .. :try_end_da} :catchall_dd

    goto :goto_c7

    :cond_db
    move-object v5, v4

    goto :goto_e4

    :catchall_dd
    move-exception v0

    move-object v5, v4

    goto/16 :goto_18b

    :catch_e1
    move-exception v0

    move-object v5, v4

    goto :goto_12e

    :cond_e4
    :goto_e4
    if-eqz v5, :cond_105

    :try_start_e6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_ea

    goto :goto_105

    :catch_ea
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->DEBUG:Z

    if-eqz v0, :cond_105

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_105
    :goto_105
    :try_start_105
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_10a

    goto/16 :goto_189

    :catch_10a
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->DEBUG:Z

    if-eqz v0, :cond_189

    :goto_122
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_189

    :catch_126
    move-exception v0

    goto :goto_12e

    :catchall_128
    move-exception v0

    move-object v4, v0

    move-object v8, v5

    goto :goto_18c

    :catch_12c
    move-exception v0

    move-object v8, v5

    :goto_12e
    :try_start_12e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addFavoriteWallpaperToFile Exception = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/oplus/wallpaper/sdk/PictorialHelper;->DEBUG:Z

    if-eqz v4, :cond_149

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_149
    .catchall {:try_start_12e .. :try_end_149} :catchall_18a

    :cond_149
    if-eqz v5, :cond_16a

    :try_start_14b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14e} :catch_14f

    goto :goto_16a

    :catch_14f
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->DEBUG:Z

    if-eqz v0, :cond_16a

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_16a
    :goto_16a
    if-eqz v8, :cond_189

    :try_start_16c
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_16f} :catch_170

    goto :goto_189

    :catch_170
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->DEBUG:Z

    if-eqz v0, :cond_189

    goto :goto_122

    :cond_189
    :goto_189
    return-void

    :catchall_18a
    move-exception v0

    :goto_18b
    move-object v4, v0

    :goto_18c
    if-eqz v5, :cond_1ad

    :try_start_18e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_191
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_191} :catch_192

    goto :goto_1ad

    :catch_192
    move-exception v0

    move-object v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->DEBUG:Z

    if-eqz v0, :cond_1ad

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_1ad
    :goto_1ad
    if-eqz v8, :cond_1ce

    :try_start_1af
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1b2} :catch_1b3

    goto :goto_1ce

    :catch_1b3
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->DEBUG:Z

    if-eqz v0, :cond_1ce

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1ce
    :goto_1ce
    throw v4
.end method

.method private generateFormatString(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p0, "path"

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_11

    :cond_10
    move-object p0, v1

    :goto_11
    const-string v0, "color"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_21

    :cond_20
    move-object p1, v1

    :goto_21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_52

    :cond_2e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_52
    :goto_52
    const-string p0, "WS.PictorialHelper"

    const-string p1, "generateFormatString, color or path can\'t be null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getPictorialContext()Landroid/content/Context;
    .registers 2

    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->mContext:Landroid/content/Context;

    const-string v0, "Y29tLmNvbG9yb3MucGljdG9yaWFs"

    invoke-static {v0}, Lcom/oplus/wallpaper/sdk/Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/wallpaper/sdk/Utils;->getRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getPictorialHelper(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/PictorialHelper;
    .registers 2

    sget-object v0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->sHelper:Lcom/oplus/wallpaper/sdk/PictorialHelper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/oplus/wallpaper/sdk/PictorialHelper;

    invoke-direct {v0, p0}, Lcom/oplus/wallpaper/sdk/PictorialHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->sHelper:Lcom/oplus/wallpaper/sdk/PictorialHelper;

    :cond_b
    sget-object p0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->sHelper:Lcom/oplus/wallpaper/sdk/PictorialHelper;

    return-object p0
.end method


# virtual methods
.method public getPictorialIntConfig(Ljava/lang/String;)I
    .registers 5

    const-string v0, "b3Bwb19jdGFfdXBkYXRlX3BpY3RvcmlhbA=="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v2}, Lcom/oplus/wallpaper/sdk/Utils;->getSystemIntSettings(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    goto :goto_2f

    :cond_10
    const-string v0, "b3Bwb19waWN0b3JpYWxfYXBwbHk="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v2}, Lcom/oplus/wallpaper/sdk/Utils;->getSystemIntSettings(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    goto :goto_2f

    :cond_1f
    const-string v0, "b3Bwb19waWN0b3JpYWxfYXV0b19wbGF5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v2}, Lcom/oplus/wallpaper/sdk/Utils;->getSystemIntSettings(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    return p0
.end method

.method public putPictorialIntConfig(Ljava/lang/String;I)V
    .registers 5

    const-string v0, "b3Bwb19jdGFfdXBkYXRlX3BpY3RvcmlhbA=="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p2}, Lcom/oplus/wallpaper/sdk/Utils;->putSystemIntSettings(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_39

    :cond_e
    const-string v0, "b3Bwb19waWN0b3JpYWxfYXBwbHk="

    invoke-static {v0}, Lcom/oplus/wallpaper/sdk/Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/wallpaper/sdk/Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/oplus/wallpaper/sdk/Utils;->putSystemIntSettings(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_39

    :cond_24
    const-string v0, "b3Bwb19waWN0b3JpYWxfYXV0b19wbGF5"

    invoke-static {v0}, Lcom/oplus/wallpaper/sdk/Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/wallpaper/sdk/Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/oplus/wallpaper/sdk/Utils;->putSystemIntSettings(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_39
    :goto_39
    return-void
.end method

.method public setPictorialFavoriteWallpaper(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "WS.PictorialHelper"

    if-nez p2, :cond_a

    const-string p0, "setPictorialFavoriteWallpaper, bmp is null, just return"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    if-eqz p3, :cond_9d

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_9d

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/wallpaper/sdk/PictorialHelper;->PICTORIAL_FAVORITE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".ppic"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "path"

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_46
    const/4 v1, 0x0

    :try_start_47
    invoke-static {p2, v0}, Lcom/oplus/wallpaper/sdk/ImageProcess;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6f

    iget-object p2, p0, Lcom/oplus/wallpaper/sdk/PictorialHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "Y29udGVudDovL2NvbS5jb2xvcm9zLnBpY3RvcmlhbC5kYXRhLnByb3ZpZGVyLlBpY3RvcmlhbEZhdm9yaXRlUHJvdmlkZXIvZmF2b3JpdGU="

    invoke-static {v0}, Lcom/oplus/wallpaper/sdk/Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-eqz v1, :cond_6f

    sget-boolean p2, Lcom/oplus/wallpaper/sdk/PictorialHelper;->DEBUG:Z

    if-eqz p2, :cond_6c

    const-string p2, "setPictorialFavoriteWallpaper, use addFavoriteWallpaperToCP"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    invoke-direct {p0, v1, p3}, Lcom/oplus/wallpaper/sdk/PictorialHelper;->addFavoriteWallpaperToCP(Landroid/content/ContentProviderClient;Ljava/util/Map;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_6f} :catch_77
    .catchall {:try_start_47 .. :try_end_6f} :catchall_75

    :cond_6f
    if-eqz v1, :cond_96

    :goto_71
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_96

    :catchall_75
    move-exception p0

    goto :goto_97

    :catch_77
    move-exception p0

    :try_start_78
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setPictorialFavoriteWallpaper Exception = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/oplus/wallpaper/sdk/PictorialHelper;->DEBUG:Z

    if-eqz p1, :cond_93

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_93
    .catchall {:try_start_78 .. :try_end_93} :catchall_75

    :cond_93
    if-eqz v1, :cond_96

    goto :goto_71

    :cond_96
    :goto_96
    return-void

    :goto_97
    if-eqz v1, :cond_9c

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_9c
    throw p0

    :cond_9d
    :goto_9d
    const-string p0, "setPictorialFavoriteWallpaper, favoriteInfo is null or has noting, so just return."

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
