.class public final Ln0/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ln0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln0/a<",
        "[I>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public b(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, [I

    array-length p0, p1

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    const-string p0, "IntegerArrayPool"

    return-object p0
.end method

.method public newArray(I)Ljava/lang/Object;
    .registers 2

    new-array p0, p1, [I

    return-object p0
.end method
