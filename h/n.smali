.class public Lh/n;
.super Lh/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lh/a<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field public final i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr/c;Ljava/lang/Object;)V
    .registers 4
    .param p2  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr/c<",
            "TA;>;TA;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lh/a;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lh/a;->e:Lr/c;

    iput-object p2, p0, Lh/n;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()F
    .registers 1

    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method public e()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    iget-object v0, p0, Lh/a;->e:Lr/c;

    iget-object v4, p0, Lh/n;->i:Ljava/lang/Object;

    iget v7, p0, Lh/a;->d:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v4

    move v5, v7

    move v6, v7

    invoke-virtual/range {v0 .. v7}, Lr/c;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public f(Lr/a;F)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr/a<",
            "TK;>;F)TA;"
        }
    .end annotation

    invoke-virtual {p0}, Lh/n;->e()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lh/a;->e:Lr/c;

    if-eqz v0, :cond_7

    invoke-super {p0}, Lh/a;->g()V

    :cond_7
    return-void
.end method
