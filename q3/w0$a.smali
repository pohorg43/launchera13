.class public final Lq3/w0$a;
.super Lq3/w0$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final d:Lq3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/k<",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic e:Lq3/w0;


# direct methods
.method public constructor <init>(Lq3/w0;JLq3/k;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lq3/k<",
            "-",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/w0$a;->e:Lq3/w0;

    invoke-direct {p0, p2, p3}, Lq3/w0$c;-><init>(J)V

    iput-object p4, p0, Lq3/w0$a;->d:Lq3/k;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lq3/w0$a;->d:Lq3/k;

    iget-object p0, p0, Lq3/w0$a;->e:Lq3/w0;

    sget-object v1, Ly2/p;->a:Ly2/p;

    invoke-interface {v0, p0, v1}, Lq3/k;->r(Lq3/b0;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lq3/w0$c;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lq3/w0$a;->d:Lq3/k;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
