.class public Lcom/oplus/epona/internal/AppFinder;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final META_DATA_KEY:Ljava/lang/String; = "epona_components"

.field private static final META_PACKAGE_KEY:Ljava/lang/String; = "epona_packages"

.field private static final SEPARATOR:Ljava/lang/String; = "\\|"

.field private static final TAG:Ljava/lang/String; = "Epona->AppFinder"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findApplicationInfo(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)Landroid/content/pm/ApplicationInfo;
    .registers 6

    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v0, "epona_components"

    invoke-direct {p0, p2, v0}, Lcom/oplus/epona/internal/AppFinder;->splitMetaData(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1c

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-object p2

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAuthority(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p0, ".oplus.epona"

    invoke-static {p1, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPackages(Landroid/content/Context;)[Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_15

    const-string v0, "epona_packages"

    invoke-direct {p0, p1, v0}, Lcom/oplus/epona/internal/AppFinder;->splitMetaData(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_15
    const/4 p0, 0x0

    new-array p1, p0, [Ljava/lang/Object;

    const-string v0, "Epona->AppFinder"

    const-string v1, "not find application info"

    invoke-static {v0, v1, p1}, Lcom/oplus/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private splitMetaData(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p1, :cond_8

    return-object p0

    :cond_8
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    return-object p0

    :cond_f
    const-string p0, "\\|"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public findApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 9

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-direct {p0, v0}, Lcom/oplus/epona/internal/AppFinder;->getPackages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_2a

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/oplus/epona/internal/AppFinder;->getAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-direct {p0, p1, v4}, Lcom/oplus/epona/internal/AppFinder;->findApplicationInfo(Ljava/lang/String;Landroid/content/pm/ProviderInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_27

    return-object v4

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method
