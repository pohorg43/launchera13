.class public final Ls3/a$e;
.super Lq3/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:Ls3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls3/r<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic b:Ls3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls3/a<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls3/a;Ls3/r;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/r<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Ls3/a$e;->b:Ls3/a;

    invoke-direct {p0}, Lq3/d;-><init>()V

    iput-object p2, p0, Ls3/a$e;->a:Ls3/r;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 2

    iget-object p1, p0, Ls3/a$e;->a:Ls3/r;

    invoke-virtual {p1}, Lv3/l;->p()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Ls3/a$e;->b:Ls3/a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Ls3/a$e;->a:Ls3/r;

    invoke-virtual {p1}, Lv3/l;->p()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p0, p0, Ls3/a$e;->b:Ls3/a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "RemoveReceiveOnCancel["

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ls3/a$e;->a:Ls3/r;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
