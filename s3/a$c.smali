.class public final Ls3/a$c;
.super Ls3/a$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ls3/a$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TE;",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/k;ILkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/k<",
            "Ljava/lang/Object;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ls3/a$b;-><init>(Lq3/k;I)V

    iput-object p3, p0, Ls3/a$c;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public s(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ls3/a$c;->f:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ls3/a$b;->d:Lq3/k;

    invoke-interface {p0}, Lb3/d;->getContext()Lb3/f;

    move-result-object p0

    new-instance v1, Lv3/r;

    invoke-direct {v1, v0, p1, p0}, Lv3/r;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lb3/f;)V

    return-object v1
.end method
