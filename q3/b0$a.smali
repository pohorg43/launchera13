.class public final Lq3/b0$a;
.super Lb3/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb3/b<",
        "Lb3/e;",
        "Lq3/b0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    sget p1, Lb3/e;->A:I

    sget-object p1, Lb3/e$a;->a:Lb3/e$a;

    sget-object v0, Lq3/a0;->a:Lq3/a0;

    invoke-direct {p0, p1, v0}, Lb3/b;-><init>(Lb3/f$b;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
