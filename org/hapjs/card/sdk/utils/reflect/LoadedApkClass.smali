.class public Lorg/hapjs/card/sdk/utils/reflect/LoadedApkClass;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static splitResDirsField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSplitResDirs(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/LoadedApkClass;->splitResDirsField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mSplitResDirs"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/hapjs/card/sdk/utils/reflect/LoadedApkClass;->splitResDirsField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_14
    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/LoadedApkClass;->splitResDirsField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setSplitResDirs(Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/LoadedApkClass;->splitResDirsField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mSplitResDirs"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/hapjs/card/sdk/utils/reflect/LoadedApkClass;->splitResDirsField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_14
    sget-object v0, Lorg/hapjs/card/sdk/utils/reflect/LoadedApkClass;->splitResDirsField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
