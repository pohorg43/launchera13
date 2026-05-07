.class public final Lt3/b$a;
.super Ld3/c;
.source ""


# annotations
.annotation runtime Ld3/e;
    c = "kotlinx.coroutines.flow.CallbackFlowBuilder"
    f = "Builders.kt"
    l = {
        0x150
    }
    m = "collectTo"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt3/b;->c(Ls3/q;Lb3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lt3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Lt3/b;Lb3/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/b<",
            "TT;>;",
            "Lb3/d<",
            "-",
            "Lt3/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lt3/b$a;->c:Lt3/b;

    invoke-direct {p0, p2}, Ld3/c;-><init>(Lb3/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lt3/b$a;->b:Ljava/lang/Object;

    iget p1, p0, Lt3/b$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lt3/b$a;->d:I

    iget-object p1, p0, Lt3/b$a;->c:Lt3/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lt3/b;->c(Ls3/q;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
