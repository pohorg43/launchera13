.class public final synthetic Lcom/android/wm/shell/bubbles/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/bubbles/BubbleController;

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/c;->a:Lcom/android/wm/shell/bubbles/BubbleController;

    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/c;->b:Z

    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/c;->c:Z

    return-void
.end method


# virtual methods
.method public final onBubbleViewsReady(Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/c;->a:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/c;->b:Z

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/c;->c:Z

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->i(Lcom/android/wm/shell/bubbles/BubbleController;ZZLcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method
