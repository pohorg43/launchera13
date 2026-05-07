.class public Ln0/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ln0/k;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ln0/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln0/f$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ln0/f$a<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ln0/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln0/f$a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ln0/f;->a:Ln0/f$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln0/f;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ln0/k;)Ljava/lang/Object;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Ln0/f;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/f$a;

    if-nez v0, :cond_15

    new-instance v0, Ln0/f$a;

    invoke-direct {v0, p1}, Ln0/f$a;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Ln0/f;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_15
    invoke-interface {p1}, Ln0/k;->a()V

    :goto_18
    iget-object p1, v0, Ln0/f$a;->d:Ln0/f$a;

    iget-object v1, v0, Ln0/f$a;->c:Ln0/f$a;

    iput-object v1, p1, Ln0/f$a;->c:Ln0/f$a;

    iget-object v1, v0, Ln0/f$a;->c:Ln0/f$a;

    iput-object p1, v1, Ln0/f$a;->d:Ln0/f$a;

    iget-object p0, p0, Ln0/f;->a:Ln0/f$a;

    iput-object p0, v0, Ln0/f$a;->d:Ln0/f$a;

    iget-object p0, p0, Ln0/f$a;->c:Ln0/f$a;

    iput-object p0, v0, Ln0/f$a;->c:Ln0/f$a;

    iput-object v0, p0, Ln0/f$a;->d:Ln0/f$a;

    iget-object p0, v0, Ln0/f$a;->d:Ln0/f$a;

    iput-object v0, p0, Ln0/f$a;->c:Ln0/f$a;

    invoke-virtual {v0}, Ln0/f$a;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b(Ln0/k;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Ln0/f;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/f$a;

    if-nez v0, :cond_2d

    new-instance v0, Ln0/f$a;

    invoke-direct {v0, p1}, Ln0/f$a;-><init>(Ljava/lang/Object;)V

    iget-object v1, v0, Ln0/f$a;->d:Ln0/f$a;

    iget-object v2, v0, Ln0/f$a;->c:Ln0/f$a;

    iput-object v2, v1, Ln0/f$a;->c:Ln0/f$a;

    iget-object v2, v0, Ln0/f$a;->c:Ln0/f$a;

    iput-object v1, v2, Ln0/f$a;->d:Ln0/f$a;

    iget-object v1, p0, Ln0/f;->a:Ln0/f$a;

    iget-object v2, v1, Ln0/f$a;->d:Ln0/f$a;

    iput-object v2, v0, Ln0/f$a;->d:Ln0/f$a;

    iput-object v1, v0, Ln0/f$a;->c:Ln0/f$a;

    iput-object v0, v1, Ln0/f$a;->d:Ln0/f$a;

    iget-object v1, v0, Ln0/f$a;->d:Ln0/f$a;

    iput-object v0, v1, Ln0/f$a;->c:Ln0/f$a;

    iget-object p0, p0, Ln0/f;->b:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_2d
    invoke-interface {p1}, Ln0/k;->a()V

    :goto_30
    iget-object p0, v0, Ln0/f$a;->b:Ljava/util/List;

    if-nez p0, :cond_3b

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Ln0/f$a;->b:Ljava/util/List;

    :cond_3b
    iget-object p0, v0, Ln0/f$a;->b:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/lang/Object;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Ln0/f;->a:Ln0/f$a;

    iget-object v0, v0, Ln0/f$a;->d:Ln0/f$a;

    :goto_4
    iget-object v1, p0, Ln0/f;->a:Ln0/f$a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v0}, Ln0/f$a;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    return-object v1

    :cond_13
    iget-object v1, v0, Ln0/f$a;->d:Ln0/f$a;

    iget-object v2, v0, Ln0/f$a;->c:Ln0/f$a;

    iput-object v2, v1, Ln0/f$a;->c:Ln0/f$a;

    iget-object v2, v0, Ln0/f$a;->c:Ln0/f$a;

    iput-object v1, v2, Ln0/f$a;->d:Ln0/f$a;

    iget-object v1, p0, Ln0/f;->b:Ljava/util/Map;

    iget-object v2, v0, Ln0/f$a;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Ln0/f$a;->a:Ljava/lang/Object;

    check-cast v1, Ln0/k;

    invoke-interface {v1}, Ln0/k;->a()V

    iget-object v0, v0, Ln0/f$a;->d:Ln0/f$a;

    goto :goto_4

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupedLinkedMap( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ln0/f;->a:Ln0/f$a;

    iget-object v1, v1, Ln0/f$a;->c:Ln0/f$a;

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    iget-object v4, p0, Ln0/f;->a:Ln0/f$a;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    const/4 v3, 0x1

    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v1, Ln0/f$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v1, Ln0/f$a;->b:Ljava/util/List;

    if-eqz v4, :cond_2e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_2f

    :cond_2e
    move v4, v2

    :goto_2f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Ln0/f$a;->c:Ln0/f$a;

    goto :goto_d

    :cond_3b
    if-eqz v3, :cond_4a

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_4a
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
