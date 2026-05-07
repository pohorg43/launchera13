.class public final Lcom/nearme/instant/xcard/UtilsKt;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final APK_FOLDER:Ljava/lang/String; = "instant_card"

.field public static final APK_NAME:Ljava/lang/String; = "card.apk"

.field public static final CARD_META:Ljava/lang/String; = "digest.json"

.field public static final CARD_PAK:Ljava/lang/String; = "card/card.pak"

.field public static final CARD_UPDATE_FOLDER:Ljava/lang/String; = "instant_update"

.field public static final HAP_BRIDGE_SO:Ljava/lang/String; = "libhapbridge.so"

.field public static final KEY_MD5:Ljava/lang/String; = "md5"

.field public static final KEY_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field public static final KEY_VERSION_NAME:Ljava/lang/String; = "versionName"

.field public static final OP_DIR:Ljava/lang/String; = "qa_card_odex"

.field private static final TAG:Ljava/lang/String; = "DexUtils"

.field public static final ZIP_SEPARATOR:Ljava/lang/String; = "!/"

.field private static dexFile:Ljava/io/File; = null

.field private static dexReady:Z = false

.field private static optLock:Z = false

.field public static final uri:Ljava/lang/String; = "content://com.nearme.instant.platform.card_res"


# direct methods
.method public static synthetic a(Ljava/io/File;)Z
    .registers 1

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->checkUpToDate$lambda-16(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/nearme/instant/xcard/UtilsKt;->checkUpToDate$lambda-19(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final declared-synchronized checkCardApk(Landroid/content/Context;)Z
    .registers 15

    const-class v0, Lcom/nearme/instant/xcard/UtilsKt;

    monitor-enter v0

    :try_start_3
    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->sourceFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_a6

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    const-string v8, "digest.json"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_1fe

    if-eqz v7, :cond_77

    :try_start_2b
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {v3, v5, v4}, Li1/d;->e(Ljava/io/File;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "md5"

    const-string/jumbo v8, "md5"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "versionName"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    const-string/jumbo v3, "versionName"

    const-string/jumbo v8, "versionName"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    const-string/jumbo v3, "versionCode"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    const-string/jumbo v3, "versionCode"

    const-string/jumbo v8, "versionCode"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_6d} :catch_6f
    .catchall {:try_start_2b .. :try_end_6d} :catchall_1fe

    :cond_6d
    move v3, v4

    goto :goto_78

    :catch_6f
    move-exception v3

    :try_start_70
    const-string v7, "DexUtils"

    const-string v8, "Fail to card.apk get md5"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_77
    move v3, v6

    :goto_78
    if-nez v3, :cond_a6

    const-string/jumbo v3, "md5"

    invoke-static {v2}, Lcom/nearme/instant/xcard/UtilsKt;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_a6

    const-string/jumbo v3, "versionName"

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "versionCode"

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_70 .. :try_end_a6} :catchall_1fe

    :cond_a6
    :try_start_a6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.nearme.instant.platform.card_res"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b4} :catch_1e9
    .catchall {:try_start_a6 .. :try_end_b4} :catchall_1e7

    if-nez v2, :cond_b8

    monitor-exit v0

    return v6

    :cond_b8
    :try_start_b8
    const-string v3, "checkCardVersion"

    invoke-virtual {v2, v3, v5, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1dc

    const-string/jumbo v3, "ready"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_cb

    goto/16 :goto_1dc

    :cond_cb
    const-string v3, "content://com.nearme.instant.platform.card_res/card.apk"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v7, "r"

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_d8} :catch_1e4
    .catchall {:try_start_b8 .. :try_end_d8} :catchall_1e1

    if-eqz v3, :cond_1d7

    :try_start_da
    new-instance v7, Ljava/io/File;

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getUpdateDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    const-string v9, "card.apk"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_fa

    const-string/jumbo v9, "parentFile"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_fa

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_fa
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_fe
    .catchall {:try_start_da .. :try_end_fe} :catchall_1d0

    :try_start_fe
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_103
    .catchall {:try_start_fe .. :try_end_103} :catchall_1c9

    :try_start_103
    const-string v10, "inputStream"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-static {v8, v9, v6, v10}, Lh3/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J

    invoke-static {v7}, Lcom/nearme/instant/xcard/UtilsKt;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "md5"

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_13e

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13e

    const-string p0, "DexUtils"

    const-string/jumbo v1, "the card engine apk md5 not match"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_130
    .catchall {:try_start_103 .. :try_end_130} :catchall_1c2

    :try_start_130
    invoke-static {v9, v5}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_133
    .catchall {:try_start_130 .. :try_end_133} :catchall_1c9

    :try_start_133
    invoke-static {v8, v5}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_136
    .catchall {:try_start_133 .. :try_end_136} :catchall_1d0

    :try_start_136
    invoke-static {v3, v5}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_139} :catch_1e4
    .catchall {:try_start_136 .. :try_end_139} :catchall_1e1

    :try_start_139
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_13c
    .catchall {:try_start_139 .. :try_end_13c} :catchall_1fe

    monitor-exit v0

    return v6

    :cond_13e
    :try_start_13e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_165

    const-string/jumbo v12, "versionName"

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v12, "versionCode"

    iget v7, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_165
    const-string/jumbo v7, "md5"

    invoke-virtual {v1, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/io/File;

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getUpdateDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v13, "digest.json"

    invoke-direct {v12, p0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_17b
    .catchall {:try_start_13e .. :try_end_17b} :catchall_1c2

    :try_start_17b
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "json.toString()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lp3/a;->a:Ljava/nio/charset/Charset;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string/jumbo v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v12, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v12, v7, v6, v10}, Lh3/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J
    :try_end_198
    .catchall {:try_start_17b .. :try_end_198} :catchall_1bb

    :try_start_198
    invoke-static {v7, v5}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p0, "DexUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found card engine update: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b1
    .catchall {:try_start_198 .. :try_end_1b1} :catchall_1c2

    :try_start_1b1
    invoke-static {v9, v5}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1b4
    .catchall {:try_start_1b1 .. :try_end_1b4} :catchall_1c9

    :try_start_1b4
    invoke-static {v8, v5}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1b7
    .catchall {:try_start_1b4 .. :try_end_1b7} :catchall_1d0

    :try_start_1b7
    invoke-static {v3, v5}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1ba} :catch_1e4
    .catchall {:try_start_1b7 .. :try_end_1ba} :catchall_1e1

    goto :goto_1d7

    :catchall_1bb
    move-exception p0

    :try_start_1bc
    throw p0
    :try_end_1bd
    .catchall {:try_start_1bc .. :try_end_1bd} :catchall_1bd

    :catchall_1bd
    move-exception v1

    :try_start_1be
    invoke-static {v7, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1c2
    .catchall {:try_start_1be .. :try_end_1c2} :catchall_1c2

    :catchall_1c2
    move-exception p0

    :try_start_1c3
    throw p0
    :try_end_1c4
    .catchall {:try_start_1c3 .. :try_end_1c4} :catchall_1c4

    :catchall_1c4
    move-exception v1

    :try_start_1c5
    invoke-static {v9, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1c9
    .catchall {:try_start_1c5 .. :try_end_1c9} :catchall_1c9

    :catchall_1c9
    move-exception p0

    :try_start_1ca
    throw p0
    :try_end_1cb
    .catchall {:try_start_1ca .. :try_end_1cb} :catchall_1cb

    :catchall_1cb
    move-exception v1

    :try_start_1cc
    invoke-static {v8, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1d0
    .catchall {:try_start_1cc .. :try_end_1d0} :catchall_1d0

    :catchall_1d0
    move-exception p0

    :try_start_1d1
    throw p0
    :try_end_1d2
    .catchall {:try_start_1d1 .. :try_end_1d2} :catchall_1d2

    :catchall_1d2
    move-exception v1

    :try_start_1d3
    invoke-static {v3, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_1d7} :catch_1e4
    .catchall {:try_start_1d3 .. :try_end_1d7} :catchall_1e1

    :cond_1d7
    :goto_1d7
    :try_start_1d7
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1da
    .catchall {:try_start_1d7 .. :try_end_1da} :catchall_1fe

    monitor-exit v0

    return v4

    :cond_1dc
    :goto_1dc
    :try_start_1dc
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1df
    .catchall {:try_start_1dc .. :try_end_1df} :catchall_1fe

    monitor-exit v0

    return v4

    :catchall_1e1
    move-exception p0

    move-object v5, v2

    goto :goto_1f8

    :catch_1e4
    move-exception p0

    move-object v5, v2

    goto :goto_1ea

    :catchall_1e7
    move-exception p0

    goto :goto_1f8

    :catch_1e9
    move-exception p0

    :goto_1ea
    :try_start_1ea
    const-string v1, "DexUtils"

    const-string v2, "Fail to copy card apk"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f1
    .catchall {:try_start_1ea .. :try_end_1f1} :catchall_1e7

    if-eqz v5, :cond_1f6

    :try_start_1f3
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1f6
    .catchall {:try_start_1f3 .. :try_end_1f6} :catchall_1fe

    :cond_1f6
    monitor-exit v0

    return v6

    :goto_1f8
    if-eqz v5, :cond_1fd

    :try_start_1fa
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V

    :cond_1fd
    throw p0
    :try_end_1fe
    .catchall {:try_start_1fa .. :try_end_1fe} :catchall_1fe

    :catchall_1fe
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final checkCardAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->sourceFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-static {v2}, Lcom/nearme/instant/xcard/UtilsKt;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/nearme/instant/xcard/UtilsKt;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    goto :goto_3d

    :cond_3b
    move v5, v1

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v5, v0

    :goto_3e
    const-string v6, "check_install_md5"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/nearme/instant/xcard/CardUtils;->addTrace(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_91

    const-string v3, "DexUtils"

    const-string/jumbo v4, "use installed card engine"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getCardDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/nearme/instant/xcard/UtilsKt;->deleteRecursivelyWithPrint(Ljava/io/File;)V

    new-instance v3, Ljava/io/FileInputStream;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_64
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_64} :catch_90

    const/4 p1, 0x0

    :try_start_65
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_7a

    const-string/jumbo v5, "parentFile"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7a

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_7a
    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->is64Abi(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/nearme/instant/xcard/UtilsKt;->saveApk(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/Boolean;)Z
    :try_end_85
    .catchall {:try_start_65 .. :try_end_85} :catchall_89

    :try_start_85
    invoke-static {v3, p1}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_88
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_85 .. :try_end_88} :catch_90

    goto :goto_91

    :catchall_89
    move-exception p0

    :try_start_8a
    throw p0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception p1

    :try_start_8c
    invoke-static {v3, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_90
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8c .. :try_end_90} :catch_90

    :catch_90
    move v0, v1

    :cond_91
    :goto_91
    return v0
.end method

.method public static final checkEngineApk(Landroid/content/Context;Landroid/content/res/AssetManager;Z)Z
    .registers 11

    const-string v0, "DexUtils"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "assets"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->sourceFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/nearme/instant/xcard/UtilsKt;->isFileReadOnly(Ljava/io/File;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    if-nez p2, :cond_1f

    invoke-static {p0, p1, v1}, Lcom/nearme/instant/xcard/UtilsKt;->isEngineApkReady(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_20

    :cond_1f
    return v3

    :cond_20
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_35

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-static {p2}, Lcom/nearme/instant/xcard/UtilsKt;->deleteRecursivelyWithPrint(Ljava/io/File;)V

    :cond_35
    const/4 p2, 0x0

    :try_start_36
    const-string v2, "card/card.pak"

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3c} :catch_ad

    :try_start_3c
    const-string v4, "check engine apk, use default engine: card/card.pak"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "cardStream"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->is64Abi(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/nearme/instant/xcard/UtilsKt;->saveApk(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/Boolean;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_9d

    const-string v1, "card/digest.json"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_5b
    .catchall {:try_start_3c .. :try_end_5b} :catchall_a2

    :try_start_5b
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getCardDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    const-string v7, "digest.json"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6b
    .catchall {:try_start_5b .. :try_end_6b} :catchall_96

    :try_start_6b
    const-string v5, "input"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-static {p1, v1, p2, v5}, Lh3/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_8f

    :try_start_74
    invoke-static {v1, v4}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_96

    :try_start_77
    invoke-static {p1, v4}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_a2

    :try_start_7a
    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->optimizedDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_87

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->deleteRecursivelyWithPrint(Ljava/io/File;)V

    :cond_87
    const-string p0, "delete old optimized dex"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_7a .. :try_end_8c} :catchall_8d

    goto :goto_9e

    :catchall_8d
    move-exception p0

    goto :goto_a4

    :catchall_8f
    move-exception p0

    :try_start_90
    throw p0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_91

    :catchall_91
    move-exception v3

    :try_start_92
    invoke-static {v1, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_96

    :catchall_96
    move-exception p0

    :try_start_97
    throw p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_98

    :catchall_98
    move-exception v1

    :try_start_99
    invoke-static {p1, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_9d
    .catchall {:try_start_99 .. :try_end_9d} :catchall_a2

    :cond_9d
    move v3, p2

    :goto_9e
    :try_start_9e
    invoke-static {v2, v4}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_aa

    goto :goto_c3

    :catchall_a2
    move-exception p0

    move v3, p2

    :goto_a4
    :try_start_a4
    throw p0
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception p1

    :try_start_a6
    invoke-static {v2, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_aa} :catch_aa

    :catch_aa
    move-exception p0

    move p2, v3

    goto :goto_ae

    :catch_ad
    move-exception p0

    :goto_ae
    const-string p1, "checkEngineApk: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p2

    :goto_c3
    return v3
.end method

.method public static final checkEngineVersion(Landroid/content/Context;Landroid/content/res/AssetManager;Landroid/content/pm/PackageInfo;)Z
    .registers 8

    const-string/jumbo v0, "versionCode"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "assets"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_e
    const-string v1, "card/digest.json"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_66

    :try_start_14
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_5f

    :try_start_19
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lh3/g;->b(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_51

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "jsonDigest.optString(KEY_VERSION_CODE)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz p2, :cond_3f

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_40

    :cond_3f
    move-object p2, v4

    :goto_40
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_47
    .catchall {:try_start_19 .. :try_end_47} :catchall_58

    if-lt p2, v0, :cond_51

    const/4 p2, 0x1

    :try_start_4a
    invoke-static {v1, v4}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_5f

    :try_start_4d
    invoke-static {p1, v4}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_66

    return p2

    :cond_51
    :try_start_51
    invoke-static {v1, v4}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5f

    :try_start_54
    invoke-static {p1, v4}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_66

    return p0

    :catchall_58
    move-exception p2

    :try_start_59
    throw p2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v0

    :try_start_5b
    invoke-static {v1, p2}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception p2

    :try_start_60
    throw p2
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception v0

    :try_start_62
    invoke-static {p1, p2}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_66} :catch_66

    :catch_66
    return p0
.end method

.method public static final declared-synchronized checkUpToDate(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;)Z
    .registers 12

    const-class v0, Lcom/nearme/instant/xcard/UtilsKt;

    monitor-enter v0

    :try_start_3
    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "sourceDir"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "pi"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getOptimizedDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/io/File;

    const-string v2, "dex.zip"

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/nearme/instant/xcard/UtilsKt;->dexFile:Ljava/io/File;

    new-instance v5, Ljava/io/File;

    const-string/jumbo v1, "version.json"

    invoke-direct {v5, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/nearme/instant/xcard/c;->a:Lcom/nearme/instant/xcard/c;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_3f

    array-length v1, v1

    if-nez v1, :cond_3c

    move v1, v2

    goto :goto_3d

    :cond_3c
    move v1, v8

    :goto_3d
    xor-int/2addr v1, v2

    goto :goto_40

    :cond_3f
    move v1, v8

    :goto_40
    sput-boolean v1, Lcom/nearme/instant/xcard/UtilsKt;->optLock:Z

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_f1

    if-eqz v1, :cond_95

    :try_start_4e
    new-instance v1, Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-static {v5, v3, v2}, Li1/d;->e(Ljava/io/File;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "DexUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dex version:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string/jumbo v6, "versionCode"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v3, v6, :cond_8a

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string/jumbo v6, "versionName"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    move v1, v2

    goto :goto_8b

    :cond_8a
    move v1, v8

    :goto_8b
    sput-boolean v1, Lcom/nearme/instant/xcard/UtilsKt;->dexReady:Z

    if-eqz v1, :cond_95

    sget-boolean v1, Lcom/nearme/instant/xcard/UtilsKt;->optLock:Z
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_91} :catch_95
    .catchall {:try_start_4e .. :try_end_91} :catchall_f1

    if-nez v1, :cond_95

    monitor-exit v0

    return v2

    :catch_95
    :cond_95
    :try_start_95
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "versionCode"

    iget v3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "versionName"

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string p2, "json.toString()"

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "DexUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installed version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "DexUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "odex lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/nearme/instant/xcard/UtilsKt;->optLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/launcher/a0;

    move-object v2, v1

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher/a0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_ef
    .catchall {:try_start_95 .. :try_end_ef} :catchall_f1

    monitor-exit v0

    return v8

    :catchall_f1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static final checkUpToDate$lambda-16(Ljava/io/File;)Z
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "it.name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ".flock"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lp3/h;->g(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method private static final checkUpToDate$lambda-19(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    const-string v0, "$sourceDir"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$odex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$jsonStr"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DexUtils"

    monitor-enter v0

    :try_start_1c
    sget-boolean v1, Lcom/nearme/instant/xcard/UtilsKt;->dexReady:Z
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_78

    const/4 v2, 0x0

    if-nez v1, :cond_56

    :try_start_21
    invoke-static {p0, p1}, Lcom/nearme/instant/xcard/UtilsKt;->copyDex(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2d

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_2d
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_32} :catch_56
    .catchall {:try_start_21 .. :try_end_32} :catchall_78

    :try_start_32
    sget-object p1, Lp3/a;->a:Ljava/nio/charset/Charset;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p4, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string/jumbo p4, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x0

    const/4 p4, 0x2

    invoke-static {p2, p0, p1, p4}, Lh3/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_4f

    :try_start_48
    invoke-static {p0, v2}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/nearme/instant/xcard/UtilsKt;->dexReady:Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4e} :catch_56
    .catchall {:try_start_48 .. :try_end_4e} :catchall_78

    goto :goto_56

    :catchall_4f
    move-exception p1

    :try_start_50
    throw p1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception p2

    :try_start_52
    invoke-static {p0, p1}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_78

    :catch_56
    :cond_56
    :goto_56
    :try_start_56
    new-instance p0, Lcom/nearme/instant/androidx/card/AndroidXHapDexClassLoader;

    sget-object p1, Lcom/nearme/instant/xcard/UtilsKt;->dexFile:Ljava/io/File;

    if-nez p1, :cond_62

    const-string p1, "dexFile"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_63

    :cond_62
    move-object v2, p1

    :goto_63
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lcom/nearme/instant/xcard/UtilsKt;->getOptimizedDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/nearme/instant/xcard/Compatible64Bit;->getNativeLibraryDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/nearme/instant/androidx/card/AndroidXHapDexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_76
    .catchall {:try_start_56 .. :try_end_76} :catchall_76

    :catchall_76
    monitor-exit v0

    return-void

    :catchall_78
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final checkUpdate(Landroid/content/Context;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getUpdateDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    return-void

    :cond_10
    new-instance v1, Ljava/io/File;

    const-string v2, "digest.json"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "card.apk"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2c

    goto/16 :goto_a7

    :cond_2c
    const-string v4, "DexUtils"

    const-string/jumbo v5, "update card engine to from update dir."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getCardDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/nearme/instant/xcard/UtilsKt;->deleteRecursivelyWithPrint(Ljava/io/File;)V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_40
    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->sourceFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->is64Abi(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/nearme/instant/xcard/UtilsKt;->saveApk(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/Boolean;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_9c

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getCardDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_61
    .catchall {:try_start_40 .. :try_end_61} :catchall_a0

    :try_start_61
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_95

    const/4 v1, 0x0

    const/4 v7, 0x2

    :try_start_68
    invoke-static {v2, v3, v1, v7}, Lh3/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_8e

    :try_start_6b
    invoke-static {v2, v6}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    invoke-static {v0}, Lcom/nearme/instant/xcard/UtilsKt;->deleteRecursivelyWithPrint(Ljava/io/File;)V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->optimizedDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->deleteRecursivelyWithPrint(Ljava/io/File;)V

    :cond_85
    const-string p0, "delete old optimized dex"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_6b .. :try_end_8a} :catchall_95

    :try_start_8a
    invoke-static {v3, v6}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_a0

    goto :goto_9c

    :catchall_8e
    move-exception p0

    :try_start_8f
    throw p0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    :catchall_90
    move-exception v0

    :try_start_91
    invoke-static {v2, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_95

    :catchall_95
    move-exception p0

    :try_start_96
    throw p0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_97

    :catchall_97
    move-exception v0

    :try_start_98
    invoke-static {v3, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_a0

    :cond_9c
    :goto_9c
    invoke-static {v5, v6}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_a0
    move-exception p0

    :try_start_a1
    throw p0
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a2

    :catchall_a2
    move-exception v0

    invoke-static {v5, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_a7
    :goto_a7
    return-void
.end method

.method public static final clearDirectory(Ljava/io/File;)Z
    .registers 7

    const-string v0, "dir"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_43

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_43

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "file"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/nearme/instant/xcard/UtilsKt;->clearDirectory(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v0, v5

    :cond_23
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "DexUtils"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_43
    return v0
.end method

.method private static final copyDex(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const-string v0, "DexUtils"

    const-string v1, "copy dex start"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    const-string v2, "dex.tmp"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/nearme/instant/xcard/UtilsKt;->dexFile:Ljava/io/File;

    const-string v2, "dexFile"

    const/4 v3, 0x0

    if-nez p1, :cond_19

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_19
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2a

    sget-object p1, Lcom/nearme/instant/xcard/UtilsKt;->dexFile:Ljava/io/File;

    if-nez p1, :cond_27

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_33
    new-instance p1, Ljava/util/zip/ZipFile;

    invoke-direct {p1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    :try_start_38
    new-instance p0, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_b8

    :try_start_42
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    const-string/jumbo v5, "zf.entries()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "<this>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lz2/m;

    invoke-direct {v5, v4}, Lz2/m;-><init>(Ljava/util/Enumeration;)V

    invoke-static {v5}, Lo3/i;->q(Ljava/util/Iterator;)Lo3/e;

    move-result-object v4

    sget-object v5, Lcom/nearme/instant/xcard/UtilsKt$copyDex$1$1$1;->INSTANCE:Lcom/nearme/instant/xcard/UtilsKt$copyDex$1$1$1;

    invoke-static {v4, v5}, Lo3/l;->r(Lo3/e;Lkotlin/jvm/functions/Function1;)Lo3/e;

    move-result-object v4

    check-cast v4, Lo3/c;

    new-instance v5, Lo3/c$a;

    invoke-direct {v5, v4}, Lo3/c$a;-><init>(Lo3/c;)V

    :goto_67
    invoke-virtual {v5}, Lo3/c$a;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-virtual {v5}, Lo3/c$a;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_77
    .catchall {:try_start_42 .. :try_end_77} :catchall_b1

    :try_start_77
    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const-string v4, "it"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v7, 0x2

    invoke-static {v6, p0, v4, v7}, Lh3/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J
    :try_end_8d
    .catchall {:try_start_77 .. :try_end_8d} :catchall_91

    :try_start_8d
    invoke-static {v6, v3}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_b1

    goto :goto_67

    :catchall_91
    move-exception v0

    :try_start_92
    throw v0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_93

    :catchall_93
    move-exception v1

    :try_start_94
    invoke-static {v6, v0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_b1

    :cond_98
    :try_start_98
    invoke-static {p0, v3}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_b8

    invoke-static {p1, v3}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/nearme/instant/xcard/UtilsKt;->dexFile:Ljava/io/File;

    if-nez p0, :cond_a6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a7

    :cond_a6
    move-object v3, p0

    :goto_a7
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string p0, "copy dex end"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catchall_b1
    move-exception v0

    :try_start_b2
    throw v0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b3

    :catchall_b3
    move-exception v1

    :try_start_b4
    invoke-static {p0, v0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_b8
    .catchall {:try_start_b4 .. :try_end_b8} :catchall_b8

    :catchall_b8
    move-exception p0

    :try_start_b9
    throw p0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception v0

    invoke-static {p1, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final deleteRecursivelyWithPrint(Ljava/io/File;)V
    .registers 3

    const-string v0, "file"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lh3/e;->h(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DexUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-void
.end method

.method public static final getCardDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instant_card"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string v0, "context.getDir(APK_FOLDER, Context.MODE_PRIVATE)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getDexPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "sourceDir"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/nearme/instant/xcard/UtilsKt;->dexReady:Z

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/nearme/instant/xcard/UtilsKt;->optLock:Z

    if-nez v0, :cond_21

    sget-object p0, Lcom/nearme/instant/xcard/UtilsKt;->dexFile:Ljava/io/File;

    if-nez p0, :cond_18

    const-string p0, "dexFile"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "dexFile.absolutePath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_21
    return-object p0
.end method

.method public static final getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 11

    const-string v0, ""

    const-string v1, "file"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_7
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_47

    const/4 p0, 0x0

    :try_start_d
    const-string/jumbo v2, "md5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const/16 v3, 0x400

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    :goto_1c
    if-ltz v4, :cond_27

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    goto :goto_1c

    :cond_27
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/nearme/instant/xcard/UtilsKt$getFileMD5$1$1$1;->INSTANCE:Lcom/nearme/instant/xcard/UtilsKt$getFileMD5$1$1$1;

    const/16 v9, 0x1e

    invoke-static/range {v2 .. v9}, Lz2/h;->r([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_40

    :try_start_3c
    invoke-static {v1, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_47

    return-object v2

    :catchall_40
    move-exception p0

    :try_start_41
    throw p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v2

    :try_start_43
    invoke-static {v1, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_47} :catch_47

    :catch_47
    return-object v0
.end method

.method public static final getOptimizedDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "odex"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "context.getDir(\"odex\", C…ODE_PRIVATE).absolutePath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getUpdateDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "instant_update"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string v1, "engine"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final is64Abi(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result p0

    return p0
.end method

.method private static final isART64(Landroid/content/Context;)Z
    .registers 9

    const-string v0, "art"

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-class v3, Ljava/lang/ClassLoader;

    const-string v4, "findLibrary"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2a

    check-cast p0, Ljava/lang/String;

    const-string v0, "lib64"

    invoke-static {p0, v0, v2, v1}, Lp3/k;->o(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_2b

    return p0

    :cond_2a
    return v2

    :catch_2b
    sget-object p0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v2

    const-string v0, "Build.SUPPORTED_ABIS[0]"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arm64"

    invoke-static {p0, v0, v2, v1}, Lp3/k;->o(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p0

    return p0
.end method

.method public static final isEngineApkReady(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/io/File;)Z
    .registers 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engineApk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const v2, 0x8000040

    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/nearme/instant/xcard/UtilsKt;->checkEngineVersion(Landroid/content/Context;Landroid/content/res/AssetManager;Landroid/content/pm/PackageInfo;)Z

    move-result p1

    const-string v0, "DexUtils"

    if-nez p1, :cond_33

    const-string p0, "lower version, force update"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_33
    invoke-static {p2, p0}, Lcom/nearme/instant/xcard/UtilsKt;->verifyAppSignature(Landroid/content/pm/PackageInfo;Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_40

    const-string/jumbo p0, "unknown signature, force update"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_40
    const/4 p0, 0x1

    return p0

    :cond_42
    return v1
.end method

.method public static final isEntryStored(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "zipFile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method private static final isFileReadOnly(Ljava/io/File;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Ljava/io/File;->canExecute()Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x1

    return p0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public static final nativeInZipLibrary(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->sourceFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "!/lib/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1f

    const-string p0, "arm64-v8a"

    goto :goto_21

    :cond_1f
    const-string p0, "armeabi-v7a"

    :goto_21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final nativeLibraries(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->sourceFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!/lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "arm64-v8a"

    const-string v3, "armeabi-v7a"

    if-eqz p1, :cond_27

    move-object v4, v2

    goto :goto_28

    :cond_27
    move-object v4, v3

    :goto_28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getCardDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    const-string v4, "lib"

    invoke-direct {v1, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    move-object v2, v3

    :goto_41
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "nativeLibrary, searchPaths: + "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DexUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "join(File.pathSeparator, librarySearchPaths)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final nativeLibrary(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getCardDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "lib"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_15

    const-string p0, "arm64-v8a"

    goto :goto_17

    :cond_15
    const-string p0, "armeabi-v7a"

    :goto_17
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "File(\n        getCardDir… \"armeabi-v7a\"\n    ).path"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final optimizedDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "qa_card_odex"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final saveApk(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/Boolean;)Z
    .registers 15

    const-string v0, "lib/"

    const-string v1, "DexUtils"

    const-string v2, "fileInputStream"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "destFile"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1c

    return v3

    :cond_1c
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2d

    :cond_2c
    move-object v2, v4

    :goto_2d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_3d
    const/4 v2, 0x1

    :try_start_3e
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_155

    const/4 v6, 0x2

    :try_start_44
    invoke-static {p0, v5, v3, v6}, Lh3/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_14e

    :try_start_4e
    invoke-static {v5, v4}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_58

    return v3

    :cond_58
    invoke-virtual {p1}, Ljava/io/File;->setReadOnly()Z

    move-result p0

    if-nez p0, :cond_64

    const-string p0, "fail to set ReadOnly"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_64
    if-nez p2, :cond_69

    const-string p0, ""

    goto :goto_74

    :cond_69
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_72

    const-string p0, "arm64-v8a"

    goto :goto_74

    :cond_72
    const-string p0, "armeabi-v7a"

    :goto_74
    new-instance p2, Ljava/util/zip/ZipFile;

    invoke-direct {p2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_79} :catch_155

    :try_start_79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/libhapbridge.so"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/nearme/instant/xcard/UtilsKt;->isEntryStored(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9f

    const-string p0, "TAG"

    const-string/jumbo p1, "uncompressed \'.so\' file entries, don not extract lib"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_79 .. :try_end_9b} :catchall_147

    :try_start_9b
    invoke-static {p2, v4}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v2

    :cond_9f
    invoke-static {p2, v4}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance p2, Ljava/util/zip/ZipFile;

    invoke-direct {p2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a7} :catch_155

    :try_start_a7
    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    :cond_af
    :goto_af
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_13b

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "entry.name"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3, v6}, Lp3/h;->n(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_af

    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "canonicalPath"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "targetDir.canonicalPath"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v10, v3, v6}, Lp3/h;->n(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v9

    if-eqz v9, :cond_af

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_109

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_109

    move v9, v2

    goto :goto_10a

    :cond_109
    move v9, v3

    :goto_10a
    if-eqz v9, :cond_115

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_115

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    :cond_115
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11a
    .catchall {:try_start_a7 .. :try_end_11a} :catchall_140

    :try_start_11a
    invoke-virtual {p2, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_11e
    .catchall {:try_start_11a .. :try_end_11e} :catchall_134

    :try_start_11e
    const-string v8, "inputLib"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v9, v3, v6}, Lh3/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J
    :try_end_126
    .catchall {:try_start_11e .. :try_end_126} :catchall_12d

    :try_start_126
    invoke-static {v7, v4}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_134

    :try_start_129
    invoke-static {v9, v4}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_12c
    .catchall {:try_start_129 .. :try_end_12c} :catchall_140

    goto :goto_af

    :catchall_12d
    move-exception p0

    :try_start_12e
    throw p0
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12f

    :catchall_12f
    move-exception p1

    :try_start_130
    invoke-static {v7, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_134
    .catchall {:try_start_130 .. :try_end_134} :catchall_134

    :catchall_134
    move-exception p0

    :try_start_135
    throw p0
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_136

    :catchall_136
    move-exception p1

    :try_start_137
    invoke-static {v9, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_13b
    .catchall {:try_start_137 .. :try_end_13b} :catchall_140

    :cond_13b
    :try_start_13b
    invoke-static {p2, v4}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_13e} :catch_155

    move v3, v2

    goto :goto_15f

    :catchall_140
    move-exception p0

    :try_start_141
    throw p0
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_142

    :catchall_142
    move-exception p1

    :try_start_143
    invoke-static {p2, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_147} :catch_155

    :catchall_147
    move-exception p0

    :try_start_148
    throw p0
    :try_end_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_149

    :catchall_149
    move-exception p1

    :try_start_14a
    invoke-static {p2, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_14e} :catch_155

    :catchall_14e
    move-exception p0

    :try_start_14f
    throw p0
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_150

    :catchall_150
    move-exception p1

    :try_start_151
    invoke-static {v5, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_155} :catch_155

    :catch_155
    move-exception p0

    const-string p1, "extract lib fail: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_15f
    return v3
.end method

.method public static synthetic saveApk$default(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/Boolean;ILjava/lang/Object;)Z
    .registers 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/nearme/instant/xcard/UtilsKt;->saveApk(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static final sourceFile(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getCardDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "card.apk"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final verifyAppSignature(Landroid/content/pm/PackageInfo;Landroid/content/Context;)Z
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_5d

    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p1}, Lorg/hapjs/card/common/utils/CardConfigHelper;->getPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const v2, 0x8000040

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string/jumbo v1, "pm.getPackageInfo(\n     …_SIGNATURES\n            )"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1d} :catch_45

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    goto :goto_28

    :cond_27
    move-object p1, v1

    :goto_28
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    goto :goto_32

    :cond_31
    move-object p0, v1

    :goto_32
    const/4 v2, 0x1

    if-eqz p1, :cond_44

    aget-object p1, p1, v0

    if-eqz p1, :cond_44

    if-eqz p0, :cond_3d

    aget-object v1, p0, v0

    :cond_3d
    invoke-virtual {p1, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v2, :cond_44

    move v0, v2

    :cond_44
    return v0

    :catch_45
    move-exception p0

    const-string/jumbo p1, "verifyAppSignature: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    return v0
.end method
