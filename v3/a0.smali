.class public final Lv3/a0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lv3/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final b:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "Lb3/f$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lq3/a2<",
            "*>;",
            "Lb3/f$a;",
            "Lq3/a2<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lv3/d0;",
            "Lb3/f$a;",
            "Lv3/d0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lv3/y;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/a0;->a:Lv3/y;

    sget-object v0, Lv3/a0$a;->a:Lv3/a0$a;

    sput-object v0, Lv3/a0;->b:Lkotlin/jvm/functions/Function2;

    sget-object v0, Lv3/a0$b;->a:Lv3/a0$b;

    sput-object v0, Lv3/a0;->c:Lkotlin/jvm/functions/Function2;

    sget-object v0, Lv3/a0$c;->a:Lv3/a0$c;

    sput-object v0, Lv3/a0;->d:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final a(Lb3/f;Ljava/lang/Object;)V
    .registers 6

    sget-object v0, Lv3/a0;->a:Lv3/y;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    instance-of v0, p1, Lv3/d0;

    if-eqz v0, :cond_27

    check-cast p1, Lv3/d0;

    iget-object v0, p1, Lv3/d0;->c:[Lq3/a2;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_38

    :goto_12
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p1, Lv3/d0;->c:[Lq3/a2;

    aget-object v2, v2, v0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p1, Lv3/d0;->b:[Ljava/lang/Object;

    aget-object v0, v3, v0

    invoke-interface {v2, p0, v0}, Lq3/a2;->q(Lb3/f;Ljava/lang/Object;)V

    if-gez v1, :cond_25

    goto :goto_38

    :cond_25
    move v0, v1

    goto :goto_12

    :cond_27
    const/4 v0, 0x0

    sget-object v1, Lv3/a0;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1}, Lb3/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lq3/a2;

    invoke-interface {v0, p0, p1}, Lq3/a2;->q(Lb3/f;Ljava/lang/Object;)V

    :cond_38
    :goto_38
    return-void
.end method

.method public static final b(Lb3/f;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lv3/a0;->b:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1}, Lb3/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Lb3/f;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_6

    invoke-static {p0}, Lv3/a0;->b(Lb3/f;)Ljava/lang/Object;

    move-result-object p1

    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_10

    sget-object p0, Lv3/a0;->a:Lv3/y;

    goto :goto_2c

    :cond_10
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_26

    new-instance v0, Lv3/d0;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lv3/d0;-><init>(Lb3/f;I)V

    sget-object p1, Lv3/a0;->d:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, p1}, Lb3/f;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2c

    :cond_26
    check-cast p1, Lq3/a2;

    invoke-interface {p1, p0}, Lq3/a2;->s(Lb3/f;)Ljava/lang/Object;

    move-result-object p0

    :goto_2c
    return-object p0
.end method
