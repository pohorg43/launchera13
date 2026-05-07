.class public final Ls3/o$a;
.super Ld3/c;
.source ""


# annotations
.annotation runtime Ld3/e;
    c = "kotlinx.coroutines.channels.ProduceKt"
    f = "Produce.kt"
    l = {
        0x99
    }
    m = "awaitClose"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls3/o;->a(Ls3/q;Lkotlin/jvm/functions/Function0;Lb3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public d:I


# direct methods
.method public constructor <init>(Lb3/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb3/d<",
            "-",
            "Ls3/o$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ld3/c;-><init>(Lb3/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Ls3/o$a;->c:Ljava/lang/Object;

    iget p1, p0, Ls3/o$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ls3/o$a;->d:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Ls3/o;->a(Ls3/q;Lkotlin/jvm/functions/Function0;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
