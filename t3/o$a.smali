.class public final Lt3/o$a;
.super Ld3/c;
.source ""


# annotations
.annotation runtime Ld3/e;
    c = "kotlinx.coroutines.flow.SubscribedFlowCollector"
    f = "Share.kt"
    l = {
        0x1a3,
        0x1a7
    }
    m = "onSubscription"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt3/o;->a(Lb3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lt3/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(Lt3/o;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/o<",
            "TT;>;",
            "Lb3/d<",
            "-",
            "Lt3/o$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lt3/o$a;->d:Lt3/o;

    invoke-direct {p0, p2}, Ld3/c;-><init>(Lb3/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lt3/o$a;->c:Ljava/lang/Object;

    iget p1, p0, Lt3/o$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lt3/o$a;->e:I

    iget-object p1, p0, Lt3/o$a;->d:Lt3/o;

    invoke-virtual {p1, p0}, Lt3/o;->a(Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
