.class public Lcom/oplus/compat/content/pm/ResolveInfoNative;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolveInfoNative"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;
    .registers 3
    .param p0  # Landroid/content/pm/ResolveInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_6
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    const-string v0, "ResolveInfoNative"

    const-string v1, "no permission to access the blocked method"

    invoke-static {p0, v0, v1, p0}, Lcom/oplus/compat/app/e;->a(Ljava/lang/NoSuchMethodError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/NoSuchMethodError;)Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    move-result-object p0

    throw p0

    :cond_15
    :try_start_15
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0}, Lcom/oplus/inner/content/pm/ResolveInfoWrapper;->getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;

    move-result-object p0

    return-object p0

    :cond_20
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {p0}, Lcom/oplus/compat/content/pm/ResolveInfoNative;->getComponentInfoCompat(Landroid/content/pm/ResolveInfo;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ComponentInfo;

    return-object p0

    :cond_2d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isO_MR1()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    return-object p0

    :cond_38
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_3e
    .catchall {:try_start_15 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p0

    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0, p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getComponentInfoCompat(Landroid/content/pm/ResolveInfo;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
