.class public final Lv3/a0$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv3/a0;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lv3/d0;",
        "Lb3/f$a;",
        "Lv3/d0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lv3/a0$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv3/a0$c;

    invoke-direct {v0}, Lv3/a0$c;-><init>()V

    sput-object v0, Lv3/a0$c;->a:Lv3/a0$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lv3/d0;

    check-cast p2, Lb3/f$a;

    instance-of p0, p2, Lq3/a2;

    if-eqz p0, :cond_1e

    check-cast p2, Lq3/a2;

    iget-object p0, p1, Lv3/d0;->a:Lb3/f;

    invoke-interface {p2, p0}, Lq3/a2;->s(Lb3/f;)Ljava/lang/Object;

    move-result-object p0

    iget-object v0, p1, Lv3/d0;->b:[Ljava/lang/Object;

    iget v1, p1, Lv3/d0;->d:I

    aput-object p0, v0, v1

    iget-object p0, p1, Lv3/d0;->c:[Lq3/a2;

    add-int/lit8 v0, v1, 0x1

    iput v0, p1, Lv3/d0;->d:I

    aput-object p2, p0, v1

    :cond_1e
    return-object p1
.end method
