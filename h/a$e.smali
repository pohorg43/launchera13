.class public final Lh/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lh/a$d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lr/a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public b:Lr/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Lr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lr/a<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/a$e;->c:Lr/a;

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lh/a$e;->d:F

    iput-object p1, p0, Lh/a$e;->a:Ljava/util/List;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lh/a$e;->a(F)Lr/a;

    move-result-object p1

    iput-object p1, p0, Lh/a$e;->b:Lr/a;

    return-void
.end method


# virtual methods
.method public final a(F)Lr/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lr/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lh/a$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/a;

    invoke-virtual {v0}, Lr/a;->c()F

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_17

    return-object v0

    :cond_17
    iget-object v0, p0, Lh/a$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_1f
    if-lt v0, v2, :cond_38

    iget-object v1, p0, Lh/a$e;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr/a;

    iget-object v3, p0, Lh/a$e;->b:Lr/a;

    if-ne v3, v1, :cond_2e

    goto :goto_35

    :cond_2e
    invoke-virtual {v1, p1}, Lr/a;->a(F)Z

    move-result v3

    if-eqz v3, :cond_35

    return-object v1

    :cond_35
    :goto_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    :cond_38
    iget-object p0, p0, Lh/a$e;->a:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr/a;

    return-object p0
.end method

.method public getCurrentKeyframe()Lr/a;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr/a<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lh/a$e;->b:Lr/a;

    return-object p0
.end method

.method public getEndProgress()F
    .registers 2

    iget-object p0, p0, Lh/a$e;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr/a;

    invoke-virtual {p0}, Lr/a;->b()F

    move-result p0

    return p0
.end method

.method public getStartDelayProgress()F
    .registers 2

    iget-object p0, p0, Lh/a$e;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr/a;

    invoke-virtual {p0}, Lr/a;->c()F

    move-result p0

    return p0
.end method

.method public isCachedValueEnabled(F)Z
    .registers 4

    iget-object v0, p0, Lh/a$e;->c:Lr/a;

    iget-object v1, p0, Lh/a$e;->b:Lr/a;

    if-ne v0, v1, :cond_e

    iget v0, p0, Lh/a$e;->d:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    iput-object v1, p0, Lh/a$e;->c:Lr/a;

    iput p1, p0, Lh/a$e;->d:F

    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isValueChanged(F)Z
    .registers 4

    iget-object v0, p0, Lh/a$e;->b:Lr/a;

    invoke-virtual {v0, p1}, Lr/a;->a(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    iget-object p0, p0, Lh/a$e;->b:Lr/a;

    invoke-virtual {p0}, Lr/a;->d()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_11
    invoke-virtual {p0, p1}, Lh/a$e;->a(F)Lr/a;

    move-result-object p1

    iput-object p1, p0, Lh/a$e;->b:Lr/a;

    return v1
.end method
