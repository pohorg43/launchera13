.class public final Lq3/e1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq3/f1;


# instance fields
.field public final a:Lq3/s1;


# direct methods
.method public constructor <init>(Lq3/s1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/e1;->a:Lq3/s1;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public e()Lq3/s1;
    .registers 1

    iget-object p0, p0, Lq3/e1;->a:Lq3/s1;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
