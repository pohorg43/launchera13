.class public final Lq3/a0;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lb3/f$a;",
        "Lq3/b0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lq3/a0;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq3/a0;

    invoke-direct {v0}, Lq3/a0;-><init>()V

    sput-object v0, Lq3/a0;->a:Lq3/a0;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lb3/f$a;

    instance-of p0, p1, Lq3/b0;

    if-eqz p0, :cond_9

    check-cast p1, Lq3/b0;

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method
