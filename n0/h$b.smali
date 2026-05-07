.class public final Ln0/h$b;
.super Lk/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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

    new-instance v0, Ln0/h$a;

    invoke-direct {v0, p0}, Ln0/h$a;-><init>(Ln0/h$b;)V

    return-object v0
.end method

.method public g(ILjava/lang/Class;)Ln0/h$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ln0/h$a;"
        }
    .end annotation

    invoke-virtual {p0}, Lk/m;->b()Ln0/k;

    move-result-object p0

    check-cast p0, Ln0/h$a;

    iput p1, p0, Ln0/h$a;->b:I

    iput-object p2, p0, Ln0/h$a;->c:Ljava/lang/Class;

    return-object p0
.end method
