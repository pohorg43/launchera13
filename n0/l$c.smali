.class public Ln0/l$c;
.super Lk/m;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/m;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lk/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ln0/k;
    .registers 2

    new-instance v0, Ln0/l$b;

    invoke-direct {v0, p0}, Ln0/l$b;-><init>(Ln0/l$c;)V

    return-object v0
.end method

.method public g(ILandroid/graphics/Bitmap$Config;)Ln0/l$b;
    .registers 3

    invoke-virtual {p0}, Lk/m;->b()Ln0/k;

    move-result-object p0

    check-cast p0, Ln0/l$b;

    iput p1, p0, Ln0/l$b;->b:I

    iput-object p2, p0, Ln0/l$b;->c:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method
