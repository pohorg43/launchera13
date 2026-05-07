.class public final Ly2/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ly2/e;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ly2/e<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public a:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2/q;->a:Lkotlin/jvm/functions/Function0;

    sget-object p1, Ly2/n;->a:Ly2/n;

    iput-object p1, p0, Ly2/q;->b:Ljava/lang/Object;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ly2/b;

    invoke-virtual {p0}, Ly2/q;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Ly2/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ly2/q;->b:Ljava/lang/Object;

    sget-object v1, Ly2/n;->a:Ly2/n;

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Ly2/q;->a:Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ly2/q;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Ly2/q;->a:Lkotlin/jvm/functions/Function0;

    :cond_14
    iget-object p0, p0, Ly2/q;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ly2/q;->b:Ljava/lang/Object;

    sget-object v1, Ly2/n;->a:Ly2/n;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ly2/q;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    :cond_14
    const-string p0, "Lazy value not initialized yet."

    :goto_16
    return-object p0
.end method
