.class public final synthetic Lu3/r$a;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/r;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Lt3/e<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        "Ly2/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lu3/r$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu3/r$a;

    invoke-direct {v0}, Lu3/r$a;-><init>()V

    sput-object v0, Lu3/r$a;->a:Lu3/r$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-class v2, Lt3/e;

    const/4 v1, 0x3

    const-string v3, "emit"

    const-string v4, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lt3/e;

    check-cast p3, Lb3/d;

    invoke-interface {p1, p2, p3}, Lt3/e;->emit(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
