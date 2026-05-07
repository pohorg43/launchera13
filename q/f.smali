.class public Lq/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/airbnb/lottie/m;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq/e;

    invoke-direct {v0}, Lq/e;-><init>()V

    sput-object v0, Lq/f;->a:Lcom/airbnb/lottie/m;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lq/f;->a:Lcom/airbnb/lottie/m;

    check-cast v0, Lq/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lq/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lq/f;->a:Lcom/airbnb/lottie/m;

    check-cast v0, Lq/e;

    invoke-virtual {v0, p0, p1}, Lq/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
