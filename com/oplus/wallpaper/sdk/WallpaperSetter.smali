.class public Lcom/oplus/wallpaper/sdk/WallpaperSetter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/wallpaper/sdk/WallpaperSetter$WallpaperType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final EXTENSION_FACTOR:F = 1.5f

.field private static final KEYGUARDWALLPAPER_BACKUP:Ljava/lang/String; = "keyguardwallpaper_backup.png"

.field private static final KEYGUARD_COLOR:Ljava/lang/String; = "KeyguardWallpaperTxtColor"

.field private static final KEYGUARD_PKG_NAME:Ljava/lang/String; = "com.android.keyguard"

.field private static final KEYGUARD_WALLPAPER:Ljava/lang/String; = "keyguardwallpaper.png"

.field private static final KEY_WALLPAPER_SET:Ljava/lang/String; = "current_wallpaper_name"

.field private static final SYSTEMUI_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "WS.WallpaperSetter"

.field private static final UNOFFICIAL_WALLPAPER:Ljava/lang/String; = "unofficial"

.field private static final WALLPAPER_DEFAULT:Ljava/lang/String; = "default_wallpaper"

.field private static final WALLPAPER_IGNORE:Ljava/lang/String; = "ignore_wallpaper"

.field private static final WALLPAPER_INDEX_DESKTOP:I = 0x0

.field private static final WALLPAPER_INDEX_KEYGUARD:I = 0x1

.field private static final WALLPAPER_SEPARATOR:Ljava/lang/String; = ";"

.field private static final WALLPAPER_TEMP_NAME_DESKTOP:Ljava/lang/String; = "wallpaper_desktop"

.field private static final WALLPAPER_TEMP_NAME_KEYGUARD:Ljava/lang/String; = "wallpaper_keyguard"

.field private static sWallpaperSetter:Lcom/oplus/wallpaper/sdk/WallpaperSetter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNeedRecycle:Z

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/oplus/wallpaper/sdk/LogUtils;->DEBUG:Z

    sput-boolean v0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mNeedRecycle:Z

    iput-object p1, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method

.method private backupWallpaperFile()Z
    .registers 8

    const-string v0, "backupWallpaperFile Exception"

    invoke-direct {p0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->getKeyguardManagerContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    goto :goto_f

    :cond_e
    move-object v2, v1

    :goto_f
    sget-boolean v3, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->DEBUG:Z

    const-string v4, "WS.WallpaperSetter"

    if-eqz v3, :cond_29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backupWallpaperFile file = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 v3, 0x0

    if-nez v2, :cond_2d

    goto :goto_83

    :cond_2d
    :try_start_2d
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "keyguardwallpaper.png"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_48} :catch_75
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_48} :catch_62
    .catchall {:try_start_2d .. :try_end_48} :catchall_5f

    :try_start_48
    const-string v2, "keyguardwallpaper_backup.png"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/oplus/wallpaper/sdk/Utils;->copyFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_51} :catch_76
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_51} :catch_63
    .catchall {:try_start_48 .. :try_end_51} :catchall_84

    if-eqz v1, :cond_56

    :try_start_53
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_56
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_59} :catch_5a

    goto :goto_5d

    :catch_5a
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    const/4 v3, 0x1

    goto :goto_83

    :catchall_5f
    move-exception p0

    move-object v5, v1

    goto :goto_85

    :catch_62
    move-object v5, v1

    :catch_63
    :try_start_63
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_84

    if-eqz v1, :cond_6b

    :try_start_68
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_6b
    if-eqz v5, :cond_83

    :goto_6d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_70} :catch_71

    goto :goto_83

    :catch_71
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    :catch_75
    move-object v5, v1

    :catch_76
    :try_start_76
    const-string p0, "backupWallpaperFile IOException"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_84

    if-eqz v1, :cond_80

    :try_start_7d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_71

    :cond_80
    if-eqz v5, :cond_83

    goto :goto_6d

    :cond_83
    :goto_83
    return v3

    :catchall_84
    move-exception p0

    :goto_85
    if-eqz v1, :cond_8a

    :try_start_87
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_8a
    if-eqz v5, :cond_93

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8f} :catch_90

    goto :goto_93

    :catch_90
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    :goto_93
    throw p0
.end method

.method private deleteWallpaperFile(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "deleteWallpaperFile Exception"

    invoke-direct {p0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->getKeyguardManagerContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    goto :goto_f

    :cond_e
    move-object v2, v1

    :goto_f
    sget-boolean v3, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->DEBUG:Z

    const-string v4, "WS.WallpaperSetter"

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteWallpaperFile file = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " f = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v3, 0x0

    if-nez v2, :cond_35

    goto :goto_58

    :cond_35
    :try_start_35
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_39} :catch_4c
    .catchall {:try_start_35 .. :try_end_39} :catchall_4a

    :try_start_39
    invoke-virtual {p0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_48
    .catchall {:try_start_39 .. :try_end_3c} :catchall_45

    :try_start_3c
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_43

    :catch_40
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_43
    const/4 v3, 0x1

    goto :goto_58

    :catchall_45
    move-exception p1

    move-object v1, p0

    goto :goto_59

    :catch_48
    move-object v1, p0

    goto :goto_4c

    :catchall_4a
    move-exception p1

    goto :goto_59

    :catch_4c
    :goto_4c
    :try_start_4c
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_4a

    if-eqz v1, :cond_58

    :try_start_51
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_58

    :catch_55
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    return v3

    :goto_59
    if-eqz v1, :cond_62

    :try_start_5b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_62

    :catch_5f
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    :goto_62
    throw p1
.end method

.method private getKeyguardManagerContext()Landroid/content/Context;
    .registers 2

    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    const-string v0, "com.android.systemui"

    invoke-static {p0, v0}, Lcom/oplus/wallpaper/sdk/Utils;->getRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getWallpaperSetter(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/WallpaperSetter;
    .registers 2

    sget-object v0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->sWallpaperSetter:Lcom/oplus/wallpaper/sdk/WallpaperSetter;

    if-nez v0, :cond_b

    new-instance v0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;

    invoke-direct {v0, p0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->sWallpaperSetter:Lcom/oplus/wallpaper/sdk/WallpaperSetter;

    :cond_b
    sget-object p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->sWallpaperSetter:Lcom/oplus/wallpaper/sdk/WallpaperSetter;

    return-object p0
.end method

.method private restoreNormalWallpaper()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festivel"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-boolean v1, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->DEBUG:Z

    if-eqz v1, :cond_18

    const-string v1, "restoreNormalWallpaper isFestvalDay = "

    const-string v2, "WS.WallpaperSetter"

    invoke-static {v1, v0, v2}, Landroidx/recyclerview/widget/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_18
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1e

    invoke-direct {p0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->restoreWallpaperFile()Z

    :cond_1e
    return-void
.end method

.method private restoreWallpaperFile()Z
    .registers 10

    const-string v0, "keyguardwallpaper_backup.png"

    const-string v1, "restoreWallpaperFile Exception"

    invoke-direct {p0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->getKeyguardManagerContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    goto :goto_11

    :cond_10
    move-object v4, v3

    :goto_11
    sget-boolean v5, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->DEBUG:Z

    const-string v6, "WS.WallpaperSetter"

    if-eqz v5, :cond_2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreWallpaper file = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 v5, 0x0

    if-nez v4, :cond_2f

    goto :goto_91

    :cond_2f
    :try_start_2f
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_48} :catch_83
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_48} :catch_70
    .catchall {:try_start_2f .. :try_end_48} :catchall_6d

    :try_start_48
    const-string v4, "keyguardwallpaper.png"

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/oplus/wallpaper/sdk/Utils;->copyFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    invoke-direct {p0, v0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->deleteWallpaperFile(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "festivel"

    invoke-static {p0, v0, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_5f} :catch_84
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5f} :catch_71
    .catchall {:try_start_48 .. :try_end_5f} :catchall_92

    if-eqz v3, :cond_64

    :try_start_61
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_64
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_67} :catch_68

    goto :goto_6b

    :catch_68
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6b
    const/4 v5, 0x1

    goto :goto_91

    :catchall_6d
    move-exception p0

    move-object v7, v3

    goto :goto_93

    :catch_70
    move-object v7, v3

    :catch_71
    :try_start_71
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_92

    if-eqz v3, :cond_79

    :try_start_76
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_79
    if-eqz v7, :cond_91

    :goto_7b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7e} :catch_7f

    goto :goto_91

    :catch_7f
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    :catch_83
    move-object v7, v3

    :catch_84
    :try_start_84
    const-string p0, "restoreWallpaperFile IOException"

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_84 .. :try_end_89} :catchall_92

    if-eqz v3, :cond_8e

    :try_start_8b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_7f

    :cond_8e
    if-eqz v7, :cond_91

    goto :goto_7b

    :cond_91
    :goto_91
    return v5

    :catchall_92
    move-exception p0

    :goto_93
    if-eqz v3, :cond_98

    :try_start_95
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_98
    if-eqz v7, :cond_a1

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9d} :catch_9e

    goto :goto_a1

    :catch_9e
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    :goto_a1
    throw p0
.end method

.method private saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .registers 11

    invoke-static {p1, p2, p4}, Lcom/oplus/wallpaper/sdk/Utils;->generateCroppedBmp(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "WS.WallpaperSetter"

    if-nez p0, :cond_e

    const-string p0, "saveBitmap. croppedBmp is null."

    invoke-static {v0, p0}, Lcom/oplus/wallpaper/sdk/LogUtils;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const-string v1, "saveBitmap. croppedBmp.getAllocationByteCount = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , croppedBmp = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/oplus/wallpaper/sdk/TraceUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/TraceUtil;

    move-result-object v2

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, v0, p4}, Lcom/oplus/wallpaper/sdk/TraceUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p3}, Lcom/oplus/wallpaper/sdk/ImageProcess;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveBitmap. result = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/oplus/wallpaper/sdk/TraceUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/TraceUtil;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/oplus/wallpaper/sdk/TraceUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p0, p2, :cond_87

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_87
    return-void
.end method

.method private setKeyguardWallpaperBmp(Landroid/graphics/Bitmap;ZLjava/lang/String;Z)V
    .registers 5

    if-nez p1, :cond_a

    const-string p0, "WS.WallpaperSetter"

    const-string p1, "setKeyguardWallpaperBmp bitmap = null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iget-object p2, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    const/4 p3, 0x2

    invoke-direct {p0, p2, p1, p3}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->setWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private setWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v3, p3

    const-string v4, "setWallpaper. inputStream.available = "

    const-string v5, " , bmp = "

    const-string v6, " , which = "

    const-string v7, "setWallpaper. bmp.getAllocationByteCount = "

    const-string v8, "setWallpaper e = "

    const-string v9, "setWallpaper ex = "

    const/4 v10, 0x2

    const/4 v11, 0x1

    const-string v12, "WS.WallpaperSetter"

    if-eq v3, v11, :cond_31

    if-eq v3, v10, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWallpaper,which wallpaper is not available. which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    new-instance v13, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    const-string v15, "wallpaper_setter_cache"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_45

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    :cond_45
    new-instance v14, Ljava/io/File;

    const-string v15, "wallpaper_keyguard"

    invoke-direct {v14, v13, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v15, 0x0

    :try_start_4e
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_57

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    :cond_57
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/oplus/wallpaper/sdk/TraceUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/TraceUtil;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v12, v5}, Lcom/oplus/wallpaper/sdk/TraceUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v0, v5, v3}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_b2} :catch_121
    .catchall {:try_start_4e .. :try_end_b2} :catchall_11e

    :try_start_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/oplus/wallpaper/sdk/TraceUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/TraceUtil;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v12, v4}, Lcom/oplus/wallpaper/sdk/TraceUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, v5, v15, v13, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_e7} :catch_11b
    .catchall {:try_start_b2 .. :try_end_e7} :catchall_117

    :try_start_e7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_eb

    goto :goto_115

    :catch_eb
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/oplus/wallpaper/sdk/TraceUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/TraceUtil;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v12, v4}, Lcom/oplus/wallpaper/sdk/TraceUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_115
    const/4 v11, 0x1

    goto :goto_17b

    :catchall_117
    move-exception v0

    move-object v1, v0

    move-object v15, v5

    goto :goto_186

    :catch_11b
    move-exception v0

    move-object v15, v5

    goto :goto_122

    :catchall_11e
    move-exception v0

    move-object v1, v0

    goto :goto_186

    :catch_121
    move-exception v0

    :goto_122
    :try_start_122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/oplus/wallpaper/sdk/TraceUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/TraceUtil;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v12, v0}, Lcom/oplus/wallpaper/sdk/TraceUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14a
    .catchall {:try_start_122 .. :try_end_14a} :catchall_11e

    if-eqz v15, :cond_17a

    :try_start_14c
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_150

    goto :goto_17a

    :catch_150
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/oplus/wallpaper/sdk/TraceUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/TraceUtil;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v12, v4}, Lcom/oplus/wallpaper/sdk/TraceUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17a
    :goto_17a
    move v11, v13

    :goto_17b
    if-eqz v11, :cond_185

    const/4 v4, 0x2

    if-ne v3, v4, :cond_185

    const-string v0, "unofficial"

    invoke-direct {v1, v2, v0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->updateWallpaperName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_185
    return-void

    :goto_186
    if-eqz v15, :cond_1b6

    :try_start_188
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_18b} :catch_18c

    goto :goto_1b6

    :catch_18c
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/oplus/wallpaper/sdk/TraceUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/TraceUtil;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Lcom/oplus/wallpaper/sdk/TraceUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b6
    :goto_1b6
    throw v1
.end method

.method private updateWallpaperName(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-boolean p1, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->DEBUG:Z

    if-eqz p1, :cond_b

    const-string p1, "updateWallpaperName wallpaperName = "

    const-string v0, "WS.WallpaperSetter"

    invoke-static {p1, p2, v0}, Landroid/support/v4/media/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz p2, :cond_18

    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "currentwallpaper"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_18
    return-void
.end method


# virtual methods
.method public getKeyguardColorableTextPositionRect()Landroid/graphics/Rect;
    .registers 5

    invoke-direct {p0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->getKeyguardManagerContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "clock_view_margin_top"

    invoke-static {p0, v0}, Lcom/oplus/wallpaper/sdk/Utils;->getRemoteDimensionRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "clock_view_margin_left"

    invoke-static {p0, v1}, Lcom/oplus/wallpaper/sdk/Utils;->getRemoteDimensionRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "clock_time_height_limit"

    invoke-static {p0, v2}, Lcom/oplus/wallpaper/sdk/Utils;->getRemoteDimensionRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000  # 1.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const-string v3, "clock_time_width_limit"

    invoke-static {p0, v3}, Lcom/oplus/wallpaper/sdk/Utils;->getRemoteDimensionRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr p0, v1

    add-int/2addr v2, v0

    invoke-direct {v3, v1, v0, p0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public setDeskWallpaper(I)V
    .registers 5

    const-string v0, "WS.WallpaperSetter"

    :try_start_2
    iget-object v1, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeskWallpaper. resid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1f} :catch_20

    goto :goto_25

    :catch_20
    const-string p0, "setDeskWallpaper IOException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_25
    return-void
.end method

.method public setDeskWallpaper(Landroid/graphics/Bitmap;)V
    .registers 5

    const-string v0, "WS.WallpaperSetter"

    :try_start_2
    iget-object v1, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeskWallpaper. bitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1f} :catch_20

    goto :goto_25

    :catch_20
    const-string p0, "setDeskWallpaper IOException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_25
    return-void
.end method

.method public setDesktopWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 14

    const-string v0, "setDesktopWallpaper. inputStream.available = "

    const-string v1, " , bmp = "

    const-string v2, "setDesktopWallpaper. bmp.getAllocationByteCount = "

    const-string v3, "setDesktopWallpaper e = "

    const-string v4, "setDesktopWallpaper ex = "

    const-string v5, "WS.WallpaperSetter"

    new-instance v6, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "wallpaper_setter_cache"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_20

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_20
    new-instance v7, Ljava/io/File;

    const-string v8, "wallpaper_desktop"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_28
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_31

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_31
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " createNewFile result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/oplus/wallpaper/sdk/TraceUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/TraceUtil;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v5, v1}, Lcom/oplus/wallpaper/sdk/TraceUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    new-instance p2, Ljava/io/FileInputStream;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_8a} :catch_ea
    .catchall {:try_start_28 .. :try_end_8a} :catchall_e8

    :try_start_8a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/FileInputStream;->available()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/oplus/wallpaper/sdk/TraceUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/TraceUtil;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/oplus/wallpaper/sdk/TraceUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v6, v0, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_c0} :catch_e5
    .catchall {:try_start_8a .. :try_end_c0} :catchall_e2

    :try_start_c0
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c5

    goto/16 :goto_142

    :catch_c5
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/oplus/wallpaper/sdk/TraceUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/TraceUtil;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_135

    :catchall_e2
    move-exception p0

    move-object v6, p2

    goto :goto_143

    :catch_e5
    move-exception p0

    move-object v6, p2

    goto :goto_eb

    :catchall_e8
    move-exception p0

    goto :goto_143

    :catch_ea
    move-exception p0

    :goto_eb
    :try_start_eb
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/oplus/wallpaper/sdk/TraceUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/TraceUtil;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v5, p0}, Lcom/oplus/wallpaper/sdk/TraceUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_113
    .catchall {:try_start_eb .. :try_end_113} :catchall_e8

    if-eqz v6, :cond_142

    :try_start_115
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_118} :catch_119

    goto :goto_142

    :catch_119
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/oplus/wallpaper/sdk/TraceUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/TraceUtil;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_135
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v5, p0}, Lcom/oplus/wallpaper/sdk/TraceUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_142
    :goto_142
    return-void

    :goto_143
    if-eqz v6, :cond_172

    :try_start_145
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_149

    goto :goto_172

    :catch_149
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/oplus/wallpaper/sdk/TraceUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/wallpaper/sdk/TraceUtil;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Lcom/oplus/wallpaper/sdk/TraceUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_172
    :goto_172
    throw p0
.end method

.method public setKeyguardTextColor(I)V
    .registers 4

    const-string v0, "setKeyguardTextColor, color = "

    const-string v1, "WS.WallpaperSetter"

    invoke-static {v0, p1, v1}, Landroidx/recyclerview/widget/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "KeyguardWallpaperTxtColor"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setKeyguardWallpaper(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mNeedRecycle:Z

    const-string v0, "unofficial"

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->setKeyguardWallpaperBmp(Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mNeedRecycle:Z

    return-void
.end method

.method public setKeyguardWallpaper(IZLjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mNeedRecycle:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->setKeyguardWallpaperBmp(Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mNeedRecycle:Z

    return-void
.end method

.method public setKeyguardWallpaper(Landroid/content/Context;IZ)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mNeedRecycle:Z

    iget-object v0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "currentwallpaper"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->setKeyguardWallpaper(Landroid/content/Context;ZILjava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mNeedRecycle:Z

    return-void
.end method

.method public setKeyguardWallpaper(Landroid/content/Context;ZILjava/lang/String;)V
    .registers 15

    const-string v0, "setKeyguardWallpaper Exception"

    const-string v1, "WS.WallpaperSetter"

    if-nez p1, :cond_c

    const-string p0, "setKeyguardWallpaper wallpaperResContext = null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->getKeyguardManagerContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "festivel"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sget-boolean v7, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->DEBUG:Z

    if-eqz v7, :cond_4a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setKeyguardWallpaper isFestivalDay = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setKeyguardWallpaper isFestival = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    if-nez v4, :cond_52

    if-eqz p2, :cond_59

    invoke-direct {p0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->backupWallpaperFile()Z

    goto :goto_59

    :cond_52
    if-nez p2, :cond_59

    const-string v4, "keyguardwallpaper_backup.png"

    invoke-direct {p0, v4}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->deleteWallpaperFile(Ljava/lang/String;)Z

    :cond_59
    :goto_59
    iget-object v4, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p2, 0x0

    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    goto :goto_6b

    :cond_6a
    move-object v4, p2

    :goto_6b
    if-eqz v7, :cond_81

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setKeyguardWallpaper file = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    if-nez v4, :cond_84

    goto :goto_d9

    :cond_84
    :try_start_84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8c} :catch_a9
    .catchall {:try_start_84 .. :try_end_8c} :catchall_a6

    :try_start_8c
    const-string p3, "keyguardwallpaper.png"

    invoke-virtual {v3, p3, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/wallpaper/sdk/Utils;->copyFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_95} :catch_aa
    .catchall {:try_start_8c .. :try_end_95} :catchall_a4

    if-eqz p2, :cond_9a

    :try_start_97
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_9a
    if-eqz p1, :cond_bc

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9f} :catch_a0

    goto :goto_bc

    :catch_a0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    :catchall_a4
    move-exception p0

    goto :goto_da

    :catchall_a6
    move-exception p0

    move-object p1, p2

    goto :goto_da

    :catch_a9
    move-object p1, p2

    :catch_aa
    :try_start_aa
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_a4

    if-eqz p2, :cond_b2

    :try_start_af
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_b2
    if-eqz p1, :cond_bb

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b7} :catch_b8

    goto :goto_bb

    :catch_b8
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    :goto_bb
    move v2, v6

    :cond_bc
    :goto_bc
    sget-boolean p1, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->DEBUG:Z

    if-eqz p1, :cond_d4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setKeyguardWallpaper isSucess  = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    if-eqz v2, :cond_d9

    invoke-direct {p0, v3, p4}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->updateWallpaperName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_d9
    :goto_d9
    return-void

    :goto_da
    if-eqz p2, :cond_df

    :try_start_dc
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_df
    if-eqz p1, :cond_e8

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e4} :catch_e5

    goto :goto_e8

    :catch_e5
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e8
    :goto_e8
    throw p0
.end method

.method public setKeyguardWallpaper(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string v0, "setKeyguardWallpaper Exception"

    const-string v1, "WS.WallpaperSetter"

    if-nez p1, :cond_c

    const-string p0, "setKeyguardWallpaper wallpaperResContext = null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 p1, 0x1

    invoke-direct {p0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->getKeyguardManagerContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "festivel"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sget-boolean v6, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->DEBUG:Z

    if-eqz v6, :cond_4a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setKeyguardWallpaper isFestivalDay = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setKeyguardWallpaper isFestival = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    if-nez v3, :cond_52

    if-eqz p2, :cond_59

    invoke-direct {p0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->backupWallpaperFile()Z

    goto :goto_59

    :cond_52
    if-nez p2, :cond_59

    const-string v3, "keyguardwallpaper_backup.png"

    invoke-direct {p0, v3}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->deleteWallpaperFile(Ljava/lang/String;)Z

    :cond_59
    :goto_59
    iget-object v3, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p2, 0x0

    if-eqz v2, :cond_6a

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    goto :goto_6b

    :cond_6a
    move-object v3, p2

    :goto_6b
    if-eqz v6, :cond_81

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setKeyguardWallpaper file = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    if-nez v3, :cond_84

    goto :goto_d4

    :cond_84
    :try_start_84
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_89} :catch_a4
    .catchall {:try_start_84 .. :try_end_89} :catchall_a1

    :try_start_89
    const-string p3, "keyguardwallpaper.png"

    invoke-virtual {v2, p3, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/oplus/wallpaper/sdk/Utils;->copyFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_92} :catch_a5
    .catchall {:try_start_89 .. :try_end_92} :catchall_9f

    if-eqz p2, :cond_97

    :try_start_94
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_97
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9a} :catch_9b

    goto :goto_b7

    :catch_9b
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    :catchall_9f
    move-exception p0

    goto :goto_d5

    :catchall_a1
    move-exception p0

    move-object v3, p2

    goto :goto_d5

    :catch_a4
    move-object v3, p2

    :catch_a5
    :try_start_a5
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_9f

    if-eqz p2, :cond_ad

    :try_start_aa
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_ad
    if-eqz v3, :cond_b6

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b2} :catch_b3

    goto :goto_b6

    :catch_b3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b6
    :goto_b6
    move p1, v5

    :goto_b7
    sget-boolean p2, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->DEBUG:Z

    if-eqz p2, :cond_cf

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setKeyguardWallpaper isSucess  = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cf
    if-eqz p1, :cond_d4

    invoke-direct {p0, v2, p4}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->updateWallpaperName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_d4
    :goto_d4
    return-void

    :goto_d5
    if-eqz p2, :cond_da

    :try_start_d7
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_da
    if-eqz v3, :cond_e3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_df} :catch_e0

    goto :goto_e3

    :catch_e0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e3
    :goto_e3
    throw p0
.end method

.method public setKeyguardWallpaper(Landroid/graphics/Bitmap;Z)V
    .registers 4

    const-string v0, "unofficial"

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->setKeyguardWallpaperBmp(Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    return-void
.end method

.method public setKeyguardWallpaper(Landroid/graphics/Bitmap;ZZ)V
    .registers 5

    const-string v0, "unofficial"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->setKeyguardWallpaperBmp(Landroid/graphics/Bitmap;ZLjava/lang/String;Z)V

    return-void
.end method

.method public setKeyguardWallpaperBmp(Landroid/graphics/Bitmap;ZLjava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->setKeyguardWallpaperBmp(Landroid/graphics/Bitmap;ZLjava/lang/String;Z)V

    return-void
.end method

.method public setKeyguardWallpaperRes(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mNeedRecycle:Z

    const-string v0, "unofficial"

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->setKeyguardWallpaperBmp(Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mNeedRecycle:Z

    return-void
.end method

.method public setWallpaperName(Lcom/oplus/wallpaper/sdk/WallpaperSetter$WallpaperType;Ljava/lang/String;)V
    .registers 11

    sget-boolean v0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->DEBUG:Z

    const-string v1, "WS.WallpaperSetter"

    if-eqz v0, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWallpaperName. wallpaperType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , wallpaperName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "ignore_wallpaper"

    if-eqz v2, :cond_30

    const-string p2, "setWallpaperName. wallpaperName is empty!"

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    :cond_30
    const-string v2, ";"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3e

    const-string p2, "setWallpaperName. wallpaperName contains ;!"

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    :cond_3e
    iget-object p0, p0, Lcom/oplus/wallpaper/sdk/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "current_wallpaper_name"

    invoke-static {p0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_51

    const-string v6, "setWallpaperName. currentSettingString = "

    invoke-static {v6, v5, v1}, Landroid/support/v4/media/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    const-string v6, "default_wallpaper"

    if-nez v5, :cond_57

    move-object v3, v6

    goto :goto_69

    :cond_57
    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_69

    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_62

    goto :goto_69

    :cond_62
    const/4 v3, 0x0

    aget-object v3, v5, v3

    const/4 v6, 0x1

    aget-object v5, v5, v6

    goto :goto_6a

    :cond_69
    :goto_69
    move-object v5, v3

    :goto_6a
    sget-object v6, Lcom/oplus/wallpaper/sdk/WallpaperSetter$WallpaperType;->DESKTOP:Lcom/oplus/wallpaper/sdk/WallpaperSetter$WallpaperType;

    if-ne p1, v6, :cond_6f

    goto :goto_77

    :cond_6f
    sget-object v5, Lcom/oplus/wallpaper/sdk/WallpaperSetter$WallpaperType;->KEYGUARD:Lcom/oplus/wallpaper/sdk/WallpaperSetter$WallpaperType;

    if-ne p1, v5, :cond_76

    move-object v5, p2

    move-object p2, v3

    goto :goto_77

    :cond_76
    move-object v5, p2

    :goto_77
    if-eqz v0, :cond_95

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setWallpaperName. newDesktopWallpaper = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , newKeyguardWallpaper = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v4, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
