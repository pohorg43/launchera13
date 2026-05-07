.class Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettleRunnable"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public b:Z

.field public c:I

.field public final synthetic d:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;I)V
    .registers 4

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->d:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->a:Landroid/view/View;

    iput p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->d:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->d:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$300(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->a:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_21

    :cond_1a
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->d:Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->c:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    :goto_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SettleRunnable;->b:Z

    return-void
.end method
