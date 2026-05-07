.class public Lorg/hapjs/card/sdk/utils/reflect/AssetManagerClass;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addAssetPathMethod:Ljava/lang/reflect/Method;

.field private static ensureStringBlocks:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/AssetManagerClass;->addAssetPathMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    const-class v0, Landroid/content/res/AssetManager;

    const-string v3, "addAssetPath"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/hapjs/card/sdk/utils/reflect/AssetManagerClass;->addAssetPathMethod:Ljava/lang/reflect/Method;

    :cond_16
    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/AssetManagerClass;->addAssetPathMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static ensureStringBlocks(Landroid/content/res/AssetManager;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/AssetManagerClass;->ensureStringBlocks:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    const-class v0, Landroid/content/res/AssetManager;

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "ensureStringBlocks"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/hapjs/card/sdk/utils/reflect/AssetManagerClass;->ensureStringBlocks:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_15
    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/AssetManagerClass;->ensureStringBlocks:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
