.class public final Li3/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "AutoCloseableKt"
.end annotation


# direct methods
.method public static final a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    .registers 2

    if-nez p1, :cond_6

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_e

    :cond_6
    :try_start_6
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    goto :goto_e

    :catchall_a
    move-exception p0

    invoke-static {p1, p0}, Ll0/b;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_e
    return-void
.end method
