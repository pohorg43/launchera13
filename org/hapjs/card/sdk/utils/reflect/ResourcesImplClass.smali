.class public Lorg/hapjs/card/sdk/utils/reflect/ResourcesImplClass;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static CLASS:Ljava/lang/Class;

.field private static getAssetsMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssets(Ljava/lang/Object;)Landroid/content/res/AssetManager;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesImplClass;->CLASS:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "android.content.res.ResourcesImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesImplClass;->CLASS:Ljava/lang/Class;

    :cond_c
    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesImplClass;->getAssetsMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesImplClass;->CLASS:Ljava/lang/Class;

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getAssets"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesImplClass;->getAssetsMethod:Ljava/lang/reflect/Method;

    :cond_1d
    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesImplClass;->getAssetsMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/AssetManager;

    return-object p0
.end method
