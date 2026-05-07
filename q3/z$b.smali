.class public final Lq3/z$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/z;->a(Lb3/f;Lb3/f;Z)Lb3/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lb3/f;",
        "Lb3/f$a;",
        "Lb3/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lb3/f;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lb3/f;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/z$b;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p2, p0, Lq3/z$b;->b:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p1, Lb3/f;

    check-cast p2, Lb3/f$a;

    instance-of v0, p2, Lq3/y;

    if-nez v0, :cond_d

    invoke-interface {p1, p2}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p0

    goto :goto_4a

    :cond_d
    iget-object v0, p0, Lq3/z$b;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lb3/f;

    invoke-interface {p2}, Lb3/f$a;->getKey()Lb3/f$b;

    move-result-object v1

    invoke-interface {v0, v1}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v0

    if-nez v0, :cond_30

    iget-boolean p0, p0, Lq3/z$b;->b:Z

    if-eqz p0, :cond_28

    check-cast p2, Lq3/y;

    invoke-interface {p2}, Lq3/y;->p()Lq3/y;

    move-result-object p0

    goto :goto_2b

    :cond_28
    move-object p0, p2

    check-cast p0, Lq3/y;

    :goto_2b
    invoke-interface {p1, p0}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p0

    goto :goto_4a

    :cond_30
    iget-object p0, p0, Lq3/z$b;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lb3/f;

    invoke-interface {p2}, Lb3/f$a;->getKey()Lb3/f$b;

    move-result-object v2

    invoke-interface {v1, v2}, Lb3/f;->minusKey(Lb3/f$b;)Lb3/f;

    move-result-object v1

    iput-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lq3/y;

    invoke-interface {p2, v0}, Lq3/y;->u(Lb3/f$a;)Lb3/f;

    move-result-object p0

    invoke-interface {p1, p0}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p0

    :goto_4a
    return-object p0
.end method
