.class public final Lv3/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lq3/f0;


# instance fields
.field public final a:Lb3/f;


# direct methods
.method public constructor <init>(Lb3/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/e;->a:Lb3/f;

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Lb3/f;
    .registers 1

    iget-object p0, p0, Lv3/e;->a:Lb3/f;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "CoroutineScope(coroutineContext="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lv3/e;->a:Lb3/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
