.class public Lorg/hapjs/card/common/utils/CardClassLoader;
.super Ldalvik/system/DexClassLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CardClassLoader"


# instance fields
.field private mPackageLoadRulesHelper:Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 7

    invoke-direct {p0, p3, p4, p5, p6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    new-instance p3, Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;

    invoke-direct {p3, p1, p2}, Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/hapjs/card/common/utils/CardClassLoader;->mPackageLoadRulesHelper:Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;

    return-void
.end method


# virtual methods
.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ldalvik/system/DexClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object v1, p0, Lorg/hapjs/card/common/utils/CardClassLoader;->mPackageLoadRulesHelper:Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;

    invoke-static {v1, p1}, Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;->access$000(Lorg/hapjs/card/common/utils/CardClassLoader$PackageLoadRulesHelper;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    :try_start_e
    invoke-virtual {p0, p1}, Ldalvik/system/DexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    if-nez v0, :cond_18

    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_18
    return-object v0
.end method
