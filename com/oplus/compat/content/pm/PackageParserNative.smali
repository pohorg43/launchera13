.class public Lcom/oplus/compat/content/pm/PackageParserNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/content/pm/PackageParserNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static sPackageParser:Landroid/content/pm/PackageParser;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parsePackage(Ljava/io/File;I)Ljava/lang/Object;
    .registers 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/oplus/compat/content/pm/PackageParserNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefConstructor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/utils/reflect/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser;

    sput-object v0, Lcom/oplus/compat/content/pm/PackageParserNative;->sPackageParser:Landroid/content/pm/PackageParser;

    invoke-static {}, Lcom/oplus/compat/content/pm/PackageParserNative$ReflectInfo;->access$200()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    sget-object v1, Lcom/oplus/compat/content/pm/PackageParserNative;->sPackageParser:Landroid/content/pm/PackageParser;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2a
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "Not supported before P"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parsePackage(Ljava/io/File;IZ)Ljava/lang/Object;
    .registers 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/oplus/compat/content/pm/PackageParserNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefConstructor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/utils/reflect/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser;

    sput-object v0, Lcom/oplus/compat/content/pm/PackageParserNative;->sPackageParser:Landroid/content/pm/PackageParser;

    invoke-static {}, Lcom/oplus/compat/content/pm/PackageParserNative$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    sget-object v1, Lcom/oplus/compat/content/pm/PackageParserNative;->sPackageParser:Landroid/content/pm/PackageParser;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_31
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "Not supported before P"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
