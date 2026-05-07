.class Lcom/android/launcher3/widget/picker/WidgetsListHeader$1;
.super Landroid/view/View$AccessibilityDelegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/picker/WidgetsListHeader;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/widget/picker/WidgetsListHeader;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListHeader;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader$1;->this$0:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader$1;->this$0:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    invoke-static {v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->access$000(Lcom/android/launcher3/widget/picker/WidgetsListHeader;)Z

    move-result v0

    const/high16 v1, 0x40000

    const/high16 v2, 0x80000

    if-eqz v0, :cond_13

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(I)V

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_19

    :cond_13
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(I)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_19
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    const/high16 v0, 0x40000

    if-eq p2, v0, :cond_d

    const/high16 v0, 0x80000

    if-eq p2, v0, :cond_d

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader$1;->this$0:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->callOnClick()Z

    const/4 p0, 0x1

    return p0
.end method
