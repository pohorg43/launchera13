.class public Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static CLASS:Ljava/lang/Class;

.field private static appendLibAssetForMainAssetPathMethod:Ljava/lang/reflect/Method;

.field private static appendLibAssetsForMainAssetPathMethod:Ljava/lang/reflect/Method;

.field private static getInstanceMethod:Ljava/lang/reflect/Method;

.field private static getResourcesMethod:Ljava/lang/reflect/Method;

.field private static resourceReferencesField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendLibAssetForMainAssetPath(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    sget-object v1, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->CLASS:Ljava/lang/Class;

    if-nez v1, :cond_e

    const-string v1, "android.app.ResourcesManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->CLASS:Ljava/lang/Class;

    :cond_e
    sget-object v1, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->appendLibAssetsForMainAssetPathMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_37

    :try_start_16
    sget-object v1, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->CLASS:Ljava/lang/Class;

    const-string v6, "appendLibAssetsForMainAssetPath"

    new-array v7, v2, [Ljava/lang/Class;

    aput-object v0, v7, v5

    aput-object v0, v7, v4

    const-class v8, [Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->appendLibAssetsForMainAssetPathMethod:Ljava/lang/reflect/Method;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2a} :catch_2b

    goto :goto_37

    :catch_2b
    move-exception v1

    const-string v6, "appendLibAssetsForMainAssetPathMethod not found "

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-static {v1, v6, v7}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_37
    :goto_37
    sget-object v1, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->appendLibAssetsForMainAssetPathMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_4b

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v5

    aput-object p2, v0, v4

    new-array p1, v4, [Ljava/lang/String;

    aput-object p3, p1, v5

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4b
    sget-object p1, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->appendLibAssetForMainAssetPathMethod:Ljava/lang/reflect/Method;

    if-nez p1, :cond_5f

    sget-object p1, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->CLASS:Ljava/lang/Class;

    new-array v1, v3, [Ljava/lang/Class;

    aput-object v0, v1, v5

    aput-object v0, v1, v4

    const-string v0, "appendLibAssetForMainAssetPath"

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->appendLibAssetForMainAssetPathMethod:Ljava/lang/reflect/Method;

    :cond_5f
    sget-object p1, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->appendLibAssetForMainAssetPathMethod:Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v5

    aput-object p3, v0, v4

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->CLASS:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "android.app.ResourcesManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->CLASS:Ljava/lang/Class;

    :cond_c
    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->getInstanceMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->CLASS:Ljava/lang/Class;

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getInstance"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->getInstanceMethod:Ljava/lang/reflect/Method;

    :cond_1d
    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->getInstanceMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getResourceReferences(Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->CLASS:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "android.app.ResourcesManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->CLASS:Ljava/lang/Class;

    :cond_c
    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->resourceReferencesField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1e

    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->CLASS:Ljava/lang/Class;

    const-string v1, "mResourceReferences"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->resourceReferencesField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_1e
    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->resourceReferencesField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getResources(Ljava/lang/Object;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-class v0, [Ljava/lang/String;

    sget-object v1, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->CLASS:Ljava/lang/Class;

    if-nez v1, :cond_e

    const-string v1, "android.app.ResourcesManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->CLASS:Ljava/lang/Class;

    :cond_e
    sget-object v1, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->getResourcesMethod:Ljava/lang/reflect/Method;

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0xa

    if-nez v1, :cond_4e

    sget-object v1, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->CLASS:Ljava/lang/Class;

    new-array v13, v12, [Ljava/lang/Class;

    const-class v14, Landroid/os/IBinder;

    aput-object v14, v13, v11

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v10

    aput-object v0, v13, v9

    aput-object v0, v13, v8

    aput-object v0, v13, v7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v13, v6

    const-class v0, Landroid/content/res/Configuration;

    aput-object v0, v13, v5

    const-class v0, Landroid/content/res/CompatibilityInfo;

    aput-object v0, v13, v4

    const-class v0, Ljava/lang/ClassLoader;

    aput-object v0, v13, v3

    const-class v0, Ljava/util/List;

    aput-object v0, v13, v2

    const-string v0, "getResources"

    invoke-virtual {v1, v0, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->getResourcesMethod:Ljava/lang/reflect/Method;

    :cond_4e
    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/ResourcesManagerClass;->getResourcesMethod:Ljava/lang/reflect/Method;

    new-array v1, v12, [Ljava/lang/Object;

    aput-object p1, v1, v11

    aput-object p2, v1, v10

    aput-object p3, v1, v9

    aput-object p4, v1, v8

    aput-object p5, v1, v7

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    aput-object p7, v1, v5

    aput-object p8, v1, v4

    aput-object p9, v1, v3

    const/4 v3, 0x0

    aput-object v3, v1, v2

    move-object v2, p0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
