.class public final Lu3/s;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Lb3/f$a;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu3/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/q<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu3/q;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/q<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lu3/s;->a:Lu3/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lb3/f$a;

    invoke-interface {p2}, Lb3/f$a;->getKey()Lb3/f$b;

    move-result-object v0

    iget-object p0, p0, Lu3/s;->a:Lu3/q;

    iget-object p0, p0, Lu3/q;->b:Lb3/f;

    invoke-interface {p0, v0}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object p0

    sget v1, Lq3/i1;->C:I

    sget-object v1, Lq3/i1$b;->a:Lq3/i1$b;

    if-eq v0, v1, :cond_26

    if-eq p2, p0, :cond_1f

    const/high16 p0, -0x80000000

    goto :goto_21

    :cond_1f
    add-int/lit8 p0, p1, 0x1

    :goto_21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_41

    :cond_26
    check-cast p0, Lq3/i1;

    check-cast p2, Lq3/i1;

    :goto_2a
    const/4 v0, 0x0

    if-nez p2, :cond_2f

    move-object p2, v0

    goto :goto_36

    :cond_2f
    if-ne p2, p0, :cond_32

    goto :goto_36

    :cond_32
    instance-of v1, p2, Lv3/w;

    if-nez v1, :cond_6a

    :goto_36
    if-ne p2, p0, :cond_42

    if-nez p0, :cond_3b

    goto :goto_3d

    :cond_3b
    add-int/lit8 p1, p1, 0x1

    :goto_3d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_41
    return-object p0

    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", expected child of "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6a
    check-cast p2, Lv3/w;

    invoke-virtual {p2}, Lq3/n1;->O()Lq3/p;

    move-result-object p2

    if-nez p2, :cond_74

    move-object p2, v0

    goto :goto_2a

    :cond_74
    invoke-interface {p2}, Lq3/p;->getParent()Lq3/i1;

    move-result-object p2

    goto :goto_2a
.end method
