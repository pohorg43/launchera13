.class public final Lu3/j$a$a$b;
.super Ld3/c;
.source ""


# annotations
.annotation runtime Ld3/e;
    c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1"
    f = "Merge.kt"
    l = {
        0x1e
    }
    m = "emit"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/j$a$a;->emit(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lu3/j$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/j$a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:I


# direct methods
.method public constructor <init>(Lu3/j$a$a;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/j$a$a<",
            "-TT;>;",
            "Lb3/d<",
            "-",
            "Lu3/j$a$a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lu3/j$a$a$b;->e:Lu3/j$a$a;

    invoke-direct {p0, p2}, Ld3/c;-><init>(Lb3/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lu3/j$a$a$b;->d:Ljava/lang/Object;

    iget p1, p0, Lu3/j$a$a$b;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lu3/j$a$a$b;->f:I

    iget-object p1, p0, Lu3/j$a$a$b;->e:Lu3/j$a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lu3/j$a$a;->emit(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
