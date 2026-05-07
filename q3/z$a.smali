.class public final Lq3/z$a;
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


# static fields
.field public static final a:Lq3/z$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq3/z$a;

    invoke-direct {v0}, Lq3/z$a;-><init>()V

    sput-object v0, Lq3/z$a;->a:Lq3/z$a;

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
    .registers 3

    check-cast p1, Lb3/f;

    check-cast p2, Lb3/f$a;

    instance-of p0, p2, Lq3/y;

    if-eqz p0, :cond_13

    check-cast p2, Lq3/y;

    invoke-interface {p2}, Lq3/y;->p()Lq3/y;

    move-result-object p0

    invoke-interface {p1, p0}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p0

    goto :goto_17

    :cond_13
    invoke-interface {p1, p2}, Lb3/f;->plus(Lb3/f;)Lb3/f;

    move-result-object p0

    :goto_17
    return-object p0
.end method
