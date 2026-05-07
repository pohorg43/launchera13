.class public Li1/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Li1/j;->h()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li1/l;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Li1/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_28

    iget p0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    goto :goto_29

    :catch_12
    move-exception v1

    instance-of v1, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v1, :cond_28

    :try_start_17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Li1/j;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_28

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_27} :catch_28

    goto :goto_29

    :catch_28
    :cond_28
    move p0, v0

    :goto_29
    if-nez p0, :cond_2c

    return v0

    :cond_2c
    if-lt p0, p1, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    sget-object v0, Li1/l;->a:Ljava/lang/String;

    const/4 v1, 0x1

    const/16 v2, 0x2000

    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_12

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :catch_12
    :cond_12
    move v0, v3

    :goto_13
    if-eqz v0, :cond_18

    sget-object p0, Li1/l;->a:Ljava/lang/String;

    return-object p0

    :cond_18
    invoke-static {}, Li1/j;->d()Ljava/lang/String;

    move-result-object v0

    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_27

    if-eqz p0, :cond_27

    goto :goto_28

    :catch_27
    :cond_27
    move v1, v3

    :goto_28
    if-eqz v1, :cond_2f

    invoke-static {}, Li1/j;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method
