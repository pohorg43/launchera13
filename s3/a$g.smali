.class public final Ls3/a$g;
.super Ld3/c;
.source ""


# annotations
.annotation runtime Ld3/e;
    c = "kotlinx.coroutines.channels.AbstractChannel"
    f = "AbstractChannel.kt"
    l = {
        0x279
    }
    m = "receiveCatching-JP2dKIU"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls3/a;->c(Lb3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ls3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls3/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Ls3/a;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/a<",
            "TE;>;",
            "Lb3/d<",
            "-",
            "Ls3/a$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ls3/a$g;->b:Ls3/a;

    invoke-direct {p0, p2}, Ld3/c;-><init>(Lb3/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Ls3/a$g;->a:Ljava/lang/Object;

    iget p1, p0, Ls3/a$g;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ls3/a$g;->c:I

    iget-object p1, p0, Ls3/a$g;->b:Ls3/a;

    invoke-virtual {p1, p0}, Ls3/a;->c(Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_14

    return-object p0

    :cond_14
    new-instance p1, Ls3/i;

    invoke-direct {p1, p0}, Ls3/i;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
