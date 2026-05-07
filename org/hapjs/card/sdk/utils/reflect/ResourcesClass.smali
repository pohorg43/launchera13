.class public Lorg/hapjs/card/sdk/utils/reflect/ResourcesClass;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourcesClass"

.field private static mAssetsField:Ljava/lang/reflect/Field;

.field private static mResourceImplField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourcesImpl(Landroid/content/res/Resources;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesClass;->mResourceImplField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_12

    const-class v0, Landroid/content/res/Resources;

    const-string v1, "mResourcesImpl"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesClass;->mResourceImplField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_12
    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesClass;->mResourceImplField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getResourcesImplNoThrow(Landroid/content/res/Resources;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-static {p0}, Lorg/hapjs/card/sdk/utils/reflect/ResourcesClass;->getResourcesImpl(Landroid/content/res/Resources;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    const-string v0, "ResourcesClass"

    const-string v1, "failed to getResourcesImpl"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setAssets(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesClass;->mAssetsField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_12

    const-class v0, Landroid/content/res/Resources;

    const-string v1, "mAssets"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesClass;->mAssetsField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_12
    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesClass;->mAssetsField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static setResourcesImpl(Landroid/content/res/Resources;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesClass;->mResourceImplField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_12

    const-class v0, Landroid/content/res/Resources;

    const-string v1, "mResourcesImpl"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesClass;->mResourceImplField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_12
    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesClass;->mResourceImplField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
