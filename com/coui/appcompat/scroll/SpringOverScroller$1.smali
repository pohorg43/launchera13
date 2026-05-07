.class Lcom/coui/appcompat/scroll/SpringOverScroller$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/scroll/SpringOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/scroll/SpringOverScroller;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/scroll/SpringOverScroller;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$1;->a:Lcom/coui/appcompat/scroll/SpringOverScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$1;->a:Lcom/coui/appcompat/scroll/SpringOverScroller;

    iget-object v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->a:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    iget-wide v3, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->y:J

    iput-wide v3, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->x:J

    iput-wide p1, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->y:J

    iput-boolean v2, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->z:Z

    :cond_f
    iget-object v1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->b:Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;

    if-eqz v1, :cond_1b

    iget-wide v3, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->y:J

    iput-wide v3, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->x:J

    iput-wide p1, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->y:J

    iput-boolean v2, v1, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;->z:Z

    :cond_1b
    iget-boolean p1, v0, Lcom/coui/appcompat/scroll/SpringOverScroller;->i:Z

    if-nez p1, :cond_26

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_26
    return-void
.end method
