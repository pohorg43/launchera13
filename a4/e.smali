.class public La4/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Z

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La4/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/16 v2, 0x15

    invoke-static {p1, v1, v2}, La4/h;->j([BII)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, La4/e;->b:Ljava/util/List;

    const/16 v0, 0x1f8

    aget-byte p1, p1, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_19

    move v1, v0

    :cond_19
    iput-boolean v1, p0, La4/e;->a:Z

    return-void
.end method
