.class public final synthetic Lcom/android/wm/shell/bubbles/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:F

.field public final synthetic e:Z

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;ZZFZZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/a0;->a:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/a0;->b:Z

    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/a0;->c:Z

    iput p4, p0, Lcom/android/wm/shell/bubbles/a0;->d:F

    iput-boolean p5, p0, Lcom/android/wm/shell/bubbles/a0;->e:Z

    iput-boolean p6, p0, Lcom/android/wm/shell/bubbles/a0;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/a0;->a:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/a0;->b:Z

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/a0;->c:Z

    iget v3, p0, Lcom/android/wm/shell/bubbles/a0;->d:F

    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/a0;->e:Z

    iget-boolean v5, p0, Lcom/android/wm/shell/bubbles/a0;->f:Z

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->a(Lcom/android/wm/shell/bubbles/BubbleExpandedView;ZZFZZ)V

    return-void
.end method
