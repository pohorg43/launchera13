.class final Lcom/oplus/epona/ParcelableException;
.super Ljava/lang/RuntimeException;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "Epona->ParcelableException"


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static create(Lcom/oplus/epona/ExceptionInfo;)Lcom/oplus/epona/ParcelableException;
    .registers 8

    invoke-virtual {p0}, Lcom/oplus/epona/ExceptionInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/epona/ExceptionInfo;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3c

    new-instance v3, Lcom/oplus/epona/ParcelableException;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v3, v2}, Lcom/oplus/epona/ParcelableException;-><init>(Ljava/lang/Throwable;)V
    :try_end_2f
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_9 .. :try_end_2f} :catch_30

    return-object v3

    :catch_30
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Epona->ParcelableException"

    invoke-static {v3, v2, v1}, Lcom/oplus/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    new-instance v1, Lcom/oplus/epona/ParcelableException;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, ": "

    invoke-static {v0, v3, p0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/oplus/epona/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public maybeRethrow(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method
