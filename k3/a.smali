.class public abstract Lk3/a;
.super Lk3/c;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lk3/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 1

    invoke-virtual {p0}, Lk3/a;->b()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    return p0
.end method

.method public abstract b()Ljava/util/Random;
.end method
