.class Lcom/android/launcher3/views/OplusFloatingIconView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/views/OplusFloatingIconView;->checkIconResult(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

.field public final synthetic val$originalView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/OplusFloatingIconView;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$1;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iput-object p2, p0, Lcom/android/launcher3/views/OplusFloatingIconView$1;->val$originalView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$1;->val$originalView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    :cond_c
    iget-object p0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$1;->val$originalView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
