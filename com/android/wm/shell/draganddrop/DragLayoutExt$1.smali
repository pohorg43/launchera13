.class Lcom/android/wm/shell/draganddrop/DragLayoutExt$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/draganddrop/DragLayoutExt;->controlDropZoneBlurVisible(ZLandroid/view/DragEvent;Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/draganddrop/DragLayoutExt;

.field public final synthetic val$action:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DragLayoutExt;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt$1;->this$0:Lcom/android/wm/shell/draganddrop/DragLayoutExt;

    iput p2, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt$1;->val$action:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt$1;->this$0:Lcom/android/wm/shell/draganddrop/DragLayoutExt;

    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->hideDropZoneViewBlur()V

    iget p1, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt$1;->val$action:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    :cond_d
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragLayoutExt$1;->this$0:Lcom/android/wm/shell/draganddrop/DragLayoutExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragLayoutExt;->releaseDropZoneViewBlur()V

    :cond_12
    return-void
.end method
