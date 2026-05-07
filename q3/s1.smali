.class public final Lq3/s1;
.super Lv3/j;
.source ""

# interfaces
.implements Lq3/f1;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lv3/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public e()Lq3/s1;
    .registers 1

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-super {p0}, Lv3/l;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
