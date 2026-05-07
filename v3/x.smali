.class public final Lv3/x;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    :try_start_0
    const-string v0, "d3.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_10

    :catchall_b
    move-exception v0

    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_10
    invoke-static {v0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_19

    :cond_17
    const-string v0, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    :goto_19
    check-cast v0, Ljava/lang/String;

    sput-object v0, Lv3/x;->a:Ljava/lang/String;

    :try_start_1d
    const-class v0, Lv3/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_24

    goto :goto_29

    :catchall_24
    move-exception v0

    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_29
    invoke-static {v0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_30

    goto :goto_32

    :cond_30
    const-string v0, "kotlinx.coroutines.internal.StackTraceRecoveryKt"

    :goto_32
    check-cast v0, Ljava/lang/String;

    sput-object v0, Lv3/x;->b:Ljava/lang/String;

    return-void
.end method
