.class public Lm1/a;
.super Lk/m;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field public final c:Landroid/view/Choreographer;

.field public final d:Landroid/view/Choreographer$FrameCallback;

.field public e:Z

.field public f:J


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lk/m;-><init>(I)V

    iput-object p1, p0, Lm1/a;->c:Landroid/view/Choreographer;

    new-instance p1, Lm1/a$a;

    invoke-direct {p1, p0}, Lm1/a$a;-><init>(Lm1/a;)V

    iput-object p1, p0, Lm1/a;->d:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method


# virtual methods
.method public e()V
    .registers 3

    iget-boolean v0, p0, Lm1/a;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm1/a;->e:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lm1/a;->f:J

    iget-object v0, p0, Lm1/a;->c:Landroid/view/Choreographer;

    iget-object v1, p0, Lm1/a;->d:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object v0, p0, Lm1/a;->c:Landroid/view/Choreographer;

    iget-object p0, p0, Lm1/a;->d:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm1/a;->e:Z

    iget-object v0, p0, Lm1/a;->c:Landroid/view/Choreographer;

    iget-object p0, p0, Lm1/a;->d:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
