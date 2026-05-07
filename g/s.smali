.class public Lg/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/c;
.implements Lh/a$b;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm/b;Ll/o;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/s;->b:Ljava/util/List;

    iget-boolean v0, p2, Ll/o;->f:Z

    iput-boolean v0, p0, Lg/s;->a:Z

    iget v0, p2, Ll/o;->b:I

    iput v0, p0, Lg/s;->c:I

    iget-object v0, p2, Ll/o;->c:Lk/b;

    invoke-virtual {v0}, Lk/b;->createAnimation()Lh/a;

    move-result-object v0

    iput-object v0, p0, Lg/s;->d:Lh/a;

    iget-object v1, p2, Ll/o;->d:Lk/b;

    invoke-virtual {v1}, Lk/b;->createAnimation()Lh/a;

    move-result-object v1

    iput-object v1, p0, Lg/s;->e:Lh/a;

    iget-object p2, p2, Ll/o;->e:Lk/b;

    invoke-virtual {p2}, Lk/b;->createAnimation()Lh/a;

    move-result-object p2

    iput-object p2, p0, Lg/s;->f:Lh/a;

    invoke-virtual {p1, v0}, Lm/b;->c(Lh/a;)V

    invoke-virtual {p1, v1}, Lm/b;->c(Lh/a;)V

    invoke-virtual {p1, p2}, Lm/b;->c(Lh/a;)V

    iget-object p1, v0, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v1, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p2, Lh/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onValueChanged()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lg/s;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lg/s;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh/a$b;

    invoke-interface {v1}, Lh/a$b;->onValueChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/c;",
            ">;",
            "Ljava/util/List<",
            "Lg/c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
