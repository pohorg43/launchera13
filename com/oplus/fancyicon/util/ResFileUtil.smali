.class public Lcom/oplus/fancyicon/util/ResFileUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResFileUtil"

.field private static isIconMeterial:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs getAvailablePath([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_15

    aget-object v2, p0, v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_12

    return-object v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIconZipFile(Landroid/content/Context;)Ljava/util/zip/ZipFile;
    .registers 5

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getUserId()I

    move-result v0

    invoke-static {v0}, Lcom/oplus/fancyicon/util/Utils;->getThemeFlag(I)J

    move-result-wide v0

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "custom_theme_path_setting"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "icons"

    if-eqz v0, :cond_2e

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CUSTOM_THEME_PATH:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_46

    :cond_2e
    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3b

    goto :goto_3f

    :cond_3b
    invoke-static {v2, v1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_46
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->isDefaultThemeIcon()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_71

    invoke-static {}, Lcom/oplus/fancyicon/util/ResFileUtil;->getIconsPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_71

    :cond_5c
    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->isDefaultThemeIcon()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-static {p0}, Lcom/oplus/fancyicon/util/Utils;->isPacMan(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6d

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getDefaultIconFileFromProduct()Ljava/lang/String;

    move-result-object p0

    goto :goto_71

    :cond_6d
    invoke-static {}, Lcom/oplus/fancyicon/util/ResFileUtil;->getIconsPath()Ljava/lang/String;

    move-result-object p0

    :cond_71
    :goto_71
    const-string v0, "icons-meterial"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7e

    sput-boolean v1, Lcom/oplus/fancyicon/util/ResFileUtil;->isIconMeterial:Z

    goto :goto_80

    :cond_7e
    sput-boolean v2, Lcom/oplus/fancyicon/util/ResFileUtil;->isIconMeterial:Z

    :goto_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIconZipFile: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ResFileUtil"

    invoke-static {v3, v0}, Lcom/oplus/fancyicon/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/String;

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/oplus/fancyicon/util/ResFileUtil;->getZipFileFromPath([Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object v0

    if-nez v0, :cond_b6

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getThirdPartyThemeZipIconsPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b6

    new-array p0, v1, [Ljava/lang/String;

    sget-object v0, Lcom/oplus/fancyicon/content/res/ThemeConstants;->CONFIG_ICONS_SYSTEM_PATH:Ljava/lang/String;

    aput-object v0, p0, v2

    invoke-static {p0}, Lcom/oplus/fancyicon/util/ResFileUtil;->getZipFileFromPath([Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object v0

    sput-boolean v2, Lcom/oplus/fancyicon/util/ResFileUtil;->isIconMeterial:Z

    :cond_b6
    return-object v0
.end method

.method public static getIconsPath()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->isDefaultThemeIcon()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getDefaultIconsFile()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-static {}, Lcom/oplus/fancyicon/util/Utils;->getThirdPartyThemeZipIconsPath()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public static varargs getZipFileFromPath([Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .registers 4

    const-string v0, "ResFileUtil"

    :try_start_2
    invoke-static {p0}, Lcom/oplus/fancyicon/util/ResFileUtil;->getAvailablePath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_37

    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_22

    return-object v1

    :catch_22
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception at getZipFile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isIconMeterialStyle()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/fancyicon/util/ResFileUtil;->isIconMeterial:Z

    return v0
.end method
