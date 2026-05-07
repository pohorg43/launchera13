.class public final synthetic La0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;)V
    .registers 5

    const/4 v0, 0x4

    iput v0, p0, La0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/a;->b:Ljava/lang/Object;

    iput-object p2, p0, La0/a;->c:Ljava/lang/Object;

    iput-object p3, p0, La0/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;I)V
    .registers 6

    iput p4, p0, La0/a;->a:I

    const/4 v0, 0x1

    if-eq p4, v0, :cond_6

    const/4 v0, 0x2

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/a;->b:Ljava/lang/Object;

    iput-object p2, p0, La0/a;->c:Ljava/lang/Object;

    iput-object p3, p0, La0/a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 4

    iget v0, p0, La0/a;->a:I

    packed-switch v0, :pswitch_data_5c

    goto :goto_4a

    :pswitch_6  #0x3
    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, La0/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->g(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_17  #0x2
    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, La0/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->c(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_28  #0x1
    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, La0/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->f(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_39  #0x0
    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, La0/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->e(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_4a
    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;

    iget-object v1, p0, La0/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;

    iget-object p0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;->a(Lcom/android/launcher/powersave/view/SuperPowerSaveHomeAppsAdapter;Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_39  #00000000
        :pswitch_28  #00000001
        :pswitch_17  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
