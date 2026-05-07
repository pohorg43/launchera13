.class public final Lq3/w1;
.super Lq3/d;
.source ""


# instance fields
.field public final a:Lv3/l;


# direct methods
.method public constructor <init>(Lv3/l;)V
    .registers 2

    invoke-direct {p0}, Lq3/d;-><init>()V

    iput-object p1, p0, Lq3/w1;->a:Lv3/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 2

    iget-object p0, p0, Lq3/w1;->a:Lv3/l;

    invoke-virtual {p0}, Lv3/l;->p()Z

    return-void
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lq3/w1;->a:Lv3/l;

    invoke-virtual {p0}, Lv3/l;->p()Z

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "RemoveOnCancel["

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lq3/w1;->a:Lv3/l;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
