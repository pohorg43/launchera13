.class public Lv3/j;
.super Lv3/l;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lv3/l;-><init>()V

    return-void
.end method


# virtual methods
.method public o()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public p()Z
    .registers 2

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "head cannot be removed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
