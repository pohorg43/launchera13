.class public Lcom/oplus/ext/core/ExtLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ext/core/ExtLoader$ExtBuilder;
    }
.end annotation


# static fields
.field private static final PRELOAD_REGISTRIES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ExtLoader"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/oplus/ext/core/ExtLoader;->PRELOAD_REGISTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 10

    const-string v0, "ExtLoader"

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lcom/oplus/ext/core/ExtLoader;->PRELOAD_REGISTRIES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_b
    if-ge v5, v3, :cond_34

    aget-object v6, v2, v5

    const/4 v7, 0x1

    :try_start_10
    invoke-static {v6, v7, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    const-string v8, "load registry:%s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v4

    invoke-static {v0, v8, v7}, Lcom/oplus/ext/core/ExtLoader;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_1d

    goto :goto_31

    :catch_1d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to init registry class:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_34
    invoke-static {p0}, Lcom/oplus/ext/registry/BaseExtRegistry;->init(Landroid/content/Context;)V

    invoke-static {p0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->init(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static varargs log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExtLoader"

    invoke-static {p2, p0, p1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public static type(Ljava/lang/Class;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/oplus/ext/core/ExtLoader$ExtBuilder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;-><init>(Lcom/oplus/ext/core/ExtLoader$1;)V

    invoke-virtual {v0, p0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->type(Ljava/lang/Class;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object p0

    return-object p0
.end method
