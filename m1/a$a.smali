.class public Lm1/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm1/a;-><init>(Landroid/view/Choreographer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm1/a;


# direct methods
.method public constructor <init>(Lm1/a;)V
    .registers 2

    iput-object p1, p0, Lm1/a$a;->a:Lm1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 7

    iget-object p1, p0, Lm1/a$a;->a:Lm1/a;

    iget-boolean p2, p1, Lm1/a;->e:Z

    if-eqz p2, :cond_2a

    iget-object p1, p1, Lk/m;->b:Ljava/lang/Object;

    check-cast p1, Lm1/b;

    if-nez p1, :cond_d

    goto :goto_2a

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lm1/a$a;->a:Lm1/a;

    iget-object v1, v0, Lk/m;->b:Ljava/lang/Object;

    check-cast v1, Lm1/b;

    iget-wide v2, v0, Lm1/a;->f:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lm1/b;->c(D)V

    iget-object p0, p0, Lm1/a$a;->a:Lm1/a;

    iput-wide p1, p0, Lm1/a;->f:J

    iget-object p1, p0, Lm1/a;->c:Landroid/view/Choreographer;

    iget-object p0, p0, Lm1/a;->d:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_2a
    :goto_2a
    return-void
.end method
